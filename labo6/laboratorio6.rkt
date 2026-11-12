#lang racket

(define (calcular-interes deposito)
  (cond
    [(<= deposito 40000)  (* deposito 0.035)]
    [(<= deposito 260000) (* deposito 0.04)]
    [else                 (* deposito 0.045)]))

(define (tasa-interes deposito)
  (cond
    [(<= deposito 40000)  "3.5%"]
    [(<= deposito 260000) "4.0%"]
    [else                 "4.5%"]))

(displayln "   PRUEBAS DEL PROGRAMA  ")


(define depositos-prueba '(15000 40000 75000 260000 300000 500000))

(for-each
 (lambda (monto)
   (printf "Depósito: $~a | Tasa: ~a | Interés a pagar: $~a~n"
           monto
           (tasa-interes monto)
           (~r (calcular-interes monto) #:precision '(= 2))))
 depositos-prueba)
