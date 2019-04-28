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

# Wait until VM with name $1 powers down
wait_vm_quit() {
    echo "Waiting $1 to power-off"
    while [ `vboxmanage list runningvms | grep "$1" | wc -l` == "1" ]; do
        echo -n "."
        sleep 5
    done
    echo "...and it's gone"
}

shout() {
    echo
    echo  $(date) :: $1
    echo "========================================================================"
    echo
}
