# **VIM shortcuts**
##### *because the internet apparently can't put them all in one spot*

#### Motions
- `h` move left
- `j`	move down
- `k`	move up
- `l`	move right
- `w`	jump by start of words (punctuation considered words)
- `W`	jump by words (spaces separate words)
- `e`	jump to end of words (punctuation considered words)
- `E`	jump to end of words (no punctuation)
- `b`	jump backward by words (punctuation considered words)
- `B`	jump backward by words (no punctuation)
- `0`	move to start of line
- `^`	move to first non-blank character of line
- `$`	move to end of current line
- *`line number`*`G`	go to *line number*
- `G`	move cursor to last line of document
- `M`	move cursor to middle of document
- `gg`  move cursor to first line of document
- `f`*`char`* move cursor up to next instance of *char*
- `F`*`char`* move cursor up to previous instance of *char*
- `t`*`char`* move cursor to just before next instance of *char*
- `T`*`char`* move cursor to just before previous instance of *char*
- `(`	jumps to the previous sentence
- `)`	jumps to the next sentence
- `{`	jumps to the previous paragraph
- `}`	jumps to the next paragraph
- `[[`	jumps to the previous section
- `]]`	jumps to the next section
- `[]`	jump to the end of the previous section
- `][`	jump to the end of the next section
- `H`	jump to the last line on screen
- `L`	jump to the first line on screen
- `<Ctrl> + d`  move down half page
- `<Ctrl> + u`  move up half page
- `<Ctrl> + f`  move down whole page (same as Page Down)
- `<Ctrl> + b`  move up whole page (same as Page Up)

#### Marks
- `m`*`x`* set mark *x*
- `delmarks `*`x`* delete mark *x*
- `delm `*`x`* delete mark *x*
- `]'`	jump to next line with a lowercase mark
- `['`	jump to previous line with a lowercase mark
- `]\``	jump to next lowercase mark
- `[\``	jump to previous lowercase mark
- `5[\``	jump back 5 lowercase marks

#### Special Marks
Vim has some special marks which it sets automatically. Here are some of the most useful:
- `\`.` jump to position where last change occurred in current buffer
- `\`"`	jump to position where last exited current buffer
- `\`0`	jump to position in last file edited (when exited Vim)
- `\`1`	like `0 but the previous file (also `2 etc)
- `''`	jump back (to line in current buffer where jumped from)
- `\`\``	jump back (to position in current buffer where jumped from)
- `\`[` jump to beginning of previously changed or yanked text
- `\`]`	jump to end of previously changed or yanked text
- `\`<` jump to beginning end of last visual selection
- `\`<` jump to end of last visual selection

#### Insert Mode
- `i`	start insert mode at cursor
- `I`	insert at the beginning of the line
- `a`	append after the cursor
- `A`	append at the end of the line
- `o`	begin a new line below the cursor
- `O`	begin a new line above the cursor
- `ea`	append at end of word
- `<Ctrl> + h`  delete previous character without leaving insert mode
- `<Ctrl> + w`  delete previous word without leaving insert mode
- `<Ctrl> + u`  delete line to left of cursor without leaving insert mode
- `<Ctrl> + O`  enter normal mode for next command
- `<Esc>`	exit insert mode

#### Editing
- `r`	replace a single character
- `R`	overwrite mode
- `J`	join line below to the current one
- `cc`	change (replace) an entire line
- `cw`	change (replace) to the end of word
- `c$`	change (replace) to the end of line
- `C`	change (replace) to the end of line
- `s`	delete character at cursor and subsitute text
- `S`	delete entire line and substitute text (same as cc)
- `xp`	transpose two letters (cut and paste)
- `guu`	change current line to lowercase
- `gUU`	change current line to uppercase
- `g~~`	invert case of current line
- `guw`	change until end of current word to lowercase
- `guaw`	change all of current word to lowercase
- `gUw`	change until end of current word to uppercase
- `gUaw`	change all of current word to uppercase
- `gu` *motion* make all words in *motion* lowercase
- `gU` *motion* make all words in *motion* uppercase
- `u`	undo
- `<Ctrl> + r`  redo
- `.`	repeat last command (whole document)
- `;`	repeat last command (on this line)
- `<Ctrl> + t`  indent current line (insert mode)
- `<Ctrl> + d`  unindent current line (insert mode)
- `==`  autoindent current line

