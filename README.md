# config_files
Repo for .vimrc and plugins I use. If you've come across this while browsing, feel free to use anything here. I have a few convenient plugins/colorschemes pre-installed (using pathogen), with some go-to colorschemes commented out in the .vimrc for easy access. 
Vim Plugins: 
gruvbox -- dark is the best colorscheme I've found to date 
lightline -- better statusline indicator for vim 
nerdtree -- file system explorer for Vim, can't live without it 
setcolors -- switch colorschemes with keyboard shortcuts 
vim-colorschemes -- more colors! 

## Installing in new environment
- clone repo into .vim directory:
```
git clone git@github.com:lucas-campbell/config_files.git ~/.vim/
```
- run the following to create symbloc link and clone plugins from their respective repos:
```
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```
^last command is the same as 'git submodule init' followed by 'git submodule update'

## Updating Vim plugins
- To update a plugin, go to its directory and run 'git pull origin master'. Or, to do all at once from the .vim directory:
```
git submodule foreach git pull origin master
```
More complete steps: 
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
(Ignore info about .vimrc pathogen lines, the .vimrc in this repo has the more up-to-date
command, pathogen#infect)
