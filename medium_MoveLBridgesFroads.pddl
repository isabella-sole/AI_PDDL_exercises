(define (domain MoveLBridgesFroads)
    (:requirements :strips)
    
    (:predicates (at ?l)
                 (vis ?l)
                 (unvis ?l)
                 (conn_road ?l1 ?l2)
                 (conn_bridge ?l1 ?l2)
                 (LBridge)
                 (FRoad)
    )
    
    (:action move_road
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn_road ?from ?to) (unvis ?to))
        :effect (and (at ?to) (not (at ?from))
                     (not (unvis ?to)) (vis ?to)
                     (FRoad) (not (LBridge)))
    )
    
    (:action move_bridge
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn_bridge ?from ?to) (unvis ?to))
        :effect (and (at ?to) (not (at ?from))
                     (not (unvis ?to)) (vis ?to)
                     (LBridge) (not (FRoad)))
    )



)