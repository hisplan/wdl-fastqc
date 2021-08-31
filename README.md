# wdl-fastqc

A high throughput sequence QC analysis tool

## Setup

The pipeline is a part of SCING (Single-Cell pIpeliNe Garden; pronounced as "sing" /siŋ/). For setup, please refer to [this page](https://github.com/hisplan/scing). All the instructions below is given under the assumption that you have already configured SCING in your environment.

## Create Job Files

You need two files to run the FastQC pipeline - one inputs file and one labels file. Use the following example files to help you create your job file:

- `config/template.inputs.json`
- `config/template.labels.json`

## Submitting a Job

```bash
conda activate scing

./submit.sh \
    -k ~/keys/cromwell-secrets.json \
    -i configs/sample.inputs.json \
    -l configs/sample.labels.json \
    -o FastQC.options.aws.json
```

## Helper Utilities

```bash
$ ./get-fastq-list-from-s3.sh \
    -p s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/

s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/1740_Preclinical_SP_batch1_IGO_10682_11_S11_L001_R2_001.fastq.gz
s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/1740_Preclinical_SP_batch1_IGO_10682_11_S11_L002_R2_001.fastq.gz
```
