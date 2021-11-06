(define (domain BasicMoveClearWOU)
    (:requirements :strips)
    
    (:predicates (at ?l)
                 (unobs ?l)
                 (obs ?l)
                 (unvis ?l)
                 (conn ?l1 ?l2)
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn ?from ?to) 
                        (unobs ?to) (unvis ?to))
        :effect (and (at ?to) (not (at ?from)) (not (unvis ?to)))
    )
    
    (:action clear
        :parameters (?l)
        :precondition (obs ?l)
        :effect (and (unobs ?l) (not (obs ?l)))
    )
)