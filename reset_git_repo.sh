#!/bin/bash

# Funzione per resettare una repository e i suoi submodules
reset_git_repo() {
    local repo_path="$1"
    echo "🛠️  Pulizia repository: $repo_path"

    # Spostati nella repo
    cd "$repo_path" || { echo "❌ Errore: impossibile accedere a $repo_path"; return; }

    # Controlla se è una repository Git
    if [ ! -d ".git" ]; then
        echo "⚠️  $repo_path non è una repository Git, saltata."
        return
    fi

    # Reset della repository principale
    echo "📌 Eliminando la cronologia della repository principale..."
    git checkout --orphan nuova-repo
    git add --all
    git commit -m "Reset della repository, mantenendo solo l'ultimo stato"

    # Eliminazione del branch originale
    branch_originale=$(git branch --show-current)
    if [ "$branch_originale" != "nuova-repo" ]; then
        git branch -D "$branch_originale"
    fi

    # Rinomina il nuovo branch in "main"
    git branch -m main

    # Forza il push per sovrascrivere la repo remota
    git push -f origin main

    # Rimuove i vecchi dati locali
    echo "🧹 Pulizia cache locale..."
    git reflog expire --all --expire-unreachable=now
    git gc --prune=now --aggressive

    # Gestione dei submodules
    if [ -f ".gitmodules" ]; then
        echo "🔍 Trovati submodules, resettando..."
        git submodule foreach --recursive "$(realpath "$0") \"$PWD/\$path\""
    fi

    echo "✅ Repository $repo_path pulita con successo!"
}

# Esegue la funzione sulla cartella corrente
reset_git_repo "$(pwd)"
