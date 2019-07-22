. test/common.sh
. test/mocks/curl.sh
XDG_CONFIG_HOME=$(cd -- $testdir &>/dev/null ; pwd)
. nave.sh installed 1.2.3 && echo 'installed it' || echo 'no installed'
mkdir -p $testdir/nave/installed/1.2.3/bin
touch $testdir/nave/installed/1.2.3/bin/node
chmod 0755 $testdir/nave/installed/1.2.3/bin/node
. nave.sh installed 1.2.3 && echo 'installed it' || echo 'no installed'
