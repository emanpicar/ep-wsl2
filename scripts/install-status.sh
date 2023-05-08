#!/bin/bash

echo "#######################################"
echo "#######################################"
echo "#####     Install Status          #####"
echo "#####  bash ./install-status.sh   #####"
echo "#######################################"
echo "#######################################"
echo ""

source $NVM_DIR/nvm.sh

echo "gvm version: $(gvm version)"
echo "pyenv version: $(pyenv --version)"
echo "nvm version: nvm $(nvm --version)"
echo "direnv version: $(direnv --version)"

echo ""
echo "terraform version: $(terraform --version)"

echo ""
echo "istioctl:"
echo "$(istioctl version)"


echo ""
echo "#######################################"
echo "#######################################"
echo "#####    Install Status      ##########"
echo "#####      COMPLETED         ##########"
echo "#######################################"
echo "#######################################"
echo ""