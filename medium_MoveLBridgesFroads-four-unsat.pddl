(define (problem MoveLBridgesFroads-four-unsat)
    (:domain MoveLBridgesFroads)
    
    (:objects 
        l1 l2 l3 l4
    )
    
    (:init
        (at l1)
        (conn_bridge l1 l2) (conn_bridge l2 l3)
        (conn_road l1 l2) (conn_road l2 l3) (conn_road l3 l4)
        (unvis l1) (unvis l2) (unvis l3) (unvis l4)
     )
    
    (:goal
        (and (at l1) 
             (vis l1) (vis l2) (vis l3) (vis l4)
             (LBridge))
    )
)