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
