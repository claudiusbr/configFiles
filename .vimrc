" set ~ as an operator
set top

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Disable backups
set nobackup
set nowb
set noswapfile

" set backupdir to Home-backup, CurrentDir-backup, or /tmp
set backupdir=/tmp,~/"

" set showmode to show incomplete commands to the left of the ruler
set showmode

" set autoindent
set autoindent

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  set undofile		" keep an undo file (undo changes after closing)
endif
set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"enable syntax
syntax enable

"set line numbers 
set number

"set ignore case on search
set ic

"set highlight search
set hls

"set ruler (the bit at the bottom of the screen showing '[line],[column]'
set ruler

"set autowriteall
set awa

"set clipboard
set clipboard=unnamed

"set linebreak
set linebreak

" set textwidth
autocmd FileType text setlocal textwidth=78

" vimrc comment macro
:map <F2> 0i"<Esc>j

" uncomment to display all characters
"set list



"---------------------------------------------------------------------------------------

" Bookmark for VIM Manuals: currently at usr_11.txt line 286 

" to insert text at the beginning of every line in a block, do ctrl-v, select block,
" then do "I{string}<Esc>", with {string} being the text you want to enter

" J joins lines selected by ctrl-v

" CTRL-W commands see Q_wi

" key-notation key-codes keycodes <-- :h these to get key notations


" file usr_06.txt to change colorscheme
"	:colorscheme evening
""evening" is the name of the color scheme.  There are several others you might
"want to try out.  Look in the directory $VIMRUNTIME/colors.

" See :help text-objects
" aw = a word, is = inner sentence, as = a sentence 
" daw = d[elete] a w[ord] : deletes a word from the middle
" das = d[elete] a s[entence] : deletes an inner sentence
"	e.g.: Hello there. This is me. Life is cool.
"	put the cursor before 'This', then cis:
"	Results in: Hello there. Life is cool	

" ~ changes the case of the character under cursor
"	if top=true, ~ is an operator, so do [N] ~ motion

" xp deletes and puts a character when it's been transposed:
" 	e.g. teh -> x 'e', then p -> the

" starting vim with vimdiff [file1] [file2] will open a split window showing
" the differences between file1 and file2
" from within vim, use :[vertical ]diffsp[lit] [file_to_compare]
" use 'zo' and 'zc' to open folds

" ':tab split' to split the window in tabs, and '[i]gt' to navigate between tabs
"	or to go to tab at position i
" 	the above will split current file. use :tabedit [filename | #[N]] (where
" 	N is the buffer number) for diff
" 	file. For more  information see :h tab-page
" :buffers shortcut is :ls
" :bd (buffer delete) - deletes buffer from list [%bd for all buffers]
" :only closes every other window and focuses only on the current one
" :qa[ll] to quit all windows

" s[register a-z] creates a mark on the text where the cursor is
" you return to it by using `[register]

" ge moves back to the end of the previous word
" zz aligns screen with cursor, ZZ writes and exits the file
" f[char] moves to the first instance of [char] in a line (uppercase for backwards)

" commands which I need to learn:
" 
" press the start of a command, then press ctrl-d to see 
" which commands start with that letter. E.g: 
" e: (ctrl+d) will show stuff like 'echo' 'else', etc.
 
" gvim from bash opens vim in a new window.

" to paste text, press 'p'

" to edit text in 'replace' mode, press R (uppercase)

" to change from the cursor until the end of a movement, press 
" 'c'+move (e.g., 'ce' deletes until the end of the word, c$ 
" until the end of the line).
 
" to find/replace, type the command :%s/[old]/[new]/gc (this will 
" search the whole file for the word to replace it).
 
" :w FILENAME  writes the current Vim file to disk with name FILENAME.
" 	to append lines to a file instead of writing, do :[range]w >> [file]

" :v  motion  :w FILENAME  saves the Visually selected lines in file
"      FILENAME.

" gq{motion} - Format the lines that {motion} moves over.


" :[range]r FILENAME|ShellCommand  retrieves disk file FILENAME|ShellCommand and puts it below the
"      cursor position, or below the last line in [range]. 
"      use :0r [patch_file] to add to the beginning of the file
"  	use :$r !ls to append shell ls output to the end of the file

" :[count]spe[llgood] {word}
"			Add {word} as a good word to 'spellfile', like with
"			|zg|.  Without count the first name is used, with a
"			count of two the second entry, etc.
 
" If you want to edit another file, but not write the changes in the current
" file yet, you can make it hidden: >
"	:hide edit foo.txt

" USING REGISTERS
" for a nice trick to correct a recorded macro, check usr_10.txt line 92
" 	the character sequence of a macro can be pasted as text
" 	if you use 'p[macro_containing_register]' e.g. p1
" 
" A register is a place where Vim stores text.  Here we will use the
" registers named a to z (later you will find out there are others).  Let's copy
" a sentence to the f register (f for First): >
"	"fyas
" 	to append to a register, use an uppercase letter, e.g. "Fyas
"
" :[range]y[ank] [x]	Yank [range] lines [into register x]. Yanking to the
"			\"* or "+ registers is possible only when the
"			|+clipboard| feature is included.
" 1. Unnamed register \""	
" Vim fills this register with text deleted with the \"d", \"c", \"s", \"x" commands
" or copied with the yank \"y" command, regardless of whether or not a specific

" There are two ways to open the command-line window:
" From Normal mode, use the \"q:", \"q/" or \"q?" command.
"    This starts editing an Ex command-line ("q:") or search string ("q/" or
"    \"q?").  Note that this is not possible while recording is in progress (the
"    \"q" stops recording then).

" :se[t] Show all options that differ from their default value.

" :scriptnames shows the names of the current scripts

" use the -o and -O arguments when opening vim with multiple files to
" determine if they will be split between multiple windows horizontally or
" vertically, respectivelly.

" use :[buffers | ls] to see how many windows are open;
" use :[count]b[uffer] to go to a specific buffer;
" use CTRL-W s to split windows horizontally.

" difference between a backup file and a swap file:
"	- a backup file stores the previously written version of a file;
"	- a swap file will store the difference between the backup and the current file, i.e., it will store the changes you have made;
" For remarks about encryption and the swap file, see |:recover-crypt|.

" start vim with vim -r [file] to recover [file]
