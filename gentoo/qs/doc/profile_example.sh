# $Id$

stage_uri http://192.168.1.163/gentoo/stage3-i686-20110705.tar.bz2
tree_type snapshot http://192.168.1.163/gentoo/portage-latest.tar.bz2
rootpw 123
bootloader grub

part sda 1 83 100M
part sda 2 82 512M
part sda 3 83 +

format /dev/sda1 ext2
format /dev/sda2 swap
format /dev/sda3 ext3

mountfs /dev/sda1 ext2 /boot
mountfs /dev/sda2 swap
mountfs /dev/sda3 ext3 / noatime

net eth0 192.168.1.49 192.168.1.1

extra_packages vim rubygems erlang ntp gentoolkit
kernel_config_uri http://192.168.1.163/gentoo/kconfig
timezone GMT
logger	sysklogd
post_install_script_uri http://192.168.1.163/gentoo/init_gentoo.sh

#netmount 192.168.0.12:/usr/portage nfs /usr/portage ro

post_install_portage_tree() {
  cat > ${chroot_dir}/etc/make.conf <<EOF
CHOST="i686-pc-linux-gnu"
CFLAGS="-O2 -march=athlon-xp -pipe"
CXXFLAGS="\${CFLAGS}"
USE="-X -gtk -gnome -kde -qt"
GENTOO_MIRRORS="http://mirrors.sohu.com/gentoo"

SYNC="rsync://rsync.cn.gentoo.org/gentoo-portage"
EOF

  echo "portdbapi.auxdbmodule = cache.metadata_overlay.database" > ${chroot_dir}/etc/portage/modules
}
