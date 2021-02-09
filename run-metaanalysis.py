import subprocess

input_samples = list()
with open("meta-input.txt", "r") as input: 
    for line in input: 
        sp = line.split()
        input_samples.append([sp[0], sp[1], sp[2]])

print "Running samples: "
print "-----------------------------------"
for s in input_samples: 
    if s[2] == "pe": 
        print s
print "-----------------------------------"

cnt = 0
for s in input_samples: 
    if s[2] == "pe": 
        try: 
            download = "fastq-dump.2.9.6 -O ./input_data/ " + s[1] + " --split-files"
            subprocess.call(download.split())
            command = "bash get-counts.sh "+ s[0] +" at_genome.fa at.gtf "+  s[1]+"_1.fastq " + s[1]+"_2.fastq"  
            subprocess.call(command.split())
            print str(cnt) + " done" ; cnt = int(cnt) + 1

        except: 
            print "Analysis of " + s[0] + "failed!"

print "All done chief!!"


'''
export PATH="$HOME/sratoolkit.2.9.6-ubuntu64/bin/:$PATH"
'''