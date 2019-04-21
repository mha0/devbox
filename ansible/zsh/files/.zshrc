source $HOME/.zsh.d/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle gitignore
antigen bundle docker
antigen bundle docker-compose
antigen bundle mvn
antigen bundle spring
antigen bundle pip
antigen bundle redis-cli
antigen bundle zsh_reload
antigen bundle peterhurford/up.zsh
antigen bundle sparsick/ansible-zsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme avit

antigen apply

# various
if [ -f ~/.custom_bashrc ]; then
    . ~/.custom_bashrc
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# docker
alias dcid='docker ps -q | sed -n 1p'
alias dcbash='docker exec -ti $(dcid) bash'
alias dclogs='docker logs $(dcid)'
alias dckill='dcid | xargs docker stop | xargs docker rm'

# clipboard
alias xc="xclip -selection c"
alias xv="xclip -selection c -o"