# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'private': 'open -p', 'quickmarks': 'open -t qute://bookmarks/', 'bindings': 'open -t qute://bindings/'}

# Require a confirmation before quitting the application.
# Type: ConfirmQuit
# Valid values:
#   - always: Always show a confirmation.
#   - multiple-tabs: Show a confirmation if multiple tabs are opened.
#   - downloads: Show a confirmation if downloads are running
#   - never: Never show a confirmation.
c.confirm_quit = ['always']

# Maximum time (in minutes) between two history items for them to be
# considered being from the same browsing session. Items with less time
# between them are grouped when being displayed in `:history`. Use -1 to
# disable separation.
# Type: Int
c.history_gap_interval = 15

# When to find text on a page case-insensitively.
# Type: IgnoreCase
# Valid values:
#   - always: Search case-insensitively.
#   - never: Search case-sensitively.
#   - smart: Search case-sensitively if there are capital characters.
c.search.ignore_case = 'smart'

# Find text on a page incrementally, renewing the search for each typed
# character.
# Type: Bool
c.search.incremental = True

# Name of the session to save by default. If this is set to null, the
# session which was last loaded is saved.
# Type: SessionName
c.session.default_name = None

# Load a restored tab as soon as it takes focus.
# Type: Bool
c.session.lazy_restore = True

# Which Chromium process model to use. Alternative process models use
# less resources, but decrease security and robustness. See the
# following pages for more details:    -
# https://www.chromium.org/developers/design-documents/process-models
# - https://doc.qt.io/qt-5/qtwebengine-features.html#process-models
# Type: String
# Valid values:
#   - process-per-site-instance: Pages from separate sites are put into separate processes and separate visits to the same site are also isolated.
#   - process-per-site: Pages from separate sites are put into separate processes. Unlike Process per Site Instance, all visits to the same site will share an OS process. The benefit of this model is reduced memory consumption, because more web pages will share processes. The drawbacks include reduced security, robustness, and responsiveness.
#   - single-process: Run all tabs in a single process. This should be used for debugging purposes only, and it disables `:open --private`.
c.qt.process_model = 'process-per-site-instance'

# Time interval (in milliseconds) between auto-saves of
# config/cookies/etc.
# Type: Int
c.auto_save.interval = 15000

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Automatically start playing `<video>` elements. Note: On Qt < 5.11,
# this option needs a restart and does not support URL patterns.
# Type: Bool
c.content.autoplay = False

# Allow websites to read canvas elements. Note this is needed for some
# websites to work properly.
# Type: Bool
c.content.canvas_reading = False

# Which cookies to accept.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
c.content.cookies.accept = 'no-3rdparty'

# User agent to send. Unset to send the default. Note that the value
# read from JavaScript is always the global value.
# Type: String
c.content.headers.user_agent = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'

# List of URLs of lists which contain hosts to block.  The file can be
# in one of the following formats:  - An `/etc/hosts`-like file - One
# host per line - A zip-file of any of the above, with either only one
# file, or a file   named `hosts` (with any extension).  It's also
# possible to add a local file or directory via a `file://` URL. In case
# of a directory, all files in the directory are read as adblock lists.
# The file `~/.config/qutebrowser/blocked-hosts` is always read if it
# exists.
# Type: List of Url
c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', 'https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts', 'https://github.com/jmdugan/blocklists/blob/master/fb-addon-blocklists']

# A list of patterns that should always be loaded, despite being ad-
# blocked. Note this whitelists blocked hosts, not first-party URLs. As
# an example, if `example.org` loads an ad from `ads.example.org`, the
# whitelisted host should be `ads.example.org`. If you want to disable
# the adblocker on a given page, use the `content.host_blocking.enabled`
# setting with a URL pattern instead. Local domains are always exempt
# from hostblocking.
# Type: List of UrlPattern
c.content.host_blocking.whitelist = ['piwik.org']

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Allow pdf.js to view PDF files in the browser. Note that the files can
# still be downloaded by clicking the download button in the pdf.js
# viewer.
# Type: Bool
c.content.pdfjs = True

# Enable plugins in Web pages.
# Type: Bool
c.content.plugins = True

