Hier findest du Lösungen für die häufigsten Probleme beim Installieren und Spielen von Revelation++ – und erfährst, wie du einen Fehler meldest, wenn nichts davon hilft.

## Beim Installieren und Starten

| Problem | Lösung |
| --- | --- |
| Fehlermeldung zur Java-Version | Revelation++ läuft nur mit **Java 8**. Rechtsklick auf die Instanz → **Bearbeiten** → **Einstellungen** → **Java** → Java 8 auswählen (Version beginnt mit `1.8`). |
| „Keine gültige Instanz“ beim Import | Die Zip-Datei wurde entpackt. Lade sie neu herunter und zieh sie **ungeöffnet** in MultiMC. |
| Spiel stürzt beim Laden ab | Zu wenig Arbeitsspeicher. Stell in den Java-Einstellungen der Instanz **6144 MB** ein, bei 16 GB RAM oder mehr gern **8192 MB**. |
| Das Update-Fenster zeigt einen Fehler | Prüf deine Internetverbindung und starte neu. Bleibt der Fehler, warte ein paar Minuten – direkt nach einem Update braucht GitHub manchmal kurz. |
| Ein Fenster will Mods zum manuellen Herunterladen | Manche Mods dürfen nicht automatisch geladen werden. Klick die Links nacheinander an und folge den Anweisungen im Fenster – das ist nur einmal nötig. |
| Der erste Start dauert ewig | Das ist normal: Beim ersten Start lädt das Pack alle Mods herunter, und auch der erste Spielstart dauert bei über 370 Mods ein paar Minuten. |
| Der Virenscanner meldet sich | Trag MultiMC und Java im Virenscanner als Ausnahme ein. |

Die vollständige Installationsanleitung steht unter [Schnellstart](Schnellstart).

## Bekannte Fehler im Spiel

### Absturz mit „Creative Harvest“

Ein Rechtsklick auf den Block **Creative Harvest** aus *Extra Utilities 2* bringt das Spiel zum Absturz – und danach lässt sich die Welt nicht mehr laden. Der Fehler steckt in Extra Utilities 2 selbst und wird für Minecraft 1.12.2 nicht mehr behoben.

Im Überlebensmodus kann dir das nicht passieren, denn Creative Harvest lässt sich nicht herstellen. Im Kreativmodus: **Stell den Block gar nicht erst auf.** Ist es schon passiert, lässt sich der Block nur mit einem Welt-Editor wie MCEdit wieder entfernen.

### Spiel friert bei Tab-Ergänzung ein

Drückst du beim Befehl `/scoreboard objectives add <Name>` die Tab-Taste, um ihn ergänzen zu lassen, **friert das Spiel ein**. Minecraft stellt dafür eine Liste aller Statistiken zu jedem Item, Block und Wesen aller Mods zusammen – und das sind in Revelation++ unvorstellbar viele.

- **Vorbeugen:** Tipp diesen Befehl vollständig aus, ohne Tab.
- **Wenn es passiert ist:** Je nach Rechner läuft das Spiel nach einer Weile weiter oder bricht mit „Out of Memory“ ab. Wartest du nicht, kannst du es im **Konsolenfenster** von MultiMC über **Beenden** (unten rechts) schließen.

> ⚠️ **Achtung:** Ein erzwungenes Beenden kann deine Welt beschädigen. Mach vorher, wenn möglich, eine Sicherung.

## Einen Fehler melden

Ist dein Problem hier nicht dabei, melde es im **[Issue-Tracker auf GitHub](https://github.com/Milchmann77/RevelationPlusPlus/issues)**. Damit wir den Fehler finden, häng bitte an:

1. **Was du gemacht hast** – Schritt für Schritt, bis der Fehler auftrat.
2. **Einen Screenshot**, wenn man etwas sehen kann.
3. **Die Datei `latest.log`**: Rechtsklick auf die Instanz in MultiMC → **Ordner** → Ordner `logs`.
4. **Nach einem Absturz** zusätzlich den neuesten **Absturzbericht** aus dem Ordner `crash-reports`.

> 💡 **Tipp:** Die Log-Datei ist oft zu groß zum Einfügen. Zieh sie einfach als Datei in das Textfeld des Issues.

## Hilfe und Kontakt

| Weg | Wofür |
| --- | --- |
| [Issue-Tracker](https://github.com/Milchmann77/RevelationPlusPlus/issues) | Fehler melden – am schnellsten und nachvollziehbar für alle |
| [Discord](https://discord.gg/TKMEW2QXtP) | Fragen, Hilfe von anderen Spielern, Austausch |
| [Dieses Wiki](Home) | Erklärungen zu Mods und Mechaniken des Packs |

## Siehe auch

- [Schnellstart](Schnellstart) – Revelation++ installieren und die ersten Schritte
- [Startseite](Home)

---

<sub>Stand: Revelation++ 26w42.</sub>
