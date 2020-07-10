function exitfn() {
    trap SIGINT
    echo 'Goodbye!'
    exit
}

trap "exitfn" INT

read -p 'Username: ' username

WORKSPACE="$username-workspace"

while true; do
    if [ ! "$(
        docker ps -q -f name=$WORKSPACE)" ]; then
        if [ "$(docker ps -aq -f status=exited -f name=$WORKSPACE)" ]; then
            docker start $WORKSPACE
            echo "Wait until container response..."
        else
            echo "Not registered, contact to administrator."
            break
        fi
    else
        docker exec -it $WORKSPACE /bin/bash
        break
    fi
done

exit