# List of user stylesheet filenames to use.
# Type: List of File, or File
c.content.user_stylesheets = []

# Number of commands to save in the command history. 0: no history / -1:
# unlimited
# Type: Int
c.completion.cmd_history_max_items = -1

# Height (in pixels or as percentage of the window) of the completion.
# Type: PercOrInt
c.completion.height = '40%'

# Format of timestamps (e.g. for the history completion).
# Type: TimestampTemplate
c.completion.timestamp_format = '%d/%m/%Y'

# Number of URLs to show in the web history. 0: no history / -1:
# unlimited
# Type: Int
c.completion.web_history.max_items = 10000

# Minimum amount of characters needed to update completions.
# Type: Int
c.completion.min_chars = 1

# Execute the best-matching command on a partial match.
# Type: Bool
c.completion.use_best_match = False

# Where to show the downloaded files.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.downloads.position = 'bottom'

# Duration (in milliseconds) to wait before removing finished downloads.
# If set to -1, downloads are never removed.
# Type: Int
c.downloads.remove_finished = 60000

# When a hint can be automatically followed without pressing Enter.
# Type: String
# Valid values:
#   - always: Auto-follow whenever there is only a single hint on a page.
#   - unique-match: Auto-follow whenever there is a unique non-empty match in either the hint string (word mode) or filter (number mode).
#   - full-match: Follow the hint when the user typed the whole hint (letter, word or number mode) or the element's text (only in number mode).
#   - never: The user will always need to press Enter to follow a hint.
c.hints.auto_follow = 'unique-match'

# Duration (in milliseconds) to ignore normal-mode key bindings after a
# successful auto-follow.
# Type: Int
c.hints.auto_follow_timeout = 100

# CSS border value for hints.
# Type: String
c.hints.border = '1px solid #E3BE23'

# Characters used for hint strings.
# Type: UniqueCharString
c.hints.chars = 'qwertyuiasdfghjzxcvbnm'

# Dictionary file to be used by the word hints.
# Type: File
c.hints.dictionary = '/usr/share/dict/words'

# Hide unmatched hints in rapid mode.
# Type: Bool
c.hints.hide_unmatched_rapid_hints = True

# Minimum number of characters used for hint strings.
# Type: Int
c.hints.min_chars = 2

# Mode to use for hints.
# Type: String
# Valid values:
#   - number: Use numeric hints. (In this mode you can also type letters from the hinted element to filter and reduce the number of elements that are hinted.)
#   - letter: Use the characters in the `hints.chars` setting.
#   - word: Use hints words based on the html elements and the extra words.
c.hints.mode = 'letter'

# Comma-separated list of regular expressions to use for 'next' links.
# Type: List of Regex
c.hints.next_regexes = ['\\bnext\\b', '\\bmore\\b', '\\bnewer\\b', '\\b[>→≫]\\b', '\\b(>>|»)\\b', '\\bcontinue\\b']

# Comma-separated list of regular expressions to use for 'prev' links.
# Type: List of Regex
c.hints.prev_regexes = ['\\bprev(ious)?\\b', '\\bback\\b', '\\bolder\\b', '\\b[<←≪]\\b', '\\b(<<|«)\\b']

# Scatter hint key chains (like Vimium) or not (like dwb). Ignored for
# number hints.
# Type: Bool
c.hints.scatter = True

# Allow Escape to quit the crash reporter.
# Type: Bool
c.input.escape_quits_reporter = True

# Timeout (in milliseconds) for partially typed key bindings. If the
# current input forms only partial matches, the keystring will be
# cleared after this time.
# Type: Int
c.input.partial_timeout = 2500

# When to show the scrollbar.
# Type: String
# Valid values:
#   - always: Always show the scrollbar.
#   - never: Never show the scrollbar.
#   - when-searching: Show the scrollbar when searching for text in the webpage. With the QtWebKit backend, this is equal to `never`.
c.scrolling.bar = 'always'

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

