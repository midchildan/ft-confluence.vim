if exists("b:current_syntax")
  finish
endif

syn cluster confluenceDoc contains=confluenceHeading,confluenceList,confluenceRule,confluenceMacro
syn cluster confluenceDoc add=confluenceLinebreak,confluenceSuperscript,confluenceSubscript,confluenceEmoticons
syn cluster confluenceDoc add=confluenceBold,confluenceItalic,confluenceStrikethrough,confluenceUnderline
syn cluster confluenceDoc add=confluenceCitation,confluenceQuote,confluenceLink,confluenceImage,confluenceCode

function s:synEffects(group, markup, extraParams)
  exe 'syn region ' . a:group
    \. ' start="\%(^\|\A\&\D\)\zs' . a:markup . '\ze\S"'
    \. ' end="\S\zs' . a:markup .'\ze\%(\A\&\D\|$\)"'
    \. ' skip="\\' . a:markup . '"'
    \. ' keepend ' . a:extraParams
endfunction

" GENERATE SYN EFFECTS; Bold=\\* Italic=_ Strikethrough=- Underline=+
" XXX: The following lines are generated automatically
call s:synEffects("confluenceBold", "\\*", "contains=@confluenceDoc,confluenceBoldItalic,confluenceBoldStrikethrough,confluenceBoldUnderline")
call s:synEffects("confluenceItalic", "_", "contains=@confluenceDoc,confluenceItalicBold,confluenceItalicStrikethrough,confluenceItalicUnderline")
call s:synEffects("confluenceStrikethrough", "-", "contains=@confluenceDoc,confluenceStrikethroughBold,confluenceStrikethroughItalic,confluenceStrikethroughUnderline")
call s:synEffects("confluenceUnderline", "+", "contains=@confluenceDoc,confluenceUnderlineBold,confluenceUnderlineItalic,confluenceUnderlineStrikethrough")
call s:synEffects("confluenceBoldItalic", "_", "contains=@confluenceDoc,confluenceBoldItalicStrikethrough,confluenceBoldItalicUnderline contained")
call s:synEffects("confluenceBoldStrikethrough", "-", "contains=@confluenceDoc,confluenceBoldStrikethroughItalic,confluenceBoldStrikethroughUnderline contained")
call s:synEffects("confluenceBoldUnderline", "+", "contains=@confluenceDoc,confluenceBoldUnderlineItalic,confluenceBoldUnderlineStrikethrough contained")
call s:synEffects("confluenceItalicBold", "\\*", "contains=@confluenceDoc,confluenceItalicBoldStrikethrough,confluenceItalicBoldUnderline contained")
call s:synEffects("confluenceItalicStrikethrough", "-", "contains=@confluenceDoc,confluenceItalicStrikethroughBold,confluenceItalicStrikethroughUnderline contained")
call s:synEffects("confluenceItalicUnderline", "+", "contains=@confluenceDoc,confluenceItalicUnderlineBold,confluenceItalicUnderlineStrikethrough contained")
call s:synEffects("confluenceStrikethroughBold", "\\*", "contains=@confluenceDoc,confluenceStrikethroughBoldItalic,confluenceStrikethroughBoldUnderline contained")
call s:synEffects("confluenceStrikethroughItalic", "_", "contains=@confluenceDoc,confluenceStrikethroughItalicBold,confluenceStrikethroughItalicUnderline contained")
call s:synEffects("confluenceStrikethroughUnderline", "+", "contains=@confluenceDoc,confluenceStrikethroughUnderlineBold,confluenceStrikethroughUnderlineItalic contained")
call s:synEffects("confluenceUnderlineBold", "\\*", "contains=@confluenceDoc,confluenceUnderlineBoldItalic,confluenceUnderlineBoldStrikethrough contained")
call s:synEffects("confluenceUnderlineItalic", "_", "contains=@confluenceDoc,confluenceUnderlineItalicBold,confluenceUnderlineItalicStrikethrough contained")
call s:synEffects("confluenceUnderlineStrikethrough", "-", "contains=@confluenceDoc,confluenceUnderlineStrikethroughBold,confluenceUnderlineStrikethroughItalic contained")
call s:synEffects("confluenceBoldItalicStrikethrough", "-", "contains=@confluenceDoc,confluenceBoldItalicStrikethroughUnderline contained")
call s:synEffects("confluenceBoldItalicUnderline", "+", "contains=@confluenceDoc,confluenceBoldItalicUnderlineStrikethrough contained")
call s:synEffects("confluenceBoldStrikethroughItalic", "_", "contains=@confluenceDoc,confluenceBoldStrikethroughItalicUnderline contained")
call s:synEffects("confluenceBoldStrikethroughUnderline", "+", "contains=@confluenceDoc,confluenceBoldStrikethroughUnderlineItalic contained")
call s:synEffects("confluenceBoldUnderlineItalic", "_", "contains=@confluenceDoc,confluenceBoldUnderlineItalicStrikethrough contained")
call s:synEffects("confluenceBoldUnderlineStrikethrough", "-", "contains=@confluenceDoc,confluenceBoldUnderlineStrikethroughItalic contained")
call s:synEffects("confluenceItalicBoldStrikethrough", "-", "contains=@confluenceDoc,confluenceItalicBoldStrikethroughUnderline contained")
call s:synEffects("confluenceItalicBoldUnderline", "+", "contains=@confluenceDoc,confluenceItalicBoldUnderlineStrikethrough contained")
call s:synEffects("confluenceItalicStrikethroughBold", "\\*", "contains=@confluenceDoc,confluenceItalicStrikethroughBoldUnderline contained")
call s:synEffects("confluenceItalicStrikethroughUnderline", "+", "contains=@confluenceDoc,confluenceItalicStrikethroughUnderlineBold contained")
call s:synEffects("confluenceItalicUnderlineBold", "\\*", "contains=@confluenceDoc,confluenceItalicUnderlineBoldStrikethrough contained")
call s:synEffects("confluenceItalicUnderlineStrikethrough", "-", "contains=@confluenceDoc,confluenceItalicUnderlineStrikethroughBold contained")
call s:synEffects("confluenceStrikethroughBoldItalic", "_", "contains=@confluenceDoc,confluenceStrikethroughBoldItalicUnderline contained")
call s:synEffects("confluenceStrikethroughBoldUnderline", "+", "contains=@confluenceDoc,confluenceStrikethroughBoldUnderlineItalic contained")
call s:synEffects("confluenceStrikethroughItalicBold", "\\*", "contains=@confluenceDoc,confluenceStrikethroughItalicBoldUnderline contained")
call s:synEffects("confluenceStrikethroughItalicUnderline", "+", "contains=@confluenceDoc,confluenceStrikethroughItalicUnderlineBold contained")
call s:synEffects("confluenceStrikethroughUnderlineBold", "\\*", "contains=@confluenceDoc,confluenceStrikethroughUnderlineBoldItalic contained")
call s:synEffects("confluenceStrikethroughUnderlineItalic", "_", "contains=@confluenceDoc,confluenceStrikethroughUnderlineItalicBold contained")
call s:synEffects("confluenceUnderlineBoldItalic", "_", "contains=@confluenceDoc,confluenceUnderlineBoldItalicStrikethrough contained")
call s:synEffects("confluenceUnderlineBoldStrikethrough", "-", "contains=@confluenceDoc,confluenceUnderlineBoldStrikethroughItalic contained")
call s:synEffects("confluenceUnderlineItalicBold", "\\*", "contains=@confluenceDoc,confluenceUnderlineItalicBoldStrikethrough contained")
call s:synEffects("confluenceUnderlineItalicStrikethrough", "-", "contains=@confluenceDoc,confluenceUnderlineItalicStrikethroughBold contained")
call s:synEffects("confluenceUnderlineStrikethroughBold", "\\*", "contains=@confluenceDoc,confluenceUnderlineStrikethroughBoldItalic contained")
call s:synEffects("confluenceUnderlineStrikethroughItalic", "_", "contains=@confluenceDoc,confluenceUnderlineStrikethroughItalicBold contained")
call s:synEffects("confluenceBoldItalicStrikethroughUnderline", "+", "contains=@confluenceDoc contained")
call s:synEffects("confluenceBoldItalicUnderlineStrikethrough", "-", "contains=@confluenceDoc contained")
call s:synEffects("confluenceBoldStrikethroughItalicUnderline", "+", "contains=@confluenceDoc contained")
call s:synEffects("confluenceBoldStrikethroughUnderlineItalic", "_", "contains=@confluenceDoc contained")
call s:synEffects("confluenceBoldUnderlineItalicStrikethrough", "-", "contains=@confluenceDoc contained")
call s:synEffects("confluenceBoldUnderlineStrikethroughItalic", "_", "contains=@confluenceDoc contained")
call s:synEffects("confluenceItalicBoldStrikethroughUnderline", "+", "contains=@confluenceDoc contained")
call s:synEffects("confluenceItalicBoldUnderlineStrikethrough", "-", "contains=@confluenceDoc contained")
call s:synEffects("confluenceItalicStrikethroughBoldUnderline", "+", "contains=@confluenceDoc contained")
call s:synEffects("confluenceItalicStrikethroughUnderlineBold", "\\*", "contains=@confluenceDoc contained")
call s:synEffects("confluenceItalicUnderlineBoldStrikethrough", "-", "contains=@confluenceDoc contained")
call s:synEffects("confluenceItalicUnderlineStrikethroughBold", "\\*", "contains=@confluenceDoc contained")
call s:synEffects("confluenceStrikethroughBoldItalicUnderline", "+", "contains=@confluenceDoc contained")
call s:synEffects("confluenceStrikethroughBoldUnderlineItalic", "_", "contains=@confluenceDoc contained")
call s:synEffects("confluenceStrikethroughItalicBoldUnderline", "+", "contains=@confluenceDoc contained")
call s:synEffects("confluenceStrikethroughItalicUnderlineBold", "\\*", "contains=@confluenceDoc contained")
call s:synEffects("confluenceStrikethroughUnderlineBoldItalic", "_", "contains=@confluenceDoc contained")
call s:synEffects("confluenceStrikethroughUnderlineItalicBold", "\\*", "contains=@confluenceDoc contained")
call s:synEffects("confluenceUnderlineBoldItalicStrikethrough", "-", "contains=@confluenceDoc contained")
call s:synEffects("confluenceUnderlineBoldStrikethroughItalic", "_", "contains=@confluenceDoc contained")
call s:synEffects("confluenceUnderlineItalicBoldStrikethrough", "-", "contains=@confluenceDoc contained")
call s:synEffects("confluenceUnderlineItalicStrikethroughBold", "\\*", "contains=@confluenceDoc contained")
call s:synEffects("confluenceUnderlineStrikethroughBoldItalic", "_", "contains=@confluenceDoc contained")
call s:synEffects("confluenceUnderlineStrikethroughItalicBold", "\\*", "contains=@confluenceDoc contained")
" GENERATE END

