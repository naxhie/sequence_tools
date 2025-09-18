#!/bin/bash

# Este programa sirve para convertir secuencias

# El usuario pueda ingresar una secuencia de DNA
dna_seq=$1

# Convertir secuencias a mayusculas
dna_seq=$(echo "$dna_seq" | tr '[:lower:]'  '[:upper:]')

# DNA a RNA
rna_seq=$(echo "$dna_seq" | tr 'T' 'U')

# Complementaria
comp_seq=$(echo "$dna_seq" | tr 'ATCG' 'TAGC')

# Complementaria inversa
rev_comp=$(echo "$comp_seq" | rev)

echo "DNA:              $dna_seq"
echo "mRNA:             $rna_seq"
echo "Complementaria:   $comp_seq"
echo "Comp. inversa:    $rev_comp"