# Languages to use for spell checking. You can check for available
# languages and install dictionaries using scripts/dictcli.py. Run the
# script with -h/--help for instructions.
# Type: List of String
# Valid values:
#   - af-ZA: Afrikaans (South Africa)
#   - bg-BG: Bulgarian (Bulgaria)
#   - ca-ES: Catalan (Spain)
#   - cs-CZ: Czech (Czech Republic)
#   - da-DK: Danish (Denmark)
#   - de-DE: German (Germany)
#   - el-GR: Greek (Greece)
#   - en-AU: English (Australia)
#   - en-CA: English (Canada)
#   - en-GB: English (United Kingdom)
#   - en-US: English (United States)
#   - es-ES: Spanish (Spain)
#   - et-EE: Estonian (Estonia)
#   - fa-IR: Farsi (Iran)
#   - fo-FO: Faroese (Faroe Islands)
#   - fr-FR: French (France)
#   - he-IL: Hebrew (Israel)
#   - hi-IN: Hindi (India)
#   - hr-HR: Croatian (Croatia)
#   - hu-HU: Hungarian (Hungary)
#   - id-ID: Indonesian (Indonesia)
#   - it-IT: Italian (Italy)
#   - ko: Korean
#   - lt-LT: Lithuanian (Lithuania)
#   - lv-LV: Latvian (Latvia)
#   - nb-NO: Norwegian (Norway)
#   - nl-NL: Dutch (Netherlands)
#   - pl-PL: Polish (Poland)
#   - pt-BR: Portuguese (Brazil)
#   - pt-PT: Portuguese (Portugal)
#   - ro-RO: Romanian (Romania)
#   - ru-RU: Russian (Russia)
#   - sh: Serbo-Croatian
#   - sk-SK: Slovak (Slovakia)
#   - sl-SI: Slovenian (Slovenia)
#   - sq: Albanian
#   - sr: Serbian
#   - sv-SE: Swedish (Sweden)
#   - ta-IN: Tamil (India)
#   - tg-TG: Tajik (Tajikistan)
#   - tr-TR: Turkish (Turkey)
#   - uk-UA: Ukrainian (Ukraine)
#   - vi-VN: Vietnamese (Viet Nam)
c.spellcheck.languages = ['en-US', 'en-GB', 'nl-NL']

# Hide the statusbar unless a message is shown.
# Type: Bool
c.statusbar.hide = False

# Padding (in pixels) for the statusbar.
# Type: Padding
c.statusbar.padding = {'bottom': 0, 'left': 0, 'right': 0, 'top': 0}

# Position of the status bar.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.statusbar.position = 'top'

# List of widgets displayed in the statusbar.
# Type: List of String
# Valid values:
#   - url: Current page URL.
#   - scroll: Percentage of the current page position like `10%`.
#   - scroll_raw: Raw percentage of the current page position like `10`.
#   - history: Display an arrow when possible to go back/forward in history.
#   - tabs: Current active tab, e.g. `2`.
#   - keypress: Display pressed keys when composing a vi command.
#   - progress: Progress bar for the current page loading.
c.statusbar.widgets = ['keypress', 'url', 'scroll_raw', 'history', 'tabs', 'progress']

# Open new tabs (middleclick/ctrl+click) in the background.
# Type: Bool
c.tabs.background = True

# How to behave when the last tab is closed.
# Type: String
# Valid values:
#   - ignore: Don't do anything.
#   - blank: Load a blank page.
#   - startpage: Load the start page.
#   - default-page: Load the default page.
#   - close: Close the window.
c.tabs.last_close = 'blank'

# Padding (in pixels) around text for tabs.
# Type: Padding
c.tabs.padding = {'bottom': 0, 'left': 0, 'right': 0, 'top': 0}

# Position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'left'

# Which tab to select when the focused tab is removed.
# Type: SelectOnRemove
# Valid values:
#   - prev: Select the tab which came before the closed one (left in horizontal, above in vertical).
#   - next: Select the tab which came after the closed one (right in horizontal, below in vertical).
#   - last-used: Select the previously selected tab.
c.tabs.select_on_remove = 'last-used'

# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'multiple'

# Duration (in milliseconds) to show the tab bar before hiding it when
# tabs.show is set to 'switching'.
# Type: Int
c.tabs.show_switching_delay = 1000

