(ns clojureclr-helloworld.core (:gen-class :main true))

(defn -main []
	(println "Hello World!")
  (Console/ReadLine))
