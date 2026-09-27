import os
config.load_autoconfig()
if os.path.exists(config.configdir / "theme.py"):
    config.source('theme.py')

# set the flavor you'd like to use
# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
# last argument (optional, default is False): enable the plain look for the menu rows
# catppuccin.setup(c, 'mocha', True) #catpuccin thingy
c.url.start_pages="https://austinkleon.com/" # ok this is my startup
c.statusbar.position="top" # took me lot of tie and the erro was 'i' in position word
c.colors.statusbar.insert.bg='#000000'#status bar -> insert mode
c.colors.statusbar.insert.fg='#ff00d1'
c.content.pdfjs=True
c.colors.statusbar.command.fg='#FFFFFF'
# Something something bread recommends
config.set("content.webgl", False, "*")
config.set("content.canvas_reading", False)
config.set("content.geolocation",True)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.cookies.accept", "all")
config.set("content.cookies.store", True)
config.set("input.insert_mode.auto_load", True)
#config.source('qutebrowser-matrix.py')
#config.input.insert_mode.auto_load = True

#keybinding
config.source('themes/qute-city-lights/city-lights-theme.py') #theme

config.bind('tH', 'config-cycle tabs.show multiple never')
config.bind('sH', 'config-cycle statusbar.show always never')
config.bind('a','open -t !arch') ## i dont have ajob so nothign stop me.this is for archwiki
config.bind('w','config-source') ## ultra useful when playing with it
config.bind('rR','reload') #some site wont open , so this works
config.bind('dD','tab-close') #better key bindings. 
config.bind('gj','tab-move -')
config.bind('gk','tab-move +')
config.bind('<shift-cmd-left>','tab-prev')
config.bind('<shift-cmd-right>','tab-next')
config.bind('h','history')
#config.bind('','cmd-set-text -s :open -t !dict')#dictionary
config.bind('dc','download-clear')
config.bind('<cmd-r>','open -t https://link.apple.com')
config.bind('<cmd-l>','open -t https://leetcode.com/problemset/')
config.bind('<cmd-p>','open -t https://www.adobe.com/home?fb=3&mv=other&promoid=599F8BWG') 
config.bind('<cmd-o>','open -t https://cad.onshape.com/documents?nodeId=0&resourceType=filter')
# config.bind('<cmd-f>','spawn open -a Safari {url}')
config.bind('<cmd-b>','open -t https://tootalltoby.com/practice/')
config.bind('<cmd-s>','spawn open -a /Applications/Safari.app {url}')
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
config.bind('m','cmd-set-text -s :open -t https://music.apple.com/library/playlist/')
config.bind('e','cmd-set-text -s :open -t https://web.whatsapp.com/')# openning whatsapp
config.bind(']', 'cmd-set-text -s :open -t https://latexconvert.com/')
config.bind('[' ,'cmd-set-text -s :open -t https://formulae.brew.sh/')
#config.bind('c', 'cmd-set-text -s :open -t !cover')

config.bind('<shift-x>','cmd-set-text -s :open -t !wiki') #father of all internet conversation about any topic, an initial booster in learning new stuff
config.bind('\\', 'cmd-set-text -s : open -t https://pico.pinout.xyz/#i=siupl') #pico
# config.bind('t','cmd-set-text -s : open -t https://docs.espressif.com/projects/arduino-esp32/en/latest/_images/esp32_devkitC_pinlayout.png') # esp32
config.bind('g','cmd-set-text -s : open -t chatgpt.com') # llm
config.bind('a','cmd-set-text -s : open -t !rust') # rust
config.bind('z', 'cmd-set-text -s :open -t !lib') #library for arcticle
config.bind('}', 'cmd-set-text -s :open -t https://www.youtube.com/feed/subscriptions/')
config.bind('<cmd-=>', 'zoom-in') # trick way of writing cmd++ for zoom , cause just '+' sucks
config.bind('<cmd-->', 'zoom-out')

for mode in ["normal", "caret"]:
    config.bind('gs', 'spawn --userscript yomichad', mode=mode)
    config.bind('gS', 'spawn --userscript yomich/ad --prefix-search', mode=mode)

