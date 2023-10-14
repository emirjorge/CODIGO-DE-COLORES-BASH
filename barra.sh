#!/bin/bash

#COLORES BASICOS: 0;30 - 37
negro="\e[0;30m"
rojo="\e[0;31m"
verde="\e[0;32m"
amarillo="\e[0;33m"
azul="\e[0;34m"
morado="\e[0;35m"
celeste="\e[0;36m"
blanco="\e[0;37m"

#COLORES BASICOS NEGRITA: 1;30 - 37
bnegro="\e[1;30m"
brojo="\e[1;31m"
bverde="\e[1;32m"
bamarillo="\e[1;33m"
bazul="\e[1;34m"
bmorado="\e[1;35m"
bceleste="\e[1;36m"
bblanco="\e[1;37m"

#COLORES BASICOS FONDO: 40 - 47
fnegro="\e[40m"
frojo="\e[41m"
fverde="\e[42m"
famarillo="\e[43m"
fazul="\e[44m"
fmorado="\e[45m"
fceleste="\e[46m"
fblanco="\e[47m"

#COLORES BASICOS SUBRAYADO: 4;30 -37
snegro="\e[4;30m"
srojo="\e[4;31m"
sverde="\e[4;32m"
samarillo="\e[4;33m"
sazul="\e[4;34m"
smorado="\e[4;35m"
sceleste="\e[4;36m"
sblanco="\e[4;37m"

#COLORES BASICOS ALTA INTENSIDAD: 0;90 - 97
hnegro="\e[0;90m"
hrojo="\e[0;91m"
hverde="\e[0;92m"
hamarillo="\e[0;93m"
hazul="\e[0;94m"
hmorado="\e[0;95m"
hceleste="\e[0;96m"
hblanco="\e[0;97m"

#COLORES BASICOS NEGRITA ALTA INTENSIDAD: 1;90 - 97
nhnegro="\e[1;90m"
nhrojo="\e[1;91m"
nhverde="\e[1;92m"
nhamarillo="\e[1;93m"
nhazul="\e[1;94m"
nhmorado="\e[1;95m"
nhceleste="\e[1;96m"
nhblanco="\e[1;97m"

#COLORES BASICOS FONDO ALTA INTENSIDAD: 0,100 - 107
fhnegro="\e[0;100m"
fhrojo="\e[0;101m"
fhverde="\e[0;102m"
fhamarillo="\e[0;103m"
fhazul="\e[0;104m"
fhmorado="\e[0;105m"
fhceleste="\e[0;106m"
fhblanco="\e[0;107m"

# COLORES BASICOS FONDO ALTA INTENSIDAD TEXTO NEGRITA: 1,100 - 107
fnhnegro='\e[1;100m' # NEGRO
fnhrojo='\e[1;101m' # ROJO
fnhverde='\e[1;102m' # VERDE
fnhamarillo='\e[1;103m' # AMARILLO
fnhazul='\e[1;104m' # AZUL
fnhmorado='\e[1;105m' # MORADO
fnhceleste='\e[1;106m' # CELESTE
fnhblanco='\e[1;107m' # BLANCO

#reset color
resetc="\e[0m"

