#!/bin/bash/
### test_hacker.sh

# creating dictionary: teams_repos
declare -A teams_repos
teams_repos[goodshellers]='https://github.com/ruizber23/goodshellers.git'
teams_repos[Fantasticos]='https://github.com/hxn241/Fantasticos.git'
teams_repos[Equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'
teams_repos[Team5]='https://github.com/rbarlaam/Team5'
teams_repos[Los-Bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

# 0. Repository of the selected team:
echo "Team: $1"
echo "Repository: ${teams_repos[$1]}"

# 1. Create ref_repo/ folder
mkdir ref_repo
cd ref_repo

# 2. git clone - to copy team repo to ref_repo/
git clone ${teams_repos[$1]}
cd goodshellers

# Clean the cloned repo:
find . -type f -not -name '*.out' -delete
cd ..

# 3. Compare *.out files - "campechano" vs "other_team"


# 4. Save differences into a new folder: diff/ - "diff_[other_team].out"


# 5. Read "diff_[other_team].out" file and show its result


# 6. Move "[other_team]_00[i].out" -> ref_repo/hist/ & "diff_[other_team].out" -> diff/hist/


# 7. Clean ref_repo/ & diff/


# 8. Repeat the process for each team: for loop


