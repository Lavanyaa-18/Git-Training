echo " enter your choice (start/stop/restart):"
read choice

case $choice in
    start)
        echo "starting the service"
        ;;
    stop)
        echo "stopping the service"
        ;;
    restart)
        echo " restarting the service"
        ;;
    *)
        echo " invalid choice"
        ;;
esac