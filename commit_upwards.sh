#!/bin/bash

# Funzione per committare ogni directory verso l'alto
function commit_upwards {
    local current_dir=$(pwd)
    echo "Attualmente in $(basename $current_dir)"

    # Controlla se è un repository git (directory .git o file .git)
    if [ ! -d .git ] && [ ! -f .git ]; then
        echo "Non è una directory git, uscita"
        return
    fi

    # Se è un repository git, effettua il commit
    if [ -d .git ] || [ -f .git ]; then
        echo "La directory attuale è un repository git"

        # Effettua il commit e il push
        git add .
        git commit -m "Aggiornamento del repository $(basename $current_dir)"
        git push
        echo "Commit del repository completato"
    fi

    # Spostati nella directory superiore
    cd ..
    # Chiama ricorsivamente la funzione
    commit_upwards
}

# Avvia la funzione
commit_upwards
