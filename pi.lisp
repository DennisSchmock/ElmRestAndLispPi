
(setf (EXT:LONG-FLOAT-DIGITS) 35000)
(setf *read-default-float-format* 'long-float)


(defun roundToPrecision (number precision)
  (let
    ((p (expt 10 precision)))
    (/ (round (* number p)) p)
  )
)

(write (roundToPrecision 10.0034 3))



(defun aNext(a b)
( / (+ a b) 2))

(defun bNext(a b)
(sqrt(* a b)))

(defun tNext(tn p a b)
(- tn (* p(expt (- a (aNext a b)) 2))))

(defun pNext(p)
(* 2 p))



(defun pi(a b tn p piOld)
(let(
(aN ( / (+ a b) 2))

(bN (bNext a b))

(tNew (tNext tn p a b))

(pNew (pNext p))
)

(let ((piNew (roundToPrecision (/ (expt (+ aN bN) 2) (* 4 tNew)) 15)))

(if (= piOld piNew)(write piOld)(pi aN bN tNew p piNew)))
))

(pi 1 (/ 1 (sqrt 2)) (/ 1 4) 1 1)
