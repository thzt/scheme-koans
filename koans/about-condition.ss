(library (koans about-condition)
	 (export run-about-condition)
	 (import (rnrs))

	 (define (run-about-condition)

	   (assert (eq? (if #t 'true 'false)
					'true))

	   (assert (eq? (cond
					 [(< 1 0) 'a]
					 [(> 1 0) 'b]
					 [else 'c])
					'b))

	   (assert (eq? (case (+ 1 2)
					  [(1 3 5 7 9) 'a]
					  [(2 4 6 8 10) 'b]
					  [else 'c])
					'a))

	   (assert (eq? (when #t
						  1
						  2)
					2))

	   (assert (eq? (unless #f
							1
							2)
				    2))
	   
	   (display "Test for about-condition completed\n"))
)
