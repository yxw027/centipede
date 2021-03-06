#!/bin/bash

chfn -f 'Centipede '$MP'' root &&

MAILFILE=./email.txt

echo "Subject: Base RTK "$MP" Defaillante" > $MAILFILE 
echo "To: " $MAIL >> $MAILFILE
echo "From: julien.ancelin@inra.fr" >> $MAILFILE
echo "" >> $MAILFILE
echo "Message Automatique $(date '+%Y/%m/%d at %H:%M:%S') GMT." >> $MAILFILE
echo "" >> $MAILFILE
echo "Bonjour," >> $MAILFILE
echo "Votre Base RTK $MP ou votre reseau internet est eteint ou defaillant car aucune donnee n'a ete renvoyee au caster.centipede.fr:2101 dans les dernieres minutes" >> $MAILFILE
echo "Ce probleme survient generalement lors de coupures electriques, de problemes de connections a internet ou de surchauffe du materiel" >> $MAILFILE
echo "Dans un premier temps nous vous conseillons de verifier si votre base RTK est active, votre connexion internet, l'alimentation electrique et si besoin rebooter votre base RTK." >> $MAILFILE
echo "" >> $MAILFILE
echo "L'actualisation des donnees s'effectue toute les 30 min." >> $MAILFILE
echo "" >> $MAILFILE
echo "Vous pouvez visualiser la sante de l'ensemble des bases RTK Centipede sur https://centipede.fr" >> $MAILFILE
echo "En cas de difficulte technique vous pouvez demander de l'aide par mail a contact@centipede.fr" >> $MAILFILE
echo "Bonne journee" >> $MAILFILE

cat $MAILFILE | ssmtp -f"contact@centipede.fr" $MAIL
