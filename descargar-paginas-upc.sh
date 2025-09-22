#!/bin/bash

BASE_URL="https://www.upc.edu.ar/wp-json/wp/v2/media"
# Bucle de páginas
for i in {1..50}
do

  # Construir URL completa con parámetro de página
  URL="${BASE_URL}?page=${i}&per_page=100"

  # Descargar con wget, guardando con nombre único
  wget -O "pagina${i}.json" "$URL"

  echo "Página $i descargada."
done
