(library (koans about-let)
	 (export run-about-let)
	 (import (rnrs))

	 (define (run-about-let)

	   (assert (= (let ([a 2]
						[b 3])
					(assert (= (+ a b) 5))
					(* a b))
				  6))

	   (assert (= (let* ([a 3]
						 [b a])
					(assert (= (+ a b) 6))
					(* a b))
				  9))

	   (letrec ([sum (lambda (x)
					   (if (= x 1)
						   1
						   (+ x (sum (- x 1)))))])
		 (assert (= (sum 9) 45)))

	   (letrec* ([sum (lambda (x)
					   (if (= x 1)
						   1
						   (+ x (sum (- x 1)))))]
				[result (sum 9)])
		 (assert (= result 45)))
	   
	   (display "Test for about-let completed\n"))
)
