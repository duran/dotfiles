" Transform escape codes to meta-key commands
" This will allow to use alt/option keys in the terminal (emulator)
" This is needed because most terminal nowdays encone meta-keys prefixing it
" with Escape. If you want this to work you need to turn off the escape key c-[
" NOTE: It works in all modes but Lang-Arg and Terminal-Job


if !has('gui_running')
    " Normal, Visual, Select, Operator-pending modes
    noremap  <c-[><c-[> <c-[>
    map <c-[>a <m-a>
    map <c-[>b <m-b>
    map <c-[>c <m-c>
    map <c-[>d <m-d>
    map <c-[>e <m-e>
    map <c-[>f <m-f>
    map <c-[>g <m-g>
    map <c-[>h <m-h>
    map <c-[>i <m-i>
    map <c-[>j <m-j>
    map <c-[>k <m-k>
    map <c-[>l <m-l>
    map <c-[>m <m-m>
    map <c-[>n <m-n>
    map <c-[>o <m-o>
    map <c-[>p <m-p>
    map <c-[>q <m-q>
    map <c-[>r <m-r>
    map <c-[>s <m-s>
    map <c-[>t <m-t>
    map <c-[>u <m-u>
    map <c-[>v <m-v>
    map <c-[>w <m-w>
    map <c-[>x <m-x>
    map <c-[>y <m-y>
    map <c-[>z <m-z>
    map <c-[>` <m-`>
    map <c-[>1 <m-1>
    map <c-[>2 <m-2>
    map <c-[>3 <m-3>
    map <c-[>4 <m-4>
    map <c-[>5 <m-5>
    map <c-[>6 <m-6>
    map <c-[>7 <m-7>
    map <c-[>8 <m-8>
    map <c-[>9 <m-9>
    map <c-[>0 <m-0>
    map <c-[>- <m-->
    map <c-[>= <m-=>
    map <c-[>\ <m-\>
    map <c-[>; <m-;>
    map <c-[>' <m-'>
    map <c-[>, <m-,>
    map <c-[>. <m-.>
    map <c-[>/ <m-/>
    map <c-[>\ <m-\>

    " For Insert, Command-line
    noremap! <c-[><c-[> <c-[>
    map! <c-[>a <m-a>
    map! <c-[>b <m-b>
    map! <c-[>c <m-c>
    map! <c-[>d <m-d>
    map! <c-[>e <m-e>
    map! <c-[>f <m-f>
    map! <c-[>g <m-g>
    map! <c-[>h <m-h>
    map! <c-[>i <m-i>
    map! <c-[>j <m-j>
    map! <c-[>k <m-k>
    map! <c-[>l <m-l>
    map! <c-[>m <m-m>
    map! <c-[>n <m-n>
    map! <c-[>o <m-o>
    map! <c-[>p <m-p>
    map! <c-[>q <m-q>
    map! <c-[>r <m-r>
    map! <c-[>s <m-s>
    map! <c-[>t <m-t>
    map! <c-[>u <m-u>
    map! <c-[>v <m-v>
    map! <c-[>w <m-w>
    map! <c-[>x <m-x>
    map! <c-[>y <m-y>
    map! <c-[>z <m-z>
    map! <c-[>` <m-`>
    map! <c-[>1 <m-1>
    map! <c-[>2 <m-2>
    map! <c-[>3 <m-3>
    map! <c-[>4 <m-4>
    map! <c-[>5 <m-5>
    map! <c-[>6 <m-6>
    map! <c-[>7 <m-7>
    map! <c-[>8 <m-8>
    map! <c-[>9 <m-9>
    map! <c-[>0 <m-0>
    map! <c-[>- <m-->
    map! <c-[>= <m-=>
    map! <c-[>\ <m-\>
    map! <c-[>; <m-;>
    map! <c-[>' <m-'>
    map! <c-[>, <m-,>
    map! <c-[>. <m-.>
    map! <c-[>/ <m-/>
    map! <c-[>\ <m-\>
endif
