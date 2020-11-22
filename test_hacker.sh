#!/bin/bash/
### test_hacker.sh
#parameters: team_name=[goodshellers, Fantasticos, Equipo_confinados, Team5, Los-Bashers]

# creating dictionary: teams_repos
declare -A teams_repos
teams_repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
teams_repos[Fantasticos]='https://github.com/hxn241/Fantasticos.git'
teams_repos[Equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados.git'
teams_repos[Team5]='https://github.com/rbarlaam/Team5.git'
teams_repos[Los-Bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

# 0. Repository of the selected team:
echo "Team: $1"
echo "Repository: ${teams_repos[$1]}"

# 1. Create ref_repo/ folder
mkdir ref_repo
cd ref_repo

# 2. git clone - to copy team repo to ref_repo/
git clone ${teams_repos[$1]}
cd $1

# Clean the cloned repo:
find . -type f -not -name '*.out' -delete
cd ..
cd ..

# 3. Compare *.out files - "campechano" vs "other_team"
# 4. Save differences into a new folder: diffs/ - "diff_[other_team]_[00[$1]].out"
mkdir diffs

for i in {1..6}
do
	diff 00$i.out ref_repo/$1/00$i.out > dif.tmp # Creating a temp file w/ the output
	cat dif.tmp > diffs/diff_$1_00$i.out

	# IF output file exists and has a size greater than zero THEN the exercise was done by team
	if [ -s ref_repo/$1/00$i.out ]
	then
		echo "Ejercicio $i ha sido REALIZADO por $1"
		# IF diff file exists and has a size greater than zero THEN there is a difference
		if [ -s diffs/diff_$1_00$i.out ]
		then
			echo "Ejercicio $i NO es IGUAL"
		else
			echo "Ejercicio $i es IGUAL"
		fi
	else
		echo "Ejercicio $i NO ha sido REALIZADO por $1"
	fi
		
done

# 7. Clean ref_repo/
rm dif.tmp
rm -r ref_repo/$1 # Remove the folder of the git cloned repo