syn region confluenceHeading matchGroup=confluenceHeadingDelimiter start="^h[1-5]\. " end="$" keepend oneline
syn region confluenceH1 start="^h1\. " end="^h1\. "me=s-1 fold keepend contains=@confluenceDoc,confluenceH2,confluenceH3,confluenceH4,confluenceH5
syn region confluenceH2 start="^h2\. " end="^h2\. "me=s-1 fold keepend contains=@confluenceDoc,confluenceH3,confluenceH4,confluenceH5
syn region confluenceH3 start="^h3\. " end="^h3\. "me=s-1 fold keepend contains=@confluenceDoc,confluenceH4,confluenceH5
syn region confluenceH4 start="^h4\. " end="^h4\. "me=s-1 fold keepend contains=@confluenceDoc,confluenceH5
syn region confluenceH5 start="^h5\. " end="^h5\. "me=s-1 fold keepend contains=@confluenceDoc

syn match confluenceList "^\s*[*#]\+\ze\%(\s\|$\)"
syn match confluenceList "^\s*-\ze\%(\s\|$\)"

syn match confluenceRule "^\s*----\s*$"

syn match confluenceLinebreak "\%(^\|\s\)\zs\\\\\\\@!"
syn match confluenceLinebreak "\%(^\|[^\\]\)\zs\\\\\ze\%(\s\|$\)"

