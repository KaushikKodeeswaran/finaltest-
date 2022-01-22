pwd | awk -F/ '{print $NF }' > ./config
python3 git_repo_creator.py
git init
git add .
git commit -a --allow-empty-message -m ''
filename=`cat config`
git remote add origin https://github.com/KaushikKodeeswaran/${filename}"-.git"
git push -u origin main https://kaushikkodeeswaran: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@github.com/kaushikkodeeswaran/${filename}"-.git" --all
#https://auth0.com/blog/secure-software-supply-chain-with-github-security-features/