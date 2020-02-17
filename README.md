# ft-confluence.vim
Filetype plugin for the [Confluence Wiki Markup][1].

## Features
- Syntax highlighting
- [Folds][2]
- Display [emoticons][3] using the [conceal][4] feature

## Usage
To edit your files using the Confluence Wiki Markup, the filenames should match
either `*.cwiki` or `*.confluence`.

## Configuration
### Syntax Highlighting for Code Blocks
Syntax highlighting is enabled for code blocks within the document. You can
configure which filetypes are available for highlighting by setting the
`g:confluence_code_languages` variable. This variable maps Vim filetypes
to language names that Confluence recognizes.

    let g:confluence_code_languages = {
      \ 'cpp': ['cpp', 'c++'],
      \ 'bash': ['bash', 'sh'],
      \ 'java': ['java']
      \ }

### Folds
Folds are [enabled by default][5] in Vim. If you want to disable it for this
plugin:

    au BufNewFile,BufRead *.cwiki,*.confluence setlocal nofoldenable

### Emoticons
Conceals are [disabled by default][6] in Vim, meaning that emoticons won't be
displayed if you're using the default settings. If you want to enable it for
this plugin:

    au BufNewFile,BufRead *.cwiki,*.confluence setlocal conceallevel=1

## Installation
Use your preferred plugin manager. If you use [vim-plug][7]:

    Plug 'midchildan/ft-confluence.vim'

## License
Available under the terms of the MIT license. See [LICENSE][8] for details.

[1]: https://confluence.atlassian.com/doc/confluence-wiki-markup-251003035.html
[2]: http://vimdoc.sourceforge.net/htmldoc/fold.html#folds
[3]: https://confluence.atlassian.com/doc/symbols-emoticons-and-special-characters-136870.html
[4]: http://vimdoc.sourceforge.net/htmldoc/version7.html#new-conceal
[5]: http://vimdoc.sourceforge.net/htmldoc/options.html#'foldenable'
[6]: http://vimdoc.sourceforge.net/htmldoc/options.html#'conceallevel'
[7]: https://github.com/junegunn/vim-plug
[8]: LICENSE
