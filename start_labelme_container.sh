#!/bin/bash

docker run \
--name labelme-adidas \
-p 8080:80 \
-v $PWD/Annotations:/var/www/html/LabelMeAnnotationTool/Annotations/example_folder
-d \
--entrypoint "/bin/bash" \
-t labelme-adidas

# restart apache inside the container
docker exec labelme-adidas service apache2 restart
