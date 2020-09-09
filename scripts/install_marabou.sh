#!/usr/bin/env bash

PROJECT_DIR=${PROJECT_DIR:-$(
    cd $(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)/..
    pwd
)}
source $PROJECT_DIR/scripts/install_common.sh

cd $PROJECT_DIR/bin
git clone https://github.com/NeuralNetworkVerification/Marabou
cd Marabou
mkdir build 
cd build
cmake ..
cmake --build .
cp Marabou $PROJECT_DIR/bin/marabou