msg () {
#ACTUALIZADOR
    [[ ! -e /etc/versin_script ]] && echo 1 > /etc/versin_script
    v11=$(cat /etc/versin_script_new)
    v22=$(cat /etc/versin_script)
    #[[ $11 = $v22 ]] && 
    versionSCT="Version$bverde $v22$reset"
    vesaoSCT="\033[1;37mVersion\033[1;32m $v22\033[1;31m ]" #|| vesaoSCT="\033[1;31m($v22)\033[1;97m→\033[1;32m($v11)\033[1;31m  ]"
    # \033 = \e 
    # 0; reestablece cualquier estilo existente.
    local colors="/etc/VPS-MX/colors"
    if [[ ! -e $colors ]]; then
        # COLORES BASICOS: 0;30 - 37
        COLOR[0]='\e[0;30m' # NEGRO
        COLOR[1]='\e[0;31m' # ROJO
        COLOR[2]='\e[0;32m' # VERDE
        COLOR[3]='\e[0;33m' # AMARILLO
        COLOR[4]='\e[0;34m' # AZUL
        COLOR[5]='\e[0;35m' # MORADO
        COLOR[6]='\e[0;36m' # CELESTE
        COLOR[7]='\e[0;37m' # BLANCO

        # COLORES BASICOS NEGRITA: 1;30 - 37
        COLOR[10]='\e[1;30m' # NEGRO 
        COLOR[11]='\e[1;31m' # ROJO
        COLOR[12]='\e[1;32m' # VERDE
        COLOR[13]='\e[1;33m' # AMARILLO
        COLOR[14]='\e[1;34m' # AZUL
        COLOR[15]='\e[1;35m' # MORADO
        COLOR[16]='\e[1;36m' # CELESTE
        COLOR[17]='\e[1;37m' # BLANCO

        # COLORES BASICOS FONDO: 40 - 47
        COLOR[20]='\e[40m' # NEGRO
        COLOR[21]='\e[41m' # ROJO
        COLOR[22]='\e[42m' # VERDE
        COLOR[23]='\e[43m' # AMARILLO
        COLOR[24]='\e[44m' # AZUL
        COLOR[25]='\e[45m' # MORADO
        COLOR[26]='\e[46m' # CELESTE
        COLOR[27]='\e[47m' # BLANCO

        # COLORES BASICOS SUBRAYADO: 4;30 -37
        COLOR[30]='\e[4;30m' # NEGRO
        COLOR[31]='\e[4;31m' # ROJO
        COLOR[32]='\e[4;32m' # VERDE
        COLOR[33]='\e[4;33m' # AMARILLO
        COLOR[34]='\e[4;34m' # AZUL
        COLOR[35]='\e[4;35m' # MORADO
        COLOR[36]='\e[4;36m' # CELESTE
        COLOR[37]='\e[4;37m' # BLANCO

        # COLORES BASICOS ALTA INTENSIDAD: 0;90 - 97
        COLOR[40]='\e[0;90m' # NEGRO
        COLOR[41]='\e[0;91m' # ROJO
        COLOR[42]='\e[0;92m' # VERDE
        COLOR[43]='\e[0;93m' # AMARILLO
        COLOR[44]='\e[0;94m' # AZUL
        COLOR[45]='\e[0;95m' # MORADO
        COLOR[46]='\e[0;96m' # CELESTE
        COLOR[47]='\e[0;97m' # BLANCO

        # COLORES BASICOS NEGRITA ALTA INTENSIDAD: 1;90 - 97
        COLOR[50]='\e[1;90m' # NEGRO
        COLOR[51]='\e[1;91m' # ROJO
        COLOR[52]='\e[1;92m' # VERDE
        COLOR[53]='\e[1;93m' # AMARILLO
        COLOR[54]='\e[1;94m' # AZUL
        COLOR[55]='\e[1;95m' # MORADO
        COLOR[56]='\e[1;96m' # CELESTE
        COLOR[57]='\e[1;97m' # BLANCO

        # COLORES BASICOS FONDO ALTA INTENSIDAD: 0,100 - 107
        COLOR[60]='\e[0;100m' # NEGRO
        COLOR[61]='\e[0;101m' # ROJO
        COLOR[62]='\e[0;102m' # VERDE
        COLOR[63]='\e[0;103m' # AMARILLO
        COLOR[64]='\e[0;104m' # AZUL
        COLOR[65]='\e[0;105m' # MORADO
        COLOR[66]='\e[0;106m' # CELESTE
        COLOR[67]='\e[0;107m' # BLANCO

        # COLORES BASICOS FONDO ALTA INTENSIDAD TEXTO NEGRITA: 1,100 - 107
        COLOR[70]='\e[1;100m' # NEGRO
        COLOR[71]='\e[1;101m' # ROJO
        COLOR[72]='\e[1;102m' # VERDE
        COLOR[73]='\e[1;103m' # AMARILLO
        COLOR[74]='\e[1;104m' # AZUL
        COLOR[75]='\e[1;105m' # MORADO
        COLOR[76]='\e[1;106m' # CELESTE
        COLOR[77]='\e[1;107m' # BLANCO

    else
        local COL=0
        for number in $(cat $colors); do
            case $number in
            1) COLOR[$COL]='\033[1;37m' ;;
            2) COLOR[$COL]='\e[31m' ;;
            3) COLOR[$COL]='\e[32m' ;;
            4) COLOR[$COL]='\e[33m' ;;
            5) COLOR[$COL]='\e[34m' ;;
            6) COLOR[$COL]='\e[35m' ;;
            7) COLOR[$COL]='\033[1;36m' ;;
            8) COLOR[$COL]='\e[36m' ;;
            9) COLOR[$COL]='\033[1;49;96m';;
            esac
            let COL++
        done
    fi
    NEGRITO='\e[1m'
    SEMCOR='\e[0m'
    
    case $1 in
    -bar0000) ccor="${COLOR[50]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0001) ccor="${COLOR[51]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0002) ccor="${COLOR[52]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0003) ccor="${COLOR[53]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0004) ccor="${COLOR[54]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0005) ccor="${COLOR[55]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0006) ccor="${COLOR[56]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0007) ccor="${COLOR[57]}֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍֍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0100) ccor="${COLOR[50]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0101) ccor="${COLOR[51]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0102) ccor="${COLOR[52]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0103) ccor="${COLOR[53]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0104) ccor="${COLOR[54]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0105) ccor="${COLOR[55]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0106) ccor="${COLOR[56]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0107) ccor="${COLOR[57]}□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0200) ccor="${COLOR[50]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0201) ccor="${COLOR[51]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0202) ccor="${COLOR[52]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0203) ccor="${COLOR[53]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0204) ccor="${COLOR[54]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0205) ccor="${COLOR[55]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0206) ccor="${COLOR[56]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0207) ccor="${COLOR[57]}▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0300) ccor="${COLOR[50]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0301) ccor="${COLOR[51]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0302) ccor="${COLOR[52]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0303) ccor="${COLOR[53]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0304) ccor="${COLOR[54]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0305) ccor="${COLOR[55]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0306) ccor="${COLOR[56]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0307) ccor="${COLOR[57]}▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0400) ccor="${COLOR[50]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0401) ccor="${COLOR[51]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0402) ccor="${COLOR[52]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0403) ccor="${COLOR[53]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0404) ccor="${COLOR[54]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0405) ccor="${COLOR[55]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0406) ccor="${COLOR[56]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0407) ccor="${COLOR[57]}◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌◌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0500) ccor="${COLOR[50]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0501) ccor="${COLOR[51]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0502) ccor="${COLOR[52]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0503) ccor="${COLOR[53]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0504) ccor="${COLOR[54]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0505) ccor="${COLOR[55]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0506) ccor="${COLOR[56]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0507) ccor="${COLOR[57]}◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙◙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0500) ccor="${COLOR[50]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0601) ccor="${COLOR[51]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0602) ccor="${COLOR[52]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0603) ccor="${COLOR[53]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0604) ccor="${COLOR[54]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0605) ccor="${COLOR[55]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0606) ccor="${COLOR[56]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0607) ccor="${COLOR[57]}✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶✶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0700) ccor="${COLOR[50]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0701) ccor="${COLOR[51]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0702) ccor="${COLOR[52]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0703) ccor="${COLOR[53]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0704) ccor="${COLOR[54]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0705) ccor="${COLOR[55]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0706) ccor="${COLOR[56]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0707) ccor="${COLOR[57]}⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈⎈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0800) ccor="${COLOR[50]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0801) ccor="${COLOR[51]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0802) ccor="${COLOR[52]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0803) ccor="${COLOR[53]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0804) ccor="${COLOR[54]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0805) ccor="${COLOR[55]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0806) ccor="${COLOR[56]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0807) ccor="${COLOR[57]}⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣⏣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0900) ccor="${COLOR[50]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0901) ccor="${COLOR[51]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0902) ccor="${COLOR[52]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0903) ccor="${COLOR[53]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0904) ccor="${COLOR[54]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0905) ccor="${COLOR[55]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0906) ccor="${COLOR[56]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar0907) ccor="${COLOR[57]}▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1000) ccor="${COLOR[50]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1001) ccor="${COLOR[51]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1002) ccor="${COLOR[52]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1003) ccor="${COLOR[53]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1004) ccor="${COLOR[54]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1005) ccor="${COLOR[55]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1006) ccor="${COLOR[56]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1007) ccor="${COLOR[57]}␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥␥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1100) ccor="${COLOR[50]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1101) ccor="${COLOR[51]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1102) ccor="${COLOR[52]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1103) ccor="${COLOR[53]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1104) ccor="${COLOR[54]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1105) ccor="${COLOR[55]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1106) ccor="${COLOR[56]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1107) ccor="${COLOR[57]}⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺⍺" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1200) ccor="${COLOR[50]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1201) ccor="${COLOR[51]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1202) ccor="${COLOR[52]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1203) ccor="${COLOR[53]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1204) ccor="${COLOR[54]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1205) ccor="${COLOR[55]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1206) ccor="${COLOR[56]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1207) ccor="${COLOR[57]}⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧⏧" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1300) ccor="${COLOR[50]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1301) ccor="${COLOR[51]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1302) ccor="${COLOR[52]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1303) ccor="${COLOR[53]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1304) ccor="${COLOR[54]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1305) ccor="${COLOR[55]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1306) ccor="${COLOR[56]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1307) ccor="${COLOR[57]}۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1400) ccor="${COLOR[50]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1401) ccor="${COLOR[51]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1402) ccor="${COLOR[52]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1403) ccor="${COLOR[53]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1404) ccor="${COLOR[54]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1405) ccor="${COLOR[55]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1406) ccor="${COLOR[56]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1407) ccor="${COLOR[57]}༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓༓" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1500) ccor="${COLOR[50]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1501) ccor="${COLOR[51]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1502) ccor="${COLOR[52]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1503) ccor="${COLOR[53]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1504) ccor="${COLOR[54]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1505) ccor="${COLOR[55]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1506) ccor="${COLOR[56]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1507) ccor="${COLOR[57]}༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗༗" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1500) ccor="${COLOR[50]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1601) ccor="${COLOR[51]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1602) ccor="${COLOR[52]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1603) ccor="${COLOR[53]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1604) ccor="${COLOR[54]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1605) ccor="${COLOR[55]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1606) ccor="${COLOR[56]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1607) ccor="${COLOR[57]}࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇࿇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1700) ccor="${COLOR[50]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1701) ccor="${COLOR[51]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1702) ccor="${COLOR[52]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1703) ccor="${COLOR[53]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1704) ccor="${COLOR[54]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1705) ccor="${COLOR[55]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1706) ccor="${COLOR[56]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1707) ccor="${COLOR[57]}☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍☍" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1800) ccor="${COLOR[50]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1801) ccor="${COLOR[51]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1802) ccor="${COLOR[52]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1803) ccor="${COLOR[53]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1804) ccor="${COLOR[54]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1805) ccor="${COLOR[55]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1806) ccor="${COLOR[56]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1807) ccor="${COLOR[57]}☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌☌" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1900) ccor="${COLOR[50]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1901) ccor="${COLOR[51]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1902) ccor="${COLOR[52]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1903) ccor="${COLOR[53]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1904) ccor="${COLOR[54]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1905) ccor="${COLOR[55]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1906) ccor="${COLOR[56]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar1907) ccor="${COLOR[57]}⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚⚚" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2000) ccor="${COLOR[50]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2001) ccor="${COLOR[51]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2002) ccor="${COLOR[52]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2003) ccor="${COLOR[53]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2004) ccor="${COLOR[54]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2005) ccor="${COLOR[55]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2006) ccor="${COLOR[56]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2007) ccor="${COLOR[57]}❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣❣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2100) ccor="${COLOR[50]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2101) ccor="${COLOR[51]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2102) ccor="${COLOR[52]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2103) ccor="${COLOR[53]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2104) ccor="${COLOR[54]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2105) ccor="${COLOR[55]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2106) ccor="${COLOR[56]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2107) ccor="${COLOR[57]}⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜⚜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2200) ccor="${COLOR[50]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2201) ccor="${COLOR[51]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2202) ccor="${COLOR[52]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2203) ccor="${COLOR[53]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2204) ccor="${COLOR[54]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2205) ccor="${COLOR[55]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2206) ccor="${COLOR[56]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2207) ccor="${COLOR[57]}⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛⚛" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2300) ccor="${COLOR[50]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2301) ccor="${COLOR[51]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2302) ccor="${COLOR[52]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2303) ccor="${COLOR[53]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2304) ccor="${COLOR[54]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2305) ccor="${COLOR[55]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2306) ccor="${COLOR[56]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2307) ccor="${COLOR[57]}♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜♜" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2400) ccor="${COLOR[50]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2401) ccor="${COLOR[51]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2402) ccor="${COLOR[52]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2403) ccor="${COLOR[53]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2404) ccor="${COLOR[54]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2405) ccor="${COLOR[55]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2406) ccor="${COLOR[56]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2407) ccor="${COLOR[57]}♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅♅" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2500) ccor="${COLOR[50]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2501) ccor="${COLOR[51]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2502) ccor="${COLOR[52]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2503) ccor="${COLOR[53]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2504) ccor="${COLOR[54]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2505) ccor="${COLOR[55]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2506) ccor="${COLOR[56]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2507) ccor="${COLOR[57]}☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸☸" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2500) ccor="${COLOR[50]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2601) ccor="${COLOR[51]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2602) ccor="${COLOR[52]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2603) ccor="${COLOR[53]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2604) ccor="${COLOR[54]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2605) ccor="${COLOR[55]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2606) ccor="${COLOR[56]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2607) ccor="${COLOR[57]}☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪☪" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2700) ccor="${COLOR[50]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2701) ccor="${COLOR[51]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2702) ccor="${COLOR[52]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2703) ccor="${COLOR[53]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2704) ccor="${COLOR[54]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2705) ccor="${COLOR[55]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2706) ccor="${COLOR[56]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2707) ccor="${COLOR[57]}☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩☩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2800) ccor="${COLOR[50]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2801) ccor="${COLOR[51]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2802) ccor="${COLOR[52]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2803) ccor="${COLOR[53]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2804) ccor="${COLOR[54]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2805) ccor="${COLOR[55]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2806) ccor="${COLOR[56]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2807) ccor="${COLOR[57]}☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙☙" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2900) ccor="${COLOR[50]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2901) ccor="${COLOR[51]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2902) ccor="${COLOR[52]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2903) ccor="${COLOR[53]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2904) ccor="${COLOR[54]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2905) ccor="${COLOR[55]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2906) ccor="${COLOR[56]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar2907) ccor="${COLOR[57]}☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘☘" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3000) ccor="${COLOR[50]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3001) ccor="${COLOR[51]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3002) ccor="${COLOR[52]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3003) ccor="${COLOR[53]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3004) ccor="${COLOR[54]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3005) ccor="${COLOR[55]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3006) ccor="${COLOR[56]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3007) ccor="${COLOR[57]}☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁☁" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3100) ccor="${COLOR[50]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3101) ccor="${COLOR[51]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3102) ccor="${COLOR[52]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3103) ccor="${COLOR[53]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3104) ccor="${COLOR[54]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3105) ccor="${COLOR[55]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3106) ccor="${COLOR[56]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3107) ccor="${COLOR[57]}☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀☀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3200) ccor="${COLOR[50]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3201) ccor="${COLOR[51]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3202) ccor="${COLOR[52]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3203) ccor="${COLOR[53]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3204) ccor="${COLOR[54]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3205) ccor="${COLOR[55]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3206) ccor="${COLOR[56]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3207) ccor="${COLOR[57]}◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬◬" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3300) ccor="${COLOR[50]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3301) ccor="${COLOR[51]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3302) ccor="${COLOR[52]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3303) ccor="${COLOR[53]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3304) ccor="${COLOR[54]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3305) ccor="${COLOR[55]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3306) ccor="${COLOR[56]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3307) ccor="${COLOR[57]}◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3400) ccor="${COLOR[50]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3401) ccor="${COLOR[51]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3402) ccor="${COLOR[52]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3403) ccor="${COLOR[53]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3404) ccor="${COLOR[54]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3405) ccor="${COLOR[55]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3406) ccor="${COLOR[56]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3407) ccor="${COLOR[57]}▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3500) ccor="${COLOR[50]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3501) ccor="${COLOR[51]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3502) ccor="${COLOR[52]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3503) ccor="${COLOR[53]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3504) ccor="${COLOR[54]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3505) ccor="${COLOR[55]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3506) ccor="${COLOR[56]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3507) ccor="${COLOR[57]}▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3500) ccor="${COLOR[50]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3601) ccor="${COLOR[51]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3602) ccor="${COLOR[52]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3603) ccor="${COLOR[53]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3604) ccor="${COLOR[54]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3605) ccor="${COLOR[55]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3606) ccor="${COLOR[56]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3607) ccor="${COLOR[57]}⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒⌒" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3700) ccor="${COLOR[50]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3701) ccor="${COLOR[51]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3702) ccor="${COLOR[52]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3703) ccor="${COLOR[53]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3704) ccor="${COLOR[54]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3705) ccor="${COLOR[55]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3706) ccor="${COLOR[56]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3707) ccor="${COLOR[57]}▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩▩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3800) ccor="${COLOR[50]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3801) ccor="${COLOR[51]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3802) ccor="${COLOR[52]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3803) ccor="${COLOR[53]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3804) ccor="${COLOR[54]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3805) ccor="${COLOR[55]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3806) ccor="${COLOR[56]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3807) ccor="${COLOR[57]}▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢▢" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3900) ccor="${COLOR[50]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3901) ccor="${COLOR[51]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3902) ccor="${COLOR[52]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3903) ccor="${COLOR[53]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3904) ccor="${COLOR[54]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3905) ccor="${COLOR[55]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3906) ccor="${COLOR[56]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar3907) ccor="${COLOR[57]}☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥☥" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4000) ccor="${COLOR[50]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4001) ccor="${COLOR[51]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4002) ccor="${COLOR[52]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4003) ccor="${COLOR[53]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4004) ccor="${COLOR[54]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4005) ccor="${COLOR[55]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4006) ccor="${COLOR[56]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4007) ccor="${COLOR[57]}⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷⚷" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4100) ccor="${COLOR[50]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4101) ccor="${COLOR[51]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4102) ccor="${COLOR[52]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4103) ccor="${COLOR[53]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4104) ccor="${COLOR[54]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4105) ccor="${COLOR[55]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4106) ccor="${COLOR[56]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4107) ccor="${COLOR[57]}⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵⚵" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4200) ccor="${COLOR[50]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4201) ccor="${COLOR[51]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4202) ccor="${COLOR[52]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4203) ccor="${COLOR[53]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4204) ccor="${COLOR[54]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4205) ccor="${COLOR[55]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4206) ccor="${COLOR[56]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4207) ccor="${COLOR[57]}⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣⍣" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4300) ccor="${COLOR[50]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4301) ccor="${COLOR[51]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4302) ccor="${COLOR[52]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4303) ccor="${COLOR[53]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4304) ccor="${COLOR[54]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4305) ccor="${COLOR[55]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4306) ccor="${COLOR[56]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4307) ccor="${COLOR[57]}⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇⑇" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4400) ccor="${COLOR[50]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4401) ccor="${COLOR[51]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4402) ccor="${COLOR[52]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4403) ccor="${COLOR[53]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4404) ccor="${COLOR[54]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4405) ccor="${COLOR[55]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4406) ccor="${COLOR[56]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4407) ccor="${COLOR[57]}⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆⑆" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4500) ccor="${COLOR[50]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4501) ccor="${COLOR[51]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4502) ccor="${COLOR[52]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4503) ccor="${COLOR[53]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4504) ccor="${COLOR[54]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4505) ccor="${COLOR[55]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4506) ccor="${COLOR[56]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4507) ccor="${COLOR[57]}⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀⑀" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4500) ccor="${COLOR[50]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4601) ccor="${COLOR[51]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4602) ccor="${COLOR[52]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4603) ccor="${COLOR[53]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4604) ccor="${COLOR[54]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4605) ccor="${COLOR[55]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4606) ccor="${COLOR[56]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4607) ccor="${COLOR[57]}⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉⑉" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4700) ccor="${COLOR[50]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4701) ccor="${COLOR[51]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4702) ccor="${COLOR[52]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4703) ccor="${COLOR[53]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4704) ccor="${COLOR[54]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4705) ccor="${COLOR[55]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4706) ccor="${COLOR[56]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4707) ccor="${COLOR[57]}۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩۩" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4800) ccor="${COLOR[50]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4801) ccor="${COLOR[51]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4802) ccor="${COLOR[52]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4803) ccor="${COLOR[53]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4804) ccor="${COLOR[54]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4805) ccor="${COLOR[55]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4806) ccor="${COLOR[56]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4807) ccor="${COLOR[57]}☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦☦" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4900) ccor="${COLOR[50]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4901) ccor="${COLOR[51]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4902) ccor="${COLOR[52]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4903) ccor="${COLOR[53]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4904) ccor="${COLOR[54]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4905) ccor="${COLOR[55]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4906) ccor="${COLOR[56]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar4907) ccor="${COLOR[57]}☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨☨" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5000) ccor="${COLOR[50]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5001) ccor="${COLOR[51]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5002) ccor="${COLOR[52]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5003) ccor="${COLOR[53]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5004) ccor="${COLOR[54]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5005) ccor="${COLOR[55]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5006) ccor="${COLOR[56]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;
    -bar5007) ccor="${COLOR[57]}⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕⚕" && echo -e "${SEMCOR}${ccor}${SEMCOR}" ;;

    esac
}
echo "msg -bar0000"
msg -bar0000
			
echo "msg -bar0001"
msg -bar0001
			
echo "msg -bar0002"
msg -bar0002
			
echo "msg -bar0003"
msg -bar0003
			
echo "msg -bar0004"
msg -bar0004
			
echo "msg -bar0005"
msg -bar0005
			
echo "msg -bar0006"
msg -bar0006
			
echo "msg -bar0007"
msg -bar0007
			
echo "msg -bar0100"
msg -bar0100
			
echo "msg -bar0101"
msg -bar0101
			
echo "msg -bar0102"
msg -bar0102
			
echo "msg -bar0103"
msg -bar0103
			
echo "msg -bar0104"
msg -bar0104
			
echo "msg -bar0105"
msg -bar0105
			
echo "msg -bar0106"
msg -bar0106
			
echo "msg -bar0107"
msg -bar0107
			
echo "msg -bar0200"
msg -bar0200
			
echo "msg -bar0201"
msg -bar0201
			
echo "msg -bar0202"
msg -bar0202
			
echo "msg -bar0203"
msg -bar0203
			
echo "msg -bar0204"
msg -bar0204
			
echo "msg -bar0205"
msg -bar0205
			
echo "msg -bar0206"
msg -bar0206
			
echo "msg -bar0207"
msg -bar0207
			
echo "msg -bar0300"
msg -bar0300
			
echo "msg -bar0301"
msg -bar0301
			
echo "msg -bar0302"
msg -bar0302
			
echo "msg -bar0303"
msg -bar0303
			
echo "msg -bar0304"
msg -bar0304
			
echo "msg -bar0305"
msg -bar0305
			
echo "msg -bar0306"
msg -bar0306
			
echo "msg -bar0307"
msg -bar0307
			
echo "msg -bar0400"
msg -bar0400
			
echo "msg -bar0401"
msg -bar0401
			
echo "msg -bar0402"
msg -bar0402
			
echo "msg -bar0403"
msg -bar0403
			
echo "msg -bar0404"
msg -bar0404
			
echo "msg -bar0405"
msg -bar0405
			
echo "msg -bar0406"
msg -bar0406
			
echo "msg -bar0407"
msg -bar0407
			
echo "msg -bar0500"
msg -bar0500
			
echo "msg -bar0501"
msg -bar0501
			
echo "msg -bar0502"
msg -bar0502
			
echo "msg -bar0503"
msg -bar0503
			
echo "msg -bar0504"
msg -bar0504
			
echo "msg -bar0505"
msg -bar0505
			
echo "msg -bar0506"
msg -bar0506
			
echo "msg -bar0507"
msg -bar0507
			
echo "msg -bar0500"
msg -bar0500
			
echo "msg -bar0601"
msg -bar0601
			
echo "msg -bar0602"
msg -bar0602
			
echo "msg -bar0603"
msg -bar0603
			
echo "msg -bar0604"
msg -bar0604
			
echo "msg -bar0605"
msg -bar0605
			
echo "msg -bar0606"
msg -bar0606
			
echo "msg -bar0607"
msg -bar0607
			
echo "msg -bar0700"
msg -bar0700
			
echo "msg -bar0701"
msg -bar0701
			
echo "msg -bar0702"
msg -bar0702
			
echo "msg -bar0703"
msg -bar0703
			
echo "msg -bar0704"
msg -bar0704
			
echo "msg -bar0705"
msg -bar0705
			
echo "msg -bar0706"
msg -bar0706
			
echo "msg -bar0707"
msg -bar0707
			
echo "msg -bar0800"
msg -bar0800
			
echo "msg -bar0801"
msg -bar0801
			
echo "msg -bar0802"
msg -bar0802
			
echo "msg -bar0803"
msg -bar0803
			
echo "msg -bar0804"
msg -bar0804
			
echo "msg -bar0805"
msg -bar0805
			
echo "msg -bar0806"
msg -bar0806
			
echo "msg -bar0807"
msg -bar0807
			
echo "msg -bar0900"
msg -bar0900
			
echo "msg -bar0901"
msg -bar0901
			
echo "msg -bar0902"
msg -bar0902
			
echo "msg -bar0903"
msg -bar0903
			
echo "msg -bar0904"
msg -bar0904
			
echo "msg -bar0905"
msg -bar0905
			
echo "msg -bar0906"
msg -bar0906
			
echo "msg -bar0907"
msg -bar0907
			
echo "msg -bar1000"
msg -bar1000
			
echo "msg -bar1001"
msg -bar1001
			
echo "msg -bar1002"
msg -bar1002
			
echo "msg -bar1003"
msg -bar1003
			
echo "msg -bar1004"
msg -bar1004
			
echo "msg -bar1005"
msg -bar1005
			
echo "msg -bar1006"
msg -bar1006
			
echo "msg -bar1007"
msg -bar1007
			
echo "msg -bar1100"
msg -bar1100
			
echo "msg -bar1101"
msg -bar1101
			
echo "msg -bar1102"
msg -bar1102
			
echo "msg -bar1103"
msg -bar1103
			
echo "msg -bar1104"
msg -bar1104
			
echo "msg -bar1105"
msg -bar1105
			
echo "msg -bar1106"
msg -bar1106
			
echo "msg -bar1107"
msg -bar1107
			
echo "msg -bar1200"
msg -bar1200
			
echo "msg -bar1201"
msg -bar1201
			
echo "msg -bar1202"
msg -bar1202
			
echo "msg -bar1203"
msg -bar1203
			
echo "msg -bar1204"
msg -bar1204
			
echo "msg -bar1205"
msg -bar1205
			
echo "msg -bar1206"
msg -bar1206
			
echo "msg -bar1207"
msg -bar1207
			
echo "msg -bar1300"
msg -bar1300
			
echo "msg -bar1301"
msg -bar1301
			
echo "msg -bar1302"
msg -bar1302
			
echo "msg -bar1303"
msg -bar1303
			
echo "msg -bar1304"
msg -bar1304
			
echo "msg -bar1305"
msg -bar1305
			
echo "msg -bar1306"
msg -bar1306
			
echo "msg -bar1307"
msg -bar1307
			
echo "msg -bar1400"
msg -bar1400
			
echo "msg -bar1401"
msg -bar1401
			
echo "msg -bar1402"
msg -bar1402
			
echo "msg -bar1403"
msg -bar1403
			
echo "msg -bar1404"
msg -bar1404
			
echo "msg -bar1405"
msg -bar1405
			
echo "msg -bar1406"
msg -bar1406
			
echo "msg -bar1407"
msg -bar1407
			
echo "msg -bar1500"
msg -bar1500
			
echo "msg -bar1501"
msg -bar1501
			
echo "msg -bar1502"
msg -bar1502
			
echo "msg -bar1503"
msg -bar1503
			
echo "msg -bar1504"
msg -bar1504
			
echo "msg -bar1505"
msg -bar1505
			
echo "msg -bar1506"
msg -bar1506
			
echo "msg -bar1507"
msg -bar1507
			
echo "msg -bar1500"
msg -bar1500
			
echo "msg -bar1601"
msg -bar1601
			
echo "msg -bar1602"
msg -bar1602
			
echo "msg -bar1603"
msg -bar1603
			
echo "msg -bar1604"
msg -bar1604
			
echo "msg -bar1605"
msg -bar1605
			
echo "msg -bar1606"
msg -bar1606
			
echo "msg -bar1607"
msg -bar1607
			
echo "msg -bar1700"
msg -bar1700
			
echo "msg -bar1701"
msg -bar1701
			
echo "msg -bar1702"
msg -bar1702
			
echo "msg -bar1703"
msg -bar1703
			
echo "msg -bar1704"
msg -bar1704
			
echo "msg -bar1705"
msg -bar1705
			
echo "msg -bar1706"
msg -bar1706
			
echo "msg -bar1707"
msg -bar1707
			
echo "msg -bar1800"
msg -bar1800
			
echo "msg -bar1801"
msg -bar1801
			
echo "msg -bar1802"
msg -bar1802
			
echo "msg -bar1803"
msg -bar1803
			
echo "msg -bar1804"
msg -bar1804
			
echo "msg -bar1805"
msg -bar1805
			
echo "msg -bar1806"
msg -bar1806
			
echo "msg -bar1807"
msg -bar1807
			
echo "msg -bar1900"
msg -bar1900
			
echo "msg -bar1901"
msg -bar1901
			
echo "msg -bar1902"
msg -bar1902
			
echo "msg -bar1903"
msg -bar1903
			
echo "msg -bar1904"
msg -bar1904
			
echo "msg -bar1905"
msg -bar1905
			
echo "msg -bar1906"
msg -bar1906
			
echo "msg -bar1907"
msg -bar1907
			
echo "msg -bar2000"
msg -bar2000
			
echo "msg -bar2001"
msg -bar2001
			
echo "msg -bar2002"
msg -bar2002
			
echo "msg -bar2003"
msg -bar2003
			
echo "msg -bar2004"
msg -bar2004
			
echo "msg -bar2005"
msg -bar2005
			
echo "msg -bar2006"
msg -bar2006
			
echo "msg -bar2007"
msg -bar2007
			
echo "msg -bar2100"
msg -bar2100
			
echo "msg -bar2101"
msg -bar2101
			
echo "msg -bar2102"
msg -bar2102
			
echo "msg -bar2103"
msg -bar2103
			
echo "msg -bar2104"
msg -bar2104
			
echo "msg -bar2105"
msg -bar2105
			
echo "msg -bar2106"
msg -bar2106
			
echo "msg -bar2107"
msg -bar2107
			
echo "msg -bar2200"
msg -bar2200
			
echo "msg -bar2201"
msg -bar2201
			
echo "msg -bar2202"
msg -bar2202
			
echo "msg -bar2203"
msg -bar2203
			
echo "msg -bar2204"
msg -bar2204
			
echo "msg -bar2205"
msg -bar2205
			
echo "msg -bar2206"
msg -bar2206
			
echo "msg -bar2207"
msg -bar2207
			
echo "msg -bar2300"
msg -bar2300
			
echo "msg -bar2301"
msg -bar2301
			
echo "msg -bar2302"
msg -bar2302
			
echo "msg -bar2303"
msg -bar2303
			
echo "msg -bar2304"
msg -bar2304
			
echo "msg -bar2305"
msg -bar2305
			
echo "msg -bar2306"
msg -bar2306
			
echo "msg -bar2307"
msg -bar2307
			
echo "msg -bar2400"
msg -bar2400
			
echo "msg -bar2401"
msg -bar2401
			
echo "msg -bar2402"
msg -bar2402
			
echo "msg -bar2403"
msg -bar2403
			
echo "msg -bar2404"
msg -bar2404
			
echo "msg -bar2405"
msg -bar2405
			
echo "msg -bar2406"
msg -bar2406
			
echo "msg -bar2407"
msg -bar2407
			
echo "msg -bar2500"
msg -bar2500
			
echo "msg -bar2501"
msg -bar2501
			
echo "msg -bar2502"
msg -bar2502
			
echo "msg -bar2503"
msg -bar2503
			
echo "msg -bar2504"
msg -bar2504
			
echo "msg -bar2505"
msg -bar2505
			
echo "msg -bar2506"
msg -bar2506
			
echo "msg -bar2507"
msg -bar2507
			
echo "msg -bar2500"
msg -bar2500
			
echo "msg -bar2601"
msg -bar2601
			
echo "msg -bar2602"
msg -bar2602
			
echo "msg -bar2603"
msg -bar2603
			
echo "msg -bar2604"
msg -bar2604
			
echo "msg -bar2605"
msg -bar2605
			
echo "msg -bar2606"
msg -bar2606
			
echo "msg -bar2607"
msg -bar2607
			
echo "msg -bar2700"
msg -bar2700
			
echo "msg -bar2701"
msg -bar2701
			
echo "msg -bar2702"
msg -bar2702
			
echo "msg -bar2703"
msg -bar2703
			
echo "msg -bar2704"
msg -bar2704
			
echo "msg -bar2705"
msg -bar2705
			
echo "msg -bar2706"
msg -bar2706
			
echo "msg -bar2707"
msg -bar2707
			
echo "msg -bar2800"
msg -bar2800
			
echo "msg -bar2801"
msg -bar2801
			
echo "msg -bar2802"
msg -bar2802
			
echo "msg -bar2803"
msg -bar2803
			
echo "msg -bar2804"
msg -bar2804
			
echo "msg -bar2805"
msg -bar2805
			
echo "msg -bar2806"
msg -bar2806
			
echo "msg -bar2807"
msg -bar2807
			
echo "msg -bar2900"
msg -bar2900
			
echo "msg -bar2901"
msg -bar2901
			
echo "msg -bar2902"
msg -bar2902
			
echo "msg -bar2903"
msg -bar2903
			
echo "msg -bar2904"
msg -bar2904
			
echo "msg -bar2905"
msg -bar2905
			
echo "msg -bar2906"
msg -bar2906
			
echo "msg -bar2907"
msg -bar2907
			
echo "msg -bar3000"
msg -bar3000
			
echo "msg -bar3001"
msg -bar3001
			
echo "msg -bar3002"
msg -bar3002
			
echo "msg -bar3003"
msg -bar3003
			
echo "msg -bar3004"
msg -bar3004
			
echo "msg -bar3005"
msg -bar3005
			
echo "msg -bar3006"
msg -bar3006
			
echo "msg -bar3007"
msg -bar3007
			
echo "msg -bar3100"
msg -bar3100
			
echo "msg -bar3101"
msg -bar3101
			
echo "msg -bar3102"
msg -bar3102
			
echo "msg -bar3103"
msg -bar3103
			
echo "msg -bar3104"
msg -bar3104
			
echo "msg -bar3105"
msg -bar3105
			
echo "msg -bar3106"
msg -bar3106
			
echo "msg -bar3107"
msg -bar3107
			
echo "msg -bar3200"
msg -bar3200
			
echo "msg -bar3201"
msg -bar3201
			
echo "msg -bar3202"
msg -bar3202
			
echo "msg -bar3203"
msg -bar3203
			
echo "msg -bar3204"
msg -bar3204
			
echo "msg -bar3205"
msg -bar3205
			
echo "msg -bar3206"
msg -bar3206
			
echo "msg -bar3207"
msg -bar3207
			
echo "msg -bar3300"
msg -bar3300
			
echo "msg -bar3301"
msg -bar3301
			
echo "msg -bar3302"
msg -bar3302
			
echo "msg -bar3303"
msg -bar3303
			
echo "msg -bar3304"
msg -bar3304
			
echo "msg -bar3305"
msg -bar3305
			
echo "msg -bar3306"
msg -bar3306
			
echo "msg -bar3307"
msg -bar3307
			
echo "msg -bar3400"
msg -bar3400
			
echo "msg -bar3401"
msg -bar3401
			
echo "msg -bar3402"
msg -bar3402
			
echo "msg -bar3403"
msg -bar3403
			
echo "msg -bar3404"
msg -bar3404
			
echo "msg -bar3405"
msg -bar3405
			
echo "msg -bar3406"
msg -bar3406
			
echo "msg -bar3407"
msg -bar3407
			
echo "msg -bar3500"
msg -bar3500
			
echo "msg -bar3501"
msg -bar3501
			
echo "msg -bar3502"
msg -bar3502
			
echo "msg -bar3503"
msg -bar3503
			
echo "msg -bar3504"
msg -bar3504
			
echo "msg -bar3505"
msg -bar3505
			
echo "msg -bar3506"
msg -bar3506
			
echo "msg -bar3507"
msg -bar3507
			
echo "msg -bar3500"
msg -bar3500
			
echo "msg -bar3601"
msg -bar3601
			
echo "msg -bar3602"
msg -bar3602
			
echo "msg -bar3603"
msg -bar3603
			
echo "msg -bar3604"
msg -bar3604
			
echo "msg -bar3605"
msg -bar3605
			
echo "msg -bar3606"
msg -bar3606
			
echo "msg -bar3607"
msg -bar3607
			
echo "msg -bar3700"
msg -bar3700
			
echo "msg -bar3701"
msg -bar3701
			
echo "msg -bar3702"
msg -bar3702
			
echo "msg -bar3703"
msg -bar3703
			
echo "msg -bar3704"
msg -bar3704
			
echo "msg -bar3705"
msg -bar3705
			
echo "msg -bar3706"
msg -bar3706
			
echo "msg -bar3707"
msg -bar3707
			
echo "msg -bar3800"
msg -bar3800
			
echo "msg -bar3801"
msg -bar3801
			
echo "msg -bar3802"
msg -bar3802
			
echo "msg -bar3803"
msg -bar3803
			
echo "msg -bar3804"
msg -bar3804
			
echo "msg -bar3805"
msg -bar3805
			
echo "msg -bar3806"
msg -bar3806
			
echo "msg -bar3807"
msg -bar3807
			
echo "msg -bar3900"
msg -bar3900
			
echo "msg -bar3901"
msg -bar3901
			
echo "msg -bar3902"
msg -bar3902
			
echo "msg -bar3903"
msg -bar3903
			
echo "msg -bar3904"
msg -bar3904
			
echo "msg -bar3905"
msg -bar3905
			
echo "msg -bar3906"
msg -bar3906
			
echo "msg -bar3907"
msg -bar3907
			
echo "msg -bar4000"
msg -bar4000
			
echo "msg -bar4001"
msg -bar4001
			
echo "msg -bar4002"
msg -bar4002
			
echo "msg -bar4003"
msg -bar4003
			
echo "msg -bar4004"
msg -bar4004
			
echo "msg -bar4005"
msg -bar4005
			
echo "msg -bar4006"
msg -bar4006
			
echo "msg -bar4007"
msg -bar4007
			
echo "msg -bar4100"
msg -bar4100
			
echo "msg -bar4101"
msg -bar4101
			
echo "msg -bar4102"
msg -bar4102
			
echo "msg -bar4103"
msg -bar4103
			
echo "msg -bar4104"
msg -bar4104
			
echo "msg -bar4105"
msg -bar4105
			
echo "msg -bar4106"
msg -bar4106
			
echo "msg -bar4107"
msg -bar4107
			
echo "msg -bar4200"
msg -bar4200
			
echo "msg -bar4201"
msg -bar4201
			
echo "msg -bar4202"
msg -bar4202
			
echo "msg -bar4203"
msg -bar4203
			
echo "msg -bar4204"
msg -bar4204
			
echo "msg -bar4205"
msg -bar4205
			
echo "msg -bar4206"
msg -bar4206
			
echo "msg -bar4207"
msg -bar4207
			
echo "msg -bar4300"
msg -bar4300
			
echo "msg -bar4301"
msg -bar4301
			
echo "msg -bar4302"
msg -bar4302
			
echo "msg -bar4303"
msg -bar4303
			
echo "msg -bar4304"
msg -bar4304
			
echo "msg -bar4305"
msg -bar4305
			
echo "msg -bar4306"
msg -bar4306
			
echo "msg -bar4307"
msg -bar4307
			
echo "msg -bar4400"
msg -bar4400
			
echo "msg -bar4401"
msg -bar4401
			
echo "msg -bar4402"
msg -bar4402
			
echo "msg -bar4403"
msg -bar4403
			
echo "msg -bar4404"
msg -bar4404
			
echo "msg -bar4405"
msg -bar4405
			
echo "msg -bar4406"
msg -bar4406
			
echo "msg -bar4407"
msg -bar4407
			
echo "msg -bar4500"
msg -bar4500
			
echo "msg -bar4501"
msg -bar4501
			
echo "msg -bar4502"
msg -bar4502
			
echo "msg -bar4503"
msg -bar4503
			
echo "msg -bar4504"
msg -bar4504
			
echo "msg -bar4505"
msg -bar4505
			
echo "msg -bar4506"
msg -bar4506
			
