### fix linux prompt
# Preview all with `prompt -p`
# Options: adam2 giddie pure steeef elite2 elite restore redhat skwp suse

case "$TERM" in
  # xterm*)
  #   ;;
  linux)
    zstyle ':prezto:module:prompt' theme 'giddie'
    ;;
esac
