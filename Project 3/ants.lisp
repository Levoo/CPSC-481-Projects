(setf *random-state* (make-random-state t))

(defvar antList (list (list (list 0 0))))
(defvar gridList (list 
        (list '- '- '- '- '- 'x '- 'x '- '- '- '- 'x '- '- '- '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- '- '- '- '- )
        (list '- 'x '- '- '- 'x '- 'x '- '- '- '- 'x '- 'x '- '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x 'x 'x 'x 'x 'x 'x 'x 'x '- '- 'x 'x 'x 'x 'x 'x '- 'x '- '- '- 'x '- '- '- '- '- '- )
        (list '- 'x '- '- '- 'x '- 'x '- 'x '- 'x 'x '- 'x 'x 'x 'x 'x '- '- 'x 'x '- '- 'x 'x '- '- '- '- 'x '- 'x '- '- 'x '- 'x '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- 'x '- 'x '- 'x 'x 'x )
        (list '- 'x '- '- '- 'x '- '- '- '- '- '- '- '- 'x '- '- '- '- '- '- 'x '- '- '- '- 'x '- '- 'x 'x 'x '- 'x '- '- '- '- 'x '- '- '- '- '- '- 'x '- 'x '- 'x '- '- '- 'x '- 'x '- 'x '- '- )
        (list '- 'x '- '- '- '- '- 'x '- '- '- '- 'x '- 'x 'x 'x 'x '- '- 'x 'x '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- '- 'x 'x 'x '- '- 'x 'x '- 'x '- 'x '- '- '- 'x '- '- '- 'x '- '- )
        (list '- 'x '- '- '- 'x '- 'x '- '- 'x 'x '- '- 'x '- '- '- '- 'x '- '- '- '- '- '- 'x 'x 'x '- '- 'x '- 'x '- '- 'x '- 'x '- '- '- '- '- '- 'x '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- '- )
        (list '- 'x '- '- '- '- '- 'x '- '- '- '- 'x '- 'x '- '- '- '- 'x '- 'x '- '- 'x 'x 'x '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- 'x '- '- '- 'x '- '- '- '- '- '- )
        (list '- 'x '- '- '- 'x '- '- '- '- '- '- 'x '- '- '- '- '- '- 'x '- 'x '- '- 'x '- 'x '- '- 'x '- 'x '- 'x '- '- 'x '- 'x '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- 'x 'x 'x 'x '- 'x '- )
        (list '- '- '- '- '- 'x '- 'x '- '- '- '- 'x '- 'x '- 'x 'x '- 'x '- 'x '- '- 'x '- 'x '- '- 'x '- 'x 'x 'x 'x 'x 'x '- 'x 'x 'x '- 'x 'x 'x 'x '- 'x '- '- '- '- '- 'x '- '- '- '- '- '- )
        (list 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x '- 'x 'x '- '- '- '- '- '- 'x '- '- 'x '- '- '- '- 'x '- 'x '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- 'x '- 'x 'x 'x '- 'x '- 'x '- 'x '- '- )
        (list '- 'x '- 'x '- '- '- '- 'x '- '- '- 'x '- 'x 'x '- 'x '- 'x '- 'x '- '- '- '- '- '- '- 'x '- '- '- '- '- 'x 'x '- '- 'x 'x '- '- '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- )
        (list '- '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- 'x '- '- '- '- '- 'x '- 'x '- '- '- '- )
        (list '- '- '- 'x 'x '- 'x '- '- '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- 'x '- '- '- '- 'x '- '- '- 'x '- '- 'x '- 'x '- '- 'x 'x '- '- 'x '- '- '- 'x '- 'x '- 'x 'x '- '- 'x )
        (list '- 'x '- '- '- '- '- '- 'x '- '- '- 'x '- 'x '- 'x '- 'x 'x 'x 'x '- 'x '- 'x 'x 'x 'x '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- 'x '- 'x '- '- '- '- )
        (list '- 'x '- 'x '- '- '- '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- '- '- 'x '- '- '- '- '- '- 'x '- '- '- '- '- 'x '- 'x 'x 'x '- 'x 'x '- )
        (list 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x 'x '- '- '- '- '- '- )
        (list '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- '- '- '- '- 'x '- '- '- 'x '- '- '- '- 'x '- '- 'x '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- '- '- '- '- 'x '- '- '- '- '- 'x '- 'x 'x '- '- '- '- '- '- '- '- 'x '- 'x 'x 'x '- 'x 'x 'x '- 'x '- 'x 'x '- 'x 'x )
        (list '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- 'x '- 'x 'x 'x '- '- '- 'x '- '- '- '- '- '- '- '- '- '- 'x '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list '- '- '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- '- 'x '- '- 'x '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list '- '- '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- 'x '- 'x '- '- '- 'x '- 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x '- '- 'x '- '- '- '- '- '- )
        (list '- 'x '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- 'x '- '- '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x 'x 'x '- 'x '- 'x )
        (list '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- 'x '- '- '- '- '- '- 'x 'x 'x 'x 'x '- 'x 'x '- 'x 'x '- '- '- 'x '- '- 'x '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- )
        (list '- 'x 'x '- 'x 'x 'x 'x '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- 'x '- '- '- 'x '- 'x '- '- '- 'x '- 'x )
        (list '- '- '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x 'x 'x '- '- '- '- '- 'x '- '- 'x '- 'x '- '- '- 'x '- 'x '- 'x '- '- '- '- )
        (list '- '- 'x '- 'x '- '- '- '- '- '- '- 'x '- '- '- 'x '- '- '- '- '- '- '- '- 'x '- 'x '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- '- '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list '- '- 'x '- 'x 'x 'x '- 'x '- 'x '- 'x '- '- '- 'x '- '- 'x '- '- '- '- '- 'x '- 'x '- '- 'x '- '- '- '- '- '- '- 'x '- '- '- 'x '- '- 'x 'x '- '- '- '- 'x '- 'x '- 'x 'x 'x '- 'x )
        (list '- '- 'x '- 'x '- '- '- '- '- 'x '- 'x '- 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x '- 'x 'x 'x '- 'x 'x 'x '- 'x 'x '- 'x '- '- '- 'x '- 'x '- '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list '- '- 'x '- 'x '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- 'x '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- '- '- 'x '- '- '- 'x '- 'x 'x 'x 'x 'x '- '- )
        (list '- '- '- '- 'x 'x '- 'x '- 'x 'x '- 'x 'x '- 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x '- 'x '- '- 'x 'x 'x 'x '- '- 'x '- '- '- '- '- 'x '- 'x '- '- 'x '- '- '- 'x '- '- '- '- '- '- '- '- )
        (list 'x 'x '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list '- '- '- '- 'x '- '- '- '- '- 'x '- 'x 'x 'x 'x 'x '- 'x 'x 'x '- 'x 'x 'x 'x '- 'x '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- 'x '- 'x '- '- 'x '- '- '- 'x '- 'x '- '- '- '- '- '- )
        (list 'x '- 'x '- 'x '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- '- '- '- '- 'x 'x 'x 'x '- 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x '- 'x '- 'x 'x )
        (list '- '- '- '- 'x 'x 'x 'x '- '- 'x '- '- '- '- '- '- '- '- 'x 'x '- 'x '- 'x 'x '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- 'x '- '- '- '- 'x '- )
        (list '- '- '- '- 'x '- '- '- '- '- 'x '- 'x '- '- '- 'x '- '- 'x '- '- '- 'x '- 'x '- '- 'x '- 'x '- '- '- '- '- '- '- 'x '- '- '- 'x '- '- '- '- '- '- 'x '- 'x '- 'x '- '- '- '- 'x '- )
        (list '- 'x 'x '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- 'x '- '- 'x '- '- '- 'x 'x 'x 'x 'x '- '- '- '- '- 'x '- 'x '- 'x 'x 'x '- '- 'x '- 'x '- '- 'x 'x 'x '- )
        (list '- '- '- '- 'x '- '- 'x '- '- 'x '- 'x '- '- '- 'x '- '- '- '- '- '- 'x '- 'x '- '- '- '- '- '- '- '- '- '- '- '- 'x '- '- '- '- '- '- '- '- '- '- '- '- 'x '- 'x '- '- '- '- 'x '- )
        (list '- '- 'x 'x '- '- '- 'x '- '- '- '- '- '- '- '- 'x '- '- 'x '- '- '- '- '- 'x '- '- '- '- 'x '- '- '- '- '- '- '- 'x '- '- '- 'x '- '- '- '- '- '- 'x '- 'x '- 'x '- '- 'x 'x 'x '- )
        (list '- '- '- '- 'x '- '- 'x '- '- 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x 'x '- 'x 'x 'x 'x 'x 'x 'x '- '- '- '- '- '- )
        (list '- '- '- '- 'x '- '- 'x '- '- 'x '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- '- )

        ))
(defvar antNum 50)
(defvar done 0)
(defvar turn 1)
(defvar finPath (list (list nil)))

;ACCESSING GRID:
    ;   Use (nth x (nth y gridList))
    ;   This will access the the coordinate (x,y) in the maze

    ;ACCESSING ANT'S PATH:
    ;   Use (loop for antPath in antList do (COMMAND1)(COMMAND2)(COMMANDN))
    ;   This will allow us to access each ant's path every turn

    ;ACCESSING ANTS:
    ;   While in the 

    ;PRINT MAP:
    ;   Use (format t "~D" gridList) 
    ;   To print the map
    ;(format t "~%~D" gridList)

;Builds a list of valid moves around the given coordinate
;Return list items meaning is based on directions shown below
;   3
;2     0
;   1
;Example of outgoing list (1 3) this means the ant can move down and up
(defun buildMoves (xpos ypos)
    (setq validMoves (list nil));List that will be returned after end
    (if (< (+ xpos 1) 61)
        (if (not (eq 'X (nth (+ xpos 1) (nth ypos gridList))))
            (nconc validMoves (list 0))));Right move 0
    (if (< (+ ypos 1) 41)
        (if (not (eq 'X (nth xpos (nth (+ ypos 1) gridList))))
            (nconc validMoves (list 1))));Down move 1
    (if (> (- xpos 1) -1)
        (if (not (eq 'X (nth (- xpos 1) (nth ypos gridList))))
            (nconc validMoves (list 2))));Left move 2
    (if (> (- ypos 1) -1)
        (if (not (eq 'X (nth xpos (nth (- ypos 1) gridList))))
            (nconc validMoves (list 3))));Up move 3
    (return-from buildMoves (cdr validMoves)) ;Calls cdr to remove nil from list
)

;Deletes the nth element in a given list (online resource)
(defun deleteNth (n list)
  (remove-if (constantly t) list :start (1- n) :count 1))

;Deletes last two moves from an ant's path
(defun removeStuff(antPath)
    (setq antPath (deleteNth (- (list-length antPath) 1) antPath))
    (setq antPath (deleteNth (- (list-length antPath) 1) antPath))
)

;Checks most recent move and compares with 2 moves ago in the history to see if the ant has just back tracked
;Will delete the last two moves if back tracking was found
(defun removeBackTrack(antPath)
    (setq prevMove (copy-list (nth (- (list-length antPath) 3) antPath)))
    (setq cMove (copy-list (nth (- (list-length antPath) 2) antPath)))
    (setq recentMove (copy-list (nth (- (list-length antPath) 1) antPath)))

    (if (and(= (nth 0 prevMove) (nth 0 recentMove))(= (nth 1 prevMove)(nth 1 recentMove)))
        (removeStuff antPath))
)

;Attempts to pinch useless information within an ants path to avoid bad scent dropping on the way back
(defun cleanPath(antPath)
    (setf count1 0)
    (setf count2 0)
    (loop for move1 in antPath do
        
    )
)

;Sets done variable and adds the finished antPath to finPath
(defun foundPath(antPath)
    (setq done 1)
    (setq finPath (copy-list antPath)))

(defun main()
    (loop while (not (= done 1)) do
        ;Goes through each ant's path list and adds the next move 
        (loop for antPath in antList do
            ;sets the current ant location to the variable ant
            (setq ant (copy-list (nth (- (list-length antPath) 1) antPath)))
            (let ((xpos (nth 0 ant))(ypos (nth 1 ant))) ;sets local variables of xpos and ypos to ant's x and y value
                ;Stops program when ant reaches finish
                (if (and (eq xpos 60)(eq ypos 40))
                    (foundPath antPath))
                
                ;Only print ants that made it to bottom right quadrant, this is just to show progress towards end
                (if (and (and (> xpos 30)(> ypos 20)) (= done 0))
                    (format t "X:~D Y:~D~%" xpos ypos))

                (setq moves (buildMoves xpos ypos));Gets a list of possible moves for ant
                (setq numMoves (list-length moves));Gets the length of the list of possible moves
                (setq sMove (random numMoves));Randoms a number within the given amount of moves
                (setq move (nth sMove moves));selects the move within the possible move list
                
                ;Allows for a 10% chance for down and right each to overide prev move choice if they exist in the possible moves list
                (setq randNum (random 100))
                (if (and (find 0 moves)(< randNum 11))
                    (setf move 0))
                (if (and (find 1 moves)(> randNum 89))
                    (setf move 1))

                ;Adds the randomly selected possible move to the ant's path
                (if (= move 0)
                    (nconc antPath (list (list (+ xpos 1) ypos))))
                (if (= move 1)
                    (nconc antPath (list (list xpos (+ ypos 1)))))
                (if (= move 2)
                    (nconc antPath (list (list (- xpos 1) ypos))))
                (if (= move 3)
                    (nconc antPath (list (list xpos (- ypos 1)))))
                
                ;Attempts to delete extra steps that are pointless i.e. (1,0) (1,1) (1,0) the last two moves will be deleted
                (if (> (list-length antPath) 3)
                    (removeBackTrack antPath))
            )
        );End of ant section

        ;(format t "Status:~D~%" done)
        ;Make new ant for first 10 turns
        (if (<= turn antNum)
            (nconc antList (list (list (list 0 0)))))
        
        (setf turn (+ turn 1));increment turn just to see how long the program is running
        ;Sends out messages to show program is hard at work
        (if (= (mod turn 939) 0)
            (format t "Ants are movin and groovin!~%"))
        (if (= (mod turn 1829) 0)
            (format t "Still working hard!~%"))
    );End of Main program loop
    (format t "Path:~D~%~D~%" finPath (list-length finPath))
    (cleanPath finPath)
);end of main

(main)