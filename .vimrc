" from usr_27.txt smartcase: If you have a pattern with at least one uppercase
" character, the search becomes case sensitive.  The idea is that you didn't
" have to type that uppercase character, so you must have done it because you
" wanted case to match.  
" set ignorecase and smartcase 
set ignorecase smartcase

" magic: when searching, some special characters need to be backslashed to
" have their special meaning activated, and are interpreted literally if used
" without a preceding '\'. Others are the opposite. E.g.:
"
" these are special characters without a backslash, and normal characters with
" it:
" 	  $	    matches end-of-line
" 	  .	    matches any character
" 	  *	    any number of the previous atom
" 	  ~	    latest substitute string
"
" these characters are interpreted literally without the backslash, and have
" special meaning if escaped with it:
" 	  \(\)      grouping into an atom
" 	  \|	    separating alternatives
" 	  \a	    alphabetic character
" 	  \\	    literal backslash
" 	  \.	    literal dot
" 	  \{	    literal '{'
" 	  a	    literal 'a'
set magic

" set colorscheme
colorscheme elflord

" set the cursor line under the cursor
set cursorline

" set ~ as an operator
set top

" add title to top of file
set title

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

" set showmode to show incomplete commands to the left of the ruler
set showmode

" set autoindent
set autoindent

" enable mouse
if has('mouse')
  set mouse=a
endif

set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Use Vim settings, rather than Vi's 
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"enable syntax
syntax enable

"set line numbers 
set number

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

" set textwidth for text files
autocmd FileType text setlocal textwidth=78

" set scrolloff to make sure cursor stays more or less
" close to the middle of the screen
" set scrolloff=999

" macros
	" comment block line in vimrc
	let @c='0i" j'	

	" insert pair of curly brackets
	let @b='A {}O	'	

	" close an opening html tag. Run the macro on a line containing a
	" single html opeining tag. It will copy the tag, close it and leave
	" it open for editing;
	let @h='yyp^a/ko	'	

	" add a - to the beginning of a line, and a ; to the end
	let @n='^i- A;j^'

	" add a - to the beginning of a line, and a : to the end
	let @m='^i- A:j^'

	" build an empty plot for the R class notes
	let @p='0i		€kb|                                             yyppppppppppppppa_________________________________________kllllljhhhr_lr_lr_lr_kj'

" mappings
	" layout change for all the 'Slide #' in my notes
	map @sli /^slide.[0-9]<CR>0gU$i##<space><esc>@sli
