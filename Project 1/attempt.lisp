
(setf *random-state* (make-random-state t))

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

(defun generate_path(posx posy)

)

(defun get_possible_positions(posx posy)
    
)
