#!/bin/bash

source activate encode-atac-seq-pipeline # IMPORTANT!

# ! need to hard code, modify this script to specify where the genome url is
script_atac=~/tools/atac-seq-pipeline/conda/install_genome_data.sh

genome_fa=~/projects/atacseq/atac/reference/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
genome_url=ftp://ftp.ensembl.org/pub/release-93/fasta/rattus_norvegicus/dna/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
# must use genome with chr contigs
# must provide blacklist
genome_url=http://hgdownload.soe.ucsc.edu/goldenPath/rn6/bigZips/rn6.fa.gz
output_dir=~/projects/atacseq/atac_durga/reference/Rnor/
output_dir=~/projects/atacseq/atac_durga/reference/rn6

# bash ${script_atac} "Rnor6" ${output_dir}
bash ${script_atac} "rn6" ${output_dir}

