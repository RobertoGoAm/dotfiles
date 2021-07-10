" Bind space to which-key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Bind comma to which-key
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Prefix dictionary
let g:which_key_map = {}
let g:which_key_local_map = {}

" Define a separator
let g:which_key_sep = '→'

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Disable floating window
let g:which_key_use_floating_win = 0

" Ignore bindings
let g:which_key_map.r = 'which_key_ignore'

" Leader key map bindings
let g:which_key_map['<Tab>'] = 'last buffer'
let g:which_key_map[' '] = 'command mode'
let g:which_key_map['`'] = [':term', 'terminal']

let g:which_key_map.b = {
  \ 'name' :  '+buffer'                           ,
  \ 'b'    : [':Buffers'                          , 'find buffer'               ],
  \ 'd'    : [':bd'                               , 'destroy buffer'            ],
  \ 'k'    : [':q!'                               , 'kill buffer'               ],
  \}

let g:which_key_map.e = {
  \ 'name' :  '+error'                            ,
  \ 'e'    : ['<Plug>(coc-diagnostic-prev)'       , 'prev error'                ],
  \ 'n'    : ['<Plug>(coc-diagnostic-next)'       , 'next error'                ],
  \}

let g:which_key_map.f = {
  \ 'name' :  '+file'                             ,
  \ 'd'    : [':Files %:h'                        , 'find files in dir'         ],
  \ 'f'    : [':Files'                            , 'find files'                ],
  \ 'r'    : [':FZFMru'                           , 'recent files'              ],
  \ 'R'	   : [':so $MYVIMRC'  	                  , 'reload config'             ],
  \ 's'    : [':w'                                , 'save file'                 ],
  \ 't'	   : [':call NerdTreeToggleFind()'        , 'toggle filetree'           ],
  \}

let g:which_key_map.g = {
  \ 'name' :  '+git'                              ,
  \ 'a'    : [':Git add .'                        , 'git add .'                 ],
  \ 'A'    : [':CocCommand fzf-preview.GitStatus' , 'actions'                   ],
  \ 'b'    : [':Git blame'                        , 'git blame'                 ],
  \ 'B'    : [':GBrowse'                          , 'git browse'                ],
  \ 'c'    : [':Git commit'                       , 'git commit'                ],
  \ 'd'    : [':Git diff'                         , 'git diff'                  ],
  \ 'D'    : [':Gdiffsplit'                       , 'git diff split'            ],
  \ 'e'    : ['<Plug>(GitGutterPrevHunk)'         , 'git prev hunk'             ],
  \ 'g'    : [':Git'                              , 'git status'                ],
  \ 'h'    : [':GitGutterLineHighlightsToggle'    , 'git highlight hunks'       ],
  \ 'H'    : ['<Plug>(GitGutterPreviewHunk)'      , 'git preview hunk'          ],
  \ 'l'    : [':Git log'                          , 'git log'                   ],
  \ 'm'    : [':MerginalToggle'                   , 'toggle merginal'           ],
  \ 'n'    : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'                 ],
  \ 'o'    : [':GO'                               , 'open repo'                 ],
  \ 'p'    : [':Git push'                         , 'git push'                  ],
  \ 'P'    : [':Git pull'                         , 'git pull'                  ],
  \ 'r'    : [':GRemove'                          , 'git rm'                    ],
  \ 's'    : ['<Plug>(GitGutterStageHunk)'        , 'git stage hunk'            ],
  \ 't'    : [':GitGutterSignsToggle'             , 'toggle gutter signs'       ],
  \ 'u'    : ['<Plug>(GitGutterUndoHunk)'         , 'git undo hunk'             ],
  \ 'v'    : [':GV'                               , 'git view commits'          ],
  \ 'V'    : [':GV!'                              , 'git view buffer commits'   ],
  \}

let g:which_key_map.j = {
  \ 'name' :  '+jump'                             ,
  \ '.'    : ['<Plug>(easymotion-repeat)'         , 'repeat last jump'          ],
  \ 'j'    : ['<Plug>(easymotion-bd-f)'           , 'char'                      ],
  \ 'J'    : ['<Plug>(easymotion-bd-f2)'          , '2 char'                    ],
  \ 'l'    : ['<Plug>(easymotion-bd-line)'        , 'line'                      ],
  \ 'w'    : ['<Plug>(easymotion-bd-w)'           , 'word bidirectional'        ],
  \ 'f'    : ['<Plug>(easymotion-prefix)w'        , 'word forward'              ],
  \ 'b'    : ['<Plug>(easymotion-prefix)b'        , 'word backward'             ],
  \}

let g:which_key_map.l = {
  \ 'name' :  '+lsp'                              ,
  \ '.'    : [':CocConfig'                        , 'CoC config'                ],
  \ 'c'    : [':CocList commands'                 , 'CoC commands'              ],
  \ 'e'    : [':CocList extensions'               , 'CoC extensions'            ],
  \ 'r'    : [':CocRestart'                       , 'restart CoC'               ],
  \ 'u'    : [':CocListResume'                    , 'resume list'               ],
  \ 'U'    : [':CocUpdate'                        , 'update CoC'                ],
  \ 'z'    : [':CocDisable'                       , 'disable CoC'               ],
  \ 'Z'    : [':CocEnable'                        , 'enable CoC'                ],
  \}

