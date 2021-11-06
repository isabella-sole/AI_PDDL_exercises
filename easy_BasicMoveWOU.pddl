(define (domain BasicMoveWOU)
    (:requirements :strips)
    
    (:predicates (at ?l)
                 (unobs ?l)
                 (unvis ?l)
                 (conn ?l1 ?l2)
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn ?from ?to) 
                            (unobs ?to) (unvis ?to))
        :effect (and (at ?to) (not (at ?from)) (not (unvis ?to)))
    )
)