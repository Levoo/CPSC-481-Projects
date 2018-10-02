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
 (setq giraffePath '()) ; will hold path giraffe takes 
 (defvar gCurrentPosX 0)   ; global current x position 
 (defvar gCurrentPosY 0)   ; global current y position
 (write-line "b4")
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
    (if (< gCurrentPosX 7)
        (write (* 2 3))
    )
    
)

(main) ; call main, never forgetti moms spagettii


