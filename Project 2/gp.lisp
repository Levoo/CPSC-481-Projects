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

;Sets (x y z) variables from sample list
;Splits expression into a (sign) and list of variables & constants (expr)
;Returns absolute value delta, this is given by running expression with (sample) variable values
;   and subtracting from the answer provided in (sample) list.
(defun calcDelta(expr sample)
    (setq X (nth 0 sample))
    (setq Y (nth 1 sample))
    (setq Z (nth 2 sample))
    (setq answer (nth 3 sample))
    (setf delta 0)

    ;Evaluating expression
    (setf delta (eval expr))

    ;Absoluting delta
    (setf delta (- answer delta))
    (if (< delta 0) (setf delta (- delta)))

    ;(format t "Result: ~A   Delta: ~A~%" result delta)
    (setf result 0)
    (return-from calcDelta delta)
)

;Sorts a list of lists based on the numeric value of the last element in the nested list
(defun safe-sort(rscored-pop)
 "Return a sorted list of scored-critter elts. Don't change given list.
 NB, your Lisp's built-in sort fcn may damage the incoming list."
    (let ((sacrifice-list (copy-list rscored-pop)))
        (sort sacrifice-list
            (lambda (scored-critter-1 scored-critter-2)
            (< (nth (- (list-length scored-critter-1) 1) scored-critter-1) (nth (- (list-length scored-critter-2) 1) scored-critter-2)))
        )
        (return-from safe-sort sacrifice-list)
    )
)

;Returns average from a list of numbers
(defun average(deltas)
    (setf temp 0)
    (loop for num in deltas
        do(setf temp (+ temp num)))
    (setf temp (/ temp (- (list-length deltas) 1)))
    (return-from average temp)
)

;Gets last element in passed List (returns non list)
(defun getLast(exp)
    (setq lst (nth (- (list-length exp) 1) exp))
    (return-from getLast lst)
)

;Simple functions
(defun removeTail(n list)(remove-if (constantly t) list :start (1- n) :count 1))
(defun printGen(gen)(format t "Generation: ~D   Best: ~D    Worst: ~D   Average: ~D~%" (nth 0 gen) (nth 1 gen) (nth 2 gen) (nth 3 gen)))

;Checks current pool for best fit and updates various lists
;Lists that are updated:
;   expList         -> populated and sorted by absolute delta value
;   generationList  -> contain the (generation best worst average) of the generation's delta scores
;   chosenBois      -> top 4 expressions from the generation based on delta scores
(defun finesse()
    ;Deletes Nil from start of expList
    (if (eq (car expList) Nil) (setq expList (cdr expList)))

    (setf tempSum 0)
    ;Try every sample for every expression in pool
    (loop for expr in expList
        do(loop for sample in sampleList
            do
            ;(format t "~%Fitness of: ~A  Sample:~A ~%" expr sample)
            ;Adding the delta results for a given expression
            (setf tempSum (+ tempSum (calcDelta expr sample)))
        )
        ;(format t "After DeltaSum:~D~%" tempSum)
        ;Storing sum of abs deltas from given expression to end of list
        (nconc deltaList (list tempSum))
        (nconc expr (list tempSum))
        (setf tempSum 0)
    )
    (setq deltaList (cdr deltaList))
    ;(format t "List of Deltas: ~D~%" deltaList)

    (setq expList (safe-sort expList))
    ;(format t "~%~%Sorted: ~D" expList)
    (setq best (getLast (car expList)))
    (setq worst (getLast (nth (- (list-length expList) 1) expList)))
    (setq avg (average deltaList))

    (nconc generationList (list (list generationCount best worst avg)))
    (if (eq (car generationList) Nil)(setq generationList (cdr generationList)))
    (setq chosen1 (removeTail (list-length (nth 0 expList)) (nth 0 expList)))
    (setq chosen2 (removeTail (list-length (nth 1 expList)) (nth 1 expList)))
    (setq chosen3 (removeTail (list-length (nth 2 expList)) (nth 2 expList)))
    (setq chosen4 (removeTail (list-length (nth 3 expList)) (nth 3 expList)))
    (nconc chosenBois (list chosen1 chosen2 chosen3 chosen4))
    (if (eq (car chosenBois) Nil)(setq chosenBois (cdr chosenBois)))
    (printGen (nth generationCount generationList))
    (format t "ChosenBois: ~D~%" chosenBois)
)

(defun main()
    (defvar opList (list '+ '- '*))
    (defvar expList (list nil))
    (defvar varOpList (list 'x 'y 'z))
    (defvar chosenBois (list nil))
    (defvar sampleList (list (list 0 -2 1 -16)(list -4 -5 -3 58)(list 9 8 -6 72)(list 9 -7 5 113)(list -8 7 3 150)(list 5 4 -5 20)(list 6 -4 6 41)(list -5 3 -7 -24)(list -6 -5 9 -18)(list 1 0 2 2)))
    (defvar deltaList (list nil))
    (defvar generationList (list (list nil)))
    (defvar generationCount 1)
    ;Populates expList with 50 random expressions
    (dotimes (n 50)
        (nconc expList (list (genRandExp)))
    )

    ;Calculates fitness for population and handles populating pool stats (Mean, max, min)
    (finesse)
    (setf generationCount (+ generationCount 1))
)

(main)