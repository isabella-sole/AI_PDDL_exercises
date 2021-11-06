(define (problem BasicMoveWOU-four-unsat)
    (:domain BasicMoveWOU)
    
    (:objects
        l1 l2 l3 l4
    )
    
    (:init
        (at l1)
        (conn l1 l2) (conn l2 l3) (conn l3 l4)
        (unobs l1) (unobs l3)
        (unvis l2) (unvis l3) (unvis l4)
    )
    
    (:goal (at l4))

)