#! /bin/bash

python3 -m pip install --user --upgrade numpy pandas matplotlib scipy seaborn posix_ipc

curl -L -O  https://github.com/omnetpp/omnetpp/releases/download/omnetpp-6.0.1/omnetpp-6.0.1-linux-x86_64.tgz
tar zxvf omnetpp-6.0.1-linux-x86_64.tgz
rm omnetpp-6.0.1-linux-x86_64.tgz
cd omnetpp-6.0.1
source setenv
./configure WITH_QTENV=no WITH_OSG=no WITH_OSGEARTH=no
make -j32 MODE=release
