DATA_DIR=$(pwd)/data
command=$1
if[ "$command" = "build_generator" ]; then
    docker build -t generator generator
elif [ "$command" = "run_generator" ]; then
    mkdir -p data
    docker run --rm -v "$DATA_DIR":/data generator
elif [ "$command" = "create_local_data" ]; then
    mkdir -p local_data
    python generator/generate.py local_data
elif [ "$command" = "build_reporter" ]; then
    docker build -t reporter reporter
elif [ "$command" = "run_reporter" ]; then
    mkdir -p data
    docker run --rm -v "$DATA_DIR":/data reporter
elif [ "$command" = "structure" ]; then
    find .
elif [ "$command" = "clear_data" ]; then
    rm -f data/*.csv
    rm -f data/*.html
    echo "Папка data очищена"
elif [ "$command" = "inside_generator" ]; then
    mkdir -p data
    docker run --rm -v "$DATA_DIR":/data generator ls -la /data
elif [ "$command" = "inside_generator" ]; then
    mkdir -p data
    docker run --rm -v "$DATA_DIR":/data reporter ls -la /data 
else
    echo "Неизвестная команда"
fi