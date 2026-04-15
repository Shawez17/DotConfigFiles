fish_add_path /Applications/WezTerm.app/Contents/MacOS
fish_add_path /usr/local/bin/

# greeting
if status is-interactive
    set -U fish_greeting "wake up,Neo..."
end

#prompt
function fish_prompt
    printf "%s@%s %s> " (whoami) (uname) 
end

#aliases to command, thanks Alex
alias c='clear'
alias v='vim'
alias vi='vim'
alias mv 'mv -i'
alias ls='ls --color'
alias rm='rm -i'

#aliases to file/directories
alias frc='vim '~/.config/fish/config.fish' && source '~/.config/fish/config.fish'' #crucial
alias vrc='v ~/.vimrc'
alias qc='vim ~/.qutebrowser/config.py'
alias fabr='vi '~/.config/fish/abr.fish''
alias kicad_cli='/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli'
alias lfd='cd '~/Movies/TV/Media.localized/Home_Videos/' && ls '~/Movies/TV/Media.localized/Home_Videos/''
alias ppcb='cd "/Users/bears/Downloads/kicad/customPackages/kaam25"'
alias wd='cd "/Users/bears/Downloads/kicad/thomas/chandra_queenofnight/"'
alias note='cd "/Users/bears/zkn_notes/"'
alias wz='v "~/.wezterm.lua"'
alias niti='v "~/.config/nvim/init.lua"'

#aliases serving my laziness
alias .='cd '../''
alias ..='cd '../../''
alias osa='osascript'
alias osajs='osascript -l JavaScript'
alias br='borders active_color=0xfffffa84 inactive_color=0xffe1e3e4 width=10.0 &'
alias lp='bash ~/zkn_notes/problem_solving/bash/bash/loops.sh'
alias ytsubs='open -a qutebrowser "https://www.youtube.com/feed/subscriptions/"'
alias ytplay='open -a qutebrowser "https://www.youtube.com/feed/playlists/"'
alias cute='open -n "/Applications/qutebrowser.app/"'


