# BestieBite — Colloquio tecnico mobile

Benvenuto/a! Questo repo contiene gli esercizi pratici del colloquio tecnico.

## Setup iniziale (5 min, prima di iniziare i timer)

Requisiti:
- Flutter SDK 3.x installato e in PATH
- Un IDE a tua scelta (VS Code, Android Studio, IntelliJ)
- Un simulatore iOS o Android attivo, oppure Chrome per `flutter run -d chrome`

Clona e prepara:

```bash
git clone https://github.com/pla10/bestiebite-interview.git
cd bestiebite-interview
flutter pub get
```

Verifica che tutto funzioni:

```bash
flutter doctor
flutter analyze
```

## Come funziona

L'esercizio tecnico vive sul branch `exercise-1`. **Resta sul branch `main`** finché l'intervistatore non ti dice di passare:

```bash
git checkout exercise-1   # → Esercizio 1 (bug nelle recensioni)
```

Il branch contiene il proprio `README.md` con le istruzioni dettagliate.

## Note

- Pensa ad alta voce: il *come* arrivi alla soluzione conta quanto il risultato
- Chiedi chiarimenti quando serve
- Non c'è una rubrica nascosta: vogliamo capire come ragioni
