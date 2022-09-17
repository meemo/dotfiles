" Fix for Vim not higlighting C functions.
" Source: https://stackoverflow.com/a/773392
" Modified to fix curly bracket detection issues by removing the comma and beyond in line 4.
syn match    cCustomParen    "(" contains=cParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
hi def link cCustomFunc  Function
