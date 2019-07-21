# config_files
Remote tracking for .vimrc and plugins used

## Installing in new environment
- clone repo into ~/.vim/
- run this to create symbloc link and clone plugins from their respective repos:
```
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```
^this last command is the same as 'git submodule init', followed by 'git submodule update'

## Updating Vim plugins
- To update a plugin, go to its directory and run 'git pull origin master'. Or, to do all at once from the .vim directory:
```
git submodule foreach git pull origin master
```
More complete steps: 
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
(Ignore info about .vimrc pathogen lines, the .vimrc in this repo has the more up-to-date
command, pathogen#infect)
