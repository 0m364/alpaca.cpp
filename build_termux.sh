#!/bin/bash

# Update package lists
echo "Updating package lists..."
pkg update -y

# Install dependencies
echo "Installing dependencies..."
pkg install -y clang make git wget

# Build using make
echo "Building alpaca.cpp..."
CXX=clang++ make chat

echo "Build complete. Run ./chat to start."
