set -e

DATASET=$1
OPTLEVEL=$2
FOLDER=~/yali/Dataset/Source/${DATASET}
FOLDERPROCESSED=${FOLDER}.done

BUILD=~/yali/Dataset/Irs/${DATASET}${OPTLEVEL}
LOGFOLDER=~/yali/Dataset/Irs/logs
OLLVM=/opt/ollvm/bin/

YC='\033[0;33m'
RC='\033[0;31m'
NC='\033[0m'

# Compile programs in C
compilingC() {
    PROG=$1
    DIR=$(basename $2)
    NAME=$(basename "$1" .c)

    mkdir -p ${BUILD}/${DIR}
    mkdir -p ${FOLDERPROCESSED}/${DIR}
    ${OLLVM}/clang -${OPTLEVEL} -S -emit-llvm ${PROG} -o ${BUILD}/${DIR}/${NAME}.ll 2>> ${LOGFOLDER}/${DATASET}_${OPTLEVEL}_log.txt && mv ${PROG} ${FOLDERPROCESSED}/${DIR}   
}

# Compile programs in CPP
compilingCPP() {
    PROG=$1
    DIR=$(basename $2)
    NAME=$(basename "$1" .cpp)

    mkdir -p ${BUILD}/${DIR}
    mkdir -p ${FOLDERPROCESSED}/${DIR}
    ${OLLVM}/clang++ -${OPTLEVEL} -S -emit-llvm ${PROG} -o ${BUILD}/${DIR}/${NAME}.ll 2>> ${LOGFOLDER}/${DATASET}_${OPTLEVEL}_log.txt && mv ${PROG} ${FOLDERPROCESSED}/${DIR}    
}


if [ -z ${DATASET} ]; then
    echo -e "${RC}Error: No repository specified!${NC}"
elif [ -z ${OPTLEVEL} ]; then
    echo -e "${RC}Error: No optimization level specified (-O3 and -O0, for instance)!${NC}"
else
    echo -e "${YC}=====> Starting in ${DATASET} (OPT = ${OPTLEVEL})...${NC}"

    # Count the number of programs
    TOTAL=1
    for d in ${FOLDER}/*/; do
        count="$(find $d -name '*.c' -or -name '*.cpp' | wc -l)"
        TOTAL=$((${TOTAL} + ${count}))
    done

    # Setup the build folder
    mkdir -p ${LOGFOLDER}

    echo "NEW COMPILATION: " >> ${LOGFOLDER}/${DATASET}_${OPTLEVEL}_log.txt
    for d in ${FOLDER}/*/; do
        for f in $d/*; do
            ext="${f##*.}"

            if [ ${ext} == "c" ]; then 
                compilingC $f $d
            elif [ ${ext} == "cpp" ]; then
                compilingCPP $f $d
            fi

            PROCESSED=$((${PROCESSED} + 1))
            PERC=$(echo "scale=2;(${PROCESSED}/${TOTAL})*100" | bc -l)
	        echo -ne "\r--- ${PERC}% Processed (${OPTLEVEL} script)!"
        done
        echo -e "\n----- Class $(basename $d) processed!"
    done
	
    # Last setup of the build folder
	source ~/yali/Compilation/ResetFolder.sh ${FOLDER}
    echo -e "-include ../Makefile.config\n-include ../Makefile.default" > ${BUILD}/Makefile
    echo "1" > ${BUILD}/Finished
    echo -e "${YC}=====> ${DATASET} Finished (OPT = ${OPTLEVEL}) <=====${NC}"
fi