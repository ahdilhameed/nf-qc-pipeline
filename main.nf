#!/usr/bin/env nextflow

nextflow.enable.dsl=2

include { FASTQC } from './modules/fastqc.nf'
include { MULTIQC } from './modules/multiqc.nf'

workflow {

    Channel.fromPath('data/*.fastq.gz')
        .set { reads }

        qc = FASTQC(reads)
        merged_qc = qc[0].mix(qc[1])
        MULTIQC(merged_qc.collect())

}