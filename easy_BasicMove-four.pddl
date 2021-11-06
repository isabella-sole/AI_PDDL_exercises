(define (problem BasicMove-four)
    (:domain BasicMove)
    
    (:objects
        l1 l2 l3 l4
    )
    
    (:init
        (at l1)
        (conn l1 l2) (conn l2 l3) (conn l3 l4)
    )
    
    (:goal (at l4))
)