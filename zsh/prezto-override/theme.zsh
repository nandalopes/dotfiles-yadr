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

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Tell `p10k configure` which file it should overwrite.
# To customize prompt, run `p10k configure` or edit $POWERLEVEL9K_CONFIG_FILE.
POWERLEVEL9K_CONFIG_FILE=~/.p10k.zsh
[[ ! -f "${POWERLEVEL9K_CONFIG_FILE}" ]] || source "${POWERLEVEL9K_CONFIG_FILE}"

### Powerlevel10k options

POWERLEVEL9K_TRANSIENT_PROMPT=same-dir # Options: off, always, same-dir
POWERLEVEL9K_INSTANT_PROMPT=quiet      # Options: off, quiet, verbose

# Disable dir/git icons
# POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_VCS_GIT_ICON=''

### ASDF config
# Uncomment to hide system version
POWERLEVEL9K_ASDF_SHOW_SYSTEM=false

# Uncomment to show versions that are the same as global
# POWERLEVEL9K_ASDF_PROMPT_ALWAYS_SHOW=true

# Uncomment to show only relevant tools on prompt
POWERLEVEL9K_ASDF_SHOW_ON_UPGLOB=true
POWERLEVEL9K_ASDF_RUBY_SHOW_ON_UPGLOB='*.rb|Gemfile|Rakefile|.bundle'
POWERLEVEL9K_ASDF_PYTHON_SHOW_ON_UPGLOB='*.py|pyproject.*'
POWERLEVEL9K_ASDF_GOLANG_SHOW_ON_UPGLOB='*.go|go.mod'
POWERLEVEL9K_ASDF_NODEJS_SHOW_ON_UPGLOB='package.json|yarn.lock|*.js'
POWERLEVEL9K_ASDF_RUST_SHOW_ON_UPGLOB='Cargo.*|*.rs'
POWERLEVEL9K_ASDF_PHP_SHOW_ON_UPGLOB='*.php'
POWERLEVEL9K_ASDF_YARN_SHOW_ON_UPGLOB='package.json|yarn.lock'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  status
  context
  dir
  vcs
  newline
  prompt_char
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  direnv
  command_execution_time
  asdf
  background_jobs
  time
  vim_shell
  ranger
  newline
)

# POWERLEVEL9K_EXECUTION_TIME_ICON='\u23F1'

# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle" # use default strategy truncate_to_unique
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

POWERLEVEL9K_TIME_FORMAT="%D{%d.%m %H:%M:%S}"
# POWERLEVEL9K_STATUS_VERBOSE=true
# export DEFAULT_USER="$USER"

# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Comment to enable compact mode (no newline before prompt)
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

