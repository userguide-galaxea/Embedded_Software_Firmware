#!/bin/bash

# 检查是否传入了两个参数
if [ $# -ne 2 ]; then
    echo "Usage: $0 <bin_filename> <selected_port>"
    exit 1
fi

bin_filename="$1"
selected_port="$2"
command="./tools/ota.out"

execute_command() {
    sudo chmod 777 $selected_port
    $command $bin_filename $selected_port &
    process_pid=$!

    wait $process_pid
    return_code=$?

    echo "subprocess exit with code: $return_code"

    if [ $return_code -eq 0 ]; then
        exit 0
    elif [ $return_code -eq 255 ]; then
        return 255
    else
        exit $return_code
    fi
}

while true; do
    execute_command
    if [ $? -ne 255 ]; then
        break
    fi
done
