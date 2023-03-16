# Run Omnet++ using Singularity

Sample repository developed to run experiments on Omnet++ using SLURM. Testes performed on [UBELIX](http://www.id.unibe.ch/hpc), the HPC cluster at the University of Bern.

## Local Experiment

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

## Submitting to HPC nodes

To submit a single task to HPC use the `submit.sh` file. Update the SBATCH configs at the begining of the file, such as the reporting email, and run:

```
sbatch submit.sh
```

## TODO

- Adjust `submit.sh` to submit multiple jobs using SLURM arrays.
