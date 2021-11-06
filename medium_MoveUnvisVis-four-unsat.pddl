(define (problem MoveUnvisVis-four-unsat)
    (:domain MoveUnvisVis)
    
    (:objects 
        l1 l2 l3 l4
    )
    
    (:init
        (at l1)
        (conn l1 l2) (conn l2 l3) (conn l3 l4)
        (unvis l1) (unvis l2) (unvis l3) (unvis l4)
     )
    
    (:goal
        (and (at l1) (vis l1) (vis l2) (vis l3) (vis l4))
    )
)