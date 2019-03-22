# config_files
Remote tracking for .vimrc and plugins used

## Installing in new environment: 
- clone repo into ~/.vim/
- run to update plugins:
```
git submodule foreach git pull origin master
```
More complete steps: 
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
(Ignore info about .vimrc, the .vimrc in this repo has the more up-to-date
command pathogen#infect)
