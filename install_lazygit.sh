echo "install... lazygit using curl"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit

key="alias ll=\"/vim/lazygit\"";

if grep -q "alias ll=" ~/.profile; then
    echo "alias ll is already added";
else 
    echo $key >> ~/.profile
    echo "added alias ll to ~/.profile"
fi

echo
echo "please..."
echo
echo "source ~/.profile"
echo
echo "then, let try ll to open lazygit"
echo
