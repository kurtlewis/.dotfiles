########################
# Journal Script
########################
EDITOR=vim
journal() {
  drive pull -no-prompt ~/gdrive/Journal
  mkdir -p ~/gdrive/Journal/`date +%Y`
  $EDITOR ~/gdrive/Journal/`date +%Y`/`date +%m-%d`.txt
  drive push -no-prompt ~/gdrive/Journal
}


########################
# Tmux dev environment script
########################
# https://stackoverflow.com/a/40009032/7400944 
# opens a tmux pane that looks like this
# -------------
# |     |     |
# |     |     |
# |     |-----|
# |     |     |
# -------------
# opens  to the specified directory
devenv() {
  tmux new-session \; \
  send-keys 'cd ' $1 '; clear' C-m \; \
  split-window -h \; \
  send-keys 'cd ' $1 '; clear' C-m \; \
  split-window -v -p 35 \; \
  send-keys 'cd ' $1 '; clear' C-m \;
}
