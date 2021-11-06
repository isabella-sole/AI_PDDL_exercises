(define (domain Hanoi)
    (:requirements :strips)
    
    (:predicates
        (clear ?x)
        (on ?x ?y)
        (smaller ?x ?y)
    )
    
    (:action move
        :parameters (?disc ?current ?dest)
        :precondition (and (clear ?disc) (clear ?dest)
                           (on ?disc ?current) (smaller ?disc ?dest))
        :effect (and (not (clear ?dest)) (not (on ?disc ?current))
                     (clear ?current) (on ?disc ?dest))
    )

)