syn region confluenceCitation start="??" end="??" contains=@confluenceDoc keepend oneline
syn region confluenceSuperscript start="\%(^\|\A\&\D\)\zs\^" end="\^\ze\%(\A\&\D\|$\)" contains=@confluenceDoc keepend oneline
syn region confluenceSubscript start="\%(^\|\A\&\D\)\zs\~" end="\~\ze\%(\A\&\D\|$\)" contains=@confluenceDoc keepend oneline

syn region confluenceLink start="\[" end="\]" keepend
syn region confluenceImage start="!" end="!" keepend

syn region confluenceMacro start="{" end="}" contains=confluenceMacroName,confluenceMacroParameter,confluenceMacroArgument keepend
syn match confluenceMacroName "{\zs\w\+" contained
syn match confluenceMacroParameter "\w\+\ze=" contained
syn match confluenceMacroArgument "=\zs[^|}]\+" contained

syn region confluenceQuote matchGroup=confluenceQuoteDelimiter start="^bq\. " end="$" keepend contains=@confluenceDoc
syn region confluenceQuote matchGroup=confluenceMacro start="{quote\%(:.\{-}\)\=}" end="{quote}" keepend fold

syn region confluenceCode start="{{" end="}}" keepend
syn region confluenceCode matchGroup=confluenceMacro start="{code\%(:.\{-}\)\=}" end="{code}" keepend fold
syn region confluenceCode matchGroup=confluenceMacro start="{noformat\%(:.\{-}\)\=}" end="{noformat}" keepend fold

