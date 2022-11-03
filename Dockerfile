#This is a basic setup for an AUR builder.

FROM archlinux
MAINTAINER stonisg@outlook.com

#Initialize pacman:
RUN pacman-key --init
RUN pacman-key --populate archlinux

#Intall basic AUR-building software:
RUN pacman --noconfirm -Syu
RUN pacman --noconfirm --needed -S base-devel
RUN pacman --noconfirm -S git

#Create bob the builder (user):
RUN useradd bob -m
RUN passwd -d bob
RUN printf 'bob ALL=(ALL) ALL\n' | tee -a /etc/sudoers

#Set bob to be our default user and directory:
USER bob
WORKDIR /home/bob
