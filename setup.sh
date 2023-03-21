export SCIPOPTDIR='/opt/scip'
export PATH=$PATH:/opt/scip

git clone https://github.com/ds4dm/learn2branch

tar -xzf soplex-4.0.1.tgz

mkdir soplex-4.0.1/build
(cd soplex-4.0.1/ && cmake -S . -B build -DCMAKE_INSTALL_PREFIX=$SCIPOPTDIR)
(cd soplex-4.0.1/ && make -C ./build -j 4)
(cd soplex-4.0.1/ && make -C ./build install)


tar -xzf scip-6.0.1.tgz

(cd scip-6.0.1/ && patch -p1 < ../learn2branch/scip_patch/vanillafullstrong.patch)

(cd scip-6.0.1/ && mkdir build)
(cd scip-6.0.1/ && cmake -S . -B build -DSOPLEX_DIR=$SCIPOPTDIR -DCMAKE_INSTALL_PREFIX=$SCIPOPTDIR)
(cd scip-6.0.1/ && make -C ./build -j 4)
(cd scip-6.0.1/ && make -C ./build install)

pip install cython
pip install numpy

pip install git+https://github.com/ds4dm/PySCIPOpt.git@ml-branching
