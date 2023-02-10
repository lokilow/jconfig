NB. Load Packages and check for updates
NB. Taken from https://github.com/jsoftware/profiles_profiles/blob/master/explorer.ijs
startuptxt =. (LF,'))') (|.!.1@:-.@:E. # ]) 0 : 0
pkgstoload =. 0 : 0
plot
viewmat
format/printf
debug/dissect
debug/lint
))
3 : 0 pkgstoload
NB. Keep packages up-to-date
load 'pacman'
savlog =. LOG_jpacman_
LOG_jpacman_ =: 0
'update' jpkg ''
newpkgs =. {."1 'shownotinstalled' jpkg ''
newpkgs =. newpkgs , {."1 'showupgrade' jpkg ''
if. #newpkgs do.
  smoutput 'Installing updated addons'
  'install' jpkg ;:^:_1 newpkgs
end.
LOG_jpacman_ =: savlog
NB. Load the packages we need.  Load, not require, to get updates
load ' ' (I. LF = y)} y
))
)

NB. Let's name some foreign conjunctions

NB. HOST
NB. getenv is already defined
spawn =: 2!:1
