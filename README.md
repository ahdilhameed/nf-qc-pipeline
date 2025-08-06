# FastQC + MultiQC Pipeline

This is a simple Nextflow pipeline to run FastQC on FASTQ files and aggregate results with MultiQC.

## Requirements
- Nextflow (>=22.10.0)
- Docker / Singularity / Conda (choose one)

## Usage

```bash
nextflow run main.nf -profile test
