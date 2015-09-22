(library (koans about-number)
	 (export run-about-number)
	 (import (rnrs))

	 (define (run-about-number)

	   (assert (= 1 1))

	   (assert (= (+ 1 2) 3))

	   (assert (= (+ 1) 1))

	   (assert (= (+) 0))

	   (assert (= (*) 1))

	   (assert (= (- 3) -3))

	   (assert (= (/ 2 3) 2/3))

	   (assert (= (/ 4 6) 2/3))

	   (assert (= 4/6 2/3))

	   (assert (= 2 2.0))

	   (assert (exact? 2))

	   (assert (inexact? 2.0))

	   (assert (= 2+3i 2.0+3.0i))

	   (assert (exact? 2+3i))

	   (assert (inexact? 2.0+3i))

	   (assert (inexact? 2+3.0i))

	   (assert (= (+ 1+2i 3+4i) 4+6i))

	   (assert (= (div 5 2) 2))

	   (assert (= (div 5.0 2) 2.0))

	   (assert (= (div 5 2.0) 2))

	   (assert (= (div 5.1 2.3) 2.0))

	   (assert (= (mod 5 2) 1))

	   (assert (= (mod 5.0 2) 1.0))

	   (assert (= (floor 2.3) 2.0))

	   (assert (= (floor 5/3) 1.0))

	   (assert (= (ceiling 5/3) 2.0))

	   (assert (= (round 5/3) 2.0))

	   (assert (= (exact .25) 1/4))

	   (assert (= (inexact 5/4) 1.25))

	   (assert (string=? (number->string 1) "1"))

	   (assert (= (string->number "1") 1))
	   
	   (display "Test for about-number completed\n"))
)
