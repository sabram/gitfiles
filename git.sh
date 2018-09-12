#Git shortcuts. Source from your bash profile.

#Pull git-completion.bash from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/git-completion.bash

alias glog='git log origin/development..development'
alias glog2='git log origin/develop..develop'
alias gdiff='git diff origin/development..development'
alias gdiff2='git diff origin/develop..develop'
alias vigc="vi /Users/sabram/dev/gitfiles/.gitconfig"
alias catgc="cat /Users/sabram/dev/gitfiles/.gitconfig"
alias s='git status'

# add git branch to prompt
# http://codeinthehole.com/writing/pull-requests-and-other-good-practices-for-teams-using-github/
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
#Note that the 94m here is Light blue for command prompt after the branch name.
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[94m\]\W \$ \[\e[m\]"
export PS1
