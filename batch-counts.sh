../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046191		--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046190	    --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046189		--split-files 

{
    bash get-counts.sh su83 at_genome.fa at.gtf SRR10046191_1.fastq  SRR10046191_2.fastq
    bash get-counts.sh su82 at_genome.fa at.gtf SRR10046190_1.fastq  SRR10046190_2.fastq
    bash get-counts.sh su81 at_genome.fa at.gtf SRR10046189_1.fastq  SRR10046189_2.fastq
} || {
    echo "error 1"
    exit
}
echo "done batch 1"

rm input_data/SRR*

../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046188		--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046187	    --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046186		--split-files 

{
    bash get-counts.sh su73 at_genome.fa at.gtf SRR10046188_1.fastq  SRR10046188_2.fastq
    bash get-counts.sh su72 at_genome.fa at.gtf SRR10046187_1.fastq  SRR10046187_2.fastq
    bash get-counts.sh su71 at_genome.fa at.gtf SRR10046186_1.fastq  SRR10046186_2.fastq
} || {
    echo "error 2"
    exit
}
echo "done batch 2"

rm input_data/SRR*



../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046185		--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046184	    --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046183		--split-files 

{
    bash get-counts.sh su53 at_genome.fa at.gtf SRR10046185_1.fastq  SRR10046185_2.fastq
    bash get-counts.sh su52 at_genome.fa at.gtf SRR10046184_1.fastq  SRR10046184_2.fastq
    bash get-counts.sh su51 at_genome.fa at.gtf SRR10046183_1.fastq  SRR10046183_2.fastq
} || {
    echo "error 3"
    exit
}
echo "done batch 3"

rm input_data/SRR*



../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046182		--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046181	    --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046180		--split-files 

{
    bash get-counts.sh su43 at_genome.fa at.gtf SRR10046182_1.fastq  SRR10046182_2.fastq
    bash get-counts.sh su42 at_genome.fa at.gtf SRR10046181_1.fastq  SRR10046181_2.fastq
    bash get-counts.sh su41 at_genome.fa at.gtf SRR10046180_1.fastq  SRR10046180_2.fastq
} || {
    echo "error 5"
    exit
}
echo "done batch 5"

rm input_data/SRR*








../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046179		--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046178	    --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046177		--split-files 

{
    bash get-counts.sh su23 at_genome.fa at.gtf SRR10046179_1.fastq  SRR10046179_2.fastq
    bash get-counts.sh su22 at_genome.fa at.gtf SRR10046178_1.fastq  SRR10046178_2.fastq
    bash get-counts.sh su21 at_genome.fa at.gtf SRR10046177_1.fastq  SRR10046177_2.fastq
} || {
    echo "error 6"
    exit
}
echo "done batch 6"

rm input_data/SRR*




../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046176		--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046175	    --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046174		--split-files 

{
    bash get-counts.sh su13 at_genome.fa at.gtf SRR10046176_1.fastq  SRR10046176_2.fastq
    bash get-counts.sh su12 at_genome.fa at.gtf SRR10046175_1.fastq  SRR10046175_2.fastq
    bash get-counts.sh su11 at_genome.fa at.gtf SRR10046174_1.fastq  SRR10046174_2.fastq
} || {
    echo "error 7"
    exit
}
echo "done batch 7"

rm input_data/SRR*










exit







{
    bash get-counts.sh col1 at_genome.fa at.gtf SRR10046195_1.fastq  SRR10046195_2.fastq
    bash get-counts.sh col2 at_genome.fa at.gtf SRR10046196_1.fastq  SRR10046196_2.fastq
    bash get-counts.sh col3 at_genome.fa at.gtf SRR10046197_1.fastq  SRR10046197_2.fastq
} || {
    echo "error 1"
    exit
}
echo "done batch 1"


