# dotfiles

## Showcase 

![[2024-09-21 12-04-09.mp4]]
## disclaimer 

the setup script only works for fedora you will have to change dnf to you package manager(in line 12 and 3) and remove line 4 

you should run pywal for the first time to crate needed files

```
wal -i ~/path/to-you-wallpaper
```

## installation  

```
git clone https://github.com/Mujtaba-abd/dotfiles
```

clone it in  your home dir
```
cd dotfiles

chmod +x setup.sh

./setup
```
the script will install the  packages and crate a symlinks to the config dir 