(define (domain BasicMove)
    (:requirements :strips)
    
    (:predicates (at ?l)
                 (conn ?l1 ?l2)
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn ?from ?to))
        :effect (and (at ?to) (not (at ?from)))
    )
)