# Check if folder $1 exists and echo $2 if not
directory_exists() {
    if [[ ! -d "$1" ]]; then
        echo "$2"
        return 1
    else
        return 0
    fi
}

# Check if file $1 exists and echo $2 if not
file_exists() {
    if [[ ! -e "$1" ]]; then
        echo "$2"
        return 1
    else
        return 0
    fi
}

# Check if $1 runs and returns with 0 status
is_runnable() {
    if which $1; then
        return 0
    else
        echo "$2"
        return 1
    fi
}

# Render template $1
render_template() {
  eval "echo \"$(cat $1)\""
}

shout() {
    echo
    echo  $(date) :: $1
    echo "========================================================================"
    echo
}
