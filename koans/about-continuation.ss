(library (koans about-continuation)
	 (export run-about-continuation)
	 (import (rnrs))

	 (define (run-about-continuation)

	   (assert (= (call/cc (lambda (k)
							 1))
				  1))

	   (assert (= (call/cc (lambda (k)
							 (k 2)))
				  2))

	   (assert (= (call/cc (lambda (break)
							 (let ([r 0])
							   (do ([i 0 (+ i 1)])
								   ((> i 10) (break r))
								 (set! r (+ r i))))))
				  55))
	   
	   (display "Test for about-continuation completed\n"))
)
