#for extracting color theme
import os
css=os.path.expanduser("~/.cache/wal/colors.css")

if os.path.exists(css):
    config.set("content.user_stylesheets",[css])
