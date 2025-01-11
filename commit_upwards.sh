#!/bin/bash

# Funzione per generare un messaggio di commit
function generate_commit_message {
    # Estrai il diff delle modifiche
    diff=$(git diff --cached)

    # Se non ci sono modifiche, restituisci un messaggio predefinito
    if [ -z "$diff" ]; then
        echo "Aggiornamenti generici al codice"
        return
    fi

    # Genera un messaggio concatenando tutte le righe significative
    message=$(echo "$diff" | grep -E '^\+' | grep -v '^\+\+\+' | sed 's/^+//' | awk '{print "Modifica:", $0}' | tr '\n' ' ')

    # Se il messaggio è vuoto, fornisci un messaggio predefinito
    if [ -z "$message" ]; then
        message="Aggiornamenti generici al codice"
    fi

    # Restituisci il messaggio generato
    echo "$message"
}

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

        # Genera un messaggio di commit
        commit_message=$(generate_commit_message)

        # Se il messaggio è vuoto, salta il commit
        if [ -z "$commit_message" ]; then
            echo "Nessuna modifica da committare in $(basename $current_dir)"
        else
            git commit -m "$commit_message"
            git push
            echo "Commit del repository completato in $(basename $current_dir)"
        fi
    fi

    # Spostati nella directory superiore
    cd ..
    # Chiama ricorsivamente la funzione
    commit_upwards
}

# Avvia la funzione
commit_upwards
