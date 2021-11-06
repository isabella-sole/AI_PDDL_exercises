(define (problem BasicMoveWO-four-unsat)
    (:domain BasicMoveWO)
    
    (:objects
        l1 l2 l3 l4
    )
    
    (:init
        (at l1)
        (conn l1 l2) (conn l2 l3) (conn l3 l4)
        (unobs l1) (unobs l3)
    )
    
    (:goal (at l4))
)