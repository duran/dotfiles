# get config
c = get_config()

# aesthetics

# no versions at start
c.TerminalIPythonApp.display_banner = False
# no loaded modules
c.InteractiveShellApp.hide_initial_ns = True
# only show cwd at terminal
c.TerminalInteractiveShell.term_title_format = '{cwd}'
# use nice pygment style
c.TerminalInteractiveShell.highlighting_style = 'monokai'
# beautiful highlighting with docrepr
# c.InteractiveShell.sphinxify_docstring = True

# shortcuts

# enable vi (v) or Emacs (C-X C-E) shortcuts to open an external editor
# (besides F2)
c.TerminalInteractiveShell.extra_open_editor_shortcuts = False
# exist fast
c.InteractiveShell.confirm_exit = False
# do not use () to use functions
c.InteractiveShell.autocall = 2
# call pdb after each exception
c.InteractiveShell.pdb = True


# extensions

c.InteractiveShellApp.extensions = [
    'autoreload'
]
c.InteractiveShellApp.exec_lines = [
    'autoreload 2'
]

## Configure matplotlib for interactive use with the default matplotlib backend.
#c.InteractiveShellApp.matplotlib = None

## Pre-load matplotlib and numpy for interactive use, selecting a particular
#  matplotlib backend and loop integration.
#c.InteractiveShellApp.pylab = None

## If true, IPython will populate the user namespace with numpy, pylab, etc. and
#  an ``import *`` is done from numpy and pylab, when using pylab mode.
#  
#  When False, pylab mode should not import any names into the user namespace.
#c.InteractiveShellApp.pylab_import_all = True
#c.InteractiveShell.xmode = 'Context'
#
#c.PrefilterManager.multi_line_specials = True
#
#c.AliasManager.user_aliases = [
# ('la', 'ls -al')
#]
#

## Total length of command history
#c.InteractiveShell.history_length = 10000

## The number of saved history entries to be loaded into the history buffer at
#  startup.
#c.InteractiveShell.history_load_length = 1000