echo "msg -bar4507"
msg -bar4507
			
echo "msg -bar4500"
msg -bar4500
			
echo "msg -bar4601"
msg -bar4601
			
echo "msg -bar4602"
msg -bar4602
			
echo "msg -bar4603"
msg -bar4603
			
echo "msg -bar4604"
msg -bar4604
			
echo "msg -bar4605"
msg -bar4605
			
echo "msg -bar4606"
msg -bar4606
			
echo "msg -bar4607"
msg -bar4607
			
echo "msg -bar4700"
msg -bar4700
			
echo "msg -bar4701"
msg -bar4701
			
echo "msg -bar4702"
msg -bar4702
			
echo "msg -bar4703"
msg -bar4703
			
echo "msg -bar4704"
msg -bar4704
			
echo "msg -bar4705"
msg -bar4705
			
echo "msg -bar4706"
msg -bar4706
			
echo "msg -bar4707"
msg -bar4707
			
echo "msg -bar4800"
msg -bar4800
			
echo "msg -bar4801"
msg -bar4801
			
echo "msg -bar4802"
msg -bar4802
			
echo "msg -bar4803"
msg -bar4803
			
echo "msg -bar4804"
msg -bar4804
			
echo "msg -bar4805"
msg -bar4805
			
echo "msg -bar4806"
msg -bar4806
			
echo "msg -bar4807"
msg -bar4807
			
echo "msg -bar4900"
msg -bar4900
			
echo "msg -bar4901"
msg -bar4901
			
echo "msg -bar4902"
msg -bar4902
			
echo "msg -bar4903"
msg -bar4903
			
echo "msg -bar4904"
msg -bar4904
			
echo "msg -bar4905"
msg -bar4905
			
echo "msg -bar4906"
msg -bar4906
			
echo "msg -bar4907"
msg -bar4907
			
echo "msg -bar5000"
msg -bar5000
			
echo "msg -bar5001"
msg -bar5001
			
echo "msg -bar5002"
msg -bar5002
			
echo "msg -bar5003"
msg -bar5003
			
echo "msg -bar5004"
msg -bar5004
			
echo "msg -bar5005"
msg -bar5005
			
echo "msg -bar5006"
msg -bar5006
			
echo "msg -bar5007"
msg -bar5007

