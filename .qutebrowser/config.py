config.load_autoconfig()
#keybinding
config.bind('rs','config-source')
config.bind('r','reload')
config.bind('gj','tab-move -')
config.bind('gk','tab-move +')
config.bind('<shift-J>','tab-prev')
config.bind('<shift-K>','tab-next')
config.bind('h','history')

#dev tools
#c.content.devtools = True

#color scheme
#config.source('themes/wal.py')
#c.colors.webpage.bg = "#fcffff"
#c.colors.tabs.bar.bg = "#fd8200"



#user agent
#c.content.headers.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36"

#javascript enabled
#c.content.javascript.enabled = True



#darkmode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'

#custom statusbar
#c.tabs.statusbar.fg = 'yellow'


#pages call
#pages call
c.content.user_stylesheets = [
    "~/.qutebrowser/style/tube-tweaks.css",
    #"~/.qutebrowser/style/nptel-tweaks.css",
    "~/.qutebrowser/style/neet-tweaks.css"
]




#fonts, i doubt this works as intended!
c.fonts.default_family = []
c.fonts.default_size = '13pt'
c.fonts.web.family.fixed = 'monospace'
c.fonts.web.family.sans_serif = 'monospace'
c.fonts.web.family.serif = 'monospace'
c.fonts.web.family.standard = 'monospace'

#search engine
c.url.searchengines = {
# note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!dj': 'https://docs.djangoproject.com/en/5.2/search/?q={}',
        '!pt': 'https://in.pinterest.com/search/pins/?q={}',
        '!mdn': 'https://developer.mozilla.org/en-US/search?q={}',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        '!nc': 'https://www.neetcode.io/problems/{}?list=neetcode150',
        '!py' : 'https://docs.python.org/3/search.html?q={}'
#https://neetcode.io/problems/generate-parentheses?list=neetcode150
        }
