#Script to parse all files for a given language using its UDPipe model

modelfile=$1
datadir=$2
outputdir=$3

files=`ls $datadir`
for i in $files
do
   ./udpipe --tokenize --tag --parse $modelfile $datadir$i --output conllu --outfile $outputdir$i".parsed.txt"
   echo $outputdir$i".parsed.txt"
done

#usage: ./bulkparselang.sh Downloads/UDPIPE/udpipe-ud-2.0-170801/czech-ud-2.0-170801.udpipe Research/CrossLing-Scoring/Datasets/CZ/ Research/CrossLing-Scoring/Datasets/CZ-Parsed/

