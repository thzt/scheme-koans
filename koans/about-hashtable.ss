(library (koans about-hashtable)
	 (export run-about-hashtable)
	 (import (rnrs))

	 (define (run-about-hashtable)

	   (let ([table (make-eq-hashtable)])
		 (hashtable-set! table 'a 1)
		 (assert (hashtable-contains? table 'a))
		 (assert (= (hashtable-ref table 'a 0)
					1))

		 (assert (not (hashtable-contains? table 'b)))
		 (assert (= (hashtable-ref table 'b 0)
					  0))
		 
		 (hashtable-set! table 'a 2)
		 (assert (= (hashtable-ref table 'a 0)
					2))
		 
		 (hashtable-update! table
							'a
							(lambda (x) (+ x 1))
						    0)
		 (assert (= (hashtable-ref table 'a 0)
					3))
		 
		 (hashtable-update! table
							'b
							(lambda (x) (+ x 1))
							0)
		 (assert (eq? (hashtable-ref table 'b 0)
					  1))

		 )

	   (display "Test for about-hashtable completed\n"))
)
