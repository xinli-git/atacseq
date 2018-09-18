#!/bin/bash


source activate encode-atac-seq-pipeline # IMPORTANT!

# configured parameters
workflow_opt=~/projects/atacseq/atac_scg/json/scg.json

# fixed parameters, where you cloned the tool
backend_conf=~/tools/atac-seq-pipeline/backends/backend.conf
cromwell_wdl=~/tools/atac-seq-pipeline/atac.wdl
cromwell_jar=~/tools/atac-seq-pipeline/cromwell-34.jar

# configured input files
input_json=~/projects/atacseq/atac/json/ENCSR356KRQ_subsampled_scg.json
input_json=~/projects/atacseq/atac/json/20180404-3-muscle-1-5_S16.json
input_json=$1

java -jar -Dconfig.file=${backend_conf} -Dbackend.default=slurm ${cromwell_jar} run ${cromwell_wdl} -i ${input_json} -o ${workflow_opt}

# output will be in current dir, cannot config

