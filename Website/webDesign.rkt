#lang racket
(require web-server/servlet
         web-server/servlet-env)
 
(define (my-app req)
  (response/xexpr
   `(html (head (title "David Exploration"))
          (body (p "Hello World using Racket!")))))
 
(serve/servlet my-app
               #:port 3000
               #:listen-ip #f)
