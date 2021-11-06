(define (domain BasicMoveWO)
    (:requirements :strips)
    
    (:predicates (at ?l)
                 (unobs ?l)
                 (conn ?l1 ?l2)
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn ?from ?to) (unobs ?to))
        :effect (and (at ?to) (not (at ?from)))
    )
)