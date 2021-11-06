(define (domain MoveAgentsVBR)
    (:requirements :strips)
    
    (:predicates (loc ?l)
                 (agent ?a)
                 (at ?a ?l)
                 (vis ?l)
                 (uses_roads ?a)
                 (uses_bridges ?a)
                 (conn_road ?l1 ?l2)
                 (conn_bridge ?l1 ?l2)
    )
    
    (:action move_road
        :parameters (?a ?from ?to)
        :precondition (and (agent ?a) (uses_roads ?a) (at ?a ?from)
                           (loc ?from) (loc ?to)
                           (conn_road ?from ?to))
        :effect (and (at ?a ?to) (not (at ?a ?from)) (vis ?to))
    )

    (:action move_bridge
        :parameters (?a ?from ?to)
        :precondition (and (agent ?a) (uses_bridges ?a) (at ?a ?from)
                           (loc ?from) (loc ?to)
                           (conn_bridge ?from ?to))
        :effect (and (at ?a ?to) (not (at ?a ?from)) (vis ?to))
    )
)