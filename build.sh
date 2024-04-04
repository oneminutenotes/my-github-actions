#!/bin/sh
APP="hello.go"

# list go environment variables
# go env

# copy go env specific val to a variable
#MY_GOARCH=$(go env GOARCH)

# Cross-compile Go for macOS
# Use GOOS=darwin for macOS, applicable for both 64-bit and 32-bit:
GOOS=darwin GOARCH=amd64 go build -o bin/macos-intel-amd64 $APP # 64-bit
## unsupported - GOOS=darwin GOARCH=386 go build -o bin/app-386-darwin $MY_APP # 32-bit
# For Arm-based Macs (Apple Silicon), supply GOARCH=arm64:
GOOS=darwin GOARCH=arm64 go build -o bin/macos-silicon-arm64 $APP # Apple Silicon

# Cross-compile Go for Linux
# To build your Go programs for Linux, specify GOOS=linux:
GOOS=linux GOARCH=amd64 go build -o bin/linux-amd64 $APP # 64-bit
GOOS=linux GOARCH=386 go build -o bin/linux-386 $APP # 32-bit

# Cross-compile Go for Windows
# You can cross-compile Go for 64-bit Windows machines with:
GOOS=windows GOARCH=amd64 go build -o bin/windows-amd64.exe $APP
# For 32-bit, change GOARCH to 386:
GOOS=windows GOARCH=386 go build -o bin/windows-386.exe $APP

# Cross-compiling for other platforms
# Go supports many other OS and CPU combinations. Use the command below to view them all:
# $(go tool dist list)