# Display username always
SPACESHIP_USER_SHOW=always

# Color of the username
SPACESHIP_USER_COLOR=cyan

# Move prompt to a new line
SPACESHIP_PROMPT_ADD_NEWLINE=true

# Leading character for prompt
# Default: ❯
# SPACESHIP_CHAR_SYMBOL="-->"
SPACESHIP_CHAR_SYMBOL="❯"

# Add a space after the character prefix
SPACESHIP_CHAR_SUFFIX=" "

# Disable async on Linux
# This is a fix until the issue is mitigated
[[ $(uname) = "Linux" ]] && SPACESHIP_PROMPT_ASYNC=false
SPACESHIP_ASYNC_SHOW_COUNT=true

# Truncate the paths with a depth of value
# SPACESHIP_DIR_TRUNC=1

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=true

# Spaceshipt Prompt and Order
SPACESHIP_PROMPT_ORDER=(
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    git           # Git section (git_branch + git_status)
    # hg            # Mercurial section (hg_branch  + hg_status)
    # package       # Package version
    node          # Node.js section
    # vue           # Vue section
    # react         # React section
    # ruby          # Ruby section
    python        # Python section
    # elm           # Elm section
    # elixir        # Elixir section
    # xcode         # Xcode section
    # swift         # Swift section
    golang        # Go section
    # php           # PHP section
    # rust          # Rust section
    # haskell       # Haskell Stack section
    # java          # Java section
    # julia         # Julia section
    # docker        # Docker section
    # aws           # Amazon Web Services section
    # gcloud        # Google Cloud Platform section
    # venv          # virtualenv section
    # conda         # conda virtualenv section
    # dotnet        # .NET section
    # kubectl       # Kubectl context section
    terraform     # Terraform workspace section
    # ibmcloud      # IBM Cloud section
    # async         # Async jobs indicator < --- notice not enabled.
    line_sep      # Line break
    jobs          # Background jobs indicator
    char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
    exit_code     # Exit code section
    exec_time     # Execution time
    time          # Time stampt section
    battery       # Battery level and status
)

SPACESHIP_HOST_SHOW=true