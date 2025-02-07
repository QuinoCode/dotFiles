#!/bin/bash

DIR=${1:-"."}  # Usa el directorio actual si no se especifica uno

# Función para recorrer el directorio
recorrer() {
    local dir="$1"
    local indent="$2"

    for archivo in "$dir"/*; do
        if [ -d "$archivo" ]; then
            echo -e "${indent}📂 $(basename "$archivo")/"
            recorrer "$archivo" "$indent    "
        elif [ -f "$archivo" ]; then
            echo -e "${indent}📄 $(basename "$archivo")"
            # Verificar si el archivo es de texto
        fi
    done
}

echo "Estructura del directorio: $DIR"
recorrer "$DIR" ""
