package main

import (
	"fmt"
	"net/http"
	"strconv"
	"time"
)

func handleRequest(rw http.ResponseWriter, req *http.Request) {
	status := 200
	for k, v := range req.URL.Query() {
		if len(v) == 0 {
			continue
		}
		switch k {
		case "status":
			if s, err := strconv.Atoi(v[0]); err == nil {
				status = s
			}
		case "delay":
			if d, err := time.ParseDuration(v[0]); err == nil {
				time.Sleep(d)
			}
		case "google":
			resp, err := http.Get("https://www.google.com")
			if err != nil {
				fmt.Println("Error making GET request:", err)
				return
			}
			defer resp.Body.Close()

			// Print the response status code
			fmt.Println("Response Status Code:", resp.Status)
		}
	}
	rw.WriteHeader(status)
}

func main() {
	http.ListenAndServe(":8080", http.HandlerFunc(handleRequest))
}
