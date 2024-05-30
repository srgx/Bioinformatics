#lang racket
(require racklog)
(require racket/generator)

(define (bf-pdp l v)
  (local
    ((define (bf-pdp-h cmbs m l)
       (let ((cand `(0 ,@(cmbs) ,m)))
          (if (equal? l (sort (dists cand) <))
              cand
              (bf-pdp-h cmbs m l)))))
  (let ((m (apply max l)))
    (bf-pdp-h
      (sequence->generator
        (in-combinations
          (cond ((= 1 v) (range 1 m))
                ((= 2 v) (remove-duplicates l)))
          (- (/ (+ 1 (sqrt (- 1 (* -8 (length l))))) 2) 2)))
      m l))))

(define (bf-pdp-v1 l)
  (bf-pdp l 1))

(define (bf-pdp-v2 l)
  (bf-pdp l 2))

(define (dists l)
  (if (empty? (rest l))
      '()
      (append (difs (first l) (rest l))
              (dists (rest l)))))

(define (difs f r)
  (map (λ (e) (abs (- f e))) r))

(define %partial-digest
  (%rel (l r w rmv newx t)
    ((l r)
     (%is w (apply max l))
     (%is rmv (remove w l))
     (%is newx (list 0 w))
     (%place rmv newx w t)
     (%is r (sort t <)))))

(define %place
  (%rel (x l maxl width re f1 f2 rmv sbs)
    (('() x (_) x) !)
    ((l x width re)
     (%is maxl (apply max l))
     (%plcf x maxl width f1 f2)
     (%is sbs (subset? f1 l))
     (%== sbs #t)
     (%is rmv (removea f1 l))
     (%place rmv (cons f2 x) width re))))

(define %plcf
  (%rel (x y f1 f2 width)
    ((x y (_) f1 y)
     (%is f1 (difs y x)))
    ((x y width f1 f2)
     (%is f2 (- width y))
     (%is f1 (difs f2 x)))))

(define (removea tr l)
  (if (empty? tr)
      l
      (removea (rest tr) (remove (first tr) l))))

(define (next-leaf-r a k)
  (if (empty? a)
      '()
      (let ((f (first a))
            (r (rest a)))
        (apply cons
          (if (< f k)
              `(,(add1 f) ,r)
              `(0 ,(next-leaf-r r k)))))))

(define (next-leaf-l l k)
  (local
    ((define (nexl l k)
      (local
        ((define (h cl k nxt)
          (apply cons
            (if (< cl k)
                `(,(add1 cl) ,nxt)
                `(n ,(cons 0 nxt))))))
      (let ((cl (first l)) (rl (rest l)))
        (if (empty? rl)
            (h cl k '())
            (let ((nxt (nexl rl k)))
              (if (eq? (first nxt) 'n)
                  (h cl k (rest nxt))
                  (cons cl nxt))))))))
  (let ((r (nexl l k)))
    (if (eq? 'n (first r)) (rest r) r))))

(define (all-leaves t l k)
  (local
    ((define (all-leaves-h nleaf nxt l k e)
      (let ((n (nleaf l k)))
        (if (equal? n e) '() (cons n (nxt n k e)))))
     (define (all-leaves-h-l l k e)
       (all-leaves-h next-leaf-l all-leaves-h-l l k e))
     (define (all-leaves-h-r l k e)
       (all-leaves-h next-leaf-r all-leaves-h-r l k e)))
  (let ((s (build-list l (λ (x) 0))))
    (cons s ((cond ((eq? 'l t) all-leaves-h-l)
                   ((eq? 'r t) all-leaves-h-r)) s k s)))))

(define (all-leaves-l l k)
  (all-leaves 'l l k))

(define (all-leaves-r l k)
  (all-leaves 'r l k))

(define (max-val hsh)
  (local
    ((define (h lst cmax)
      (if (empty? lst)
          cmax
          (h (rest lst)
             (if (> (cdar lst) (cdr cmax))
                 (car lst)
                 cmax)))))
  (let ((lst (hash->list hsh)))
    (h (rest lst) (first lst)))))

(define (trim s dna pattern-length)
  (if (empty? s)
      '()
      (cons (take (drop (first dna) (first s)) pattern-length)
            (trim (rest s) (rest dna) pattern-length))))

(define (occurrences col)
  (local
    ((define (h hsh lst)
      (if (empty? lst )
          hsh
          (h (hash-update hsh (first lst) add1)
          (rest lst)))))
  (h (make-immutable-hash
       (build-list 4 (λ (x) (cons x 0))))
     col)))

(define (p-score col)
  (cdr (max-val (occurrences col))))

(define (score s dna pattern-length)
  (local
    ((define (h trimmed)
      (if (empty? (first trimmed))
          0
          (+ (p-score (map first trimmed))
             (h (map rest trimmed))))))
  (h (trim s dna pattern-length))))

(define (bf-motif-search dna pattern-length)
  (let ((max-shift (- (length (car dna)) pattern-length)))
    (local
      ((define (h best-score-and-motif current-leaf dna pattern-length first-leaf)
        (if (equal? current-leaf first-leaf)
            best-score-and-motif
            (let ((scr (score current-leaf dna pattern-length)))
              (h (if (> scr (car best-score-and-motif))
                     (list scr current-leaf)
                     best-score-and-motif)
                 (next-leaf-l current-leaf max-shift)
                 dna pattern-length first-leaf)))))
    (let ((first-leaf (build-list (length dna) (λ (x) 0))))
      (h (list (score first-leaf dna pattern-length) first-leaf)
         (next-leaf-l first-leaf max-shift)
         dna pattern-length first-leaf)))))

(let* ((l '(2 2 3 3 4 5 6 7 8 10))
       (r1 '(0 3 6 8 10))
       (r2 '(0 2 4 7 10))
       (c 9)
       (n '(9 9 9 9))
       (z '(0 0 0 0))
       (l-lvs '((0 0) (0 1) (0 2) (1 0)
                (1 1) (1 2) (2 0) (2 1) (2 2)))
       (lo-s '(0 4 2 4))
       (hi-s '(6 4 0 6))
       (dna '((0 0 1 1 2 2 3 3 2 2)
              (2 2 1 1 3 3 2 2 1 1)
              (3 3 2 2 0 0 1 1 1 1)
              (1 1 0 0 1 1 3 3 2 2)))
       (dna-len 4)
       (num-dna (length dna)))
  (and (%which () (%partial-digest l r2)
                  (%partial-digest l r1))
       (equal? r2 (bf-pdp-v1 l))
       (equal? r2 (bf-pdp-v2 l))
       (equal? z (next-leaf-r n c))
       (equal? z (next-leaf-l n c))
       (equal? '(0 0 0 1) (next-leaf-l z c))
       (equal? '(1 0 0 0) (next-leaf-r z c))
       (equal? l-lvs (all-leaves-l 2 2))
       (equal? (all-leaves-r 2 2)
               (map (λ (n) (reverse n)) l-lvs))
       (equal? (trim lo-s dna 4) '((0 0 1 1) (3 3 2 2) (2 2 0 0) (1 1 3 3)))
       (equal? (trim hi-s dna 4) '((3 3 2 2) (3 3 2 2) (3 3 2 2) (3 3 2 2)))
       (equal? (score lo-s dna 4) dna-len)
       (equal? (score hi-s dna 4) (* dna-len num-dna))
       (equal? (bf-motif-search dna 4) `(16 ,hi-s))))

