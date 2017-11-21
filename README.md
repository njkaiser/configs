# **VIM shortcuts**
##### *because the internet apparently can't put them all in one spot*

#### Cursor Movement
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

#### Insert Mode
- `i`	start insert mode at cursor
- `I`	insert at the beginning of the line
- `a`	append after the cursor
- `A`	append at the end of the line
- `o`	begin a new line below the cursor
- `O`	begin a new line above the cursor
- `ea`	append at end of word
- `<Esc>`	exit insert mode

#### Editing
- `r`	replace a single character
- `R`	overwrite mode
- `J`	join line below to the current one
- `cc`	change (replace) an entire line
- `cw`	change (replace) to the end of word
- `c$`	change (replace) to the end of line
- `s`	delete character at cursor and subsitute text
- `S`	delete line at cursor and substitute text (same as cc)
- `xp`	transpose two letters (cut and paste)
- `u`	undo
- `<Ctrl> + r`  redo
- `.`	repeat last command (whole document)
- `;`	repeat last command (on this line)
- `<Ctrl> + t`  indent current line (insert mode)
- `<Ctrl> + d`  unindent current line (insert mode)

#### Marking Text (Visual Mode)
- `v`	start visual mode, mark lines, then do command (such as y-yank)
- `V`	start linewise visual mode
- `o`	move to other end of marked area
- `<Ctrl> + v`	start visual block mode
- `O`	move to Other corner of block
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
- `~`	switch case

#### Cut and Paste
- `yy`	copy a line
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
- `<Ctrl> + s`	stops (freezes) VIM
- `<Ctrl> + q`	resumes (unfreezes) VIM
- `:%s/`*`pattern`*`//gn`	count number of matches of *pattern*
- `:%s/`*`pattern`*`//n`	count number of lines that contain a match of *pattern*

#### Other helpful options
- `:set ignorecase`	case insensitive search
- `:set smartcase`	case insensitive search, unless something in search term is capital
- `:set hlsearch/nohlsearch`	highlight all search terms in document
