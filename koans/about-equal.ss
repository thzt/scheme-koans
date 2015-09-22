(library (koans about-equal)
	 (export run-about-equal)
	 (import (rnrs))

	 (define (run-about-equal)

	   (assert (eq? 'a 'a))

	   (assert (not (eq? 'a 'b)))

	   (assert (not (eq? (cons 'a 'b) (cons 'a 'b))))

	   (assert (not (eq? (list 'a 'b) (list 'a 'b))))

	   (assert (eq? 1 '1))

	   (assert (eq? #t '#t))

	   (assert (equal? (cons 'a 'b) (cons 'a 'b)))

	   (assert (equal? (list 'a 'b) (list 'a 'b)))

	   (assert (equal? 1 '1))

	   (assert (equal? #t '#t))

	   (assert (= 1 1.0))

	   (assert (not (eq? 1 1.0)))

	   (assert (not (eqv? 1 1.0)))

	   (assert (not (eq? 1.0 1.0)))

	   (assert (eqv? 1.0 1.0))
	   
	   (display "Test for about-equal completed\n"))
)