if has("conceal") && &enc == "utf-8"
  syn match confluenceEmoticons ":)\%(\a\|\d\)\@!" conceal cchar=😀
  syn match confluenceEmoticons ":(\%(\a\|\d\)\@!" conceal cchar=☹️
  syn match confluenceEmoticons ":P\%(\a\|\d\)\@!" conceal cchar=😛
  syn match confluenceEmoticons ":D\%(\a\|\d\)\@!" conceal cchar=😃
  syn match confluenceEmoticons ";)\%(\a\|\d\)\@!" conceal cchar=😉
  syn match confluenceEmoticons "(y)\%(\a\|\d\)\@!" conceal cchar=👍
  syn match confluenceEmoticons "(n)\%(\a\|\d\)\@!" conceal cchar=👎
  syn match confluenceEmoticons "(on)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(off)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(!)\%(\a\|\d\)\@!" conceal cchar=⚠️
  syn match confluenceEmoticons "(\*)\%(\a\|\d\)\@!" conceal cchar=⭐️
  syn match confluenceEmoticons "(\*r)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(\*g)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(\*b)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(\*y)\%(\a\|\d\)\@!" conceal cchar=⭐️
  syn match confluenceEmoticons "(/)\%(\a\|\d\)\@!" conceal cchar=✅
  syn match confluenceEmoticons "(x)\%(\a\|\d\)\@!" conceal cchar=❎
  syn match confluenceEmoticons "(i)\%(\a\|\d\)\@!" conceal cchar=ℹ️
  syn match confluenceEmoticons "(+)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(-)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "(?)\%(\a\|\d\)\@!"
  syn match confluenceEmoticons "<3\%(\a\|\d\)\@!" conceal cchar=❤️
  syn match confluenceEmoticons "</3\%(\a\|\d\)\@!" conceal cchar=💔
endif

if !exists('g:confluence_code_languages')
  let g:confluence_code_languages = {
    \ 'diff': [ 'diff' ],
    \ 'cs': [ 'csharp' ],
    \ 'cpp': [ 'c++' ],
    \ 'css': [ 'css' ],
    \ 'cf': [ 'coldfusion' ],
    \ 'erlang': [ 'erlang' ],
    \ 'java': [ 'java' ],
    \ 'javascript': [ 'javascript' ],
    \ 'pascal': [ 'delphi' ],
    \ 'php': [ 'php' ],
    \ 'python': [ 'python' ],
    \ 'ruby': [ 'ruby' ],
    \ 'sass': [ 'sass' ],
    \ 'scala': [ 'scala' ],
    \ 'sh': [ 'bash' ],
    \ 'sql': [ 'sql' ],
    \ 'vb': [ 'visualbasic' ],
    \ 'yaml': [ 'yaml' ],
    \ }
endif

