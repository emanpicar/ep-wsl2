# WSL 2 Subsystem dev environment setup

This repository contains information on how I setup my dev landscape in Windows OS. Everyone is welcome to use this however they want

<hr />

## Application Setup

### Install Windows WSL2
1. Search "Turn Windows features on or off"
   1. Check Windows Subsystem for Linux
   1. Check Virtual Machine Platform
1. Open PowerShell
   1. wsl --set-default-version 2
   1. download wsl2 driver if needed https://aka.ms/wsl2
   1. update wsl2 kernell if needed https://aka.ms/wsl2kernel
1. Go to Microsoft Store
   1. Install Ubuntu LTS

### Install Docker Desktop with Kubernetes

1. Install Docker Desktop
   1. https://docs.docker.com/desktop/install/windows-install/
   1. enable Hyper-V WSL2 during installation
1. Enable Kubernetes
   1. Go to Settings
   1. Resources > WSL integration > Tick Ubuntu
   1. Kubernetes > Tick Enable Kubernetes

## DevTools Setup
1. Install language version managers and direnv
   1. execute `bash scripts/ubuntu-devtools.sh`