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
folder="ref_repo"
mkdir -p "$folder" && cd $_;

# Clone the team repository passed by argument  
if [ ! -d $1 ] 
then
	git clone -q  ${repos[$1]} 
fi

cd ..

# Get out files from the repository
array=( $(find . -maxdepth 1 -type f -name "*.out" | sort -n) )

# Loop over it
for i in ${array[@]}
do
	response="Ejercicio ${i:2} es igual"
	(( $(diff $i $folder/$1/$i | wc -c) > 0 )) && response="Ejercicio ${i:2} NO es igual"
	echo $response
done

