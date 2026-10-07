# Revelation++

![Minecraft](https://img.shields.io/badge/Minecraft-1.12.2-green)
![Forge](https://img.shields.io/badge/Modloader-Forge-orange)
![Version](https://img.shields.io/github/v/release/Milchmann77/RevelationPlusPlus?label=Version)

<!-- Hier 2–3 Sätze, worum es im Pack geht: Thema, Schwerpunkte, für wen es gedacht ist. -->

Ein Minecraft-1.12.2-Modpack mit über 370 Mods. Das Pack **aktualisiert sich bei jedem Start automatisch** – du installierst es einmal und musst dich danach um nichts mehr kümmern.

📖 **[Zum Wiki](https://github.com/Milchmann77/RevelationPlusPlus/wiki)** – Mods, Rezepte, Tipps und Hilfe

---

## Installation

Die Installation dauert etwa 15 Minuten. Du brauchst einen **Windows-PC** und ein **gekauftes Minecraft (Java Edition)**.

> [!IMPORTANT]
> Bitte halte die Reihenfolge ein und überspringe keinen Schritt.

### Schritt 1: Java 8 installieren

Minecraft 1.12.2 läuft **nur mit Java 8**. Neuere Java-Versionen funktionieren nicht.

1. Öffne **[adoptium.net/temurin/releases/?version=8](https://adoptium.net/temurin/releases/?version=8)**.
2. Wähle bei *Operating System* **Windows**, bei *Architecture* **x64** und bei *Package Type* **JRE**.
3. Lade die **.msi**-Datei herunter und öffne sie.
4. Klicke dich mit **Weiter** durch die Installation. Die Standardeinstellungen passen.

### Schritt 2: MultiMC installieren

MultiMC ist ein Launcher, mit dem du Modpacks verwalten kannst.

1. Lade MultiMC für Windows von **[multimc.org](https://multimc.org/#Download)** herunter.
2. Lege einen neuen Ordner an, zum Beispiel `C:\Games\MultiMC`.
3. Entpacke die heruntergeladene Zip-Datei **in diesen Ordner**.

> [!WARNING]
> Lege MultiMC **nicht** in `C:\Programme`, auf den Desktop oder in einen OneDrive-Ordner. Dort fehlen oft Schreibrechte, und es kommt zu seltsamen Fehlern.

4. Starte `MultiMC.exe`.
5. Beim ersten Start fragt MultiMC nach Sprache und Java:
   - Sprache: **Deutsch**
   - Java: Klicke auf **Automatisch erkennen** und wähle den Eintrag mit **1.8** in der Versionsnummer (z. B. `1.8.0_432`).
   - Arbeitsspeicher: Lass die Werte erst einmal so, wir stellen das in Schritt 5 ein.
6. Klicke auf **Fertig**.

### Schritt 3: Microsoft-Konto hinzufügen

1. Klicke in MultiMC oben rechts auf **Profile** → **Konten verwalten**.
2. Klicke auf **Microsoft hinzufügen** und melde dich mit dem Konto an, mit dem du Minecraft gekauft hast.
3. Schließe das Fenster.

### Schritt 4: Revelation++ hinzufügen

1. Öffne die **[neueste Version auf der Release-Seite](https://github.com/Milchmann77/RevelationPlusPlus/releases/latest)**.
2. Lade unter **Assets** die Datei `Revelation++.zip` herunter.

> [!CAUTION]
> Die Zip-Datei **nicht entpacken!** MultiMC braucht sie genau so, wie sie ist.

3. Ziehe die Zip-Datei mit der Maus in das MultiMC-Fenster.
   *Alternativ:* Klicke auf **Instanz hinzufügen** → **Aus Zip importieren** → wähle die Datei aus.
4. Klicke auf **OK**. Revelation++ erscheint jetzt in der Liste.

### Schritt 5: Arbeitsspeicher einstellen

Ohne diesen Schritt stürzt das Spiel beim Laden ab.

1. Rechtsklick auf **Revelation++** → **Bearbeiten**.
2. Links auf **Einstellungen** → Reiter **Java**.
3. Haken bei **Arbeitsspeicher** setzen.
4. **Maximale Speicherzuteilung** auf `6144` MB stellen. Hat dein PC 16 GB RAM oder mehr, kannst du `8192` MB nehmen.
5. Fenster schließen.

### Schritt 6: Spielen

1. Doppelklick auf **Revelation++**.
2. Ein kleines Fenster lädt jetzt alle Mods herunter. **Beim ersten Start dauert das mehrere Minuten** – bitte nicht abbrechen.
3. Erscheint ein Fenster mit einer Liste von Mods zum **manuellen Herunterladen**: Diese Mods dürfen nicht automatisch geladen werden. Klicke nacheinander auf die Links, lade die Dateien herunter und folge den Anweisungen im Fenster. Das ist nur einmal nötig.
4. Danach startet Minecraft. Auch der erste Spielstart dauert bei so vielen Mods ein paar Minuten.

🎉 **Fertig!** Ab jetzt startest du das Pack einfach per Doppelklick. Updates werden automatisch geladen.

---

## Updates

Du musst **nichts** tun. Bei jedem Start prüft das Pack, ob es Neuerungen gibt, und lädt nur die geänderten Dateien herunter.

> [!TIP]
> Mache vor größeren Updates trotzdem eine Sicherung deiner Welt: Rechtsklick auf **Revelation++** → **Ordner** → Ordner `saves` kopieren.

## Häufige Probleme

| Problem | Lösung |
| --- | --- |
| Fehlermeldung zur Java-Version | In Schritt 2 wurde nicht Java 8 gewählt. Rechtsklick → **Bearbeiten** → **Einstellungen** → **Java** → Java 8 (Version 1.8) auswählen. |
| Spiel stürzt beim Laden ab | Zu wenig Arbeitsspeicher. Schritt 5 wiederholen. |
| „Keine gültige Instanz" beim Import | Die Zip wurde entpackt. Neu herunterladen und ungeöffnet in MultiMC ziehen. |
| Update-Fenster zeigt einen Fehler | Internetverbindung prüfen und neu starten. Bleibt der Fehler, ein paar Minuten warten – nach Updates braucht GitHub manchmal kurz. |
| Virenscanner meldet sich | MultiMC und Java im Virenscanner als Ausnahme eintragen. |
| Alles andere | Im **[Wiki](https://github.com/Milchmann77/RevelationPlusPlus/wiki)** nachsehen oder ein **[Issue erstellen](https://github.com/Milchmann77/RevelationPlusPlus/issues)** – bitte mit Screenshot und der Datei `latest.log` aus dem Ordner `logs`. |

---

## Für Entwickler

Das Pack wird mit **[packwiz](https://packwiz.infra.link/)** verwaltet.

```
pack/        packwiz-Pack (entspricht dem .minecraft-Ordner)
instance/    MultiMC-Instanzvorlage für das Release
tools/       Hilfsskripte
```

Änderungen am Pack:

```
cd pack
..\packwiz.exe cf add <mod>     Mod von CurseForge hinzufügen
..\packwiz.exe remove <mod>     Mod entfernen
..\packwiz.exe refresh          Nach JEDER Dateiänderung ausführen
```

Danach committen und pushen. Ein neues Release ist nur nötig, wenn sich `instance/` ändert.

## Credits

Alle Mods gehören ihren jeweiligen Autoren. Die meisten werden direkt von CurseForge geladen.

*ToughAsNails* und *Tough Expansion* sind für dieses Pack angepasste Versionen und werden hier selbst bereitgestellt. Fehler darin bitte **hier** melden und nicht bei den Originalautoren.
