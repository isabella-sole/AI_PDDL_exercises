(define (problem SAT-2var-2cl)
    (:domain SAT)
    
    (:objects
        t f
        v1 v2 
        c1 c2
    )
    
    (:init
        (value t) (value f)
        (var v1) (var v2)
        (clause c1) (clause c2)
        (in v1 c1 t) (in v2 c1 t)
        (in v1 c2 f) (in v2 c2 f)
        (unvalued v1) (unvalued v2)
    )
    
    (:goal (and (sat c1) (sat c2)))

)