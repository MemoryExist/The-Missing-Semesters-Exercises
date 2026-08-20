#!/usr/bin/env bash

count=0
while true; do
    ((count++))
    # 运行待测脚本，将 stdout 和 stderr 分别重定向到文件
    ./test.sh > stdout.log 2> stderr.log
    # 检查退出状态
    if [ $? -ne 0 ]; then
        echo "Script failed after $count runs."
        echo "--- Standard output ---"
        cat stdout.log
        echo "--- Standard error ---"
        cat stderr.log
        break
    fi
done

















