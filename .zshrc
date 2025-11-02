# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
#Zsh terminal setup
setopt extended_glob
setopt dot_glob
export PATH="/Library/TeX/texbin:$PATH"
export PATH="/opt/homebrew/opt/python@3.14/bin:$PATH"
#gnu arm toolchain

export PATH=~/stm32/gcc-arm/gcc-arm-mac-main/bin:$PATH

#path ot ohh myzsh
export ZSH="$Home/.oh-my-zsh"
alias fzf='fzf --preview="bat --style=numbers --color=always {}"'
alias usb1='/dev/tty.usbserial-110'
alias usb2='/dev/tty.usbserial-1110'
alias st-cli='/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/Resources/bin/STM32_Programmer_CLI'

# autosuggestions
alias opne='open'
alias oprn='open'
alias py3='python3'

alias get_idf='. $HOME/esp/esp-idf/export.sh'
#plugin


#PROMPT
NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{#2E3440}%F{#E5E9F0}$(date +%_I:%M%P) %K{#3b4252}%F{#ECEFF4} %n %K{#4c566a} % %f%k ❯ " # nord theme
echo -e "${NEWLINE}\x1b[38;5;137m\x1b[48;5;0m it's $(date '+%I:%M %p') \x1b[38;5;180m\x1b[48;5;0m up $(uptime | awk '{print $3,$4}' | sed 's/,//') \x1b[38;5;223m\x1b[48;5;0m $(uname -r) \033[0m"


#highlight package source
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load modules
#zmodload zsh/complist
#autoload -U compinit && compinit
#autoload -U colors && colors
# autoload -U tetris

#SPELLING alias
alias ytsubs='open "https://www.youtube.com/feed/subscriptions/"'
alias ytplay='open "https://www.youtube.com/feed/playlists/"'
alias phpstart='php -S localhost:8000'
alias c='clear'
alias grep='grep --color=auto'
alias sleep='pmset sleepnow'
alias sql='mysql -u shawez -p' #password: your_password_here
alias p='open -a preview'
alias gnu='gnuradio-companion'
#SHORTCUT alias
alias f='open -a Finder'

alias qconfig='vi "~/.qutebrowser/config.py"'
alias pydoc='python -m pydoc'
alias dwn='cd "downloads/"'
alias doc='cd "documents/"'
alias notes='lsd "downloads/zkN_notes" && cd "downloads/zkN_notes/"'
alias python='/usr/bin/python3'
alias lsp='ls *.png'
alias lsm='ls *.md'
alias latex='cd "downloads/zkN_notes/experiments/"'
alias zshopen='sudo vi ~/.zshrc && source ~/.zshrc'
alias mypy='source /Users/bears/Public/myenv/bin/activate'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias vimrc='vi ~/.vimrc'
alias lsg='lsd --group-dirs=first'
alias rm='rm -i'
#alias notesF='~/downloads/zkN_notes/'

#Application Shortcut
alias cute='open -a qutebrowser'
alias brave='open -a "Brave Browser"'
alias stm='open -a STM32CubeIDE'
alias mail= 'open -a Notion mail'
alias tv='open -a TV'
alias notion='open -a Notion'
alias note='open -a Notes'
alias safari='open -a safari'
alias anki='open -a anki'

#git commands




export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin
