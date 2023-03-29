# export PGUSER=spedata

# sqitch init ocolis --engine pg

#sqitch add 1.create_table -n "modification du type de serial_number"
#sqitch add 2.serial_number_to_text -n "modification du type de serial_number"
#sqitch add 3.serial_number_unique -n "modification du type de serial_number"
#sqitch add 4.volume -n "division du volume en largeur, hauteur, profondeur"
#sqitch add 5.tracking -n "modification de la table package pour la tracking"
#sqitch add 6.expedition -n "ajout de la table expédition"
sqitch add 7.constraints -n "ajout des contraintes"