export src=$PWD/sources

# change apt mirror to kakao
sudo cp /etc/apt/sources.list /etc/apt/sources.list.org
sed -e 's/\(us.\)\?archive.ubuntu.com/mirror.kakao.com/g' -e 's/security.ubuntu.com/mirror.kakao.com/g' < /etc/apt/sources.list.org > sources.list
sudo mv sources.list /etc/apt
sudo apt update

# Update welcome message
sudo cp -r /etc/update-motd.d /etc/update-motd.back
sudo rm -f /etc/update-motd.d/*
sudo cp $src/80-cvlab-header /etc/update-motd.d/

# install default packages
sudo apt install wget curl tmux -y

# install locale for en_US
sudo apt install locales -y
locale-gen en_US.UTF-8

# --- driver
# install CUDA
# echo "blacklist nouveau" | sudo tee -a /etc/modprobe.d/blacklist.conf
# wget https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda_10.1.105_418.39_linux.run
# sudo sh cuda_10.1.105_418.39_linux.run
# echo 'export PTH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc 
# echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc

# --- Python
# install conda (Miniconda)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $src/miniconda.sh
bash $src/miniconda.sh -b -p $HOME/conda
export CONDA_HOME=$HOME/conda
export PYTHON_VERSION='3.7'
rm $src/miniconda.sh
cp $src/.condarc ~/.condarc

echo 'export PATH=$HOME/conda/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

conda install python=$PYTHON_VERSION -y

# change pip mirror to kakao
mkdir -p ~/.pip
cp $src/pip.conf ~/.pip

# --- Utilities
# install Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp $src/.tmux.conf ~/
tmux source "$HOME/.tmux.conf"

# install neovim
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt update
sudo apt install neovim -y

# install spacevim
curl -sLf https://spacevim.org/install.sh | bash
cp -r $src/.SpaceVim.d ~/.SpaceVim.d