{
    bash get-counts.sh mut3 at_genome.fa at.gtf SRR10046194_1.fastq  SRR10046194_2.fastq
    bash get-counts.sh mut2 at_genome.fa at.gtf SRR10046193_1.fastq  SRR10046193_2.fastq
    bash get-counts.sh mut1 at_genome.fa at.gtf SRR10046192_1.fastq  SRR10046192_2.fastq
} || {
    echo "error 1"
    exit
}
echo "done batch 1"

exit

../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046197	--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046196  --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046195	--split-files 

../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046194	--split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046193  --split-files 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/  SRR10046192	--split-files 

exit

################################################################################################3
cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/emf2*.fq.gz ./input_data/ 
{
    gunzip ./input_data/emf*.gz
    bash get-counts.sh emf1 at_genome.fa at.gtf emf2_1_1.fq  emf2_1_2.fq
    bash get-counts.sh emf2 at_genome.fa at.gtf emf2_2_1.fq  emf2_2_2.fq
    bash get-counts.sh emf3 at_genome.fa at.gtf emf2_3_1.fq  emf2_3_2.fq
} || {
    echo "error 1"
    exit
}
echo "done batch 1"
rm ./input_data/emf2*.fq
################################################################################################3

################################################################################################3
cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/Flower*.fq.gz ./input_data/ 
{
    gunzip ./input_data/Flower*.gz
    bash get-counts.sh flo1 at_genome.fa at.gtf Flower_1_1.fq  Flower_1_2.fq
    bash get-counts.sh flo2 at_genome.fa at.gtf Flower_2_1.fq  Flower_2_2.fq
    bash get-counts.sh flo3 at_genome.fa at.gtf Flower_3_1.fq  Flower_3_2.fq
} || {
    echo "error 2"
    exit
}
echo "done batch 2"
rm ./input_data/Flower*.fq
################################################################################################3

################################################################################################3
cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/icu*.fq.gz ./input_data/ 
{
    gunzip ./input_data/icu11*.gz
    bash get-counts.sh icu1 at_genome.fa at.gtf icu11_1_1.fq  icu11_1_2.fq
    bash get-counts.sh icu2 at_genome.fa at.gtf icu11_2_1.fq  icu11_2_2.fq
    bash get-counts.sh icu3 at_genome.fa at.gtf icu11_3_1.fq  icu11_3_2.fq
} || {
    echo "error 3"
    exit
}
echo "done batch 3"
rm ./input_data/icu11*.fq
################################################################################################3

################################################################################################3
cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/Col*.fq.gz ./input_data/ 
{
    gunzip ./input_data/Col*.gz
    bash get-counts.sh col1 at_genome.fa at.gtf Col_0_1_1.fq  Col_0_1_2.fq
    bash get-counts.sh col2 at_genome.fa at.gtf Col_0_2_1.fq  Col_0_2_2.fq
    bash get-counts.sh col3 at_genome.fa at.gtf Col_0_3_1.fq  Col_0_3_2.fq
} || {
    echo "error 4"
    exit
}
echo "done batch 4"
rm ./input_data/Col*.fq
################################################################################################3

################################################################################################3
cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/cp2*.fq.gz ./input_data/ 
{
    gunzip ./input_data/cp2*.gz
    bash get-counts.sh cp21 at_genome.fa at.gtf cp2_1_1.fq  cp2_1_2.fq
    bash get-counts.sh cp22 at_genome.fa at.gtf cp2_2_1.fq  cp2_2_2.fq
    bash get-counts.sh cp23 at_genome.fa at.gtf cp2_3_1.fq  cp2_3_2.fq
} || {
    echo "error 5"
    exit
}
echo "done batch 5"
rm ./input_data/cp2*.fq
################################################################################################3

################################################################################################3
cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/DM*.fq.gz ./input_data/ 
{
    gunzip ./input_data/DM*.gz
    bash get-counts.sh dm01 at_genome.fa at.gtf DM_1_1.fq  DM_1_2.fq
    bash get-counts.sh dm02 at_genome.fa at.gtf DM_2_1.fq  DM_2_2.fq
    bash get-counts.sh dm03 at_genome.fa at.gtf DM_3_1.fq  DM_3_2.fq
} || {
    echo "error 6"
    exit
}
echo "done batch 6"
rm ./input_data/DM*.fq
################################################################################################3














