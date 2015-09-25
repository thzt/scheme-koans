(library (koans about-function)
	 (export run-about-function)
	 (import (rnrs))

	 (define (run-about-function)

	   (define (f x y)
		 (+ x y))
	   
	   (define g
		 (lambda (x y)
		   (+ x y)))

	   ;all definition must be written above

	   (assert (= (f 1 2) 3))

	   (assert (= (g 1 2) 3))

	   (let ([h (lambda (x y) (+ x y))])
		 (assert (= (h 1 2) 3)))

	   (assert (= (let loop ([i 1]
							 [sum 0])
					(if (< i 10)
						(loop (+ i 1) (+ sum i))
						sum))
				  45))
	   
	   (display "Test for about-function completed\n"))
)
