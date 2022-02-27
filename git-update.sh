DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
git pull
git add *
git commit -s -m $DATE
git push origin master
