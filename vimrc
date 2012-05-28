"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Context: vimrc for skiagl
" Version: 1.02 2012-05-27 enable also the stanadard vimrc config
" 
" Version_Notes:
" 	Just learning vim and git as of 2012-05-23.
" 	Am making notes as new features are added.
" 	Can draw upon
" 	 http://amix.dk/vim/vimrc.html 
" 	for inspiration keeping note in vimrc file.
"
" Todo_Next:
" * more vimrc settings for plugins
"
" Plugins_Included:
"   Double tab if not added yet. Single tab if already added.
"
"	pathogen
"       usage   -> http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
"       github  -> https://github.com/tpope/vim-pathogen/blob/master/README.markdown
"       github  -> http://github.com/tpope/vim-pathogen
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2332
"
"   vim-fugitive
"       git     -> http://github.com/tpope/vim-fugitive.git bundle/fugitive
"
"   vim-markdown 
"       github  -> https://github.com/hallison/vim-markdown bundle/markdown
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2882
"
"   tabular
"       github  -> https://github.com/godlygeek/tabular bundle/tabular
"
"   snipMate.vim
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2540
"	        "       Snippets for many languages (similar to TextMate's):
"	        "           info -> :help snipMate
"       github  -> https://github.com/msanders/snipmate.vim
"	       
"   surround.vim 
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=1697
"            Makes it easy to work with surrounding text:
"       info    -> :help surround
"       github  -> https://github.com/tpope/vim-surround
"
"   delimitMate
"       github  -> https://github.com/Raimondi/delimitMate bundle/delimitmate
"
"   tagbar
"       github  -> https://github.com/majutsushi/tagbar bundle/tagbar
"
"   closetag
"       github  ->  https://github.com/docunext/closetag.vim bundle/closetag
"
"   mru
"       github  -> https://github.com/vim-scripts/mru.vim bundle/mru
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=521
"       Plugin to manage Most Recently Used (MRU) files:
"           info -> :e ~/.vim_runtime/plugin/mru.vim
"
"   csv.vim
"       github  -> https://github.com/chrisbra/csv.vim bundle/csv-vim
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2830
"
"REMVOED   align
"      github  -> https://github.com/vim-scripts/Align.vim
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=1497
"
"   vim-align
"       github  -> https://github.com/jezcope/vim-align
"       http://www.vim.org/scripts/script.php?script_id=294
"
"   vim-colors-solarized
"       github  -> https://github.com/altercation/vim-colors-solarized.git
"
"   vim-instant-markdown
"       github  -> https://github.com/suan/vim-instant-markdown
"       note    -> will involve extra work on alternate systems
"
"           Command-T - http://www.vim.org/scripts/script.php?script_id=3025
"           Command-T plug-in provides an extremely fast, intuitive mechanism for opening files:
"           info -> :help CommandT
"           screencast and web-help -> http://amix.dk/blog/post/19501
"           2012-05-23 wasn't able to install
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Priority
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Priority for Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Standard Vimrc 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" from vimrc_example
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugin
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set Solarized colour scheme dark (see gvimrc for light
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" : => Enable Markdown to HTML conversion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ref: http://net.tutsplus.com/tutorials/other/vim-essential-plugin-markdown-to-html/
" usage: whenever we type – by default – backslash + md, that command will run, thus converting our markdown to clean HTML
" nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr>  
" </cr>cr></leader>leader>
" Note: 2012-05-24 not able to get this to work on my system
" let's temporarily turnoff and see what happens to gvim menu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" : => vim-instant-markdown 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" works automatically on opening a markdown file if system is setup
