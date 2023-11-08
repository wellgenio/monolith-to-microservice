package main

import (
	"io"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(rw http.ResponseWriter, req *http.Request) {
		io.WriteString(rw, "Hello, world!")
	})

	http.ListenAndServe(":8080", nil)
}
