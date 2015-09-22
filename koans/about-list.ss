(library (koans about-list)
	 (export run-about-list)
	 (import (rnrs) (rnrs mutable-pairs))

	 (define (run-about-list)

	   (assert (equal? (cons 'a 'b) '(a . b)))

	   (let ([x 1]
			 [y (cons 'a 'b)])
		 (assert (= x 1))
		 (assert (eq? (car y) 'a))
		 (assert (eq? (cdr y) 'b))

		 (set-car! y 2)
		 (assert (eqv? (car y) 2))

		 (set-cdr! y 3)
		 (assert (eqv? (cdr y) 3)))

	   (assert (equal? (cons 'a '()) '(a)))

	   (assert (equal? '(a . ()) '(a)))

	   (assert (equal? (cons 'a '(b)) '(a b)))

	   (assert (equal? '(a . (b)) '(a b)))

	   (assert (equal? (list 'a 'b) '(a b)))

	   (assert (list? '(a b)))

	   (assert (not (list? '(a . b))))

	   (assert (list? '()))

	   (assert (not (list? 5)))

	   (assert (= 2 (length '(a b))))

	   (assert (eq? (list-ref '(a b) 0) 'a))

	   (assert (equal? (append '(a b) '(c d)) '(a b c d)))

	   (assert (equal? (reverse '(a b)) '(b a)))
	   
	   (display "Test for about-list completed\n"))
)
