set -gx PATH /opt/homebrew/bin $PATH

export BAT_THEME='OneHalfDark'
export LESS='-R'
fish_add_path /Applications/WezTerm.app/Contents/MacOS
fish_add_path /usr/local/bin/


## serial-monitor
##firmware flashing thingy(serial)

function swd

    cmake -B build -G Ninja -DCMAKE_TOOLCHAIN_FILE=cmake/gcc-arm-none-eabi.cmake
    cmake --build build
    stm-cli -c port=swd -w build/stm32WLxx.elf
end


function monitor
    arduino-cli monitor -p /dev/cu.usbserial-0001 -c baudrate=115200
end


function serial
    arduino-cli compile --fqbn esp32:esp32:esp32 --output-dir build .
    arduino-cli upload -p /dev/cu.usbserial-0001 --fqbn esp32:esp32:esp32:UploadSpeed=115200
end

function serial1
    arduino-cli compile --fqbn esp32:esp32:esp32cam --output-dir build .
    arduino-cli upload -p /dev/cu.usbserial-56BA0289891 --fqbn esp32:esp32:esp32cam
end



##firmware flashing thingy(ota)
function ota
    arduino-cli compile --fqbn esp32:esp32:esp32 --output-dir build .
    python3 ~/Library/Arduino15/packages/esp32/hardware/esp32/3.3.8/tools/espota.py -i 10.247.221.210 -p 3232 -f build/Takashi.ino.bin
end


## for pywal, escape sequence suport
function wals
    source ~/Public/myenv/bin/activate.fish      
    wal -i "$argv" 
    kitty @ set-colors -a -c ~/.cache/wal/colors-kitty.conf
end

function walscolor
    source ~/Public/myenv/bin/activate.fish      
    wal -i "$argv" -n
    kitty @ set-colors -a -c ~/.cache/wal/colors-kitty.conf
end


# greeting
if status is-interactive
    set -U fish_greeting "Stupidy is Greatness, sometimes"
end

#prompt
function fish_prompt
    string join '' --  (set_color ff00dd)Panther(set_color 6cff00)','(set_color ffd800) (prompt_pwd) (set_color ffd800) '>'

end

#prompt
#function fish_prompt
#string join '' --  (set_color ff00dd)~ (set_color 6cff00)','(set_color ffd800) '>'

    #end



#aliases to command, thanks Alex
alias wfh='cd /Users/bears/zkn_notes/problem_solving/cpp/justToBeSafe/luckyman/'
alias o='open'
alias stm-cli='/opt/ST/STM32CubeCLT_1.22.0/STM32CubeProgrammer/bin/STM32_Programmer_CLI'
alias mypy='source /Users/bears/Public/myenv/bin/activate.fish'
alias elizzy='cd '/Users/bears/Downloads/jackSparrow/''
alias jassie='cd /Users/bears/Library/Application\ Support/com.apple.wallpaper/aerials/videos/'
alias rustc='rustc -Awarnings'
alias c='clear'
alias v='vim'
alias vi='vim'
alias mv='mv -i'
alias rm='rm -i'
alias freecad='/Applications/FreeCAD.app/Contents/Resources/bin/freecad'
alias dream='echo January && bat *.md | grep Jan |wc && echo Feburary && bat *.md | grep Feb |wc && echo March && bat *.md | grep Mar |wc && echo April && bat *.md | grep Apr |wc && echo May && bat *.md | grep May |wc && echo June && bat *.md | grep Jun |wc && echo July && bat *.md | grep Jul |wc'

#aliases to file/directories
alias mtr='arduino-cli monitor -p /dev/cu.usbserial-56BA0289891 -c baudrate=115200'
alias ghoul='v ~/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty'
alias sk='v '~/.config/sketchybar/sketchybarrc''
alias wd2='cd '/Users/bears/Library/Arduino15/packages/esp32/hardware/esp32/3.3.8/'' #arduino-esp32 code files 
alias espota='~/Library/Arduino15/packages/esp32/hardware/esp32/3.3.8/tools/espota.py' #index for looking up the full form, not useful as a command
alias compile='arduino-cli compile --fqbn esp32:esp32:esp32 .  '
alias kit='v ~/.config/kitty/kitty.conf'
alias frc='vim '~/.config/fish/config.fish' && source '~/.config/fish/config.fish'' #crucial
alias vrc='v ~/.vimrc'
alias qc='vim ~/.qutebrowser/config.py'
alias kicad_cli='/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli'
alias lfd='cd '~/Movies/TV/Media.localized/Home_Videos/' && ls '~/Movies/TV/Media.localized/Home_Videos/''
alias wd1='cd '/Users/bears/Downloads/kicad/chand/chandra_queenofnight_draft3/' && ls '.'' #for embedded
alias note='cd "/Users/bears/zkn_notes/"'
alias wz='v '~/.wezterm.lua''
#alias niti='v "~/.config/nvim/init.lua"'
#alias show='/opt/homebrew/Caskroom/freecad/1.1.1/FreeCAD.app/Contents/MacOS/FreeCAD'
alias music='cd '~/Downloads/sound/' && ls '.''

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
