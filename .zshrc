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
    zgen load romkatv/powerlevel10k powerlevel10k

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
