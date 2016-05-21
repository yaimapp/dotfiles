# tmux alias
if [ $SHLVL = 1 ]; then
  alias tmn="tmux attach || tmux new-session \; source-file ~/.tmux/tmux.startup"
  alias tma="tmux a"
  alias tmk="tmux kill-session"
fi
