(define (problem MoveAgentsVBR-four-nv-sat)
    (:domain MoveAgentsVBR)
    
    (:objects
        a1 a2
        l1 l2 l3 l4
    )
    
    (:init
        (agent a1) (agent a2)
        (loc l1) (loc l2) (loc l3) (loc l4)
        (uses_roads a1)
        (uses_roads a2) (uses_bridges a2)
        (at a1 l1) (at a2 l2)
        (conn_road l1 l2) (conn_road l2 l3) (conn_road l3 l4) (conn_road l4 l1)
        (conn_bridge l1 l2) (conn_bridge l2 l3) (conn_bridge l3 l4)
    )

    (:goal (and (vis l1) (vis l2) (vis l3) (vis l4)))
)