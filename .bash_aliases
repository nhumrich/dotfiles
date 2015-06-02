alias watch='watch '
gtl() { git --no-pager log "$@" -20 --oneline --decorate; }
gtp() { branch=$(git symbolic-ref HEAD --short -q); git checkout master; git merge $branch; git push; git branch -d $branch; }
pytest() { rm -rf out/; find . -type f -name '*.pyc' -delete; python -m pytest; python3 -m pytest; }

