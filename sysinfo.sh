#!/bin/bash

echo "======= Date and Time ======="
echo "Date: $(date)"
echo

echo "======= System Information ======="
hostnamectl
echo

echo "======= Versions ======="

# Helper function: run command if exists
check_cmd() {
  if command -v $1 &> /dev/null; then
    echo "$2 $($1 $3 2>&1 | head -n 1)"
  else
    echo "$2 not installed"
  fi
}

# Node.js & JavaScript ecosystem
check_cmd node "Node.js" "-v"
check_cmd npm "NPM" "-v"
check_cmd yarn "Yarn" "-v"
check_cmd nvm "NVM" "--version"

echo

# Python ecosystem
check_cmd python "Python" "--version"
check_cmd python3 "Python3" "--version"
check_cmd pip "Pip" "--version"
check_cmd pip3 "Pip3" "--version"
check_cmd pyenv "Pyenv" "--version"

echo

# Java ecosystem
check_cmd java "Java" "-version"
check_cmd javac "Javac" "-version"
check_cmd mvn "Maven" "-v"
check_cmd gradle "Gradle" "-v"

echo

# Databases
check_cmd psql "PostgreSQL (psql)" "--version"
check_cmd postgres "PostgreSQL (server)" "-V"
check_cmd mysql "MySQL" "--version"
check_cmd mongo "MongoDB (shell)" "--version"
check_cmd mongod "MongoDB (server)" "--version"
check_cmd redis-server "Redis" "--version"

echo

# Containers & Virtualization
check_cmd docker "Docker" "--version"
check_cmd docker-compose "Docker Compose" "--version"
check_cmd podman "Podman" "--version"
check_cmd kubectl "Kubectl" "version --client --short"
check_cmd minikube "Minikube" "version"

echo

# Git & Related
check_cmd git "Git" "--version"
check_cmd gh "GitHub CLI" "--version"

echo

# System package managers
check_cmd apt "APT" "--version"
check_cmd dnf "DNF" "--version"
check_cmd brew "Homebrew" "--version"

read -p "Press Enter to exit ..."

# Notes
# System Info with version checking of development tools
