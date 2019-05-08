branchName=$(git status | sed -En "s/On branch ([a-Z]*)/\1/p")
submitDate=$(date "+%a-%b-%d")
echo "$branchName"
echo "$submitDate"
