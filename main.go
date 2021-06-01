package main

import (
	log "github.com/sirupsen/logrus"
)

func main() {
	log.WithFields(log.Fields{
		"animal": "elephant",
		"color":  "pink",
	}).Info("A elephant appears")
}
