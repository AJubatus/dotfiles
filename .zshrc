POWERLEVEL9K_MODE='awesome-fontconfig'

[ -d ~/.zgen ] || git clone https://github.com/tarjoilija/zgen.git ~/.zgen

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    #zgen load zsh-users/zsh-autosuggestions
    #zgen load /path/to/super-secret-private-plugin
    # auto update zgen and its packages every ~7 days
    zgen load unixorn/autoupdate-zgen   


    # bulk load
#    zgen loadall <<EOPLUGINS
#        zsh-users/zsh-history-substring-search
#        /path/to/local/plugin
#EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    #zgen oh-my-zsh themes/refined
    zgen load bhilburn/powerlevel9k powerlevel9k

    # save all to init script
    zgen save
fi

# Source extra config files
for file in ~/.zsh/*; do
	source "$file"
done

# Source Base16-Shell files
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# powerlevel9k settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time background_jobs virtualenv rbenv rvm)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
 
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="black"
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="16"
POWERLEVEL9K_SSH_ICON="\uf489"
 
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#
