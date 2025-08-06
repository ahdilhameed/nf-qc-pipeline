#!/usr/bin/env nextflow


process FASTQC {

    tag "{file(reads).simpleName}"
    publishDir "results/fastqc", mode: 'copy'
    container 'quay.io/biocontainers/fastqc:0.11.9--0'
    
    input:
        path reads

    output:
        path "*.zip"
        path "*.html"


    script:
    """
    fastqc $reads 
    """
}