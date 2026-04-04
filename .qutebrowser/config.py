config.load_autoconfig()
#keybinding
config.bind('w','config-source') ## ultra useful when playing with it
config.bind('r','reload') #some site wont open , so this works
config.bind('gj','tab-move -')
config.bind('gk','tab-move +')
config.bind('<shift-cmd-left>','tab-prev')
config.bind('<shift-cmd-right>','tab-next')
config.bind('h','history')
config.bind('dc','download-clear')
config.bind('<cmd-f>','spawn open -a firefox {url}')
config.bind(
    '<ctrl-m>',
    'spawn /opt/homebrew/bin/mpv "{url}"'
)
config.bind('<ctrl-t>', 'spawn open -a terminal') #ultra useful aas i heavily rely on command line utility, terminal at my chose next to browser save time
config.bind('<shift-j>','tab-prev')
config.bind('<shift-k>','tab-next')

config.bind('o', 'cmd-set-text -s :open -t') #modify
config.bind('u', 'cmd-set-text -s :open -t !yt') #for utube,alternative to  hands on 
config.bind('k', 'cmd-set-text -s :open -t !reddit') #father of all internet conversation about any topic, an initial booster in learning new stuff

#color scheme
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #888888, stop:1 #505050)'
#config.source('themes/wal.py')
c.colors.hints.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgba(255, 247, 133, 0.8), stop:1 rgba(255, 197, 66, 0.8))'
#c.colors.webpage.bg = "#fcffff"
#c.colors.tabs.bar.bg = "#fd8200"
#dev tools
#c.content.devtools = True
c.url.start_pages="https://www.youtube.com/@jamesvinhscholz/playlists"
c.colors.webpage.darkmode.enabled = True
# credits to
# base16-qutebrowser (https://github.com/theova/base16-qutebrowser)
# Scheme name: 0x96f
# Scheme author: Filip Janevski (https://0x96f.dev/theme)
# Template author: theova
# Commentary: Tinted Theming: (https://github.com/tinted-theming)

#darkmode
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.statusbar.show = 'in-mode'
c.downloads.location.directory = '~/Downloads/qutebrowser_files/'
c.fonts.default_family = ['Arial Narrow', 'SansSerif']
c.fonts.default_size = '18pt'
c.content.default_encoding = 'utf-8'

#Colos
c.colors.webpage.bg = '#00a7d7'

#pages call
#pages call
c.content.user_stylesheets = [
    "~/.qutebrowser/style/tube-tweaks.css",
    "~/.qutebrowser/style/nptel-tweaks.css",
    #"~/.qutebrowser/style/neet-tweaks.css"
]




#fonts, i doubt this works as intended!
c.fonts.default_family = []
c.fonts.default_size = '12pt'
c.fonts.web.family.fixed = 'Arial Narrow'
c.fonts.web.family.sans_serif = 'Arial Narrow'
c.fonts.web.family.serif = 'Arial Narrow'
c.fonts.web.family.standard = 'Arail Narrow'

#search engine
c.url.searchengines = {
# note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        'pip' :'https://pypi.org/search/?q={}',
        '!pt': 'https://in.pinterest.com/search/pins/?q={}',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        '!gog': 'https://www.geeksforgeeks.org/search/?gq={}',
        '!py' : 'https://docs.python.org/3/search.html?q={}',
        '!ht' : 'https://www.hotstar.com/in/explore?search_query={}',
        '!mubi' : 'https://mubi.com/en/search/films?query={}',
        '!lib' : 'https://z-library.sk/s/{}',
        '!snap': 'https://www.snapeda.com/search/?q={}&search-type=parts'

#https://neetcode.io/problems/generate-parentheses?list=neetcode150
        }
