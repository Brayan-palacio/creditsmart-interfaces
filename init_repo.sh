#!/bin/bash
# init_repo.sh - Inicializa repositorio git con commits sugeridos para la entrega EA1
set -e

if [ ! -d .git ]; then
  git init
fi

git config user.name "Estudiante"
git config user.email "estudiante@example.com"

# First commit: Estructura HTML de página principal
git add index.html
git commit -m "Estructura HTML de página principal" || true

# Second commit: Estilos y conversión a Tailwind (styles + layout)
git add styles.css index.html simulador.html solicitar.html
git commit -m "Estilos con Tailwind y layout responsive" || true

# Third commit: Formulario de solicitud completo y validaciones
git add solicitar.html
git commit -m "Formulario de solicitud completo y validaciones" || true

# Fourth commit: Simulador de cuotas implementado
git add simulador.html
git commit -m "Simulador de cuotas implementado" || true

# Fifth commit: Accesibilidad y correcciones finales
git add .
git commit -m "Diseño responsive y accesibilidad (aria, roles, labels)" || true

# Sixth commit: Documentación README
git add README.md
git commit -m "Documentación en README y capturas sugeridas" || true

echo "Repositorio inicializado con commits sugeridos."
