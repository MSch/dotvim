if has("gui_macvim")
    macmenu File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
    set lines=50 columns=120
elseif has("X11")
    map <M-t> :CommandT<CR>
endif
