CONDA_SH=Anaconda3-2020.11-Linux-x86_64.sh
CONDA_LINK=https://repo.anaconda.com/archive/$CONDA_SH
if ! test -f "./$CONDA_SH"; then
  eval wget $CONDA_LINK
  eval chmod +x ./$CONDA_SH
  eval ./$CONDA_SH -b
fi

cp ./.condarc $HOME/.conda/.condarc
