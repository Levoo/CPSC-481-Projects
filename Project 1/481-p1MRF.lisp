; Giraffe Cover Puzzel 
; CPSC 481
; Prof Siska 
; 10/07/18
; BY: Micheal Rodriguez 
;   : Fernando Cuevas

; info 

; main function that will house our recursive function and print out the path we find
(defun main()
  "Lisp program to find path through 7*7 grid"
 (defvar giraffePath (list (list 0 0))) ; will hold path giraffe takes 
 (defvar gCurrentPosX 0)   ; global current x position 
 (defvar gCurrentPosY 0)   ; global current y position
 (get_next_position)
)

; get_next_position moves the giraffe to a position we would like to visit
; once there we check and see if we are not outside the bounds and then 
; if that passes we check if we have already visited that position
; if all is valid we allow the giraffe to move to that position and add it to 
; our giraffePath list and keep going from there, else we move the giraffe back to were it was 
; and chose the next position available

(defun get_next_position()
  ;check if valid move otherwise send back
  (if (/= (check_valid_pos) 1)
    (return-from get_next_position))
  ;check if position has been visiteds
  (if (/= (check_visited) 1)
    (return-from get_next_position))
  (write '("reached end of get_next_position"))
)

;Checks if the current x and y position has been visited
(defun check_visited()
  (loop for pos in giraffePath
    do(
      if (equal pos (list gCurrentPosX gCurrentPosY))
        (return-from check_visited -1)
    )
  )
  (return-from check_visited 1)
)

;Checks if current x and y position are within bounds
(defun check_valid_pos()
  (and (< gCurrentPosX 7) (> gCurrentPosX -1) (< gCurrentPosY 7) (> gCurrentPosY -1)
    (return-from check_valid_pos 1) ;return valid move (1)
  )
  (return-from check_valid_pos 0) ;return invalid move (-1)
)

(main) ; call main, never forgetti moms spagettii