;Seed for random function
(setf *random-state* (make-random-state t))

;Creates a simple expression with up to 4 elements with either constants or variables
(defun genRandExp()
    ;Gets a random operator and variable from global lists
    (setq op (nth (random 3) opList))
    (setq var (nth (random 3) varOpList))
    ;Variable to hold expression list
    (setq expression (list op))

    ;Loops 1-4 times, each time adding a random var or num to the expression
    (dotimes (num (+ 1(random 4)))
        ;Gets number (-9,9)
        (setq randNum (random 9))
        (if (= 1 (random 2))
            (setq randNum (- randNum)))
        ;Randomly picks a var or num to add to the expression
        (setq randy (random 2))
        (if (= 1 randy)
            (nconc expression (list var)))
        (if (= 0 randy)
            (nconc expression (list randNum)))
    )
    (return-from genRandExp expression)
)

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;Section for evaluating expressions (* + -)
;Uses (x y z) from sample list and substitutes with expression variables for each pass
;Each function has unique starting result value to prevent arithmetic errors
;Each returns evaluated answer of expression
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;Multiplies elements in expression
(defun mult(expr)
    (setf result 1)
    (loop for var in expr
        do
        (if (eq var 'X) (setq var X))
        (if (eq var 'Y) (setq var Y))
        (if (eq var 'Z) (setq var Z))
        (format t "~D * ~D  =" result var)
        (setf result (+ (* var result)))
        (format t "~D~%" result)
    )
    (return-from mult result)
)
;Adds elements in expression
(defun add(expr)
    (setf result 0)
    (loop for var in expr
        do
        (if (eq var 'X) (setq var X))
        (if (eq var 'Y) (setq var Y))
        (if (eq var 'Z) (setq var Z))
        (format t "~D + ~D  =" result var)
        (setf result (+ result var))
        (format t "~D~%" result)
    )
    (return-from add result)
)
;Subtracts elements in expression
(defun minus(expr)
    ;Issue with starting result not being constant, need to account for leading variable
    (setf result (car expr))
    (if (eq (car expr) 'X) (setf result X))
    (if (eq (car expr) 'Y) (setf result Y))
    (if (eq (car expr) 'Z) (setf result Z))
    ;Removes leading constant or variable from expression list
    (setf expr (cdr expr))
    (loop for var in expr
        do
        (if (eq var 'X) (setq var X))
        (if (eq var 'Y) (setq var Y))
        (if (eq var 'Z) (setq var Z))
        (format t "~D - ~D  =" result var)
        (setf result (- result var))
        (format t "~D~%" result)
    )
    (return-from minus result)
)
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;Sets (x y z) variables from sample list
;Splits expression into a (sign) and list of variables & constants (expr)
;Returns absolute value delta, this is given by running expression with (sample) variable values
;   and subtracting from the answer provided in (sample) list.
(defun calcDelta(expr sample)
    (setq X (nth 0 sample))
    (setq Y (nth 1 sample))
    (setq Z (nth 2 sample))
    (setq answer (nth 3 sample))
    (setq sign (car expr))
    (setq expr (cdr expr))
    (setf delta 0)
    (format t "Sign: ~D  Expr: ~D~%" sign expr)

    ;Sending to correct arithmetic function
    (if (equal '* sign) (setf delta (mult expr)))
    (if (equal '+ sign) (setf delta (add expr)))
    (if (equal '- sign) (setf delta (minus expr)))

    ;Absoluting delta
    (setf delta (- answer delta))
    (if (< delta 0) (setf delta (- delta)))

    (format t "Result: ~A   Delta: ~A~%" result delta)
    (setf result 0)
    (return-from calcDelta delta)
)

;Checks current pool for best fit and crowns a champion
(defun finesse()
    ;Sets best fitness to first element of the pool list
    (setq expList (cdr expList))
    (setq bestBoi (car expList))
    ;Try every sample for every expression in pool
    (loop for expr in expList
        do(loop for sample in sampleList
            do
            (format t "~%Fitness of: ~A  Sample:~A ~%" expr sample)
            ;TODO: Collect return value from calcDelta
            ;       Add the deltas from the tested expression to get sum of deltas
            ;       Determine if it is better then previous deltas and promote to bestBoi
            ;       Keep a list of deltas so that we can organize by fitness
            ;       Learn how to lisp
            (calcDelta expr sample)
        )
    )
    (nconc chosenBois (list bestBoi))
)

(defun main()
    (defvar opList (list '+ '- '*))
    (defvar expList (list nil))
    (defvar varOpList (list 'x 'y 'z))
    (defvar chosenBois (list nil))
    (defvar sampleList (list (list 0 -2 1 -16)(list -4 -5 -3 58)(list 9 8 -6 72)(list 9 -7 5 113)(list -8 7 3 150)(list 5 4 -5 20)(list 6 -4 6 41)(list -5 3 -7 -24)(list -6 -5 9 -18)(list 1 0 2 2)))
    
    ;Populates expList with 50 random expressions
    (dotimes (n 50)
        (nconc expList (list (genRandExp)))
    )

    ;Calculates fitness for population and handles populating pool stats (Mean, max, min)
    (finesse)
)

(main)