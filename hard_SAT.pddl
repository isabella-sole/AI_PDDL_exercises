(define (domain SAT)
    (:requirements :strips)
    
    (:predicates 
        (var ?v)
        (value ?tf)
        (clause ?c)
        (sat ?c)
        (unvalued ?v)
        (evaluated ?v ?tf)
        (in ?v ?c ?tf)
    )
    
    (:action assign_variable
        :parameters (?v ?tf)
        :precondition (and (var ?v) (value ?tf) (unvalued ?v))
        :effect (and (evaluated ?v ?tf) (not (unvalued ?v)))
    )
    
    (:action assign_clauses
        :parameters (?v ?tf ?c)
        :precondition (and (var ?v) (value ?tf) (clause ?c)
                           (evaluated ?v ?tf) (in ?v ?c ?tf))
        :effect (sat ?c)
    )
)