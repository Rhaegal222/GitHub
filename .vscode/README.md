# 📦 Configurazione VS Code – `.vscode`

Questa repository contiene una configurazione personalizzata per **Visual Studio Code** (VS Code), ottimizzata per diversi linguaggi di programmazione come **C++, JavaScript, PHP, TypeScript e Markdown**.

## 🚀 **Come Utilizzare Questa Configurazione**

Per applicare questa configurazione, segui i passaggi seguenti.

## 🔄 **Passaggi Comuni (Windows e Linux)**

1. **Apri un terminale** (Command Prompt, PowerShell o Terminale Linux).
2. **Spostati nella cartella di lavoro** o nella tua area di sviluppo con il comando:

   ```bash
   cd /percorso/della/tua/cartella
   ```

  *Esempio:*  
     - Windows: `cd C:\Users\TuoNome\Progetti`  
     - Linux: `cd ~/Progetti`

3. **Clona la repository nella tua cartella di lavoro** con:

   ```bash
   git clone https://github.com/tuo-username/.vscode.git
   ```

4. Ora nella tua cartella di lavoro sarà presente la directory `.vscode` contenente il file `settings.json`.

## 🖥️ **Istruzioni per Windows**

1. **Apri Visual Studio Code**.
2. Vai su **File** → **Preferenze** → **Impostazioni** oppure usa la scorciatoia `Ctrl + ,`.
3. Clicca sull'icona `{}` per aprire il file **`settings.json`**.
4. **Sostituisci il contenuto** del file con quello presente nella cartella `.vscode/settings.json` appena clonata.
5. **Salva (`Ctrl + S`) e riavvia VS Code** per applicare le modifiche.

## 🐧 **Istruzioni per Linux**

1. **Apri Visual Studio Code**.
2. Vai su **File** → **Preferenze** → **Impostazioni** oppure usa `Ctrl + ,`.
3. Clicca sull'icona `{}` per aprire il file **`settings.json`**.
4. **Sostituisci il contenuto** con il file `settings.json` della cartella `.vscode/`.
5. **Salva (`Ctrl + S`) e riavvia VS Code**.

## 🔧 **Verifica della Configurazione**

Per controllare che la configurazione sia stata applicata correttamente:

1. **Apri il terminale integrato** in VS Code (`Ctrl + \``).
2. Digita:

   ```bash
   code --list-extensions
   ```

3. **Verifica che le estensioni consigliate siano installate**.

## 🔄 **Personalizzazione**

Se vuoi modificare le impostazioni:

- Apri il file `.vscode/settings.json` e personalizza i parametri secondo le tue preferenze.

## 📜 **Licenza**

Questa configurazione è rilasciata sotto licenza **MIT**, puoi modificarla e condividerla liberamente.
