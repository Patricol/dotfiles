# dotfiles

Note to self:

This is mainly for keeping a history of config files I manually edit a lot. Not for saving and restoring configs of things like VLC; use a full backup for that - there are too many programs like that, and too many have sensitive info in their config files.

One exception is that it's alright to include configs that are entirely manually created; not through a GUI.

Add to a new computer with:

  * git clone --separate-git-dir=~/.dotfiles-repo git@github.com:Patricol/dotfiles.git ~

* OR(?)

  * git clone --bare --branch ADD_BRANCH_NAME_HERE --single-branch git@github.com:Patricol/dotfiles.git $HOME/.dotfiles-repo
  * alias dfg='git --git-dir=$HOME/.dotfiles-repo/ --work-tree=$HOME'
  * dfg checkout
    * to overwrite existing: dfg checkout -f
  * dfg config --local status.showUntrackedFiles no
