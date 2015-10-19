(library (koans about-macro)
	 (export run-about-macro)
	 (import (rnrs))

	 (define (run-about-macro)

	   (let-syntax ([cond (syntax-rules (else)
							[(_ (else e1 ...))
							 (begin e1 ...)]
							[(_ (e1 e2 ...))
							 (if e1
								 (begin e2 ...))]
							[(_ (e1 e2 ...) c1 ...)
							 (if e1
								 (begin e2 ...)
								 (cond c1 ...))])])
		 (assert (eq? (cond
					   [(< 1 0) 'a]
					   [(> 1 0) 'b]
					   [else 'c])
					  'b)))

	   (display "Test for about-macro completed\n"))
)