#### Marking Text (Visual Mode)
- `v`	start visual mode, mark lines, then do command (such as y-yank)
- `V`	start linewise visual mode
- `<Ctrl> + v`	start visual block mode
- `o`	move to other end of marked area
- `O`	move to other corner of block
- `aw`	mark a word
- `ab`	a () block (with braces)
- `aB`	a {} block (with brackets)
- `ib`	inner () block
- `iB`	inner {} block
- `<Esc>`	exit visual mode

#### Visual Commands
- `>`	indent
- `<`	unindent
- `y`	yank (copy) marked text
- `d`	delete marked text
- `U`	convert selected text to uppercase
- `u`	convert selected text to lowercase
- `~`	switch case of selected
- `=`   autoindent selection

#### Cut and Paste
- `yy`	copy entire line
- `Y`	copy entire line
- `2yy`	copy 2 lines
- `yw`	copy word
- `y$`	copy to end of line
- `p`	paste after cursor
- `P`	paste before cursor
- `dd`	delete (cut) a line
- `dw`	delete (cut) the current word
- `daw`	delete (cut) the current word (from any position in the word)
- `x`	delete (cut) current character
- `:r`*`filename`*	insert the contents of *filename* below the cursor
- `:r`*`command`*	execute *command* and insert its output below the cursor
- `<Ctrl> + y`	(when in insert mode) copy/paste character from line above

#### Repeating Groups of Commands
- `q`*`char <commands> `*`q`	store *<commands>* in buffer *char*
- `@`*`char`*  repeat *<commands>* stored in buffer *char*
- `@@`  repeat *<commands>* stored in the last used buffer (called buy `@`*`char`*)

#### Search/Replace
- `/`*`pattern`*	search for *pattern*
- `?`*`pattern`*	search backward for pattern
- `*`	search for word under cursor
- `g*`	search for partial word under cursor
- `<Ctrl> + o`	go forward through jump locations for word under cursor
- `<Ctrl> + i`	go backward through jump locations for word under cursor
- `[I`	show lines containing word under cursor
- `n`	move to next search instance
- `N`	move to previous search instance
- `:%s/old/new/g`	replace all old with new throughout file
- `:%s/old/new/gc`	replace all old with new throughout file with confirmations

#### Working with multiple files
- `:e` filename	Edit a file in a new buffer
- `:bnext` (or :bn)	go to next buffer
- `:bprev` (of :bp)	go to previous buffer
- `:bd`	delete a buffer (close a file)
- `:sp`*`filename`*	open *filename* in a new buffer and split window (horizontally)
- `:vsplit`*`filename`*	open *filename* in a new buffer and split window (vertically)
- `<Ctrl> + ws`	split windows
- `<Ctrl> + ww`	switch between windows
- `<Ctrl> + wq`	quit a window
- `<Ctrl> + wv`	split windows vertically
- `gf`	go to file under cursor
- `<Ctrl> + o`	jump backward one buffer
- `<Ctrl> + i`	jump forward one buffer
- `<Ctrl> + ^`	jump to the alternate (last edited) buffer

#### Screen Translation
- `zz`	translate screen so current line is at center
- `zt`	translate screen so current line is at top
- `zb`	translate screen so current line is at bottom
- `<Ctrl> + y`	translate screen up one line (without moving cursor)
- `<Ctrl> + e`	translate screen down one line (without moving cursor)

#### Exiting
- `:w`	write (save) the file, but don't exit
- `:q`	quit (fails if anything has changed)
- `:wq`	write (save) and quit
- `:q!`	quit and throw away changes
- `ZZ`	same as `:wq`
- `ZQ`	same as `:q!`

#### Miscellaneous
- `<Shift> + K`	suspends vim and opens man page for the command under the cursor
- `<Ctrl> + g`	shows filename, status, # of lines, and percentage of way through buffer
- `g + <Ctrl> + g`	shows column, line, word, and byte information
- `1 + <Ctrl> + g`	shows full path filename, status, # of lines, and percentage of way through buffer
- `<Ctrl> + s`	stops (freezes) VIM
- `<Ctrl> + q`	resumes (unfreezes) VIM
- `:%s/`*`pattern`*`//gn`	count number of matches of *pattern*
- `:%s/`*`pattern`*`//n`	count number of lines that contain a match of *pattern*

#### Other helpful options
- `:set ignorecase`	case insensitive search
- `:set smartcase`	case insensitive search, unless something in search term is capital
- `:set hlsearch/nohlsearch`	highlight all search terms in document
