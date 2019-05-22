#!/bin/bash
pacman -Syu --noconfirm
pacman -R virtualbox-guest-utils-nox --noconfirm
pacman -S base-devel --noconfirm
pacman -S wget parted go --noconfirm
sudo -u vagrant bash -c "wget http://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz"
sudo -u vagrant bash -c "tar xvfz yay.tar.gz"
sudo -u vagrant bash -c "cd yay && makepkg && sudo pacman -U yay-9.2.0-1-x86_64.pkg.tar.xz --noconfirm && cd .. && rm -rf yay*"
pacman -S xorg lightdm firefox lightdm-gtk-greeter xfce4 virtualbox-guest-utils --noconfirm
pacman -S docker maven git aws-cli pycharm-community-edition jdk8-openjdk jdk-openjdk intellij-idea-community-edition gradle  eclipse-java --noconfirm
sudo -u vagrant bash -c "yay -S google-chrome google-cloud-sdk --noconfirm"