# Alignment of the text inside of tabs.
# Type: TextAlignment
# Valid values:
#   - left
#   - right
#   - center
c.tabs.title.alignment = 'left'

# Format to use for the tab title. The following placeholders are
# defined:  * `{perc}`: Percentage as a string like `[10%]`. *
# `{perc_raw}`: Raw percentage, e.g. `10`. * `{title}`: Title of the
# current web page. * `{title_sep}`: The string ` - ` if a title is set,
# empty otherwise. * `{index}`: Index of this tab. * `{id}`: Internal
# tab ID of this tab. * `{scroll_pos}`: Page scroll position. *
# `{host}`: Host of the current web page. * `{backend}`: Either
# ''webkit'' or ''webengine'' * `{private}`: Indicates when private mode
# is enabled. * `{current_url}`: URL of the current web page. *
# `{protocol}`: Protocol (http/https/...) of the current web page. *
# `{audio}`: Indicator for audio/mute status.
# Type: FormatString
c.tabs.title.format = '{private}{audio}{index}{title_sep}{title}'

# Format to use for the tab title for pinned tabs. The same placeholders
# like for `tabs.title.format` are defined.
# Type: FormatString
c.tabs.title.format_pinned = '🔒|{private}{audio}{index}{title_sep}{title}'

# Width (in pixels or as percentage of the window) of the tab bar if
# it's vertical.
# Type: PercOrInt
c.tabs.width = '7%'

# Minimum width (in pixels) of tabs (-1 for the default minimum size
# behavior). This setting only applies when tabs are horizontal. This
# setting does not apply to pinned tabs, unless `tabs.pinned.shrink` is
# False.
# Type: Int
c.tabs.min_width = 50

# Width (in pixels) of the progress indicator (0 to disable).
# Type: Int
c.tabs.indicator.width = 3

# Padding (in pixels) for tab indicators.
# Type: Padding
c.tabs.indicator.padding = {'top': 0, 'bottom': 0, 'left': 0, 'right': 0}

# Force pinned tabs to stay at fixed URL.
# Type: Bool
c.tabs.pinned.frozen = True

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'https://google.com'

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'archwiki': 'https://wiki.archlinux.org/?search={}', 'contact': 'https://contacts.google.com/search/{}', 'DEFAULT': 'https://google.com/search?q={}', 'ddg': 'https://duckduckgo.com/?q={}', 'emoji': 'https://emojipedia.org/search/?q={}', 'facebook': 'https://facebook.com/search/top/?q={}', 'hoogle': 'https://www.haskell.org/hoogle/?hoogle={}', 'google': 'https://google.com/search?q={}', 'github': 'https://github.com/search?q={}', 'maps': 'https://www.google.be/maps/search/{}+', 'movie': 'https://www.imdb.com/find?q={}&s=all', 'osm': 'https://www.openstreetmap.org/search?query={}', 'reddit': 'https://www.reddit.com/search?q={}', 'word': 'https://www.wordnik.com/words/{}', 'time': 'https://time.is/{}', 'urban': 'https://www.urbandictionary.com/define.php?term={}', 'unsplash': 'https://unsplash.com/search/photos/{}', 'weather': 'https://wttr.in/{}', 'wiki': 'https://en.wikipedia.org/wiki/{}', 'woord': 'https://woordenlijst.org/#/?q={}', 'youtube': 'https://www.youtube.com/results?search_query={}', 'pipy': 'https://pypi.org/search/?q={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = 'https://xkcd.com/'

# Hide the window decoration.  This setting requires a restart on
# Wayland.
# Type: Bool
c.window.hide_decoration = True

# Format to use for the window title. The same placeholders like for
# `tabs.title.format` are defined.
# Type: FormatString
c.window.title_format = '{audio}{host}{title_sep}{title}{title_sep}qutebrowser'

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#000088'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#000022'

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = '#999999'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgba(55, 247, 133, 0.8), stop:1 rgba(55, 197, 66, 0.8))'

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = '#000088'

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = '#880000'

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = '#222222'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = 'white'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#444444'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#222222'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#000088'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = 'white'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#000088'

