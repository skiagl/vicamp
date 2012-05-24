"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Context: vimrc for skiagl
" Version: 1.01 2012-05-23 more submodules added but not congigured yet.
" 
" Version_Notes:
" 	Just learning vim and git as of 2012-05-23.
" 	Am making notes as new features are added.
" 	Can draw upon
" 	 http://amix.dk/vim/vimrc.html 
" 	for inspiration keeping note in vimrc file.
"
" Plugins_Included:
"   Double tab if not added yet. Single tab if already added.
"
"	pathogen
"       usage   -> http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
"       git     -> https://github.com/tpope/vim-pathogen/blob/master/README.markdown
"       git     -> http://github.com/tpope/vim-pathogen
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2332
"
"   vim-fugitive
"       git     -> http://github.com/tpope/vim-fugitive.git bundle/fugitive
"
"   vim-markdown 
"       git     -> https://github.com/hallison/vim-markdown bundle/markdown
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2882
"
"   tabular
"       git     -> https://github.com/godlygeek/tabular bundle/tabular
"
"   snipMate.vim
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2540
"	        "       Snippets for many languages (similar to TextMate's):
"	        "           info -> :help snipMate
"       git     -> https://github.com/msanders/snipmate.vim
"	       
"   surround.vim 
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=1697
"            Makes it easy to work with surrounding text:
"       info    -> :help surround
"       git     -> https://github.com/tpope/vim-surround
"
"   delimitMate
"       git     -> https://github.com/Raimondi/delimitMate bundle/delimitmate
"
"   tagbar
"       git     -> https://github.com/majutsushi/tagbar bundle/tagbar
"
"   closetag
"       git     -> https://github.com/docunext/closetag.vim bundle/closetag
"
"   mru
"       git     -> https://github.com/vim-scripts/mru.vim bundle/mru
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=521
"       Plugin to manage Most Recently Used (MRU) files:
"           info -> :e ~/.vim_runtime/plugin/mru.vim
"
"   csv.vim
"       git     -> https://github.com/chrisbra/csv.vim bundle/csv-vim
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=2830
"
"   align
"       git     -> https://github.com/vim-scripts/Align.vim
"       vim.org -> http://www.vim.org/scripts/script.php?script_id=1497
"
"   vim-align
"       git     -> https://github.com/jezcope/vim-align
"       http://www.vim.org/scripts/script.php?script_id=294
"
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
