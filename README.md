# What?
I like the way that manjaro configures its zsh shell, so I made it portable to other os's utilizing git submodules to grab everything that would be pulled in as a package on manjaro. It also contains some of my additions, such as z.lua and fzf bindings. 

Run this, if you do not have zsh setup yet:
```
chsh -s $(which zsh) && cd && git clone --recurse-submodules https://github.com/lzzbzz/manjaro-zsh-config-portable .manjaro-zsh-config-portable && cp .manjaro-zsh-config-portable/.zshrc .zshrc
```
Run this, if you already have zsh setup before:
```
cd && git clone --recurse-submodules https://github.com/lzzbzz/manjaro-zsh-config-portable .manjaro-zsh-config-portable && mv .zshrc .zshrc-old && cp .manjaro-zsh-config-portable/.zshrc .zshrc
```
If you have an existing .zshrc it will preserve it, then copy its own over. You can of course omit that part if you would prefer to manually implement it.

# Mac Branch
There is a branch labeled mac which has removed some of the linux-specific commands and disabled features that require extra programs, as I do not have the ability to launch non-whitelisted applications on the one issued by my organization. Add extra functionality from the main branch as you see fit. Add `-b mac` to the aforementioned git command if you want to check it out.
