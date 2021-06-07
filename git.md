# about git

## log all

"git log --oneline --decorate --all --graph" with time

#### documents of git pretty format

https://git-scm.com/docs/pretty-formats

#### discuss of --date=???, it format for date string

https://stackoverflow.com/questions/19742345/what-is-the-format-for-date-parameter-of-git-commit

#### sample of --pretty=???, it format for full

https://stackoverflow.com/questions/1441010/the-shortest-possible-output-from-git-log-containing-author-and-date

#### result

git log --oneline --decorate --all --graph --pretty=format:"%C(yellow)%h %C(red)%ad%C(auto)%d %s" --date=format:"%Y/%m/%d %H:%M"

## show ending space in diff

git config diff.wsErrorHighlight all  
https://stackoverflow.com/questions/5257553/coloring-white-space-in-git-diffs-output