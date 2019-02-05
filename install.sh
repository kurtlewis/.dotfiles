#Run chmod -x install.sh to give executable permission

ln -sv ~/.dotfiles/git/.gitconfig ~
ln -sv ~/.dotfiles/vim/ ~/.vim

echo ""
echo "To install tools scripts add the following line to your ~/.zshrc"
echo "source <path/to/repo/tools/scripts.sh"
