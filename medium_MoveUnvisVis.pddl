(define (domain MoveUnvisVis)
    (:requirements :strips)
    
    (:predicates (at ?l)
                 (conn ?l1 ?l2)
                 (vis ?l)
                 (unvis ?l)
    )
    
    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn ?from ?to) (unvis ?to))
        :effect (and (at ?to) (not (at ?from))
                     (not (unvis ?to)) (vis ?to))
    )

)