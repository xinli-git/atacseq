#!/bin/bash

source activate encode-atac-seq-pipeline # IMPORTANT!

# ! need to hard code, modify this script to specify where the genome url is
script_atac=~/tools/atac-seq-pipeline/conda/install_genome_data.sh

genome_fa=~/projects/atacseq/atac/reference/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
genome_url=ftp://ftp.ensembl.org/pub/release-93/fasta/rattus_norvegicus/dna/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
output_dir=~/projects/atacseq/atac_durga/reference/Rnor/


bash ${script_atac} "Rnor6" ${output_dir}


