#!/bin/bash

#necessite d'etre lance 3 fois depuis trois terminaux differents

roscore
rosrun turtlesim turtlesim_node
chmod +x modif_couleur.sh
chmod +x carre.sh
./modif_couleur.sh
./carre.sh