#CREAR LISTA DE BARRAS
crear () {
echo -e 'echo "msg -bar0000"\nmsg -bar0000\n			
echo "msg -bar0001"\nmsg -bar0001\n			
echo "msg -bar0002"\nmsg -bar0002\n			
echo "msg -bar0003"\nmsg -bar0003\n			
echo "msg -bar0004"\nmsg -bar0004\n			
echo "msg -bar0005"\nmsg -bar0005\n			
echo "msg -bar0006"\nmsg -bar0006\n			
echo "msg -bar0007"\nmsg -bar0007\n			
echo "msg -bar0100"\nmsg -bar0100\n			
echo "msg -bar0101"\nmsg -bar0101\n			
echo "msg -bar0102"\nmsg -bar0102\n			
echo "msg -bar0103"\nmsg -bar0103\n			
echo "msg -bar0104"\nmsg -bar0104\n			
echo "msg -bar0105"\nmsg -bar0105\n			
echo "msg -bar0106"\nmsg -bar0106\n			
echo "msg -bar0107"\nmsg -bar0107\n			
echo "msg -bar0200"\nmsg -bar0200\n			
echo "msg -bar0201"\nmsg -bar0201\n			
echo "msg -bar0202"\nmsg -bar0202\n			
echo "msg -bar0203"\nmsg -bar0203\n			
echo "msg -bar0204"\nmsg -bar0204\n			
echo "msg -bar0205"\nmsg -bar0205\n			
echo "msg -bar0206"\nmsg -bar0206\n			
echo "msg -bar0207"\nmsg -bar0207\n			
echo "msg -bar0300"\nmsg -bar0300\n			
echo "msg -bar0301"\nmsg -bar0301\n			
echo "msg -bar0302"\nmsg -bar0302\n			
echo "msg -bar0303"\nmsg -bar0303\n			
echo "msg -bar0304"\nmsg -bar0304\n			
echo "msg -bar0305"\nmsg -bar0305\n			
echo "msg -bar0306"\nmsg -bar0306\n			
echo "msg -bar0307"\nmsg -bar0307\n			
echo "msg -bar0400"\nmsg -bar0400\n			
echo "msg -bar0401"\nmsg -bar0401\n			
echo "msg -bar0402"\nmsg -bar0402\n			
echo "msg -bar0403"\nmsg -bar0403\n			
echo "msg -bar0404"\nmsg -bar0404\n			
echo "msg -bar0405"\nmsg -bar0405\n			
echo "msg -bar0406"\nmsg -bar0406\n			
echo "msg -bar0407"\nmsg -bar0407\n			
echo "msg -bar0500"\nmsg -bar0500\n			
echo "msg -bar0501"\nmsg -bar0501\n			
echo "msg -bar0502"\nmsg -bar0502\n			
echo "msg -bar0503"\nmsg -bar0503\n			
echo "msg -bar0504"\nmsg -bar0504\n			
echo "msg -bar0505"\nmsg -bar0505\n			
echo "msg -bar0506"\nmsg -bar0506\n			
echo "msg -bar0507"\nmsg -bar0507\n			
echo "msg -bar0500"\nmsg -bar0500\n			
echo "msg -bar0601"\nmsg -bar0601\n			
echo "msg -bar0602"\nmsg -bar0602\n			
echo "msg -bar0603"\nmsg -bar0603\n			
echo "msg -bar0604"\nmsg -bar0604\n			
echo "msg -bar0605"\nmsg -bar0605\n			
echo "msg -bar0606"\nmsg -bar0606\n			
echo "msg -bar0607"\nmsg -bar0607\n			
echo "msg -bar0700"\nmsg -bar0700\n			
echo "msg -bar0701"\nmsg -bar0701\n			
echo "msg -bar0702"\nmsg -bar0702\n			
echo "msg -bar0703"\nmsg -bar0703\n			
echo "msg -bar0704"\nmsg -bar0704\n			
echo "msg -bar0705"\nmsg -bar0705\n			
echo "msg -bar0706"\nmsg -bar0706\n			
echo "msg -bar0707"\nmsg -bar0707\n			
echo "msg -bar0800"\nmsg -bar0800\n			
echo "msg -bar0801"\nmsg -bar0801\n			
echo "msg -bar0802"\nmsg -bar0802\n			
echo "msg -bar0803"\nmsg -bar0803\n			
echo "msg -bar0804"\nmsg -bar0804\n			
echo "msg -bar0805"\nmsg -bar0805\n			
echo "msg -bar0806"\nmsg -bar0806\n			
echo "msg -bar0807"\nmsg -bar0807\n			
echo "msg -bar0900"\nmsg -bar0900\n			
echo "msg -bar0901"\nmsg -bar0901\n			
echo "msg -bar0902"\nmsg -bar0902\n			
echo "msg -bar0903"\nmsg -bar0903\n			
echo "msg -bar0904"\nmsg -bar0904\n			
echo "msg -bar0905"\nmsg -bar0905\n			
echo "msg -bar0906"\nmsg -bar0906\n			
echo "msg -bar0907"\nmsg -bar0907\n			
echo "msg -bar1000"\nmsg -bar1000\n			
echo "msg -bar1001"\nmsg -bar1001\n			
echo "msg -bar1002"\nmsg -bar1002\n			
echo "msg -bar1003"\nmsg -bar1003\n			
echo "msg -bar1004"\nmsg -bar1004\n			
echo "msg -bar1005"\nmsg -bar1005\n			
echo "msg -bar1006"\nmsg -bar1006\n			
echo "msg -bar1007"\nmsg -bar1007\n			
echo "msg -bar1100"\nmsg -bar1100\n			
echo "msg -bar1101"\nmsg -bar1101\n			
echo "msg -bar1102"\nmsg -bar1102\n			
echo "msg -bar1103"\nmsg -bar1103\n			
echo "msg -bar1104"\nmsg -bar1104\n			
echo "msg -bar1105"\nmsg -bar1105\n			
echo "msg -bar1106"\nmsg -bar1106\n			
echo "msg -bar1107"\nmsg -bar1107\n			
echo "msg -bar1200"\nmsg -bar1200\n			
echo "msg -bar1201"\nmsg -bar1201\n			
echo "msg -bar1202"\nmsg -bar1202\n			
echo "msg -bar1203"\nmsg -bar1203\n			
echo "msg -bar1204"\nmsg -bar1204\n			
echo "msg -bar1205"\nmsg -bar1205\n			
echo "msg -bar1206"\nmsg -bar1206\n			
echo "msg -bar1207"\nmsg -bar1207\n			
echo "msg -bar1300"\nmsg -bar1300\n			
echo "msg -bar1301"\nmsg -bar1301\n			
echo "msg -bar1302"\nmsg -bar1302\n			
echo "msg -bar1303"\nmsg -bar1303\n			
echo "msg -bar1304"\nmsg -bar1304\n			
echo "msg -bar1305"\nmsg -bar1305\n			
echo "msg -bar1306"\nmsg -bar1306\n			
echo "msg -bar1307"\nmsg -bar1307\n			
echo "msg -bar1400"\nmsg -bar1400\n			
echo "msg -bar1401"\nmsg -bar1401\n			
echo "msg -bar1402"\nmsg -bar1402\n			
echo "msg -bar1403"\nmsg -bar1403\n			
echo "msg -bar1404"\nmsg -bar1404\n			
echo "msg -bar1405"\nmsg -bar1405\n			
echo "msg -bar1406"\nmsg -bar1406\n			
echo "msg -bar1407"\nmsg -bar1407\n			
echo "msg -bar1500"\nmsg -bar1500\n			
echo "msg -bar1501"\nmsg -bar1501\n			
echo "msg -bar1502"\nmsg -bar1502\n			
echo "msg -bar1503"\nmsg -bar1503\n			
echo "msg -bar1504"\nmsg -bar1504\n			
echo "msg -bar1505"\nmsg -bar1505\n			
echo "msg -bar1506"\nmsg -bar1506\n			
echo "msg -bar1507"\nmsg -bar1507\n			
echo "msg -bar1500"\nmsg -bar1500\n			
echo "msg -bar1601"\nmsg -bar1601\n			
echo "msg -bar1602"\nmsg -bar1602\n			
echo "msg -bar1603"\nmsg -bar1603\n			
echo "msg -bar1604"\nmsg -bar1604\n			
echo "msg -bar1605"\nmsg -bar1605\n			
echo "msg -bar1606"\nmsg -bar1606\n			
echo "msg -bar1607"\nmsg -bar1607\n			
echo "msg -bar1700"\nmsg -bar1700\n			
echo "msg -bar1701"\nmsg -bar1701\n			
echo "msg -bar1702"\nmsg -bar1702\n			
echo "msg -bar1703"\nmsg -bar1703\n			
echo "msg -bar1704"\nmsg -bar1704\n			
echo "msg -bar1705"\nmsg -bar1705\n			
echo "msg -bar1706"\nmsg -bar1706\n			
echo "msg -bar1707"\nmsg -bar1707\n			
echo "msg -bar1800"\nmsg -bar1800\n			
echo "msg -bar1801"\nmsg -bar1801\n			
echo "msg -bar1802"\nmsg -bar1802\n			
echo "msg -bar1803"\nmsg -bar1803\n			
echo "msg -bar1804"\nmsg -bar1804\n			
echo "msg -bar1805"\nmsg -bar1805\n			
echo "msg -bar1806"\nmsg -bar1806\n			
echo "msg -bar1807"\nmsg -bar1807\n			
echo "msg -bar1900"\nmsg -bar1900\n			
echo "msg -bar1901"\nmsg -bar1901\n			
echo "msg -bar1902"\nmsg -bar1902\n			
echo "msg -bar1903"\nmsg -bar1903\n			
echo "msg -bar1904"\nmsg -bar1904\n			
echo "msg -bar1905"\nmsg -bar1905\n			
echo "msg -bar1906"\nmsg -bar1906\n			
echo "msg -bar1907"\nmsg -bar1907\n			
echo "msg -bar2000"\nmsg -bar2000\n			
echo "msg -bar2001"\nmsg -bar2001\n			
echo "msg -bar2002"\nmsg -bar2002\n			
echo "msg -bar2003"\nmsg -bar2003\n			
echo "msg -bar2004"\nmsg -bar2004\n			
echo "msg -bar2005"\nmsg -bar2005\n			
echo "msg -bar2006"\nmsg -bar2006\n			
echo "msg -bar2007"\nmsg -bar2007\n			
echo "msg -bar2100"\nmsg -bar2100\n			
echo "msg -bar2101"\nmsg -bar2101\n			
echo "msg -bar2102"\nmsg -bar2102\n			
echo "msg -bar2103"\nmsg -bar2103\n			
echo "msg -bar2104"\nmsg -bar2104\n			
echo "msg -bar2105"\nmsg -bar2105\n			
echo "msg -bar2106"\nmsg -bar2106\n			
echo "msg -bar2107"\nmsg -bar2107\n			
echo "msg -bar2200"\nmsg -bar2200\n			
echo "msg -bar2201"\nmsg -bar2201\n			
echo "msg -bar2202"\nmsg -bar2202\n			
echo "msg -bar2203"\nmsg -bar2203\n			
echo "msg -bar2204"\nmsg -bar2204\n			
echo "msg -bar2205"\nmsg -bar2205\n			
echo "msg -bar2206"\nmsg -bar2206\n			
echo "msg -bar2207"\nmsg -bar2207\n			
echo "msg -bar2300"\nmsg -bar2300\n			
echo "msg -bar2301"\nmsg -bar2301\n			
echo "msg -bar2302"\nmsg -bar2302\n			
echo "msg -bar2303"\nmsg -bar2303\n			
echo "msg -bar2304"\nmsg -bar2304\n			
echo "msg -bar2305"\nmsg -bar2305\n			
echo "msg -bar2306"\nmsg -bar2306\n			
echo "msg -bar2307"\nmsg -bar2307\n			
echo "msg -bar2400"\nmsg -bar2400\n			
echo "msg -bar2401"\nmsg -bar2401\n			
echo "msg -bar2402"\nmsg -bar2402\n			
echo "msg -bar2403"\nmsg -bar2403\n			
echo "msg -bar2404"\nmsg -bar2404\n			
echo "msg -bar2405"\nmsg -bar2405\n			
echo "msg -bar2406"\nmsg -bar2406\n			
echo "msg -bar2407"\nmsg -bar2407\n			
echo "msg -bar2500"\nmsg -bar2500\n			
echo "msg -bar2501"\nmsg -bar2501\n			
echo "msg -bar2502"\nmsg -bar2502\n			
echo "msg -bar2503"\nmsg -bar2503\n			
echo "msg -bar2504"\nmsg -bar2504\n			
echo "msg -bar2505"\nmsg -bar2505\n			
echo "msg -bar2506"\nmsg -bar2506\n			
echo "msg -bar2507"\nmsg -bar2507\n			
echo "msg -bar2500"\nmsg -bar2500\n			
echo "msg -bar2601"\nmsg -bar2601\n			
echo "msg -bar2602"\nmsg -bar2602\n			
echo "msg -bar2603"\nmsg -bar2603\n			
echo "msg -bar2604"\nmsg -bar2604\n			
echo "msg -bar2605"\nmsg -bar2605\n			
echo "msg -bar2606"\nmsg -bar2606\n			
echo "msg -bar2607"\nmsg -bar2607\n			
echo "msg -bar2700"\nmsg -bar2700\n			
echo "msg -bar2701"\nmsg -bar2701\n			
echo "msg -bar2702"\nmsg -bar2702\n			
echo "msg -bar2703"\nmsg -bar2703\n			
echo "msg -bar2704"\nmsg -bar2704\n			
echo "msg -bar2705"\nmsg -bar2705\n			
echo "msg -bar2706"\nmsg -bar2706\n			
echo "msg -bar2707"\nmsg -bar2707\n			
echo "msg -bar2800"\nmsg -bar2800\n			
echo "msg -bar2801"\nmsg -bar2801\n			
echo "msg -bar2802"\nmsg -bar2802\n			
echo "msg -bar2803"\nmsg -bar2803\n			
echo "msg -bar2804"\nmsg -bar2804\n			
echo "msg -bar2805"\nmsg -bar2805\n			
echo "msg -bar2806"\nmsg -bar2806\n			
echo "msg -bar2807"\nmsg -bar2807\n			
echo "msg -bar2900"\nmsg -bar2900\n			
echo "msg -bar2901"\nmsg -bar2901\n			
echo "msg -bar2902"\nmsg -bar2902\n			
echo "msg -bar2903"\nmsg -bar2903\n			
echo "msg -bar2904"\nmsg -bar2904\n			
echo "msg -bar2905"\nmsg -bar2905\n			
echo "msg -bar2906"\nmsg -bar2906\n			
echo "msg -bar2907"\nmsg -bar2907\n			
echo "msg -bar3000"\nmsg -bar3000\n			
echo "msg -bar3001"\nmsg -bar3001\n			
echo "msg -bar3002"\nmsg -bar3002\n			
echo "msg -bar3003"\nmsg -bar3003\n			
echo "msg -bar3004"\nmsg -bar3004\n			
echo "msg -bar3005"\nmsg -bar3005\n			
echo "msg -bar3006"\nmsg -bar3006\n			
echo "msg -bar3007"\nmsg -bar3007\n			
echo "msg -bar3100"\nmsg -bar3100\n			
echo "msg -bar3101"\nmsg -bar3101\n			
echo "msg -bar3102"\nmsg -bar3102\n			
echo "msg -bar3103"\nmsg -bar3103\n			
echo "msg -bar3104"\nmsg -bar3104\n			
echo "msg -bar3105"\nmsg -bar3105\n			
echo "msg -bar3106"\nmsg -bar3106\n			
echo "msg -bar3107"\nmsg -bar3107\n			
echo "msg -bar3200"\nmsg -bar3200\n			
echo "msg -bar3201"\nmsg -bar3201\n			
echo "msg -bar3202"\nmsg -bar3202\n			
echo "msg -bar3203"\nmsg -bar3203\n			
echo "msg -bar3204"\nmsg -bar3204\n			
echo "msg -bar3205"\nmsg -bar3205\n			
echo "msg -bar3206"\nmsg -bar3206\n			
echo "msg -bar3207"\nmsg -bar3207\n			
echo "msg -bar3300"\nmsg -bar3300\n			
echo "msg -bar3301"\nmsg -bar3301\n			
echo "msg -bar3302"\nmsg -bar3302\n			
echo "msg -bar3303"\nmsg -bar3303\n			
echo "msg -bar3304"\nmsg -bar3304\n			
echo "msg -bar3305"\nmsg -bar3305\n			
echo "msg -bar3306"\nmsg -bar3306\n			
echo "msg -bar3307"\nmsg -bar3307\n			
echo "msg -bar3400"\nmsg -bar3400\n			
echo "msg -bar3401"\nmsg -bar3401\n			
echo "msg -bar3402"\nmsg -bar3402\n			
echo "msg -bar3403"\nmsg -bar3403\n			
echo "msg -bar3404"\nmsg -bar3404\n			
echo "msg -bar3405"\nmsg -bar3405\n			
echo "msg -bar3406"\nmsg -bar3406\n			
echo "msg -bar3407"\nmsg -bar3407\n			
echo "msg -bar3500"\nmsg -bar3500\n			
echo "msg -bar3501"\nmsg -bar3501\n			
echo "msg -bar3502"\nmsg -bar3502\n			
echo "msg -bar3503"\nmsg -bar3503\n			
echo "msg -bar3504"\nmsg -bar3504\n			
echo "msg -bar3505"\nmsg -bar3505\n			
echo "msg -bar3506"\nmsg -bar3506\n			
echo "msg -bar3507"\nmsg -bar3507\n			
echo "msg -bar3500"\nmsg -bar3500\n			
echo "msg -bar3601"\nmsg -bar3601\n			
echo "msg -bar3602"\nmsg -bar3602\n			
echo "msg -bar3603"\nmsg -bar3603\n			
echo "msg -bar3604"\nmsg -bar3604\n			
echo "msg -bar3605"\nmsg -bar3605\n			
echo "msg -bar3606"\nmsg -bar3606\n			
echo "msg -bar3607"\nmsg -bar3607\n			
echo "msg -bar3700"\nmsg -bar3700\n			
echo "msg -bar3701"\nmsg -bar3701\n			
echo "msg -bar3702"\nmsg -bar3702\n			
echo "msg -bar3703"\nmsg -bar3703\n			
echo "msg -bar3704"\nmsg -bar3704\n			
echo "msg -bar3705"\nmsg -bar3705\n			
echo "msg -bar3706"\nmsg -bar3706\n			
echo "msg -bar3707"\nmsg -bar3707\n			
echo "msg -bar3800"\nmsg -bar3800\n			
echo "msg -bar3801"\nmsg -bar3801\n			
echo "msg -bar3802"\nmsg -bar3802\n			
echo "msg -bar3803"\nmsg -bar3803\n			
echo "msg -bar3804"\nmsg -bar3804\n			
echo "msg -bar3805"\nmsg -bar3805\n			
echo "msg -bar3806"\nmsg -bar3806\n			
echo "msg -bar3807"\nmsg -bar3807\n			
echo "msg -bar3900"\nmsg -bar3900\n			
echo "msg -bar3901"\nmsg -bar3901\n			
echo "msg -bar3902"\nmsg -bar3902\n			
echo "msg -bar3903"\nmsg -bar3903\n			
echo "msg -bar3904"\nmsg -bar3904\n			
echo "msg -bar3905"\nmsg -bar3905\n			
echo "msg -bar3906"\nmsg -bar3906\n			
echo "msg -bar3907"\nmsg -bar3907\n			
echo "msg -bar4000"\nmsg -bar4000\n			
echo "msg -bar4001"\nmsg -bar4001\n			
echo "msg -bar4002"\nmsg -bar4002\n			
echo "msg -bar4003"\nmsg -bar4003\n			
echo "msg -bar4004"\nmsg -bar4004\n			
echo "msg -bar4005"\nmsg -bar4005\n			
echo "msg -bar4006"\nmsg -bar4006\n			
echo "msg -bar4007"\nmsg -bar4007\n			
echo "msg -bar4100"\nmsg -bar4100\n			
echo "msg -bar4101"\nmsg -bar4101\n			
echo "msg -bar4102"\nmsg -bar4102\n			
echo "msg -bar4103"\nmsg -bar4103\n			
echo "msg -bar4104"\nmsg -bar4104\n			
echo "msg -bar4105"\nmsg -bar4105\n			
echo "msg -bar4106"\nmsg -bar4106\n			
echo "msg -bar4107"\nmsg -bar4107\n			
echo "msg -bar4200"\nmsg -bar4200\n			
echo "msg -bar4201"\nmsg -bar4201\n			
echo "msg -bar4202"\nmsg -bar4202\n			
echo "msg -bar4203"\nmsg -bar4203\n			
echo "msg -bar4204"\nmsg -bar4204\n			
echo "msg -bar4205"\nmsg -bar4205\n			
echo "msg -bar4206"\nmsg -bar4206\n			
echo "msg -bar4207"\nmsg -bar4207\n			
echo "msg -bar4300"\nmsg -bar4300\n			
echo "msg -bar4301"\nmsg -bar4301\n			
echo "msg -bar4302"\nmsg -bar4302\n			
echo "msg -bar4303"\nmsg -bar4303\n			
echo "msg -bar4304"\nmsg -bar4304\n			
echo "msg -bar4305"\nmsg -bar4305\n			
echo "msg -bar4306"\nmsg -bar4306\n			
echo "msg -bar4307"\nmsg -bar4307\n			
echo "msg -bar4400"\nmsg -bar4400\n			
echo "msg -bar4401"\nmsg -bar4401\n			
echo "msg -bar4402"\nmsg -bar4402\n			
echo "msg -bar4403"\nmsg -bar4403\n			
echo "msg -bar4404"\nmsg -bar4404\n			
echo "msg -bar4405"\nmsg -bar4405\n			
echo "msg -bar4406"\nmsg -bar4406\n			
echo "msg -bar4407"\nmsg -bar4407\n			
echo "msg -bar4500"\nmsg -bar4500\n			
echo "msg -bar4501"\nmsg -bar4501\n			
echo "msg -bar4502"\nmsg -bar4502\n			
echo "msg -bar4503"\nmsg -bar4503\n			
echo "msg -bar4504"\nmsg -bar4504\n			
echo "msg -bar4505"\nmsg -bar4505\n			
echo "msg -bar4506"\nmsg -bar4506\n			
echo "msg -bar4507"\nmsg -bar4507\n			
echo "msg -bar4500"\nmsg -bar4500\n			
echo "msg -bar4601"\nmsg -bar4601\n			
echo "msg -bar4602"\nmsg -bar4602\n			
echo "msg -bar4603"\nmsg -bar4603\n			
echo "msg -bar4604"\nmsg -bar4604\n			
echo "msg -bar4605"\nmsg -bar4605\n			
echo "msg -bar4606"\nmsg -bar4606\n			
echo "msg -bar4607"\nmsg -bar4607\n			
echo "msg -bar4700"\nmsg -bar4700\n			
echo "msg -bar4701"\nmsg -bar4701\n			
echo "msg -bar4702"\nmsg -bar4702\n			
echo "msg -bar4703"\nmsg -bar4703\n			
echo "msg -bar4704"\nmsg -bar4704\n			
echo "msg -bar4705"\nmsg -bar4705\n			
echo "msg -bar4706"\nmsg -bar4706\n			
echo "msg -bar4707"\nmsg -bar4707\n			
echo "msg -bar4800"\nmsg -bar4800\n			
echo "msg -bar4801"\nmsg -bar4801\n			
echo "msg -bar4802"\nmsg -bar4802\n			
echo "msg -bar4803"\nmsg -bar4803\n			
echo "msg -bar4804"\nmsg -bar4804\n			
echo "msg -bar4805"\nmsg -bar4805\n			
echo "msg -bar4806"\nmsg -bar4806\n			
echo "msg -bar4807"\nmsg -bar4807\n			
echo "msg -bar4900"\nmsg -bar4900\n			
echo "msg -bar4901"\nmsg -bar4901\n			
echo "msg -bar4902"\nmsg -bar4902\n			
echo "msg -bar4903"\nmsg -bar4903\n			
echo "msg -bar4904"\nmsg -bar4904\n			
echo "msg -bar4905"\nmsg -bar4905\n			
echo "msg -bar4906"\nmsg -bar4906\n			
echo "msg -bar4907"\nmsg -bar4907\n			
echo "msg -bar5000"\nmsg -bar5000\n			
echo "msg -bar5001"\nmsg -bar5001\n			
echo "msg -bar5002"\nmsg -bar5002\n			
echo "msg -bar5003"\nmsg -bar5003\n			
echo "msg -bar5004"\nmsg -bar5004\n			
echo "msg -bar5005"\nmsg -bar5005\n			
echo "msg -bar5006"\nmsg -bar5006\n			
echo "msg -bar5007"\nmsg -bar5007\n' > lista.sh
}
#crear