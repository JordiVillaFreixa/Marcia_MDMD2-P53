#!/bin/bash

input="lig_w.pdb"
output="ligando.fep"

> "$output"  # Limpiar archivo de salida si existe

awk '
($1 == "ATOM" || $1 == "HETATM") && $4 == "LIG" {
    atom_number = $2
    print atom_number, atom_number
}' "$input" > "$output"

echo "Archivo $output generado con éxito."

