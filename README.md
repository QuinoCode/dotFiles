# DotFiles
This project is meant to contain my current Linux Desktop setup, by providing portability to my dotFiles I will be able to switch machines
without too much hassle. It also may come in handy if the OS crashes horribly.
## How to Use
### Set up
- Installing 'GNU Stow' 
- Cloning this repository into the home directory a.k.a '~'
- If there is already any folder holding configurations that would be dealt with using this repo, delete them
- stow 'whatever_you_want' will make a symlink at the place indicated by the file structure of the argument(starting frome $HOME), e.g:
'stow nvim' would create a symlink in "\~/.config/nvim/" 
'stow zsh' would create a symlink in "\~/"
### Configuring new programs
1. The way of configuring new programs is to create a folder with the name of the program in the dotFiles and create the same route file structure under that folder that exists from home to the current/expected place of the config files
2. If configuration files where created somewhere else move it into the newly created structure on the dotFiles. If not create it directly on the dotFiles
3. "stow folder"
