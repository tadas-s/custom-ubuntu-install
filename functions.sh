# Check if folder $1 exists and echo $2 if not
directory_exists() { [[ ! -d "$1" ]] && { echo "$2"; exit 1; } }

# Check if file $1 exists and echo $2 if not
file_exists() { [[ ! -e "$1" ]] && { echo "$2"; exit 1; } }

# Check if $1 runs and returns with 0 status
is_runnable() { $1 >/dev/null 2>&1 || { echo "$2"; exit 1; } }

# Render template $1
render_template() {
  eval "echo \"$(cat $1)\""
}

shout() {
    echo
    echo "========================================================================"
    echo $1
    echo "========================================================================"
    echo
}
