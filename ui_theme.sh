#存放,字体,图标,主题
#除此外的其余资源用另外的脚本从用户目录加载

#主题
yaourt -S gtk-theme-arc
yaourt -S ambiance-radiance-flat-colors-suite

#图标
yaourt -S awoken-icons
yaourt -S la-capitaine-icon-theme-git


#鼠标
yaourt -S breeze-snow-cursor-theme
#polarcursortheme, aur 没有

#字体
echo font
pacman -S --noconfirm \
    adobe-source-code-pro-fonts adobe-source-han-sans-cn-fonts \
    adobe-source-han-sans-tw-fonts adobe-source-sans-pro-fonts \
    adobe-source-serif-pro-fonts \
    ttf-arphic-ukai ttf-arphic-uming ttf-dejavu ttf-droid ttf-freefont \
    ttf-linux-libertine ttf-ubuntu-font-family wqy-microhei \
    wqy-microhei-lite \
    wqy-zenhei \
    adobe-source-han-sans-otc-fonts  \
    adobe-source-han-sans-cn-fonts   \
    adobe-source-han-sans-tw-fonts    \
    wqy-bitmapfont    \
pacman -S --noconfirm  dina-font
