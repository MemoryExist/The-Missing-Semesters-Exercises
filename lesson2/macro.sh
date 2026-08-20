macro() {
    export macro_dir="$(pwd)"
    echo "Directory saved:$macro_dir"
}
polo() {
    if [ -n "$macro_dir" ];then
        cd "$macro_dir"||echo "Failed to cd to $macro_dir"
    else
        echo "No dirctory saved.Run macro first."
    fi
}































