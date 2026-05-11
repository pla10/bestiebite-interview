# Esercizio 1 — Bug avvelenato

**Tempo: ~20 minuti**

## Il problema

L'app mostra il nome dell'utente `Mario Rossi` correttamente, ma c'è qualcosa che non va.

Esegui `flutter run` e osserva i log della console.

## Cosa noterai

I log mostrano `FETCH user-123` ripetuto **migliaia di volte al secondo**, anche se l'utente non sta facendo nulla. In produzione questo manderebbe in DDoS il nostro backend.

## Il tuo compito

1. **Capisci perché** sta succedendo
2. **Aggiusta** in modo che la `fetchUser` venga chiamata **una sola volta** all'apertura della pagina
3. Spiega ad alta voce il tuo ragionamento mentre lavori

## Vincoli

- Non puoi modificare `user_api.dart` (immagina sia codice di una libreria esterna)
- La UI deve continuare a mostrare il nome utente dopo il caricamento, con uno spinner durante l'attesa

## Setup

```bash
flutter pub get
flutter run -d chrome   # o un simulatore di tua scelta
```

Puoi usare Claude Code liberamente.

---

Quando hai finito (o sei bloccato), avvisa l'intervistatore.
