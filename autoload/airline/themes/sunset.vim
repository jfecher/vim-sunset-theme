" Sunset airline theme
" Matches vim-sunset-theme: dark blue-purple bg, pink-red/blue/purple accents

let g:airline#themes#sunset#palette = {}

" ── Section base colors ────────────────────────────────────────────────────────
"   bg:      #060415  (very dark blue-purple)
"   muted:   #6C6A8E  (comment purple)
"   fg:      #E6E1FF  (normal text, light purple)
"   mid-bg:  #1A0E35  (slightly lighter bg for section b)
"
"   Normal:  #FF4D6D  (keyword pink-red)
"   Insert:  #4DA3FF  (string blue)
"   Visual:  #B983FF  (type purple)
"   Replace: #FF6FAE  (module pink)

" ── Normal mode ───────────────────────────────────────────────────────────────
let s:N1 = ['#060415', '#FF4D6D', 232, 197]  " a: dark text on pink-red
let s:N2 = ['#E6E1FF', '#1A0E35', 189,  17]  " b: light purple on dark purple
let s:N3 = ['#6C6A8E', '#060415', 102, 232]  " c: muted purple on bg

let g:airline#themes#sunset#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#sunset#palette.normal_modified = {
      \ 'airline_c': ['#FF4D6D', '#060415', 197, 232, ''] }

" ── Insert mode ───────────────────────────────────────────────────────────────
let s:I1 = ['#060415', '#B983FF', 232, 141]
let s:I2 = ['#E6E1FF', '#1A0E35', 189,  17]
let s:I3 = ['#6C6A8E', '#060415', 102, 232]

let g:airline#themes#sunset#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#sunset#palette.insert_modified = {
      \ 'airline_c': ['#B983FF', '#060415', 141, 232, ''] }

" ── Visual mode ───────────────────────────────────────────────────────────────
let s:V1 = ['#060415', '#4DA3FF', 232,  75]
let s:V2 = ['#E6E1FF', '#1A0E35', 189,  17]
let s:V3 = ['#6C6A8E', '#060415', 102, 232]

let g:airline#themes#sunset#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#sunset#palette.visual_modified = {
      \ 'airline_c': ['#4DA3FF', '#060415', 75, 232, ''] }

" ── Replace mode ──────────────────────────────────────────────────────────────
let s:R1 = ['#060415', '#FF6FAE', 232, 205]
let s:R2 = ['#E6E1FF', '#1A0E35', 189,  17]
let s:R3 = ['#6C6A8E', '#060415', 102, 232]

let g:airline#themes#sunset#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#sunset#palette.replace_modified = {
      \ 'airline_c': ['#FF6FAE', '#060415', 205, 232, ''] }

" ── Inactive windows ──────────────────────────────────────────────────────────
let s:IA = ['#6C6A8E', '#0D0825', 102, 232]

let g:airline#themes#sunset#palette.inactive          = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#sunset#palette.inactive_modified = {
      \ 'airline_c': ['#6C6A8E', '#0D0825', 102, 232, ''] }
