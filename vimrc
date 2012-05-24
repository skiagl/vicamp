"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Context: vimrc for skiagl
" Version: 1.0 -2012-05-23
" 
" Version_Notes:
" 	Just learning vim and git as of 2012-05-23.
" 	Am making notes as new features are added.
" 	Can draw upon
" 	 http://amix.dk/vim/vimrc.html 
" 	for inspiration.
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
"
"
"	        tabular
"
"	        align
"
"	        vimregex
"
"	        vim-markdown
"               git -> https://github.com/plasticboy/vim-markdown/
"               or newer version
"               https://github.com/hallison/vim-markdown
"
"               http://www.vim.org/scripts/script.php?script_id=2882
"
"
"	        surround.vim - http://www.vim.org/scripts/script.php?script_id=1697
"       Makes it easy to work with surrounding text:
"           info -> :help surround
"
"           snipMate.vim -http://www.vim.org/scripts/script.php?script_id=2540
"       Snippets for many languages (similar to TextMate's):
"           info -> :help snipMate
"           git -> https://github.com/msanders/snipmate.vim
"
"           mru.vim - http://www.vim.org/scripts/script.php?script_id=521
"       Plugin to manage Most Recently Used (MRU) files:
"           info -> :e ~/.vim_runtime/plugin/mru.vim
"
"           Command-T - http://www.vim.org/scripts/script.php?script_id=3025
"       Command-T plug-in provides an extremely fast, intuitive mechanism for opening files:
"           info -> :help CommandT
"           screencast and web-help -> http://amix.dk/blog/post/19501
"
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
