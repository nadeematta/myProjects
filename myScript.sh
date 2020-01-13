if docker ps --format '{{.Names}}' -a | grep -w myimagecontainer &> /dev/null
then
        echo container exist...removing container
        docker container rm -f  myimagecontainer
        docker container run -p 8085:80 -itd --name myimagecontainer myimage
else
        echo container does not exist
        docker container run -p 8085:80 -itd --name myimagecontainer myimage
fi

