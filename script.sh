# 1. Make sure you’re on the feature branch
git checkout feature-jenkins-integration

# 2. Make new changes (edit or add files)
# e.g.
echo "new change" >> test.txt

# 3. Stage and commit
git add .
git commit -m "added new test change for PR"

# 4. Push to the same branch
git push origin feature-jenkins-integration

