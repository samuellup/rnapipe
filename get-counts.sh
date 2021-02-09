# A quick workflow for rna-seq data analysis by SDL 
# Launch: 
#   bash get-counts.sh project_name ref_gen ref_gtf reads_f reads_r 
#   bash get-counts.sh gogogo at_genome.fa at.gtf subset_col_1.fq  subset_col_2.fq

# Some initial variables
timestamp=$(date "+%F-%T")
project=$1                          # project name
input=input_data                    # folder for input data
ref_gen=$input/$2                          # reference genome file
ref_gtf=$input/$3                          # reference gtf file
reads_f=$input/$4                          # forward reads
reads_r=$input/$5                          # reverse reads
out=./output/$timestamp"_"$1            # output folder named after the project
mkdir $out                              # creating output folder
my_log_file=$out/logs/log.log                # creating log file
mkdir $out/logs
touch $my_log_file
threads=2                               # multithreading (default=1)

# 0. Read quality filter 
{
    fastp/fastp  -i $reads_f -I $reads_r -o $out/f_f.fq -O $out/f_r.fq  1> $out/logs/fastp-1 2> $out/logs/fastp-2     # -q 20 -u 50   // -adapter_sequence=AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT --adapter_sequence_r2=ATCTCGTATGCCGTCTTCTGCTTG  
} || {
    echo "Reads filtering failed"  >> $my_log_file 
    exit
}

rm  $reads_f
rm  $reads_r

# 1. Mapping to reference genome with HISAT2 
# Index preparation
{
    hisat2/hisat2-build $ref_gen $out/index  1> $out/logs/hisat-build-1 2> $out/logs/hisat-build-2
} || {
    echo "Index preparation failed" >> $my_log_file
}

# Alignment
{
    hisat2/hisat2 -p $threads  --dta-cufflinks -x $out/index -1 $out/f_f.fq -2 $out/f_r.fq -S $out/alignment.sam 1> $out/logs/hisat-1 2> $out/logs/hisat-2
    samtools1/samtools sort -@ $threads -o $out/alignment.bam $out/alignment.sam 1> $out/logs/samtools-sort-1 2> $out/logs/samtools-sort-2
    samtools1/samtools index $out/alignment.bam 1> $out/logs/samtools-index-1 2> $out/logs/samtools-index-2 

} || {
    echo "Alignment failed" >> $my_log_file
}

# 2. Transcript assembly with cufflinks
{
    cufflinks/cufflinks -p $threads -G $ref_gtf -q -o $out $out/alignment.bam  1> $out/logs/cufflinks-1 2> $out/logs/cufflinks-2
} || {
    echo "Cufflinks failed" >> $my_log_file
}


# 3. Transcritp quantification with HTSeq
{
    python HTSeq/scripts/htseq-count -s no -f bam $out/alignment.bam $ref_gtf > $out/$project"_transcript_counts.htseq"  2> $out/logs/htseq-2
} || {
    echo "HTseq-count failed" >> $my_log_file
}

# Cleanup 
rm $out/*.ht2
rm $out/*.sam
rm $out/*.bam
rm $out/*.fq


exit


alt="
# 1. Mapping to reference genome with HISAT2 
# Index preparation
{
    python hisat2/extract_splice_sites.py $ref_gtf > $out/splice_sites.ss
    python hisat2/extract_exons.py $ref_gtf > $out/exons.ex
    hisat2/hisat2-build --ss $out/splice_sites.ss --exon $out/exons.ex $ref_gen $out/index  1> $out/logs/hisat-build-1 2> $out/logs/hisat-build-2
} || {
    echo "Index preparation failed" >> $my_log_file
}
"