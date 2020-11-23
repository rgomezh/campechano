#!/bin/bash

if [ -z "$1" ]; then
	echo "No repository supplied"
 	echo "Usage: test_header.sh TEAM_REPOSOTORY_NAME"
	exit 1
fi

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
mkdir -p "$folderRepos/$1" 

# Clone the team repository passed by argument  
git clone -q  ${repos[$1]} $folderRepos/$1

# Get out files from the repository
array=( $(find . -maxdepth 1 -type f -name "*.out" | sort -n) )

echo "Tras hackear el repo del equipo ”$1”, este es el resultado:"

# Loop over it
for i in ${array[@]}
do
	response="Ejercicio ${i:2} es igual"
	(( $(diff $i $folderRepos/$1/$i | wc -c) > 0 )) && response="Ejercicio ${i:2} NO es igual"
	echo $response
done

rm -rf $folderRepos
