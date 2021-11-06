(define (problem BasicMove-six-sat)
    (:domain BasicMove)
    
    (:objects
        l1 l2 l3 l4 l5 l6
    )
    
    (:init
        (at l1)
        (conn l1 l2) (conn l2 l3) (conn l3 l4) 
        (conn l4 l5) (conn l5 l6)
    )
    
    (:goal (at l6))
)