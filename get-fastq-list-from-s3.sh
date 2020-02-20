#!/bin/bash -e

# path_fastq="s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/"

usage()
{
cat << EOF
USAGE: `basename $0` [options]
    -p  S3 URI to FASTQ files
EOF
}

while getopts "p:h" OPTION
do
    case $OPTION in
        p) path_fastq=$OPTARG ;;
        h) usage; exit 1 ;;
        *) usage; exit 1 ;;
    esac
done

if [ -z "$path_fastq" ]
then
    usage
    exit 1
fi

aws s3 ls ${path_fastq} | awk -F' ' -v s3=${path_fastq} '{ print s3 $4 }'