exit

# Lecturas trb1-4 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352511 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352512 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352513 
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352514 

{
    bash get-counts-se.sh trb1 at_genome.fa at.gtf ERR2352511.fastq 
    bash get-counts-se.sh trb2 at_genome.fa at.gtf ERR2352512.fastq 
    bash get-counts-se.sh trb3 at_genome.fa at.gtf ERR2352513.fastq 
    bash get-counts-se.sh trb4 at_genome.fa at.gtf ERR2352514.fastq 

} || {
    echo "error 1"
    exit
}
echo "done batch 1"


exit 


#../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352507 
#../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352508
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352509  
../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352510 


################################################################################################3
{

    bash get-counts-se.sh col3 at_genome.fa at.gtf ERR2352509.fastq 
    bash get-counts-se.sh col4 at_genome.fa at.gtf ERR2352510.fastq 

    ../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352507
    ../sratoolkit.2.9.6-ubuntu64/bin/fastq-dump  -O ./input_data/ ERR2352508 
    bash get-counts-se.sh col1 at_genome.fa at.gtf ERR2352507.fastq 
    bash get-counts-se.sh col2 at_genome.fa at.gtf ERR2352508.fastq 

} || {
    echo "error 2"
    exit
}
echo "done batch 2"

################################################################################################3

rm ./input_data/ERR*


fastq-dump  -O ./input_data/ ERR2352511 
fastq-dump  -O ./input_data/ ERR2352512 
fastq-dump  -O ./input_data/ ERR2352513 
fastq-dump  -O ./input_data/ ERR2352514 


################################################################################################3
{
    bash get-counts-se.sh trb1 at_genome.fa at.gtf ERR2352511.fastq 
    bash get-counts-se.sh trb2 at_genome.fa at.gtf ERR2352512.fastq 
    bash get-counts-se.sh trb3 at_genome.fa at.gtf ERR2352513.fastq 
    bash get-counts-se.sh trb4 at_genome.fa at.gtf ERR2352514.fastq 

} || {
    echo "error 1"
    exit
}
echo "done batch 1"

################################################################################################3









exit 



################################################################################################3
{
    bash get-counts-se.sh trb1 at_genome.fa at.gtf ERR2352511.fastq 
    bash get-counts-se.sh trb2 at_genome.fa at.gtf ERR2352512.fastq 
    bash get-counts-se.sh trb3 at_genome.fa at.gtf ERR2352513.fastq 
    bash get-counts-se.sh trb4 at_genome.fa at.gtf ERR2352514.fastq 

} || {
    echo "error 1"
    exit
}
echo "done batch 1"

################################################################################################3



fastq-dump  -O ./input_data/ ERR2352511 
fastq-dump  -O ./input_data/ ERR2352512 
fastq-dump  -O ./input_data/ ERR2352513 
fastq-dump  -O ./input_data/ ERR2352514 

fastq-dump  -O ./input_data/ ERR2352507 
fastq-dump  -O ./input_data/ ERR2352508
fastq-dump  -O ./input_data/ ERR2352509  
fastq-dump  -O ./input_data/ ERR2352510 




exit


bash get-counts.sh deftest at_genome.fa at.gtf Col_0_1_1.fq  Col_0_1_2.fq


#cp /mnt/d/Lup/LECTURAS\ NGS/RNAseq-icu11/extracted/emf2_1*.fq.gz ./input_data/ 
{
    #gunzip ./input_data/emf*.gz
    bash get-counts.sh emf1 at_genome.fa at.gtf emf2_1_1.fq  emf2_1_2.fq

} || {
    echo "error 1"
    exit
}
echo "done batch 1"
#rm ./input_data/emf2*.fq


exit


