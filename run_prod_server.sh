#if [ -z "$1" ]
#  then
#    echo "Usage: ./run_server.sh <Server Name> <Module Name>"
#    exit 1
#fi

SERVERNAME='Nymri Ascension'
MODULE='Nymri Ascension'

docker run -dit -p 5121:5121/udp -e NWN_PORT=5121 --name Nymri -v $(pwd):/nwn/home -e NWN_MODULE="$MODULE" -e NWN_PUBLICSERVER=1 -e NWN_PLAYERPASSWORD=rocktroll -e NWN_SERVERNAME="$SERVERNAME" -e NWN_PAUSEANDPLAY=0 -e NWN_PVP=0 beamdog/nwserver
