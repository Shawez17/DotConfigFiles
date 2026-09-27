set -gx PATH /opt/homebrew/bin $PATH

set -gx LS_COLORS 'di=1;38;2;255;255;255:fi=38;2;77;190;196'
alias ls='gls --color=auto'

export BAT_THEME='OneHalfDark'
export LESS='-R'
fish_add_path /Applications/WezTerm.app/Contents/MacOS
fish_add_path /usr/local/bin/
# integrating fzf in shell

## serial-monitor
## arduino- cli wrapper
function ac
    command arduino-cli $argv | less
end




##firmware flashing thingy(serial)

function loraswd
    arduino-cli compile --fqbn STMicroelectronics:stm32:LoRa:pnum=LORA_E5_MINI,upload_method=swdMethod --output-dir build .
    arduino-cli upload --fqbn STMicroelectronics:stm32:LoRa:pnum=LORA_E5_MINI,upload_method=swdMethod -p usbserial-10
end 



function swd
    cmake -B build -G Ninja -DCMAKE_TOOLCHAIN_FILE=cmake/gcc-arm-none-eabi.cmake
    cmake --build build
    stm-cli -c port=swd -w build/stm32WLxx.elf
end


function m115200_1
    arduino-cli monitor -p /dev/cu.usbserial-0001 -c baudrate=115200
end

function m9600_1
    arduino-cli monitor -p /dev/cu.usbserial-0001 -c baudrate=9600
end

function vcrk_raspi
    arduino-cli compile --fqbn rp2040:rp2040:vicharak_shrike-lite --output-dir build .
    arduino-cli upload -p /dev/cu.usbmodem1301 --fqbn rp2040:rp2040:vicharak_shrike-lite:UploadSpeed=115200
end

function espS
    arduino-cli compile --fqbn esp32:esp32:esp32 --output-dir build .
    arduino-cli upload -p /dev/cu.usbserial-0001 --fqbn esp32:esp32:esp32:UploadSpeed=115200
end

function espS-c 
    arduino-cli compile --fqbn esp32:esp32:esp32 --output-dir build .
end
 
function espS-up
    arduino-cli upload -p /dev/cu.usbserial-0001 --fqbn esp32:esp32:esp32:UploadSpeed=115200
end


function avrS
    arduino-cli compile --fqbn arduino:avr:nano --output-dir build .
    arduino-cli upload -p /dev/cu.usbserial-1110 --fqbn arduino:avr:nano 
end



function avrUno
    arduino-cli compile --fqbn  arduino:avr:uno --output-dir build .
    arduino-cli upload -p /dev/cu.usbserial-1110 --fqbn arduino:avr:uno
end

function raspiS
    arduino-cli compile --fqbn rp2040:rp2040:rpipico --output-dir build .
    arduino-cli upload -p /dev/cu.usbmodem11201 --fqbn rp2040:rp2040:rpipico
    arduino-cli monitor -p /dev/cu.usbmodem11201 -c baudrate=115200
end

function raspiS-wiz
    arduino-cli compile --fqbn rp2040:rp2040:wiznet_5100s_evb_pico --output-dir build .
    arduino-cli upload -p /dev/cu.usbmodem11201 --fqbn rp2040:rp2040:wiznet_5100s_evb_pico
    arduino-cli monitor -p /dev/cu.usbmodem11201 -c baudrate=9600
end


##firmware flashing thingy(ota)
function ota
    arduino-cli compile --fqbn esp32:esp32:esp32 --output-dir build .
    python3 ~/Library/Arduino15/packages/esp32/hardware/esp32/3.3.8/tools/espota.py -i 10.247.221.210 -p 3232 -f build/Takashi.ino.bin
end


## for pywal, escape sequence suport
function wals
    source ~/Public/myenv/bin/activate.fish      
    wal -i "$argv" -s
    kitty @ set-colors -a -c ~/.cache/wal/colors-kitty.conf
end

function walscolor
    source ~/Public/myenv/bin/activate.fish      
    wal -i "$argv" -n
    kitty @ set-colors -a -c ~/.cache/wal/colors-kitty.conf
end



#prompt
function fish_prompt
    string join '' -- (set_color ff00dd) (whoami) (set_color 6cff00) '@' (uname) (set_color ffd800) ' ' (prompt_pwd) (set_color ffd800)' > '
end

function fish_right_prompt
end

#prompt
#function fish_prompt
#string join '' --  (set_color ff00dd)~ (set_color 6cff00)','(set_color ffd800) '>'

    #end

# themes
# ~/.config/fish/config.fish
if status is-interactive
    curl -s ysap.sh/theme 
    clear
    set -U fish_greeting "If you're in pitch blackness, all you can do is sit tight until your eyes get used to the dark."
 
end

#aliases to command, thanks Alex
#alias qt= 'cd ~/.qutebrowser/style/'
alias fillum= 'cd /Users/bears/Movies/TV/Media.localized/Home_Videos'
alias tft='cd /Users/bears/Library/Arduino15/staging/libraries/Adafruit_ST7735_and_ST7789_Library-1.11.0/examples/graphicstest'
alias ard='cd /Users/bears/Library/Arduino15'
alias uc='cd /Users/bears/Downloads/kicad/chand/chandra_queenofnight_draft3/microcontroller'
alias wire='cd /Users/bears/Library/Arduino15/packages/esp32/hardware/esp32/3.3.8/libraries/Wire/examples/WireScan'
alias avrtool='avrdude -c arduino -p atmega328p -P /dev/cu.usbserial-1110 -v'
alias fzf='fzf | pbcopy'
alias dw='cd ~/Downloads/'
alias arr='cd /Users/bears/Downloads/voices/Poster/'
alias lora='cd /Users/bears/zkn_notes/problems/cpp/justToBeSafe/luckyman/'
alias o='open'
alias stm-cli='/opt/ST/STM32CubeCLT_1.22.0/STM32CubeProgrammer/bin/STM32_Programmer_CLI'
alias mypy='source /Users/bears/Public/myenv/bin/activate.fish'
alias movies='cd '/Users/bears/Movies/TV/Media.localized/Home_Videos''
alias jassie='cd /Users/bears/Library/Application\ Support/com.apple.wallpaper/aerials/videos/'
alias muse='cd /Users/bears/Downloads/sound/'
alias rustc='rustc -Awarnings'
alias c='clear'
alias v='vim'
alias vi='vim'
alias mv='mv -i'
alias rm='rm -i'
alias freecad='/Applications/FreeCAD.app/Contents/Resources/bin/freecad'
alias dream='echo January && bat *.md | grep Jan |wc && echo Feburary && bat *.md | grep Feb |wc && echo March && bat *.md | grep Mar |wc && echo April && bat *.md | grep Apr |wc && echo May && bat *.md | grep May |wc && echo June && bat *.md | grep Jun |wc && echo July && bat *.md | grep Jul |wc'

#aliases to file/directories
alias picotool_mbd='/Users/bears/Library/Arduino15/packages/arduino/tools/rp2040tools/1.0.6/picotool'




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
alias smps='cd '/Users/bears/Downloads/kicad/chand/chandra_queenofnight_draft3/' && ls '.'' #for embedded
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