function s:synCode(filetype, start, end)
  if !exists("s:done_include")
    let s:done_include = {}
  endif

  if !has_key(s:done_include, a:filetype)
    let isk = &l:iskeyword

    unlet! b:current_syntax
    exe 'syn include @confluenceCode' . a:filetype . ' syntax/' . a:filetype . '.vim'
    exe 'syn cluster confluenceDoc add=confluenceCode' . a:filetype
    let s:done_include[a:filetype] = 1

    if &l:iskeyword !=# isk
      let &l:iskeyword = isk
    endif
  endif

  exe 'syn region confluenceCode' . a:filetype
    \. ' matchgroup=confluenceMacro fold keepend'
    \. ' start="' . a:start . '"'
    \. ' end="' . a:end . '"'
    \. ' contains=@NoSpell,@confluenceCode' . a:filetype
endfunction

for s:filetype in keys(g:confluence_code_languages)
  call s:synCode(s:filetype,
        \ '{code:\%(.\{-}|\)\=language='
        \   . join(g:confluence_code_languages[s:filetype], '\|')
        \   . '\%(|.\{-}\)\=}',
        \ '{code}')
endfor

call s:synCode('html', '{html\%(:.\{-}\)\=}', '{html}')

unlet! s:filetype
unlet! s:done_include

hi def link confluenceHeading Title
hi def link confluenceHeadingDelimiter Delimiter
hi def link confluenceList Statement
hi def link confluenceRule PreProc
hi def link confluenceLinebreak Special
hi def link confluenceCitation String
hi def link confluenceSuperscript Special
hi def link confluenceSubscript confluenceSuperscript
hi def link confluenceQuote String
hi def link confluenceQuoteDelimiter Delimiter
hi def link confluenceLink Underlined
hi def link confluenceImage confluenceLink
hi def link confluenceMacro Function
hi def link confluenceMacroName Statement
hi def link confluenceMacroParameter Type
hi def link confluenceMacroArgument String
hi def link confluenceCode PreProc
hi def link confluenceEmoticons Conceal

