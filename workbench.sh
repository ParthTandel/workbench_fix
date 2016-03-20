wget 'http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.2.3-src.tar.gz'
tar xvf mysql-workbench-community-6.2.3-src.tar.gz && cd mysql-workbench-community-6.2.3-src
wget -O patch-glib.diff 'http://bugs.mysql.com/file.php?id=21874&bug_id=74147'
patch -p0 < patch-glib.diff
sudo apt-get build-dep mysql-workbench
sudo apt-get install libgdal-dev
cd build
cmake .. -DBUILD_CONFIG=mysql_release
make
sudo make install
