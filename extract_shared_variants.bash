#!/bin/bash
#SBATCH -J query
#SBATCH --mem 2G
#SBATCH --ntasks 1
#SBATCH --qos bbdefault
#SBATCH -t 00:10:00


module purge; module load bluebear
module load BCFtools/1.10.2-GCC-9.3.0

#extract Dinvestigate and Sprime shared variants
bcftools query himalaya-samtools-feb21.vcf.gz -R sharedSnps.txt -f '%CHROM\t%POS\t%ID\t%REF\t%ALT\n' > shared.pos.vep.txt