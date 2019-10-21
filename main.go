package main

import (
	"syscall/js"
)

var (
	document = js.Global().Get("document")
)

func main() {
	text := document.Call("querySelector", ".text")
	text.Set("innerHTML", "hello")
}
