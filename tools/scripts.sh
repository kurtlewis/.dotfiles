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
