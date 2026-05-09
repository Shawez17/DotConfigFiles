export BAT_THEME='OneHalfDark'
set LSCOLORS green
fish_add_path /Applications/WezTerm.app/Contents/MacOS
fish_add_path /usr/local/bin/

## for pywal, escape sequence suport
function wals
    source ~/Public/myenv/bin/activate.fish      
    wal -i $argv
    kitty @ set-colors -a -c ~/.cache/wal/colors-kitty.conf
end


# greeting
if status is-interactive
    set -U fish_greeting "wake up,Neo..."
end

#prompt
function fish_prompt
    string join '' -- (set_color yellow)__bear__ (set_color green)',' (prompt_pwd) ',' (set_color blue) '>'
end

#aliases to command, thanks Alex
alias c='clear'
alias v='vim'
alias vi='vim'
alias mv='mv -i'
alias ls='ls --color'
alias rm='rm -i'
alias freecad='/Applications/FreeCAD.app/Contents/Resources/bin/freecad'

#aliases to file/directories
alias kit='v ~/.config/kitty/kitty.conf'
alias frc='vim '~/.config/fish/config.fish' && source '~/.config/fish/config.fish'' #crucial
alias vrc='v ~/.vimrc'
alias qc='vim ~/.qutebrowser/config.py'
alias kicad_cli='/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli'
alias lfd='cd '~/Movies/TV/Media.localized/Home_Videos/' && ls '~/Movies/TV/Media.localized/Home_Videos/''
alias wd='cd '/Users/bears/Downloads/kicad/chand/' && ls '.''
alias note='cd "/Users/bears/zkn_notes/"'
alias wz='v '~/.wezterm.lua''
alias niti='v "~/.config/nvim/init.lua"'
alias show='/opt/homebrew/Caskroom/freecad/1.1.1/FreeCAD.app/Contents/MacOS/FreeCAD'
alias sangeet='cd '~/Downloads/sound/' && ls '.''

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



thefuck --alias | source
