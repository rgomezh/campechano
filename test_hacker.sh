#!/bin/bash

declare -A repos

repos[equipo_campechano]='https://github.com/rgomezh/campechano.git'

repos[equipo_goodshellers]='https://github.com/ruizber23/goodshellers.git'

repos[equipo_Fantasticos]='http://github.com/hxn241/Fantasticos.git'

repos[equipo_Equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'

repos[equipo_Team5]='https://github.com/rbarlaam/Team5'

repos[equipo_Los-Bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

#Repo of selected team
echo ${repos[$1]}

#Create a working folder for cloning the repo and gets in it
mkdir ref_repo
cd ref_repo

#Clones the repo into ref_repo
git clone ${repos[$1]}



