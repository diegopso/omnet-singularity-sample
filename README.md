# Run Omnet++ using Singularity

Simple example with Aloha experiment:

```
mkdir omnetpp-workspace && cd omnetpp-workspace
git clone git@github.com:diegopso/omnet-singularity-sample.git .
singularity build omnetpp.sif omnetpp.def
singularity shell omnetpp.sif
chmod +x install.sh
./install.sh
cd omnetpp-6.0.1/samples/aloha
./aloha -m -u Cmdenv -c PureAloha1
```

Alterntivelly using the `singularity run` command, after executing the `./install.sh` script, disconnect from the coontainer (`Ctrl+D`) and run:

```
singularity run omnetpp.sif
```
