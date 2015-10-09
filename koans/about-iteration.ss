(library (koans about-iteration)
	 (export run-about-iteration)
	 (import (rnrs))

	 (define (run-about-iteration)

	   (assert (= (do ([i 1 (+ i 1)]
					   [r 0 (+ r i)])
					  ((> i 10) r))
				  55))
					   
	   (assert (= (let ([r 0])
					(do ([i 0 (+ i 1)])
						((> i 10) r)
					  (set! r (+ r i))))
				  55))

	   (display "Test for about-iteration completed\n"))
)
