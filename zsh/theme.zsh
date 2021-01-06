### fix linux prompt
# Preview all with `prompt -p`
# Options: adam2 giddie pure steeef elite2 elite restore redhat skwp suse

if [[ $terminfo[colors] == 8 ]]; then
  zstyle ':prezto:module:prompt' theme 'skwp'
fi
