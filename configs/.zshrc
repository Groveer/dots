export PATH=$PATH:~/.local/bin/

alias mkdir="mkdir -pv"

if command -v rsync >/dev/null; then
    alias cp="rsync -azvP"
fi

if command -v vim >/dev/null; then
    export EDITOR=vim
fi
if command -v nvim >/dev/null; then
    export EDITOR=nvim
fi

date-changelog() {
    env LC_ALL=C date +'%a, %d %b %Y %T %z'
}

export PATH="$HOME/.local/bin:$PATH"

if test -d ${HOME}/.cargo/bin; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi
if command -v eza >/dev/null; then
    alias ls="eza --icons=auto"
    alias l="ls -al"
    alias ll="ls -l"
    alias tree="ls -T"
fi
if command -v bat >/dev/null; then
    alias cat="bat -p"
fi
# if command -v zoxide >/dev/null; then
#     eval "$(zoxide init bash)"
# fi

if command -v fnm >/dev/null; then
    eval "$(fnm env --use-on-cd)"
fi
if test -d /usr/lib/qt6/bin; then
    export PATH="/usr/lib/qt6/bin/:$PATH"
fi
if test -d ${HOME}/.python_venv; then
    source ${HOME}/.python_venv/bin/activate
fi

if test -d /usr/local/texlive; then
    export MANPATH="/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH"
    export INFOPATH="/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH"
    export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
fi
test -f "/usr/share/plantuml/plantuml.jar" && export PLANTUML_JAR="/usr/share/plantuml/plantuml.jar"
test -f "/usr/share/java/plantuml/plantuml.jar" && export PLANTUML_JAR="/usr/share/java/plantuml/plantuml.jar"
if command -v lualatex >/dev/null; then
    alias llatex="lualatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error"
fi

### for install zinit:
# bash -c "$(curl --fail --show-error --silent --location https://gh.api.99988866.xyz/https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    starship/starship \
    skywind3000/z.lua

### End of Zinit's installer chunk

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions


