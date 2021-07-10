" Bind space to which-key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Bind comma to which-key
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Prefix dictionary
let g:which_key_map = {}

" Define a separator
let g:which_key_sep = '→'

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Disable floating window
let g:which_key_use_floating_win = 0

" Tab bindings
let g:which_key_map['<Tab>'] = 'last-buffer'

" Space bindings
let g:which_key_map[' '] = 'command-mode'

" B bindings
let g:which_key_map.b = {
  \ 'name' :  '+buffer'                            ,
  \ 'b'    : [':Buffers'                          , 'find buffer'            ],
  \ 'd'    : [':bd'                               , 'destroy buffer'         ],
  \ 'k'    : [':q!'                               , 'kill buffer'            ],
  \}

" E bindings
let g:which_key_map.e = {
  \ 'name' :  '+error'                            ,
  \ 'e'    : ['<Plug>(coc-diagnostic-prev)'       , 'prev error'             ],
  \ 'n'    : ['<Plug>(coc-diagnostic-next)'       , 'next error'             ],
  \}

" F bindings
let g:which_key_map.f = {
  \ 'name' :  '+file'                             ,
  \ 'd'    : [':Files %:h'                        , 'find files in dir'      ],
  \ 'f'    : [':Files'                            , 'find files'             ],
  \ 'r'    : [':FZFMru'                           , 'recent files'           ],
  \ 's'    : [':w'                                , 'save file'              ],
  \ 't'	   : [':call NerdTreeToggleFind()'        , 'toggle filetree'        ],
  \}

" G bindings
let g:which_key_map.g = {
  \ 'name' :  '+git'                              ,
  \ 'a'    : [':Git add .'                        , 'git add .'              ],
  \ 'A'    : [':CocCommand fzf-preview.GitStatus' , 'actions'                ],
  \ 'b'    : [':Git blame'                        , 'git blame'              ],
  \ 'B'    : [':GBrowse'                          , 'git browse'             ],
  \ 'c'    : [':Git commit'                       , 'git commit'             ],
  \ 'd'    : [':Git diff'                         , 'git diff'               ],
  \ 'D'    : [':Gdiffsplit'                       , 'git diff split'         ],
  \ 'e'    : ['<Plug>(GitGutterPrevHunk)'         , 'git prev hunk'          ],
  \ 'g'    : [':Git'                              , 'git status'             ],
  \ 'h'    : [':GitGutterLineHighlightsToggle'    , 'git highlight hunks'    ],
  \ 'H'    : ['<Plug>(GitGutterPreviewHunk)'      , 'git preview hunk'       ],
  \ 'l'    : [':Git log'                          , 'git log'                ],
  \ 'n'    : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'              ],
  \ 'p'    : [':Git push'                         , 'git push'               ],
  \ 'P'    : [':Git pull'                         , 'git pull'               ],
  \ 'r'    : [':GRemove'                          , 'git rm'                 ],
  \ 's'    : ['<Plug>(GitGutterStageHunk)'        , 'git stage hunk'         ],
  \ 't'    : [':GitGutterSignsToggle'             , 'toggle gutter signs'    ],
  \ 'u'    : ['<Plug>(GitGutterUndoHunk)'         , 'git undo hunk'          ],
  \ 'v'    : [':GV'                               , 'git view commits'       ],
  \ 'V'    : [':GV!'                              , 'git view buffer commits'],
  \}

" P bindings
let g:which_key_map.p = {
  \ 'name' :  '+project'                          ,
  \ 'f'    : [':GFiles'                           , 'find files in project'  ],
  \ 'p'    : [':FzfSwitchProject'                 , 'switch project'         ],
  \}

" Q bindings
let g:which_key_map.q = {
  \ 'name' :  '+quit'	                            ,
  \ 'q'	   : [':qa'  	                            , 'quit'                   ],
  \ 'Q'	   : [':qa!'                              , 'quit without saving'    ],
  \ 'r'	   : [':so $MYVIMRC'  	                  , 'reload config'          ],
  \}

" S bindings
let g:which_key_map.s = {
  \ 'name' :  '+search'
  \}

" W bindings
let g:which_key_map.w = {
  \ 'name' :  '+window'                           ,
  \ 'd'    : ['<C-W>c'                            , 'close window'           ],
  \ 'e'    : ['<C-W>k'                            , 'window up'              ],
  \ 'E'    : [':resize -5'                        , 'expand window up'       ],
  \ 'h'    : ['<C-W>h'                            , 'window left'            ],
  \ 'H'    : ['<C-W>5<'                           , 'expand window left'     ],
  \ 'i'    : ['<C-W>l'                            , 'window right'           ],
  \ 'I'    : ['<C-W>5>'                           , 'expand window right'    ],
  \ 'n'    : ['<C-W>j'                            , 'window down'            ],
  \ 'N'    : [':resize +5'                        , 'expand window below'    ],
  \ 'r'    : ['<C-W>r'                            , 'rotate window'          ],
  \ 's'    : ['<C-W>s<C-W>j'                      , 'split window down'      ],
  \ 'v'    : ['<C-W>v<C-W>l'                      , 'split window right'     ],
  \}

" Register which-key
call which_key#register('<Space>', "g:which_key_map")

