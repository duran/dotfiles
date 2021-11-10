" Transform escape codes to meta-key commands
" This will allow to use alt/option keys in the terminal (emulator)
" This is needed because most terminal nowdays encone meta-keys prefixing it
" with Escape. If you want this to work you need to turn off the escape key c-[
" NOTE: It works in all modes but Lang-Arg and Terminal-Job
" TODO: Should I add 8-bit (metakey) mappings?

if !has('gui_running')
    " Normal, Visual, Select, Operator-pending modes
    noremap  <c-[><c-[> <c-[>
    map <c-[>a <a-a>
    map <c-[>b <a-b>
    map <c-[>c <a-c>
    map <c-[>d <a-d>
    map <c-[>e <a-e>
    map <c-[>f <a-f>
    map <c-[>g <a-g>
    map <c-[>h <a-h>
    map <c-[>i <a-i>
    map <c-[>j <a-j>
    map <c-[>k <a-k>
    map <c-[>l <a-l>
    map <c-[>m <a-m>
    map <c-[>n <a-n>
    map <c-[>o <a-o>
    map <c-[>p <a-p>
    map <c-[>q <a-q>
    map <c-[>r <a-r>
    map <c-[>s <a-s>
    map <c-[>t <a-t>
    map <c-[>u <a-u>
    map <c-[>v <a-v>
    map <c-[>w <a-w>
    map <c-[>x <a-x>
    map <c-[>y <a-y>
    map <c-[>z <a-z>
    map <c-[>` <a-`>
    map <c-[>1 <a-1>
    map <c-[>2 <a-2>
    map <c-[>3 <a-3>
    map <c-[>4 <a-4>
    map <c-[>5 <a-5>
    map <c-[>6 <a-6>
    map <c-[>7 <a-7>
    map <c-[>8 <a-8>
    map <c-[>9 <a-9>
    map <c-[>0 <a-0>
    map <c-[>- <a-->
    map <c-[>= <a-=>
    map <c-[>\ <a-\>
    map <c-[>; <a-;>
    map <c-[>' <a-'>
    map <c-[>, <a-,>
    map <c-[>. <a-.>
    map <c-[>/ <a-/>
    map <c-[>\ <a-\>

    " For Insert, Command-line
    noremap! <c-[><c-[> <c-[>
    map! <c-[>a <a-a>
    map! <c-[>b <a-b>
    map! <c-[>c <a-c>
    map! <c-[>d <a-d>
    map! <c-[>e <a-e>
    map! <c-[>f <a-f>
    map! <c-[>g <a-g>
    map! <c-[>h <a-h>
    map! <c-[>i <a-i>
    map! <c-[>j <a-j>
    map! <c-[>k <a-k>
    map! <c-[>l <a-l>
    map! <c-[>m <a-m>
    map! <c-[>n <a-n>
    map! <c-[>o <a-o>
    map! <c-[>p <a-p>
    map! <c-[>q <a-q>
    map! <c-[>r <a-r>
    map! <c-[>s <a-s>
    map! <c-[>t <a-t>
    map! <c-[>u <a-u>
    map! <c-[>v <a-v>
    map! <c-[>w <a-w>
    map! <c-[>x <a-x>
    map! <c-[>y <a-y>
    map! <c-[>z <a-z>
    map! <c-[>` <a-`>
    map! <c-[>1 <a-1>
    map! <c-[>2 <a-2>
    map! <c-[>3 <a-3>
    map! <c-[>4 <a-4>
    map! <c-[>5 <a-5>
    map! <c-[>6 <a-6>
    map! <c-[>7 <a-7>
    map! <c-[>8 <a-8>
    map! <c-[>9 <a-9>
    map! <c-[>0 <a-0>
    map! <c-[>- <a-->
    map! <c-[>= <a-=>
    map! <c-[>\ <a-\>
    map! <c-[>; <a-;>
    map! <c-[>' <a-'>
    map! <c-[>, <a-,>
    map! <c-[>. <a-.>
    map! <c-[>/ <a-/>
    map! <c-[>\ <a-\>
endif
