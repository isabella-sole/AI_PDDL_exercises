(define (problem Hanoi-3pegs-4discs)
    (:domain Hanoi)
    
    (:objects d1 d2 d3 d4 peg1 peg2 peg3)
    
    (:init
        (on d1 d2) (on d2 d3) (on d3 d4) (on d4 peg1)
        (clear d1) (clear peg2) (clear peg3)
        (smaller d1 d2) (smaller d1 d3) (smaller d1 d4)
        (smaller d2 d3) (smaller d2 d4)
        (smaller d3 d4)
        (smaller d1 peg1) (smaller d1 peg2) (smaller d1 peg3)
        (smaller d2 peg1) (smaller d2 peg2) (smaller d2 peg3)
        (smaller d3 peg1) (smaller d3 peg2) (smaller d3 peg3)
        (smaller d4 peg1) (smaller d4 peg2) (smaller d4 peg3)
    )
    
    (:goal
        (and (clear peg1) (clear peg2) (clear d1)
             (on d1 d2) (on d2 d3) (on d3 d4) (on d4 peg3))
    )
)