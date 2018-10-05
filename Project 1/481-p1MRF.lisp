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
 (defvar giraffePath (list (list nil))) ; will hold path giraffe takes 
 (defvar gCurrentPosX 0)   ; global current x position 
 (defvar gCurrentPosY 0)   ; global current y position
 (defvar moveCount 0)
 (setq x gCurrentPosX)
 (setq y gCurrentPosY)
 (get_next_position x y)
 (write giraffePath)
)

; get_next_position moves the giraffe to a position we would like to visit
; once there we check and see if we are not outside the bounds and then 
; if that passes we check if we have already visited that position
; if all is valid we allow the giraffe to move to that position and add it to 
; our giraffePath list and keep going from there, else we move the giraffe back to were it was 
; and chose the next position available

(defun get_next_position(posx posy)
  ;check if valid move otherwise send back
  (if (/= (check_valid_pos posx posy) 1)
    (return-from get_next_position))
  ;check if position has been check_visited
  (if (/= (check_visited posx posy) 1)
    (return-from get_next_position))

  ;Adds valid move to path of 
  (setq giraffePath (append (list (list posx posy)) giraffePath))
  (setq moveCount (+ moveCount 1))
  
;Recursive calls for various moves
 ;Basic moves
    ;move right
    
  (get_next_position (+ posx 1) posy)
    ;move down
  (get_next_position posx (+ posy 1))
    ;move left
  (get_next_position (- posx 1) posy)
    ;move up
  (get_next_position posx (- posy 1))
;Knights moves
  ;knights moves top right
  (if (= (check_valid_pos (+ posx 1)(+ posy 2)) 1) 
    (get_next_position (+ posx 1) (+ posy 2)))
  (if (= (check_valid_pos (+ posx 2)(+ posy 1)) 1)
    (get_next_position (+ posx 2) (+ posy 1)))
    
  ;knights moves bottom right
  (if (= (check_valid_pos (+ posx 1)(- posy 2)) 1)
    (get_next_position (+ posx 1) (- posy 2)))
  (if (= (check_valid_pos (+ posx 2)(- posy 1)) 1)
    (get_next_position (+ posx 2) (- posy 1)))

  ;knight moves bottom left
  (if (= (check_valid_pos (- posx 1)(- posy 2)) 1)
    (get_next_position (- posx 1) (- posy 2)))
  (if (= (check_valid_pos (- posx 2)(- posy 1)) 1)
    (get_next_position (- posx 2) (- posy 1)))

  ;knights moves top left
  (if (= (check_valid_pos (- posx 1)(+ posy 2)) 1)
    (get_next_position (- posx 1) (+ posy 2)))
  (if (= (check_valid_pos (- posx 2)(+ posy 1)) 1)
    (get_next_position (- posx 2) (+ posy 1)))
  

 
  (if (= moveCount 49)
    (return-from get_next_position)
  )
  (setq moveCount (- moveCount 1))
  (write giraffePath)
  (setq giraffePath (cdr giraffePath)) ; removes useless path and returns
  (return-from get_next_position)
)

;Checks if the current x and y position has been visited
(defun check_visited(posx posy)
  (loop for pos in giraffePath
    do(
      if (equal pos (list posx posy))
        (return-from check_visited -1)
    )
  )
  (return-from check_visited 1)
)

;Checks if current x and y position are within bounds
(defun check_valid_pos(posx posy)
  (and (< posx 7) (> posx -1) (< posy 7) (> posy -1)
    (return-from check_valid_pos 1) ;return valid move (1)
  )
  (return-from check_valid_pos 0) ;return invalid move (-1)
)
(main) ; call main, never forgetti moms spagettii