" GENERATE HI EFFECTS; Bold Italic Strikethrough Underline
" XXX: The following lines are generated automatically
hi def confluenceBold term=bold cterm=bold gui=bold
hi def confluenceItalic term=italic cterm=italic gui=italic
hi def confluenceStrikethrough term=strikethrough cterm=strikethrough gui=strikethrough
hi def confluenceUnderline term=underline cterm=underline gui=underline
hi def confluenceBoldItalic term=bold,italic cterm=bold,italic gui=bold,italic
hi def confluenceBoldStrikethrough term=bold,strikethrough cterm=bold,strikethrough gui=bold,strikethrough
hi def confluenceBoldUnderline term=bold,underline cterm=bold,underline gui=bold,underline
hi def link confluenceItalicBold confluenceBoldItalic
hi def confluenceItalicStrikethrough term=italic,strikethrough cterm=italic,strikethrough gui=italic,strikethrough
hi def confluenceItalicUnderline term=italic,underline cterm=italic,underline gui=italic,underline
hi def link confluenceStrikethroughBold confluenceBoldStrikethrough
hi def link confluenceStrikethroughItalic confluenceItalicStrikethrough
hi def confluenceStrikethroughUnderline term=strikethrough,underline cterm=strikethrough,underline gui=strikethrough,underline
hi def link confluenceUnderlineBold confluenceBoldUnderline
hi def link confluenceUnderlineItalic confluenceItalicUnderline
hi def link confluenceUnderlineStrikethrough confluenceStrikethroughUnderline
hi def confluenceBoldItalicStrikethrough term=bold,italic,strikethrough cterm=bold,italic,strikethrough gui=bold,italic,strikethrough
hi def confluenceBoldItalicUnderline term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi def link confluenceBoldStrikethroughItalic confluenceBoldItalicStrikethrough
hi def confluenceBoldStrikethroughUnderline term=bold,strikethrough,underline cterm=bold,strikethrough,underline gui=bold,strikethrough,underline
hi def link confluenceBoldUnderlineItalic confluenceBoldItalicUnderline
hi def link confluenceBoldUnderlineStrikethrough confluenceBoldStrikethroughUnderline
hi def link confluenceItalicBoldStrikethrough confluenceBoldItalicStrikethrough
hi def link confluenceItalicBoldUnderline confluenceBoldItalicUnderline
hi def link confluenceItalicStrikethroughBold confluenceBoldItalicStrikethrough
hi def confluenceItalicStrikethroughUnderline term=italic,strikethrough,underline cterm=italic,strikethrough,underline gui=italic,strikethrough,underline
hi def link confluenceItalicUnderlineBold confluenceBoldItalicUnderline
hi def link confluenceItalicUnderlineStrikethrough confluenceItalicStrikethroughUnderline
hi def link confluenceStrikethroughBoldItalic confluenceBoldItalicStrikethrough
hi def link confluenceStrikethroughBoldUnderline confluenceBoldStrikethroughUnderline
hi def link confluenceStrikethroughItalicBold confluenceBoldItalicStrikethrough
hi def link confluenceStrikethroughItalicUnderline confluenceItalicStrikethroughUnderline
hi def link confluenceStrikethroughUnderlineBold confluenceBoldStrikethroughUnderline
hi def link confluenceStrikethroughUnderlineItalic confluenceItalicStrikethroughUnderline
hi def link confluenceUnderlineBoldItalic confluenceBoldItalicUnderline
hi def link confluenceUnderlineBoldStrikethrough confluenceBoldStrikethroughUnderline
hi def link confluenceUnderlineItalicBold confluenceBoldItalicUnderline
hi def link confluenceUnderlineItalicStrikethrough confluenceItalicStrikethroughUnderline
hi def link confluenceUnderlineStrikethroughBold confluenceBoldStrikethroughUnderline
hi def link confluenceUnderlineStrikethroughItalic confluenceItalicStrikethroughUnderline
hi def confluenceBoldItalicStrikethroughUnderline term=bold,italic,strikethrough,underline cterm=bold,italic,strikethrough,underline gui=bold,italic,strikethrough,underline
hi def link confluenceBoldItalicUnderlineStrikethrough confluenceBoldItalicStrikethroughUnderline
hi def link confluenceBoldStrikethroughItalicUnderline confluenceBoldItalicStrikethroughUnderline
hi def link confluenceBoldStrikethroughUnderlineItalic confluenceBoldItalicStrikethroughUnderline
hi def link confluenceBoldUnderlineItalicStrikethrough confluenceBoldItalicStrikethroughUnderline
hi def link confluenceBoldUnderlineStrikethroughItalic confluenceBoldItalicStrikethroughUnderline
hi def link confluenceItalicBoldStrikethroughUnderline confluenceBoldItalicStrikethroughUnderline
hi def link confluenceItalicBoldUnderlineStrikethrough confluenceBoldItalicStrikethroughUnderline
hi def link confluenceItalicStrikethroughBoldUnderline confluenceBoldItalicStrikethroughUnderline
hi def link confluenceItalicStrikethroughUnderlineBold confluenceBoldItalicStrikethroughUnderline
hi def link confluenceItalicUnderlineBoldStrikethrough confluenceBoldItalicStrikethroughUnderline
hi def link confluenceItalicUnderlineStrikethroughBold confluenceBoldItalicStrikethroughUnderline
hi def link confluenceStrikethroughBoldItalicUnderline confluenceBoldItalicStrikethroughUnderline
hi def link confluenceStrikethroughBoldUnderlineItalic confluenceBoldItalicStrikethroughUnderline
hi def link confluenceStrikethroughItalicBoldUnderline confluenceBoldItalicStrikethroughUnderline
hi def link confluenceStrikethroughItalicUnderlineBold confluenceBoldItalicStrikethroughUnderline
hi def link confluenceStrikethroughUnderlineBoldItalic confluenceBoldItalicStrikethroughUnderline
hi def link confluenceStrikethroughUnderlineItalicBold confluenceBoldItalicStrikethroughUnderline
hi def link confluenceUnderlineBoldItalicStrikethrough confluenceBoldItalicStrikethroughUnderline
hi def link confluenceUnderlineBoldStrikethroughItalic confluenceBoldItalicStrikethroughUnderline
hi def link confluenceUnderlineItalicBoldStrikethrough confluenceBoldItalicStrikethroughUnderline
hi def link confluenceUnderlineItalicStrikethroughBold confluenceBoldItalicStrikethroughUnderline
hi def link confluenceUnderlineStrikethroughBoldItalic confluenceBoldItalicStrikethroughUnderline
hi def link confluenceUnderlineStrikethroughItalicBold confluenceBoldItalicStrikethroughUnderline
" GENERATE END

let b:current_syntax = "confluence"

" vim:set et sw=2 cc=120:
