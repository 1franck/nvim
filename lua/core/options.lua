-- complete list > https://neovim.io/doc/user/quickref.html#option-list

local options = {
    -- aleph = "", -- ASCII code of the letter Aleph (Hebrew)
    -- allowrevins = "", -- allow CTRL-_ in Insert and Command-line mode
    -- ambiwidth = "", -- what to do with Unicode chars of ambiguous width
    -- autochdir = "", -- change directory to the file in the current window
    -- arabic = "", -- for Arabic as a default second language
    -- arabicshape = "", -- do shaping for Arabic characters
    -- autoindent = "", -- take indent for new line from previous line
    -- autoread = "", -- autom. read file when changed outside of Vim
    -- autowrite = "", -- automatically write file if changed
    -- autowriteall = "", -- as 'autowrite', but works with more commands
    -- background = "", -- "dark" or "light", used for highlight colors
    -- backspace = "", -- how backspace works at start of line
    backup = false, -- keep backup file after overwriting a file
    -- backupcopy = "", -- make backup as a copy, don't rename the file
    -- backupdir = "", -- list of directories for the backup file
    -- backupext = "", -- extension used for the backup file
    -- backupskip = "", -- no backup for files that match these patterns
    -- belloff = "", -- do not ring the bell for these reasons
    -- binary = "", -- read/write/edit file in binary mode
    -- bomb = "", -- prepend a Byte Order Mark to the file
    -- breakat = "", -- characters that may cause a line break
    breakindent = true, -- wrapped line repeats indent
    -- breakindentopt = "", -- settings for 'breakindent'
    -- browsedir = "", -- which directory to start browsing in
    -- bufhidden = "", -- what to do when buffer is no longer in window
    -- buflisted = "", -- whether the buffer shows up in the buffer list
    -- buftype = "", -- special type of buffer
    -- casemap = "", -- specifies how case of letters is changed
    -- cdhome = "", -- change directory to the home directory by ":cd"
    -- cdpath = "", -- list of directories searched with ":cd"
    -- cedit = "", -- key used to open the command-line window
    -- charconvert = "", -- expression for character encoding conversion
    -- cindent = "", -- do C program indenting
    -- cinkeys = "", -- keys that trigger indent when 'cindent' is set
    -- cinoptions = "", -- how to do indenting when 'cindent' is set
    -- cinwords = "", -- words where 'si' and 'cin' add an indent
    -- cinscopedecls = "", -- words that are recognized by 'cino-g'
    clipboard = "unnamedplus", -- use the clipboard as the unnamed register
    -- cmdheight = "", -- number of lines to use for the command-line
    -- cmdwinheight = "", -- height of the command-line window
    -- colorcolumn = "", -- columns to highlight
    -- columns = "", -- number of columns in the display
    -- comments = "", -- patterns that can start a comment line
    -- commentstring = "", -- template for comments; used for fold marker
    -- complete = "", -- specify how Insert mode completion works
    -- completefunc = "", -- function to be used for Insert mode completion
    -- completeopt = "", -- options for Insert mode completion
    -- completeslash = "", -- like 'shellslash' for completion
    -- concealcursor = "", -- whether concealable text is hidden in cursor line
    -- conceallevel = "", -- whether concealable text is shown or hidden
    -- confirm = "", -- ask what to do about unsaved/read-only files
    -- copyindent = "", -- make 'autoindent' use existing indent structure
    -- cpoptions = "", -- flags for Vi-compatible behavior
    -- cursorbind = "", -- move cursor in window as it moves in other windows
    -- cursorcolumn = "", -- highlight the screen column of the cursor
    -- cursorline = "", -- highlight the screen line of the cursor
    -- cursorlineopt = "", -- settings for 'cursorline'
    -- debug = "", -- set to "msg" to see all error messages
    -- define = "", -- pattern to be used to find a macro definition
    -- delcombine = "", -- delete combining characters on their own
    -- dictionary = "", -- list of file names used for keyword completion
    -- diff = "", -- use diff mode for the current window
    -- diffexpr = "", -- expression used to obtain a diff file
    -- diffopt = "", -- options for using diff mode
    -- digraph = "", -- enable the entering of digraphs in Insert mode
    -- directory = "", -- list of directory names for the swap file
    -- display = "", -- list of flags for how to display text
    -- eadirection = "", -- in which direction 'equalalways' works
    -- encoding = "", -- encoding used internally
    -- endoffile = "", -- write CTRL-Z at end of the file
    -- endofline = "", -- write <EOL> for last line in file
    -- equalalways = "", -- windows are automatically made the same size
    -- equalprg = "", -- external program to use for "=" command
    -- errorbells = "", -- ring the bell for error messages
    -- errorfile = "", -- name of the errorfile for the QuickFix mode
    -- errorformat = "", -- description of the lines in the error file
    -- eventignore = "", -- autocommand events that are ignored
    -- expandtab = "", -- use spaces when <Tab> is inserted
    -- exrc = "", -- read init files in the current directory
    -- fileencoding = "", -- file encoding for multibyte text
    -- fileencodings = "", -- automatically detected character encodings
    -- fileformat = "", -- file format used for file I/O
    -- fileformats = "", -- automatically detected values for 'fileformat'
    -- fileignorecase = "", -- ignore case when using file names
    -- filetype = "", -- type of file, used for autocommands
    -- fillchars = "", -- characters to use for displaying special items
    -- fixendofline = "", -- make sure last line in file has <EOL>
    -- foldclose = "", -- close a fold when the cursor leaves it
    -- foldcolumn = "", -- width of the column used to indicate folds
    -- foldenable = "", -- set to display all folds open
    -- foldexpr = "", -- expression used when 'foldmethod' is "expr"
    -- foldignore = "", -- ignore lines when 'foldmethod' is "indent"
    -- foldlevel = "", -- close folds with a level higher than this
    -- foldlevelstart = "", -- when starting to edit a file
    -- foldmarker = "", -- markers used when 'foldmethod' is "marker"
    -- foldmethod = "", -- folding type
    -- foldminlines = "", -- minimum number of lines for a fold to be closed
    -- foldnestmax = "", -- maximum fold depth
    -- foldopen = "", -- for which commands a fold will be opened
    -- foldtext = "", -- expression used to display for a closed fold
    -- formatexpr = "", -- expression used with "gq" command
    -- formatlistpat = "", -- pattern used to recognize a list header
    -- formatoptions = "", -- how automatic formatting is to be done
    -- formatprg = "", -- name of external program used with "gq" command
    -- fsync = "", -- whether to invoke fsync() after file write
    -- gdefault = "", -- the ":substitute" flag 'g' is default on
    -- grepformat = "", -- format of 'grepprg' output
    -- grepprg = "", -- program to use for ":grep"
    -- guicursor = "", -- GUI: settings for cursor shape and blinking
    -- guifont = "", -- GUI: Name(s) of font(s) to be used
    -- guifontwide = "", -- list of font names for double-wide characters
    -- guioptions = "", -- GUI: Which components and options are used
    -- guitablabel = "", -- GUI: custom label for a tab page
    -- guitabtooltip = "", -- GUI: custom tooltip for a tab page
    -- helpfile = "", -- full path name of the main help file
    -- helpheight = "", -- minimum height of a new help window
    -- helplang = "", -- preferred help languages
    -- hidden = "", -- don't unload buffer when it is abandoned
    -- hlsearch = "", -- highlight matches with last search pattern
    -- history = "", -- number of command-lines that are remembered
    -- hkmap = "", -- Hebrew keyboard mapping
    -- hkmapp = "", -- phonetic Hebrew keyboard mapping
    -- icon = "", -- let Vim set the text of the window icon
    -- iconstring = "", -- string to use for the Vim icon text
    -- ignorecase = "", -- ignore case in search patterns
    -- imcmdline = "", -- use IM when starting to edit a command line
    -- imdisable = "", -- do not use the IM in any mode
    -- iminsert = "", -- use :lmap or IM in Insert mode
    -- imsearch = "", -- use :lmap or IM when typing a search pattern
    -- include = "", -- pattern to be used to find an include file
    -- includeexpr = "", -- expression used to process an include line
    -- incsearch = "", -- highlight match while typing search pattern
    -- indentexpr = "", -- expression used to obtain the indent of a line
    -- indentkeys = "", -- keys that trigger indenting with 'indentexpr'
    -- infercase = "", -- adjust case of match for keyword completion
    -- isfname = "", -- characters included in file names and pathnames
    -- isident = "", -- characters included in identifiers
    -- iskeyword = "", -- characters included in keywords
    -- isprint = "", -- printable characters
    -- joinspaces = "", -- two spaces after a period with a join command
    -- jumpoptions = "", -- specifies how jumping is done
    -- keymap = "", -- name of a keyboard mapping
    -- keymodel = "", -- enable starting/stopping selection with keys
    -- keywordprg = "", -- program to use for the "K" command
    -- langmap = "", -- alphabetic characters for other language mode
    -- langmenu = "", -- language to be used for the menus
    -- langremap = "", -- do apply 'langmap' to mapped characters
    -- laststatus = "", -- tells when last window has status lines
    -- lazyredraw = "", -- don't redraw while executing macros
    -- linebreak = "", -- wrap long lines at a blank
    -- lines = "", -- number of lines in the display
    -- linespace = "", -- number of pixel lines to use between characters
    -- lisp = "", -- automatic indenting for Lisp
    -- lispoptions = "", -- changes how Lisp indenting is done
    -- lispwords = "", -- words that change how lisp indenting works
    -- list = "", -- show <Tab> and <EOL>
    -- listchars = "", -- characters for displaying in list mode
    -- loadplugins = "", -- load plugin scripts when starting up
    -- magic = "", -- changes special characters in search patterns
    -- makeef = "", -- name of the errorfile for ":make"
    -- makeencoding = "", -- encoding of external make/grep commands
    -- makeprg = "", -- program to use for the ":make" command
    -- matchpairs = "", -- pairs of characters that "%" can match
    -- matchtime = "", -- tenths of a second to show matching paren
    -- maxcombine = "", -- maximum nr of combining characters displayed
    -- maxfuncdepth = "", -- maximum recursive depth for user functions
    -- maxmapdepth = "", -- maximum recursive depth for mapping
    -- maxmempattern = "", -- maximum memory (in Kbyte) used for pattern search
    -- menuitems = "", -- maximum number of items in a menu
    -- mkspellmem = "", -- memory used before :mkspell compresses the tree
    -- modeline = "", -- recognize modelines at start or end of file
    -- modelineexpr = "", -- allow setting expression options from a modeline
    -- modelines = "", -- number of lines checked for modelines
    -- modifiable = "", -- changes to the text are not possible
    -- modified = "", -- buffer has been modified
    -- more = "", -- pause listings when the whole screen is filled
    mouse = "a", -- enable the use of mouse clicks
    -- mousefocus = "", -- keyboard focus follows the mouse
    -- mousehide = "", -- hide mouse pointer while typing
    -- mousemodel = "", -- changes meaning of mouse buttons
    -- mousemoveevent = "", -- report mouse moves with <MouseMove>
    -- mousescroll = "", -- amount to scroll by when scrolling with a mouse
    -- mouseshape = "", -- shape of the mouse pointer in different modes
    -- mousetime = "", -- max time between mouse double-click
    -- nrformats = "", -- number formats recognized for CTRL-A command
    number = true, -- print the line number in front of each line
    -- numberwidth = "", -- number of columns used for the line number
    -- omnifunc = "", -- function for filetype-specific completion
    -- opendevice = "", -- allow reading/writing devices on MS-Windows
    -- operatorfunc = "", -- function to be called for g@ operator
    -- packpath = "", -- list of directories used for packages
    -- paragraphs = "", -- nroff macros that separate paragraphs
    -- patchexpr = "", -- expression used to patch a file
    -- patchmode = "", -- keep the oldest version of a file
    -- path = "", -- list of directories searched with "gf" et.al.
    -- preserveindent = "", -- preserve the indent structure when reindenting
    -- previewheight = "", -- height of the preview window
    -- previewpopup = "", -- use popup window for preview
    -- previewwindow = "", -- identifies the preview window
    -- pumheight = "", -- maximum number of items to show in the popup menu
    -- pumwidth = "", -- minimum width of the popup menu
    -- pyxversion = "", -- Python version used for pyx* commands
    -- quoteescape = "", -- escape characters used in a string
    -- readonly = "", -- disallow writing the buffer
    -- redrawtime = "", -- timeout for 'hlsearch' and :match highlighting
    -- regexpengine = "", -- default regexp engine to use
    -- relativenumber = "", -- show relative line number in front of each line
    -- report = "", -- threshold for reporting nr. of lines changed
    -- revins = "", -- inserting characters will work backwards
    -- rightleft = "", -- window is right-to-left oriented
    -- rightleftcmd = "", -- commands for which editing works right-to-left
    -- ruler = "", -- show cursor line and column in the status line
    -- rulerformat = "", -- custom format for the ruler
    -- runtimepath = "", -- list of directories used for runtime files
    -- scroll = "", -- lines to scroll with CTRL-U and CTRL-D
    -- scrollbind = "", -- scroll in window as other windows scroll
    -- scrolljump = "", -- minimum number of lines to scroll
    -- scrolloff = "", -- minimum nr. of lines above and below cursor
    -- scrollopt = "", -- how 'scrollbind' should behave
    -- sections = "", -- nroff macros that separate sections
    -- secure = "", -- secure mode for reading .vimrc in current dir
    -- selection = "", -- what type of selection to use
    -- selectmode = "", -- when to use Select mode instead of Visual mode
    -- sessionoptions = "", -- options for :mksession
    -- shada = "", -- use .shada file upon startup and exiting
    -- shell = "", -- name of shell to use for external commands
    -- shellcmdflag = "", -- flag to shell to execute one command
    -- shellpipe = "", -- string to put output of ":make" in error file
    -- shellquote = "", -- quote character(s) for around shell command
    -- shellredir = "", -- string to put output of filter in a temp file
    -- shellslash = "", -- use forward slash for shell file names
    -- shelltemp = "", -- whether to use a temp file for shell commands
    -- shellxescape = "", -- characters to escape when 'shellxquote' is (
    -- shellxquote = "", -- like 'shellquote', but include redirection
    -- shiftround = "", -- round indent to multiple of shiftwidth
    -- shiftwidth = "", -- number of spaces to use for (auto)indent step
    -- shortmess = "", -- list of flags, reduce length of messages
    -- showbreak = "", -- string to use at the start of wrapped lines
    -- showcmd = "", -- show (partial) command somewhere
    -- showcmdloc = "", -- where to show (partial) command
    -- showfulltag = "", -- show full tag pattern when completing tag
    -- showmatch = "", -- briefly jump to matching bracket if insert one
    -- showmode = "", -- message on status line to show current mode
    -- showtabline = "", -- tells when the tab pages line is displayed
    -- sidescroll = "", -- minimum number of columns to scroll horizontal
    -- sidescrolloff = "", -- min. nr. of columns to left and right of cursor
    signcolumn = "yes", -- when and how to display the sign column
    -- smartcase = "", -- no ignore case when pattern has uppercase
    -- smartindent = "", -- smart autoindenting for C programs
    -- smarttab = "", -- use 'shiftwidth' when inserting <Tab>
    -- smoothscroll = "", -- scroll by screen lines when 'wrap' is set
    -- softtabstop = "", -- number of spaces that <Tab> uses while editing
    -- spell = "", -- enable spell checking
    -- spellcapcheck = "", -- pattern to locate end of a sentence
    -- spellfile = "", -- files where zg and zw store words
    -- spelllang = "", -- language(s) to do spell checking for
    -- spelloptions = "", -- options for spell checking
    -- spellsuggest = "", -- method(s) used to suggest spelling corrections
    -- splitbelow = "", -- new window from split is below the current one
    -- splitkeep = "", -- determines scroll behavior for split windows
    -- splitright = "", -- new window is put right of the current one
    -- startofline = "", -- commands move cursor to first non-blank in line
    -- statuscolumn = "", -- custom format for the status column
    -- statusline = "", -- custom format for the status line
    -- suffixes = "", -- suffixes that are ignored with multiple match
    -- suffixesadd = "", -- suffixes added when searching for a file
    -- swapfile = "", -- whether to use a swapfile for a buffer
    -- switchbuf = "", -- sets behavior when switching to another buffer
    -- synmaxcol = "", -- maximum column to find syntax items
    -- syntax = "", -- syntax to be loaded for current buffer
    -- tabline = "", -- custom format for the console tab pages line
    -- tabpagemax = "", -- maximum number of tab pages for -p and "tab all"
    tabstop = 4, -- number of spaces that <Tab> in file uses
    -- tagbsearch = "", -- use binary searching in tags files
    -- tagcase = "", -- how to handle case when searching in tags files
    -- tagfunc = "", -- function to get list of tag matches
    -- taglength = "", -- number of significant characters for a tag
    -- tagrelative = "", -- file names in tag file are relative
    -- tags = "", -- list of file names used by the tag command
    -- tagstack = "", -- push tags onto the tag stack
    -- term = "", -- name of the terminal
    -- termbidi = "", -- terminal takes care of bi-directionality
    -- textwidth = "", -- maximum width of text that is being inserted
    -- thesaurus = "", -- list of thesaurus files for keyword completion
    -- thesaurusfunc = "", -- function to be used for thesaurus completion
    -- tildeop = "", -- tilde command "~" behaves like an operator
    -- timeout = "", -- time out on mappings and key codes
    -- timeoutlen = "", -- time out time in milliseconds
    -- title = "", -- let Vim set the title of the window
    -- titlelen = "", -- percentage of 'columns' used for window title
    -- titleold = "", -- old title, restored when exiting
    -- titlestring = "", -- string to use for the Vim window title
    -- ttimeout = "", -- time out on mappings
    -- ttimeoutlen = "", -- time out time for key codes in milliseconds
    -- ttytype = "", -- alias for 'term'
    -- undodir = "", -- where to store undo files
    undofile = true, -- save undo information in a file
    -- undolevels = "", -- maximum number of changes that can be undone
    -- undoreload = "", -- max nr of lines to save for undo on a buffer reload
    -- updatecount = "", -- after this many characters flush swap file
    -- updatetime = "", -- after this many milliseconds flush swap file
    -- varsofttabstop = "", -- a list of number of spaces when typing <Tab>
    -- vartabstop = "", -- a list of number of spaces for <Tab>s
    -- verbose = "", -- give informative messages
    -- verbosefile = "", -- file to write messages in
    -- viewdir = "", -- directory where to store files with :mkview
    -- viewoptions = "", -- specifies what to save for :mkview
    -- virtualedit = "", -- when to use virtual editing
    -- visualbell = "", -- use visual bell instead of beeping
    -- warn = "", -- warn for shell command when buffer was changed
    -- whichwrap = "", -- allow specified keys to cross line boundaries
    -- wildchar = "", -- command-line character for wildcard expansion
    -- wildcharm = "", -- like 'wildchar' but also works when mapped
    -- wildignore = "", -- files matching these patterns are not completed
    -- wildignorecase = "", -- ignore case when completing file names
    -- wildmenu = "", -- use menu for command line completion
    -- wildmode = "", -- mode for 'wildchar' command-line expansion
    -- wildoptions = "", -- specifies how command line completion is done
    -- winaltkeys = "", -- when the windows system handles ALT keys
    -- window = "", -- nr of lines to scroll for CTRL-F and CTRL-B
    -- winheight = "", -- minimum number of lines for the current window
    -- winhighlight = "", -- window-local highlighting
    -- winfixheight = "", -- keep window height when opening/closing windows
    -- winfixwidth = "", -- keep window width when opening/closing windows
    -- winminheight = "", -- minimum number of lines for any window
    -- winminwidth = "", -- minimal number of columns for any window
    -- winwidth = "", -- minimal number of columns for current window
    -- wrap = "", -- long lines wrap and continue on the next line
    -- wrapmargin = "", -- chars from the right where wrapping starts
    -- wrapscan = "", -- searches wrap around the end of the file
    -- write = "", -- writing to a file is allowed
    -- writeany = "", -- write to file with no need for "!" override
    -- writebackup = "", -- make a backup before overwriting a file
    -- writedelay = "", -- delay this many msec for each char (for debug)
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
