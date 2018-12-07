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
    (return-from buildMoves (cdr validMoves))
)


(defun removeBackTrack(antPath)
    (setq prevMove (copy-list (nth (- (list-length antPath) 2) antPath)))
    (setq recentMove (copy-list (nth (list-length antPath) antPath)))

    (if (eq prevMove recentMove)
        (setq antPath (remove (nthcdr (- (list-length antPath) 2) antPath) antPath)))
    
)

(defun main()
    (loop while (not (= done 1)) do
    
        ;Goes through each ant's path list and adds the next move 
        ;(format t "Turn: ~D~%" turn)
        (loop for antPath in antList do
            ;sets the current ant location to the variable ant
            (setq ant (copy-list (nth (- (list-length antPath) 1) antPath)))
            (let ((xpos (nth 0 ant))(ypos (nth 1 ant)))
                ;Only print ants that made it to bottom right quadrant
                (if (and (and (> xpos 30)(> ypos 20)) (= done 0))
                    (format t "X:~D Y:~D~%" xpos ypos))

                (setq moves (buildMoves xpos ypos))
                (setq numMoves (list-length moves))
                (setq sMove (random numMoves))
                (setq move (nth sMove moves))
                ;If up and down can be used pick down
                ;(if (and (and (find 3 moves)(find 1 moves))(= (list-length moves) 2))
                ;    (setf move 1))
                (setq randNum (random 100))
                (if (and (find 0 moves)(< randNum 11))
                    (setf move 0))
                (if (and (find 1 moves)(> randNum 91))
                    (setf move 1))

                (if (= move 0)
                    (nconc antPath (list (list (+ xpos 1) ypos))))
                (if (= move 1)
                    (nconc antPath (list (list xpos (+ ypos 1)))))
                (if (= move 2)
                    (nconc antPath (list (list (- xpos 1) ypos))))
                (if (= move 3)
                    (nconc antPath (list (list xpos (- ypos 1)))))
                (if (> (list-length antPath) 3)
                    (removeBackTrack antPath))
                
                ;(format t "Move: ~D~%" move)
                ;Stops program when ant reaches finish
                (if (and (eq xpos 60)(eq ypos 40))
                    (setq done 1))
                (if (and (eq xpos 60)(eq ypos 40))
                    (setq finPath antPath))
                ;(format t "~D" antList)
            )
        );End of ant section

        ;(format t "Status:~D~%" done)
        ;Make new ant for first 10 turns
        (if (<= turn antNum)
            (nconc antList (list (list (list 0 0)))))
        
        (setf turn (+ turn 1))
    );End of Main program loop
    (format t "Path:~D~%~D~%" finPath (list-length finPath))
    ;ACCESSING GRID:
    ;   Use (nth x (nth y gridList))
    ;   This will access the the coordinate (x,y) in the maze

    ;ACCESSING ANTS:
    ;   Use (loop for ant in antList do (COMMAND1)(COMMAND2))
    ;   This will allow us to move each individual ant each turn

    ;PRINT MAP:
    ;   Use (format t "~D" gridList) 
    ;   To print the map
    ;(format t "~%~D" gridList)
);end of main

(main)