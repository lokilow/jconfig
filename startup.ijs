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
NB. 0. Scripts
run =:0!:001 NB. executes file or noun, stops on error, displays

NB. 1. Files
ls =: 1!:0 NB. how can I give a funciton default arguments? for ls, '*'
cat =: 1!:1
write =: 1!:2
append =: 1!:3
cwd =: 1!:43
display=:(i.0 0)[1!:2&2

NB. set current working directory, i.e. cd.
NB. cd maps to 15!:0 - call dll function
scwd =: 1!:44 


NB. 2. HOST
NB. getenv is already defined
spawn =: 2!:1

NB. Reload file
rl=: 3 : 0
if.1<#ARGV_z_ do.
  load >1}ARGV_z_
end.
)

load 'jd' 
