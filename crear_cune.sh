#!/bin/bash

generate_cune(){
    NumNE=${1}
    FecNE=${2}
    HorNE=${3}
    ValDev=${4}
    ValDed=${5}
    ValTolNE=${6}
    NitNE=${7}
    DocEMP=${8}
    TipoXML=${9}
    SoftwarePin=${10}
    TipAmb=${11}
    echo "${NumNE}${FecNE}${HorNE}${ValDev}${ValDed}${ValTolNE}${NitNE}${DocEMP}${TipoXML}${SoftwarePin}${TipAmb}"
    cune=$(echo -n "${NumNE}${FecNE}${HorNE}${ValDev}${ValDed}${ValTolNE}${NitNE}${DocEMP}${TipoXML}${SoftwarePin}${TipAmb}" | sha384sum | head -c 96 )
    echo ""
    echo ${cune}

}

#build_query(){
#    IFS=" "
#    printf "update vp_fact set fact_cadv_cufe='%s', fact_clave_tecnica='%s' where fact_cadv_clase='%s' and fact_compania='08';" $1  $2 $3
#    IFS=,
#}

IFS=,
while read line; do

    field=(  $line )
    #generate_cufe "${field[0]}" "${field[1]}" "${field[2]}" "${field[3]}" "${field[4]}" "${field[5]}" "${field[6]}" "${field[7]}" "${field[8]}" "${field[9]}" "${field[10]}" "${field[11]}" "${field[12]}"
    echo "NumNE:${field[0]} FecNE:${field[1]} HorNE:${field[2]} ValDev:${field[3]} ValDed:${field[4]} ValTolNE:${field[5]} NitNE:${field[6]} DocEMP:${field[7]} TipoXML:${field[8]} SoftwarePin:${field[9]} TipAmb:${field[10]}"
    cune=$(generate_cune "${field[0]}" "${field[1]}" "${field[2]}" "${field[3]}" "${field[4]}" "${field[5]}" "${field[6]}" "${field[7]}" "${field[8]}" "${field[9]}" "${field[10]}")
    echo $cune
    #build_query $cufe ${field[10]} ${field[0]}
done < generar_cune.csv



