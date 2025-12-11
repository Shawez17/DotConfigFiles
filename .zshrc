# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
#Zsh terminal setup
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.14/bin:$PATH"
setopt extended_glob
setopt dot_glob
export PATH="/Library/TeX/texbin:$PATH"
#gnu arm toolchain
autoload -Uz compinit
compinit
export PATH=~/stm32/gcc-arm/gcc-arm-mac-main/bin:$PATH
#compiling shorcut, Works under directory /Users/bears/random
alias wttr='curl wttr.in'
alias copy='bat jam.py -p|pbcopy'
alias finder='open -a finder'
alias dict='open dict://"'
alias vjs='vi jam.js'
alias vpy='vi jam.py'
alias runjs='node jam.js'
alias runpy='python3 jam.py'
alias vphp='vi jam.php'
alias runphp='php jam.php'
#path ot ohh myzsh
alias fzf='fzf --preview="bat --style=numbers --color=always {}"'
alias usb1='/dev/tty.usbserial-110'
alias usb2='/dev/tty.usbserial-1110'
alias st-cli='/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/Resources/bin/STM32_Programmer_CLI'

# autosuggestions
alias opne='open'
alias oprn='open'
#compiling/interpreting
alias p='/opt/homebrew/opt/python@3.14/bin/python3'
alias n='/opt/homebrew/bin/node'
#plugin
alias darkmode=' magick -density 150 input.pdf -background white -alpha remove -colorspace RGB -negate output.pdf'

#PROMPT
NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{#ff0060}%F{#E5E9F0}$(date +%_I:%M%P) %K{#ff00ec}%F{#000000} %n %K{#00fbff} %~ %f%k ❯ " # nord theme
echo -e "${NEWLINE}\x1b[38;5;137m\x1b[48;5;0m it's $(date '+%I:%M %p') \x1b[38;5;180m\x1b[48;5;0m up $(uptime | awk '{print $3,$4}' | sed 's/,//') \x1b[38;5;223m\x1b[48;5;0m $(uname -r) \033[0m"


#highlight package source
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#location
alias yt='cd "/Users/bears/zkn_notes/ytnotes/" && pwd'

#accounts i follow
alias alice='open "https://www.youtube.com/@AliceCappelle/videos"'
alias robin='open "https://www.youtube.com/@RCWaldun/videos"'
alias dave='open "https://www.youtube.com/@yousuckatprogramming/videos"'
alias raunaq='open "https://www.youtube.com/@RaunaqMangottill/videos"'
alias andrew='open "https://www.youtube.com/@and_loura/videos"'
alias bread='open "https://www.youtube.com/@BreadOnPenguins/videos"'
alias shehzad='open "https://www.youtube.com/@theshehzadshow/videos"'
alias james='open "https://www.youtube.com/@jvscholz/videos"'

alias jabeen='open -a DuckDuckGo "https://www.instagram.com/mohammed_jabeen/"'
alias virdas'open -a DuckDuckGo "https://www.instagram.com/virdas/"'
alias rohit='open -a DuckDuckGo "https://www.instagram.com/rohitraghv_/"'
alias batool='open -a DuckDuckGo "https://www.instagram.com/rohitraghv_/"'
alias sukh='open -a DuckDuckGo "https://www.instagram.com/pavemented/"'
alias pradeep='open -a DuckDuckGo "https://www.instagram.com/pseudoinsudo/"'
alias naman='open -a DuckDuckGo "https://www.instagram.com/pinniaata/"'
alias prish='open -a DuckDuckGo "https://www.instagram.com/prishisnotreal/"'
alias rojo='open -a DuckDuckGo "https://www.instagram.com/mojorojo/"'
alias yukta='open -a DuckDuckGo "https://www.instagram.com/theyutikasagar/"'

#courses i follow
alias movie='open -a DuckDuckGo "https://www.youtube.com/feed/storefront?bp=ogUCKAQ%3D"'
alias nauman='open -a DuckDuckGo "https://www.bayyinahtv.com/library/series/26"'
alias navdeep='open -a DuckDuckGo "https://neetcode.io/courses"'
alias navdip='open "https://neetcode.io/roadmap"'

#SPELLING alias
alias v='vi'
alias ytsubs='open "https://www.youtube.com/feed/subscriptions/"'
alias ytplay='open "https://www.youtube.com/feed/playlists/"'
alias phplocal='php -S localhost:8000'
alias c='clear'
alias grep='grep --color=auto'
alias sleep='pmset sleepnow'
alias gnu='gnuradio-companion'
#SHORTCUT alias

alias pydoc='python -m pydoc'
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
#completion<Tab>
_node_only_js() {
  compadd -X  -- *.js *.mjs *.cjs
}
compdef _node_only_js node



export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin
