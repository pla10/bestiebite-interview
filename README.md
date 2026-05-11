# Esercizio 1 — Bug nelle recensioni

**Tempo: ~20 minuti**

## Setup

```bash
flutter pub get
flutter run -d chrome   # o un simulatore di tua scelta
```

## Il sintomo

L'app mostra una pagina **Recensioni** con due elementi iniziali (Mario, Giulia).

Premi il pulsante **+**:
- Il **primo tap** aggiunge correttamente una nuova recensione (vedi il 3° elemento apparire)
- Tap **successivi** mostrano sempre lo snackbar "Recensione aggiunta!" ma la lista **resta ferma al 3° elemento**

In produzione questo confonde gli utenti: pensano che le loro recensioni successive non siano state inviate, riprovano più volte, e generano duplicati silenti lato server.

## Il tuo compito

1. **Riproduci** il bug (clicca + più volte, osserva)
2. **Identifica** la causa
3. **Aggiusta**
4. **Verifica** con `flutter run` che la lista si aggiorni immediatamente al tap

Puoi usare Claude Code liberamente.

## Vincoli

- Non puoi modificare `lib/pages/reviews_page.dart` (immagina sia codice templated della UI)
- L'architettura deve restare **BLoC pattern**
- Devi mantenere `Equatable` sullo `ReviewsState` (convenzione del codebase)

## Architettura del file

```
lib/
├── main.dart                  # entry point, BlocProvider
├── bloc/
│   └── reviews_bloc.dart      # ReviewsBloc + Event + State
├── models/
│   └── review.dart            # Review (Equatable)
└── pages/
    └── reviews_page.dart      # BlocBuilder + FAB (NON TOCCARE)
```

---

Quando la fix è in piedi e verificata, avvisa l'intervistatore.