let g:which_key_map.p = {
  \ 'name' :  '+project'                          ,
  \ 'f'    : [':GFiles'                           , 'find files in project'     ],
  \ 'p'    : [':FzfSwitchProject'                 , 'switch project'            ],
  \ 'r'	   : [''  	                              , 'replace in project'        ],
  \ 's'	   : [':Rg'  	                              , 'search in project'         ],
  \}

let g:which_key_map.q = {
  \ 'name' :  '+quit'	                            ,
  \ 'q'	   : [':qa'  	                            , 'quit'                      ],
  \ 'Q'	   : [':qa!'                              , 'quit without saving'       ],
  \}

let g:which_key_map.r = {
  \ 'name' :  '+replace'	                        ,
  \ 'r'	   : [':%s/\<<C-r><C-w>\>//g<Left><Left>'	, 'replace in buffer'         ],
  \ 's'	   : [''                                  , 'replace current word'      ],
  \}

let g:which_key_map.s = {
  \ 'name' :  '+search'                           ,
  \ 'p'    : [''                                  , 'search in project'         ],
  \}

let g:which_key_map.t = {
  \ 'name' :  '+toggle',
  \}

let g:which_key_map.w = {
  \ 'name' :  '+window'                           ,
  \ 'd'    : ['<C-W>c'                            , 'close window'              ],
  \ 'e'    : ['<C-W>k'                            , 'window up'                 ],
  \ 'E'    : [':resize -5'                        , 'expand window up'          ],
  \ 'h'    : ['<C-W>h'                            , 'window left'               ],
  \ 'H'    : ['<C-W>5<'                           , 'expand window left'        ],
  \ 'i'    : ['<C-W>l'                            , 'window right'              ],
  \ 'I'    : ['<C-W>5>'                           , 'expand window right'       ],
  \ 'n'    : ['<C-W>j'                            , 'window down'               ],
  \ 'N'    : [':resize +5'                        , 'expand window below'       ],
  \ 'o'    : [':only'                             , 'close other windows'       ],
  \ 'r'    : ['<C-W>r'                            , 'rotate window'             ],
  \ 's'    : ['<C-W>s<C-W>j'                      , 'split window down'         ],
  \ 'v'    : ['<C-W>v<C-W>l'                      , 'split window right'        ],
  \}

let g:which_key_map.x = {
  \ 'name' :  '+text'                             ,
  \ 'd'    : [':%s/\s\+$//e'                      , 'delete trailing whitespace'],
  \}


" Local key map bindings
let g:which_key_local_map['='] = ['<Plug>(coc-format)'     , 'format file']
let g:which_key_local_map['.'] = ['<Plug>(coc-fix-current)', 'quickfix']

let g:which_key_local_map.c = {
  \ 'name' :  '+code'                          ,
  \ 'a'    : ['<Plug>(coc-codeaction)'         , 'action'         ],
  \ 'A'    : ['<Plug>(coc-codeaction-selected)', 'selected action'],
  \ 'e'    : [':CocPrev'                       , 'prev action'    ],
  \ 'l'    : ['<Plug>(coc-codelens-action)'    , 'codelens'       ],
  \ 'n'    : [':CocNext'                       , 'next action'    ],
  \ 'S'    : [':CocList snippets'              , 'snippets'       ],
  \}

let g:which_key_local_map.g = {
  \ 'name' :  '+go to'                         ,
  \ 'd'    : ['<Plug>(coc-definition)'         , 'definition'     ],
  \ 'D'    : ['<Plug>(coc-declaration)'        , 'declaration'    ],
  \ 'i'    : ['<Plug>(coc-implementation)'     , 'implementation' ],
  \ 'o'    : [':Vista!!'                       , 'outline'        ],
  \ 'O'    : [':CocList outline'               , 'search outline' ],
  \ 'r'    : ['<Plug>(coc-references)'         , 'references'     ],
  \ 't'    : ['<Plug>(coc-type-definition)'    , 'type definition'],
  \}

let g:which_key_local_map.r = {
  \ 'name' :  '+refactor'                      ,
  \ 'r'    : ['<Plug>(coc-rename)'             , 'rename'         ],
  \ 'R'    : ['<Plug>(coc-refactor)'           , 'refactor'       ],
  \}

let g:which_key_local_map.t = {
  \ 'name' :  '+test'                          ,
  \ 'f'    : [':TestFile'                      , 'run file'       ],
  \ 'n'    : [':TestNearest'                   , 'run nearest'    ],
  \ 's'    : [':TestSuite'                     , 'run suite'      ],
  \ 't'    : [':TestLast'                      , 'run last'       ],
  \ 'v'    : [':TestVisit'                     , 'go to test file'],
  \}

" Register which-key
call which_key#register('<Space>', "g:which_key_map")
call which_key#register(',', "g:which_key_local_map")

