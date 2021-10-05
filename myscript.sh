#!/bin/sh

# A simple script with a function...

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift;
  #Having sgifted twice, the rest is now comments...
  COMMENTS=$@
  echo "Adding user $USER ....."
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

###

#Cuerpo principal del script comienza aqui
echo "Comienzo del script........."
add_a_user bob sanchez Bob el constructor
add_a_user jona badpassword Jona Pumas gol
add_a_user bilko peorpassword Bilko just an example
echo "El final de nuestro script"
echo "Love & Peace"
