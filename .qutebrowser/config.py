

# import catppuccin # catpuccin thingy

# load your autoconfig, use this, if the rest of your config is empty!

import pywalQute.draw

config.load_autoconfig(True)
c.colors.statusbar.command.bg = "black"
pywalQute.draw.color(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})


# set the flavor you'd like to use
# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
# last argument (optional, default is False): enable the plain look for the menu rows
# catppuccin.setup(c, 'mocha', True) #catpuccin thingy
c.statusbar.position="top" # took me lot of tie and the erro was 'i' in position word
c.colors.statusbar.insert.bg='#000000'#status bar -> insert mode
c.colors.statusbar.insert.fg='#ff00d1'
c.content.pdfjs=True
c.colors.statusbar.command.fg='#FFFFFF'
# Something something bread recommends
config.set("content.webgl", False, "*")
config.set("content.canvas_reading", False)
config.set("content.geolocation", False)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.cookies.accept", "all")
config.set("content.cookies.store", True)

#keybinding
#config.source('themes/qute-city-lights/city-lights-theme.py') #theme

config.bind('tH', 'config-cycle tabs.show multiple never')
config.bind('sH', 'config-cycle statusbar.show always never')
config.bind('a','open -t !arch') ## i dont have ajob so nothign stop me.this is for archwiki
config.bind('w','config-source') ## ultra useful when playing with it
config.bind('r','reload') #some site wont open , so this works
config.bind('gj','tab-move -')
config.bind('gk','tab-move +')
config.bind('<shift-cmd-left>','tab-prev')
config.bind('<shift-cmd-right>','tab-next')
config.bind('h','history')
config.bind('dc','download-clear')
config.bind('<cmd-f>','spawn open -a Brave\ Browser.app {url}')
config.bind(
    '<ctrl-m>',
    'spawn /opt/homebrew/bin/mpv "{url}"'
)
config.bind('<ctrl-t>', 'spawn open -a WezTerm') #ultra useful aas i heavily rely on command line utility, terminal at my chose next to browser save time
config.bind('<shift-j>','tab-prev')
config.bind('<shift-k>','tab-next')
config.bind('o', 'cmd-set-text -s :open -t') #modify
config.bind('u', 'cmd-set-text -s :open -t !yt') #for utube,alternative to  hands on 
config.bind('x', 'cmd-set-text -s :open -t !reddit') #father of all internet conversation about any topic, an initial booster in learning new stuff
config.bind('<shift-x>','cmd-set-text -s :open -t !wiki') #father of all internet conversation about any topic, an initial booster in learning new stuff
config.bind('g','cmd-set-text -s : open -t chatgpt.com')
config.bind('z', 'cmd-set-text -s :open -t !lib') #library for arcticle
config.bind('<cmd-=>', 'zoom-in') # trick way of writing cmd++ for zoom , cause just '+' sucks
config.bind('<cmd-->', 'zoom-out')

for mode in ["normal", "caret"]:
    config.bind('gs', 'spawn --userscript yomichad', mode=mode)
    config.bind('gS', 'spawn --userscript yomich/ad --prefix-search', mode=mode)

#darkmodeA
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.statusbar.show = 'always'
c.downloads.location.directory = '~/Downloads/qutebrowser_files/'
c.fonts.default_family = ['Arial Narrow', 'Arial']
c.fonts.default_size = '19pt' # tab
c.content.default_encoding = 'utf-8'

#Colos
#c.colors.webpage.bg = '#00a7d7'

#pages call
#pages call
c.content.user_stylesheets = [
    "~/.qutebrowser/style/tube-tweaks.css",
    "~/.qutebrowser/style/nptel-tweaks.css",
    #"~/.qutebrowser/style/neet-tweaks.css"
]
# theme
c.tabs.title.format = "{audio}{current_title}"
c.fonts.web.size.default = 20


#fonts, i doubt this works as intended!
c.fonts.default_family = []
c.fonts.default_size = '17pt'
c.fonts.web.family.fixed = 'Arial Narrow'
c.fonts.web.family.sans_serif = 'Arial Narrow'
c.fonts.web.family.serif = 'Arial Narrow'
c.fonts.web.family.standard = 'Arail Narrow'


#blocking
c.content.blocking.enabled = True


#search engine
c.url.searchengines = {
# note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!pip' :'https://pypi.org/search/?q={}',
        '!pt': 'https://in.pinterest.com/search/pins/?q={}',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        '!gog': 'https://www.geeksforgeeks.org/search/?gq={}',
        '!py' : 'https://docs.python.org/3/search.html?q={}',
        '!ht' : 'https://www.hotstar.com/in/explore?search_query={}',
        '!mubi' : 'https://mubi.com/en/search/films?query={}',
        '!lib' : 'https://z-library.sk/s/{}',
        '!snap' : 'https://www.snapeda.com/search/?q={}&search-type=parts',
        '!file' : 'https://www.file-extensions.org/search?search={}',
        '!cc':'https://en.cppreference.com/index.php?search={}&title=Special%3ASearch&go=',
        '!esp': 'https://espressif-docs.readthedocs-hosted.com/projects/arduino-esp32/en/latest/search.html?q={}&check_keywords=yes&area=default',
        '!ytm':'https://music.youtube.com/search?q={}',
        '!flix':'https://www.netflix.com/search?q={}'

#https://neetcode.io/problems/generate-parentheses?list=neetcode150
        }



