

import catppuccin

# load your autoconfig, use this, if the rest of your config is empty!
config.load_autoconfig()

# set the flavor you'd like to use
# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
# last argument (optional, default is False): enable the plain look for the menu rows
catppuccin.setup(c, 'mocha', True)

c.content.pdfjs=True



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
config.bind('<ctrl-t>', 'spawn open -a WezTerm') #ultra useful aas i heavily rely on command line utility, terminal at my chose next to browser save time
config.bind('<shift-j>','tab-prev')
config.bind('<shift-k>','tab-next')
config.bind('o', 'cmd-set-text -s :open -t') #modify
config.bind('u', 'cmd-set-text -s :open -t !yt') #for utube,alternative to  hands on 
config.bind('x', 'cmd-set-text -s :open -t !reddit') #father of all internet conversation about any topic, an initial booster in learning new stuff
config.bind('z', 'cmd-set-text -s :open -t !lib') #library for arcticle
config.bind('<cmd-=>', 'zoom-in') # trick way of writing cmd++ for zoom , cause just '+' sucks
config.bind('<cmd-->', 'zoom-out')

for mode in ["normal", "caret"]:
    config.bind('gs', 'spawn --userscript yomichad', mode=mode)
    config.bind('gS', 'spawn --userscript yomich/ad --prefix-search', mode=mode)

#darkmode
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.statusbar.show = 'in-mode'
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


#fonts, i doubt this works as intended!
c.fonts.web.family.fixed = 'Arial Narrow'
c.fonts.web.family.sans_serif = 'Arial Narrow'
c.fonts.web.family.serif = 'Arial Narrow'
c.fonts.web.family.standard = 'Arail Narrow'

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
        '!snap': 'https://www.snapeda.com/search/?q={}&search-type=parts'
#https://neetcode.io/problems/generate-parentheses?list=neetcode150
        }



