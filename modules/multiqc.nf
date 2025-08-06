process MULTIQC {
    tag "multiqc"
    
    publishDir "results/multiqc", mode: 'copy'

    container 'quay.io/biocontainers/multiqc:1.14--pyhdfd78af_0'


    input:
    path fastqc_reports

    output:
    path "multiqc_report.html"
    path "multiqc_data"

    script:
    """
    multiqc $fastqc_reports
    """
}
