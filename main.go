package main

import (
	"fmt"
	"net/http"
	"os"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Minimize Golang Binary Docker Image Demo, I love %s!", r.URL.Path[1:])
}

func main() {
	http.HandleFunc("/", handler)
	port := "8080"
	if os.Getenv("PORT") != "" {
		port = os.Getenv("PORT")
	}
	http.ListenAndServe(":"+port, nil)
}
