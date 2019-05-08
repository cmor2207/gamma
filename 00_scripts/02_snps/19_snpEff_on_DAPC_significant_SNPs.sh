#!/usr/bin/env bash
#PBS -q mpi
#PBS -l walltime=24:00:00
#PBS -l mem=115g
#PBS -N snpeff


SNPEFF=
DBNAME=

WORKDIR="gamma"
OUTDIR=/07_snps/03_SNPeff
VCF=/07_snps/01_freebayes/your_filtered_vcf.vcf
mkdir -p $OUTDIR
cd $SNPEFF

java -Xmx115G -jar $SNPEFF/snpEff.jar $DBNAME $WORKDIR/$VCF > $OUTDIR/your_filtered_vcf_annotated.vcf ;

cp $SNPEFF/snpEff_summary.html $OUTDIR/your_filtered_vcf.html ;
cp $SNPEFF/snpEff_genes.txt $OUTDIR/your_filtered_vcf_genes_summary.txt ;

