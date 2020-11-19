#!/bin/bash

declare -A repos

repos[equipo_campechano]='https://github.com/rgomezh/campechano.git'

repos[equipo_goodshellers]='https://github.com/ruizber23/goodshellers.git'

repos[equipo_Fantasticos]='http://github.com/hxn241/Fantasticos.git'

repos[equipo_Equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'

repos[equipo_Team5]='https://github.com/rbarlaam/Team5'

repos[equipo_Los-Bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

#echo "${!repos[@]}"
# echo $1
#mkdir ref_repo
cd ref_repo
echo ${repos[$1]}
git clone ${repos[$1]}

array=( $(find . -type f -name "*.out") )

# loop over it
for i in ${array[@]}
do
    echo $i
done

