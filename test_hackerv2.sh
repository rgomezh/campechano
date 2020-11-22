#!/bin/bash

declare -A repos
# Create a repository associative array
repos[campechano]='https://github.com/rgomezh/campechano.git'
repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
repos[Fantasticos]='http://github.com/hxn241/Fantasticos.git'
repos[Equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos[Team5]='https://github.com/rbarlaam/Team5'
repos[Los-Bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

# Create a reposotitory folder if not exists and go into 
folderRepos="ref_repo"
folderDiff="diff"

mkdir -p "$folderRepos/$1" 
mkdir -p "$folderDiff"

# Clone the team repository passed by argument  
git clone -q  ${repos[$1]} $folderRepos/$1

# Get out files from the repository
array=( $(find . -maxdepth 1 -type f -name "*.out" | sort -n) )

echo "Tras hackear el repo del equipo ”$1”, este es el resultado:"

# Loop over it
for i in ${array[@]}
do
	if  [ ! -f $folderRepos/$1/$i ]; then
		continue
	fi

	response="Ejercicio ${i:2} es igual"
	diffContent=( $(diff $i $folderRepos/$1/$i) )
	echo $diffContent > $folderDiff/$folderDiff"_${i:2}"
	(( $(cat $folderDiff/$folderDiff"_${i:2}" | wc -c) > 1 )) && response="Ejercicio ${i:2} NO es igual"
	echo $response
done

rm -rf $folderRepos
rm -rf $folderDiff
