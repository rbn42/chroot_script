#step1
#cd ~/git/chroot_script
sudo su
bash ./download_bootstrap.sh "https://mirrors.kernel.org/archlinux/iso/2016.05.01/archlinux-bootstrap-2016.05.01-x86_64.tar.gz"
bash ./chroot_bootstrap.sh

cd
bash ./chroot_installer.sh /dev/sda7

cd
bash ./sethostname.sh arch
bash ./settimezone.sh Pacific/Auckland
mkinitcpio -p linux
bash ./setlocale.sh en_US.UTF-8
bash step4.sh

visudo #uncomment /wheel
bash adduser.sh #username

passwd root # set random passwd, disable root

#备用grub
sudo su
cat /home/iso/grub.cfg >> /tmp/root.x86_64/mnt/boot/grub/grub.cfg


######################for kde only
#重启后再做一下步骤,不然会受内核影响?
#安装kde
pacman -S  plasma-desktop 
pacman -S  plasma-wayland-session
startplasmacompositor

pacman -S plasma sddm
#显卡选择nvidia-340xx-libgl
systemctl enable sddm
systemctl start sddm
# nano /etc/sddm.conf
[Theme]
Current=breeze
CursorTheme=breeze_cursors
FacesDir=/usr/share/sddm/faces
ThemeDir=/usr/share/sddm/themes
#kde桌面组件可以全部去掉,用conky顶上,主要需要的是,可以开启rofi,有一个resource monitor,有时间,resource monitor尽量做小,桌面排满字符并不好,有个开始菜单,因为开关机会需要
#即使做到这个程度,title bar很明显浪费了,果然还是unity设计的比较好.