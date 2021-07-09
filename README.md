# wdl-fastqc

## Submitting a Job

```bash
./submit.sh \
    -k ~/tent/keys/secrets-aws.json \
    -i config/Preclinical_SP_batch1.inputs.json \
    -l config/Preclinical_SP_batch1.labels.json \
    -o FastQC.options.aws.json
```

## Helper Utilities

```bash
./get-fastq-list-from-s3.sh -p s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/

s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/1740_Preclinical_SP_batch1_IGO_10682_11_S11_L001_R2_001.fastq.gz
s3://dp-lab-data/collaborators/lowe/p53_loss_enrichment/Preclinical_SP_batch1/genomic/1740_Preclinical_SP_batch1_IGO_10682_11_S11_L002_R2_001.fastq.gz
```
