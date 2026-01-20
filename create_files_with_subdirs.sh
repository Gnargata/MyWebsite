#!/bin/sh
#create logfile
LOGFILE="$(pwd)/script.log"

log() {
    echo "[$(date)] $*" >> "$LOGFILE"
}
log "Script start"

#create main directory
dir="$(date)"
mkdir "$dir"
log "Created main directory: $dir"
cd "$dir"

#for loop to create 10 subdirectories that will each get 10 text files that
#each will have a differente programming language echoed into them
fileNum=101
while [ "$fileNum" -lt 111 ]
do
    log "Created subdirectory: file$fileNum"
    mkdir "file$fileNum"
    cd "file$fileNum"
    echo "Python" > tuser501.txt
    log "Created File: file$fileNum/tuser501.txt"
    echo "Java" > tuser502.txt
    log "Created File: file$fileNum/tuser502.txt"
    echo "CSS" > tuser503.txt
    log "Created File: file$fileNum/tuser503.txt"
    echo "C" > tuser504.txt
    log "Created File: file$fileNum/tuser504.txt"
    echo "C++" > tuser505.txt
    log "Created File: file$fileNum/tuser505.txt"
    echo "JavaScript" > tuser506.txt
    log "Created File: file$fileNum/tuser506.txt"
    echo "Rust" > tuser507.txt
    log "Created File: file$fileNum/tuser507.txt"
    echo "Smalltalk" > tuser508.txt
    log "Created File: file$fileNum/tuser508.txt"
    echo "CUDA" > tuser509.txt
    log "Created File: file$fileNum/tuser509.txt"
    echo "Cobol" > tuser510.txt
    log "Created File: file$fileNum/tuser510.txt"
    cd ..
    fileNum=$((fileNum +1))
done
log "Script Finished Successfully"