#darkmodeA
config.bind('pl', 'config-cycle colors.webpage.darkmode.enabled True False')
#c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.statusbar.show = 'always'
c.downloads.location.directory = '~/Downloads/qutebrowser_files/'
c.fonts.default_family = ['Arial Narrow', 'Arial']
c.fonts.default_size = '18pt' # tab
c.content.default_encoding = 'utf-8'

#Colos
#c.colors.webpage.bg = '#ffc800'

#pages call
#pages call
c.content.user_stylesheets = [
    "~/.qutebrowser/style/tube-tweaks.css",
    "~/.qutebrowser/style/nptel-tweaks.css",
    "~/.qutebrowser/style/leet.css",
    "~/.qutebrowser/style/lnkd.css",
    "~/.qutebrowser/style/reddit.css"
    #"~/.qutebrowser/style/neet-tweaks.css
]
# theme
c.tabs.title.format = "{audio}{current_title}"
c.fonts.web.size.default = 18


#fonts, i doubt this works as intended!
c.fonts.default_family = []
c.fonts.default_size = '17pt'
c.fonts.web.family.fixed = 'Arial Narrow'
c.fonts.web.family.sans_serif = 'Arial Narrow'
c.fonts.web.family.serif = 'Arial Narrow'
c.fonts.web.family.standard = 'Arail Narrow'


#blocking
c.content.blocking.enabled = True
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
]


#search engine
c.url.searchengines = {
# note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!linkedin' : 'https://www.linkedin.com/in/shawez-shaikh{}',
        '!bms': 'https://in.bookmyshow.com/cinemas/MUMBAI/inox-r-city-ghatkopar/buytickets/INRC/2026{}',
        '!app' : 'https://link.apple.com/account/create/subscribe-success?product=tv&qr={}',
        '!leet' : 'https://leetcode.com/problems/{}/description/?envType=daily-question&envId=26-09-22',
        '!e14' : 'https://in.element14.com/search?st={}',
        '!py': 'https://docs.python.org/3/search.html?q={}',
        '!port' : 'https://portlookup.com/?s={}',
        '!muse': 'https://music.apple.com/in/search?term={}',
        '!hindi' : 'https://www.hindwi.org/search/all?q={}',
        '!meme' : 'https://knowyourmeme.com/search?context=&sort=&q={}',
        '!cover' : 'https://itunes.apple.com/search?term={}&entity=song&limit=1',
        '!eng' : 'https://www.poetryfoundation.org/search?query={}',
        '!urdu' : 'https://rekhtadictionary.com/search?keyword={}',
        '!ap': 'https://link.apple.com/account/create/subscribe-success?product=tv&qr={}',
        '!law' : 'https://www.lawinsider.com/search?q={}',
        '!ff' : 'https://fullforms.com/{}',
        '!robu':'https://robu.in/?s={}&post_type=product',
        '!tv' : 'https://tv.apple.com/in/search?term={}',
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
        '!flix':'https://www.netflix.com/search?q={}',
        '!rust': 'https://doc.rust-lang.org/std/?search={}',
        '!bay' : 'https://thepiratebay.org/search.php?q={}&all=on&search=Pirate+Search&page=0&orderby=',
        '!shit' : 'https://www.alldatasheet.com/view.jsp?Searchword={}',
        '!kit' : 'https://sw.kovidgoyal.net/kitty/search/?q={}&check_keywords=yes&area=default'

    
#https://neetcode.io/problems/generate-parentheses?list=neetcode150
        }

#beef
#apparently some cmommadn like d for delte the ciurrent tab cant be change , idk why ha wai









# import catppuccin # catpuccin thingy

# load your autoconfig, use this, if the rest of your config is empty!

#import pywalQute.draw

#config.load_autoconfig(True)
#c.colors.statusbar.command.bg = "black"
#pywalQute.draw.color(c, {
#    'spacing': {
#        'vertical': 6,
#        'horizontal': 8
#    }
#})



