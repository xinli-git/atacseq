#!/bin/bash

source activate encode-atac-seq-pipeline # IMPORTANT!

# ! need to hard code, modify this script to specify where the genome is
script_atac=~/tools/atac-seq-pipeline/conda/install_genome_data.sh

genome_fa=~/projects/atacseq/atac/reference/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
genome_url=ftp://ftp.ensembl.org/pub/release-93/fasta/rattus_norvegicus/dna/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
output_dir=~/projects/atacseq/atac/reference/Rnor/


genome_url=http://hgdownload.soe.ucsc.edu/goldenPath/rn6/bigZips/rn6.fa.gz
output_dir=~/projects/atacseq/atac_scg/reference/rn6

# must include blacklist.bed, otherwise pipeline stops

bash ${script_atac} "rn6" ${output_dir}


