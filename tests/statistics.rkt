#lang typed/racket

(define-type Lor (Listof Real))
(define-type Loor (Listof Lor))

(: data Lor)
(define data
  '(2 2 2 3 3 3 3 3 4 4
    4 5 5 5 5 5 5 6 6 7))

(: occurrences (-> Lor Loor))
(define (occurrences d)
  (local
    ((: h (-> Lor Loor Loor))
     (define (h d acc)
       (local
         ((: update-acc (-> Real Loor Loor))
          (define (update-acc v acc)
            (cond
              ((empty? acc) `((,v 1)))
              ((= v (caar acc))
               (cons (list v (add1 (cadar acc)))
                     (rest acc)))
              (else (cons (first acc)
                          (update-acc v (rest acc)))))))
        (if (empty? d)
            acc
            (h (rest d) (update-acc (first d) acc))))))
  (sort (h d '()) (λ ((a : Lor) (b : Lor))
                     (< (first a) (first b))))))

(: freqs (-> Lor Loor))
(define (freqs data)
  (let ((le (length data))
        (occ (occurrences data)))
    (local
      ((: h (-> Loor Real Loor))
       (define (h occ total)
        (foldr
          (λ ((x : Lor) (y : Loor))
            (cons (list (first x)
                        (* (/ (cadr x) total) 100))
                  y))
          '() occ)))
    (h occ le))))

(: cumulative-freqs (-> Loor Loor))
(define (cumulative-freqs frqs)
  (local
    ((: h (-> Loor Real Loor))
     (define (h frqs acc)
     (if (empty? frqs)
         '()
         (let ((nv (+ (cadar frqs) acc)))
           (cons (list (caar frqs) nv)
                 (h (rest frqs) nv))))))
  (h frqs 0)))

(: median (-> (Vectorof Real) Real))
(define (median v)
  (let* ((le (vector-length v))
         (h (quotient le 2))
         (vh (vector-ref v h)))
    (exact->inexact
      (if (even? le)
          (/ (+ vh (vector-ref v (sub1 h))) 2)
          vh))))

(: percentile (-> Integer (Vectorof Real) (Listof Integer)))
(define (percentile k v)
  (local
    ((: percentile-index (-> Integer (Vectorof Real) (Listof Integer)))
     (define (percentile-index k v)
       (let* ((va (* k (add1 (vector-length v))))
         (qo (quotient va 100))
         (sq (sub1 qo))
         (re (remainder va 100)))
        (if (zero? re) (list sq)
                       (list sq qo)))))
  (percentile-index k v)))

(let ((d 1e-5)
      (frqs '((2 15) (3 25) (4 15) (5 30) (6 10) (7 5)))
      (ocs '((2 3) (3 5) (4 3) (5 6) (6 2) (7 1)))
      (cfrqs '((2 15) (3 40) (4 55) (5 85) (6 95) (7 100))))
  (and (equal? (occurrences data) ocs)
       (equal? (freqs data) frqs)
       (equal? (cumulative-freqs frqs) cfrqs)
       (< (abs (- 7.5 (median (vector 5 6 7 8 9 10)))) d)
       (< (abs (- 8 (median (vector 4 7 8 10 15)))) d)))

(let ((veo (vector-immutable 2 4 8 16 20 30 50 120 130)))
  (displayln (percentile 50 veo))
  (displayln (percentile 99 veo)))