# Background color for webpages if unset (or empty to use the theme's
# color).
# Type: QtColor
c.colors.webpage.bg = 'black'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = '"xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '8pt monospace'

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 8pt monospace'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '8pt monospace'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '7pt monospace'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 8pt monospace'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '8pt monospace'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '8pt monospace'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '8pt monospace'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '8pt monospace'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '8pt sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '8pt monospace'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '8pt monospace'

# Font family for standard fonts.
# Type: FontFamily
c.fonts.web.family.standard = None

# Font family for fixed fonts.
# Type: FontFamily
c.fonts.web.family.fixed = None

# Font family for serif fonts.
# Type: FontFamily
c.fonts.web.family.serif = None

# Font family for sans-serif fonts.
# Type: FontFamily
c.fonts.web.family.sans_serif = None

# Font family for cursive fonts.
# Type: FontFamily
c.fonts.web.family.cursive = None

# Font family for fantasy fonts.
# Type: FontFamily
c.fonts.web.family.fantasy = None

# Default font size (in pixels) for regular text.
# Type: Int
c.fonts.web.size.default = 11

# Default font size (in pixels) for fixed-pitch text.
# Type: Int
c.fonts.web.size.default_fixed = 9

# Hard minimum font size (in pixels).
# Type: Int
c.fonts.web.size.minimum = 0

# Minimum logical font size (in pixels) that is applied when zooming
# out.
# Type: Int
c.fonts.web.size.minimum_logical = 8

# Bindings for normal mode
config.bind(',hb', 'history -b')
config.bind(',m', 'set content.user_stylesheets ""')
config.bind(',n', 'config-cycle content.user_stylesheets /fast_files/git_repos/solarized-everything-css/css/darculized/darculized-all-sites.css /fast_files/git_repos/solarized-everything-css/css/apprentice/apprentice-all-sites.css /fast_files/git_repos/solarized-everything-css/css/gruvbox/gruvbox-all-sites.css')
config.bind(',read', 'config-source')
config.bind(',ta', 'set tabs.show always')
config.bind(',tm', 'set tabs.show multiple')
config.bind(',ts', 'set tabs.show switching')
config.bind(',vd', 'set content.user_stylesheets $HOME/.config/qutebrowser/very_dark.css')
config.bind(',write!!!', 'config-write-py --force')
config.bind('<Ctrl+Alt+Shift+`>', 'spawn --detach mpv {url}')
config.bind('<Ctrl+Alt+Shift+m>', 'spawn --detach /fast_files/git_repos/custum_scripts/addToMpv Music "{url}"')
config.bind('<Ctrl+Alt+Shift+y>', 'spawn --detach /fast_files/git_repos/custum_scripts/addToMpv Video "{url}"')
config.bind('<Ctrl+Alt+`>', 'hint links spawn --detach mpv {hint-url}')
config.bind('<Ctrl+Backspace>', 'tab-prev')
config.bind('<Ctrl+Shift+Tab>', 'tab-prev')
config.bind('<Ctrl+Shift+m>', 'hint links spawn --detach /fast_files/git_repos/custum_scripts/addToMpv Music "{hint-url}"')
config.bind('<Ctrl+Shift+y>', 'hint links spawn --detach /fast_files/git_repos/custum_scripts/addToMpv Video "{hint-url}"')
config.bind('<Ctrl+Tab>', 'tab-next')
config.bind('<Ctrl+b>', None)
config.bind('<Ctrl+f>', 'set-cmd-text /')
config.bind('<Ctrl+q>', None)
config.bind('@', None)
config.bind('Ctrl+f', 'set-cmd-text /')
config.bind('M', None)
config.bind('Sb', None)
config.bind('Ss', 'open -t qute://settings')
config.bind('ZQ', None)
config.bind('eew', ':set-cmd-text :open -p {url:pretty}')
config.bind('ewc', ':set-cmd-text :open -p {clipboard}')
config.bind('ewf', 'hint links fill :open -p {hint-url}')
config.bind('eww', ':set-cmd-text -s :open -p ')
config.bind('gB', None)
config.bind('gb', None)
config.bind('m', 'quickmark-save')
config.bind('q', None)
config.bind('wB', None)
