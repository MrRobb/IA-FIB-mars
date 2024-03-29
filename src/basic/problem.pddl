(define (problem rovers)

	; Domain
	(:domain mars)

	; Objects
	(:objects
		r1 - rover
		s1 - supply
		p1 - person
		b1 b2 b3 - warehouse
		b4 b5 - settlement
	)

	; Init
	(:init
		; Rovers
		(parked r1 b1)

		; Supplies
	  (is-in s1 b1)

		; Staff
		(is-in p1 b4)

		; Requests
		(needs p1 b5)
		(needs s1 b2)
		(needs s1 b3)
	)

	; Goal
	(:goal
		(forall (?c - cargo)
			(served ?c)
		)
	)
)
