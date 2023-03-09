# Run Omnet++ using Singularity

```
mkdir omnetpp-workspace && cd omnetpp-workspace
singularity build omnetpp.sif omnetpp.def
singularity shell omnetpp.sif
chmod +x install.sh
./install.sh
cd omnetpp-6.0.1/samples/aloha
./aloha -m -u Cmdenv -c PureAloha1
```
