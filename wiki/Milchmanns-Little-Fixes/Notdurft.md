In Revelation++ musst du aufs Klo: Was du isst, landet nach und nach im **Darm**, was du trinkst, in der **Blase**. Werden die beiden voll, suchst du dir eine Toilette – sonst geht es in die Hose. Das System stammt aus [Milchmanns Little Fixes](Milchmanns-Little-Fixes).

| Eigenschaft | Wert |
| --- | --- |
| Mod | [Milchmanns Little Fixes](Milchmanns-Little-Fixes) |
| Gilt für | alle Spieler im Überlebens- und Abenteuermodus (nicht im Kreativ- und Zuschauermodus) |
| Fassungsvermögen | Blase 1000 mB, Darm 1000 mB |
| Befehl | `/harndrang` (auch `/notdurft` oder `/needs`) |

## So funktioniert es

Essen und Trinken kommen nicht sofort an. Alles, was du zu dir nimmst, wandert erst in einen **Vorrat** und sickert von dort langsam in Blase und Darm: jede Minute 1 mB plus 10 % von dem, was noch unterwegs ist. Eine große Mahlzeit kommt also zuerst schnell und dann immer langsamer an.

> 💡 **Beispiel:** Du trinkst etwas mit 500 mB. Nach rund 7 Minuten ist die Hälfte in der Blase angekommen, nach etwa 40 Minuten alles.

So viel bringt was:

| Was du isst oder trinkst | Menge |
| --- | --- |
| Essen aller Art | 60 mB pro Hungerpunkt in den Darm – Brot (5 Punkte) bringt 300 mB, ein Steak (8 Punkte) 480 mB |
| Volle Konservendose (IndustrialCraft 2) | 60 mB in den Darm |
| Milcheimer | 300 mB in die Blase |
| Wasserflasche | 250 mB in die Blase |
| Gefilterte Wasserflasche (Tough As Nails) | 500 mB in die Blase |
| Fruchtsäfte aus Tough As Nails | 250 mB in die Blase |
| Getränke aus anderen Mods, z. B. Säfte und Tees aus Pam's HarvestCraft | 50 mB pro Durstpunkt, den das Getränk bei [Tough As Nails](Durst) auffüllt |

Säfte, Smoothies und Tees aus Pam's HarvestCraft sind Getränk und Essen zugleich – sie füllen Blase **und** Darm.

Auch was dich ohne Essen von Hand satt macht oder deinen Durst stillt, zählt mit – etwa der QuantumSuit-Helm aus IndustrialCraft 2, der Konserven aus dem Inventar isst, oder der Thirst Quencher aus Tough Expansion: Jeder Hungerpunkt bringt dann 60 mB in den Darm, jeder Durstpunkt 50 mB in die Blase.

> ℹ️ **Gut zu wissen:** Halte ein Item in der Hand und gib `/harndrang drink` ein – der Chat sagt dir, wie viel es in Blase und Darm bringt.

## Die Anzeige

Über der Schnellleiste erscheinen zwei Balken, sobald du etwas Essbares oder Trinkbares in der Hand hältst, auf eine Toilette, ein Urinal, eine Pfütze oder einen Kothaufen schaust oder gerade auf dem Klo bist:

- **Blase** (gelb) und **Darm** (braun) mit dem Füllstand in Prozent.
- Dahinter in Klammern, was noch unterwegs ist, z. B. `(+12%)`. Ist die Zahl **rot**, passt das nicht mehr hinein – dann wird es eng.
- Wenn du schleichst, zeigt die Anzeige Promille (‰) statt Prozent – für den genauen Blick.

Dazu kommen Warnungen:

| Meldung | Bedeutung |
| --- | --- |
| *Du solltest langsam mal eine Toilette suchen.* | Blase zu 75 % voll (einmal im Chat) |
| *Es wird dringend!* | Blase ab 90 % (alle 3 Sekunden über der Schnellleiste) |
| *Du solltest bald mal ein stilles Örtchen aufsuchen.* | Darm zu 75 % voll (einmal im Chat) |
| *Es drückt!* | Darm ab 90 % (alle 3 Sekunden über der Schnellleiste) |

## Toiletten, Urinale und Waschbecken

Die passenden Möbel stammen aus **DecoCraft**. Du findest sie im Kreativ-Reiter *Props [Badezimmer]* und stellst sie an der *DecoBank* her.

| Block | Blase | Darm | Benutzung |
| --- | :---: | :---: | --- |
| Toilette | ✔ | ✔ | Du setzt dich hin. |
| Modern Toilet | ✔ | ✔ | Du setzt dich hin. |
| Urinal | ✔ | – | Du bleibst davor stehen, höchstens 1,5 Blöcke entfernt. |
| Waschbecken | ✔ | – | Wie ein Urinal, nur ohne Spülung. |

### Ohne Tank geht nichts

Unter jeder Toilette, jedem Urinal und jedem Waschbecken muss **ein oder zwei Blöcke tiefer ein Tank** stehen – also ein Block, der Flüssigkeiten speichert, etwa ein Tank aus Thermal Expansion, Ender IO oder OpenBlocks. Fehlt er, meldet der Chat *„Das Klo ist verstopft - darunter fehlt ein Tank.“*

Alles, was du loswirst, landet als **Sewage** (Abwasser aus Industrial Foregoing) im Tank, Milliliter für Milliliter. Ist der Tank voll, bricht der Gang ab: *„Der Tank unter der Toilette nimmt nichts mehr auf.“* Leer ihn also regelmäßig – oder mach etwas daraus: Der *Sewage Composter* aus Industrial Foregoing macht aus Sewage Dünger.

> 💡 **Tipp:** Bau die Toilette direkt über einem Tank im Keller. Ob alles passt, prüfst du mit `/harndrang block`, während du auf die Toilette schaust.

### Benutzung

1. **Rechtsklick auf die Toilette.** Du setzt dich hin, und es geht los: erst die Blase, dann der Darm, jeweils 20 mB pro Sekunde. Eine volle Blase ist nach 50 Sekunden leer, ein voller Darm nach weiteren 50.
2. **Sitzen bleiben lohnt sich:** Sind Blase und Darm leer, wird auch das abgeführt, was noch unterwegs ist. Solange du sitzt, ruht die Verdauung – du kannst also ruhig ein Weilchen AFK gehen.
3. **Aufstehen:** Steig ab wie von einem Reittier. Sind Blase und Darm leer, wird gespült und der Chat meldet *„Erledigt.“* Stehst du vorher auf, heißt es *„Abgebrochen.“*

Am **Urinal** stellst du dich davor und klickst es an. Ist die Blase leer, wird gespült. Gehst du weiter als 1,5 Blöcke weg, bricht der Gang ab.

Weitere Meldungen:

| Meldung | Bedeutung |
| --- | --- |
| *Kein Bedarf.* | Blase und Darm sind leer, und es ist auch nichts unterwegs. |
| *Hier geht nur das Kleine.* | Am Urinal oder Waschbecken, wenn nur der Darm etwas loswerden will. |
| *Besetzt - Name ist gerade dran.* | Jemand anderes sitzt schon drauf. |

## Wenn es zu spät ist

Erreicht die Blase oder der Darm 100 %, passiert ein Missgeschick:

- **Blase:** Zu deinen Füßen entsteht eine **Pfütze**, und die Blase ist wieder leer. *„Zu spät. Ohne Papier bekommst du das nicht weg.“* Stehst du zum Beispiel im Wasser, bleibt dir die Pfütze erspart.
- **Darm:** Dort, wo du stehst, landet ein **Kothaufen** – mit passendem Geräusch. *„Zu spät. Das liegt jetzt hinter dir.“*

Wer hinsieht, erkennt, von wem das stammt: Über der Schnellleiste steht *„Pfütze von Name“* oder *„Häufchen von Name“*.

### Pfützen aufwischen

Eine Pfütze lässt sich nicht abbauen. Du wischst sie mit einem Rechtsklick mit **Papier** auf und bekommst dafür *Pissegetränktes Papier* zurück. Außerdem verschwindet sie, wenn Wasser darüber fließt, wenn du an ihrer Stelle einen Block setzt oder wenn der Block darunter abgebaut wird.

### Kothaufen aufheben

Ein Rechtsklick auf den Haufen steckt ihn als Item ein. Schlägst du ihn, fällt er als Item auf den Boden.

## Der Kothaufen als Item

Der Kothaufen hat sogar seinen Nutzen:

| Verwendung | Wirkung |
| --- | --- |
| Rechtsklick auf Pflanzen | Wirkt wie Knochenmehl. |
| Rechtsklick auf ein Schaf | Färbt das Schaf braun. |
| Abfüllmaschine (IndustrialCraft 2) | Mit einer leeren Konservendose wird daraus eine volle. |
| Handel | Der Nichtsnutz (Dorfbewohner im grünen Kittel) verkauft dir Kothaufen gegen Erde. |
| Essen | Geht immer, auch satt – keine gute Idee, siehe unten. |

> ⚠️ **Achtung:** Wer einen Kothaufen isst, bekommt einen halben Hungerpunkt – und dazu *Hunger III* (60 Sekunden), *Übelkeit II* (30 Sekunden), *Vergiftung* (15 Sekunden) und *Schwäche II* (30 Sekunden).

Im Ore Dictionary ist der Kothaufen als `itemScrap` eingetragen. Den Schrottkasten aus IndustrialCraft 2 kannst du damit allerdings nicht herstellen – dafür braucht es echten Schrott.

## Der Befehl /harndrang

| Befehl | Wer darf | Was er tut |
| --- | --- | --- |
| `/harndrang stand` | alle | Zeigt Blase, Darm, was noch unterwegs ist, und die aktuelle Verdauung. |
| `/harndrang stand Name` | Operatoren | Dasselbe für einen anderen Spieler. |
| `/harndrang drink` oder `food` | alle | Zeigt, wie viel das Item in deiner Hand bringt. |
| `/harndrang block` | alle | Untersucht den Block, auf den du schaust: Ist er eine Toilette? Steht ein Tank darunter? |
| `/harndrang set urin Menge [Name]` | Operatoren | Setzt die Blase auf die Menge in mB und leert den Vorrat. Mit `kot` statt `urin` gilt das für den Darm. |
| `/harndrang reload` | Operatoren | Liest die Listen aus der Konfiguration neu ein. |

## Häufige Fragen

**Stirbt man daran?**
Nein. Ein Missgeschick ist nur peinlich, Schaden nimmst du nicht. Stirbst du aus anderen Gründen, sind Blase und Darm danach leer.

**Mein Klo ist verstopft, obwohl ein Tank darunter steht.**
Der Tank darf höchstens zwei Blöcke unter der Toilette stehen. Prüf mit `/harndrang block`, ob die Toilette erkannt wird und der Tank gefunden wird.

**Muss ich selbst spülen?**
Nein. Das Urinal spült, sobald die Blase leer ist, die Toilette, wenn du fertig aufstehst. Nur das Waschbecken spült nicht – wer es trotzdem benutzt, bekommt einen versteckten Fortschritt.

## Für Server-Admins

Alle Werte lassen sich auf dem Server in `config/milchmannslittlefixes.cfg` anpassen. Die wichtigsten Einstellungen:

| Einstellung | Standard | Bedeutung |
| --- | --- | --- |
| `Needs digest per minute?` | 1.0 | Grundtempo der Verdauung in mB pro Minute |
| `Needs digest percent of store per minute?` | 10.0 | Zusätzlicher Anteil des Vorrats pro Minute in Prozent |
| `Bladder capacity in mB?` / `Bowel capacity in mB?` | 1000 | Fassungsvermögen |
| `Bladder warning at percent?` / `… urgent at percent?` | 75 / 90 | Schwellen der Warnungen (für den Darm gibt es eigene) |
| `Bladder toilets?`, `Bladder urinals?`, `Bladder sinks?` | DecoCraft-Möbel | Welche Blöcke als Toilette, Urinal oder Waschbecken zählen |
| `Bladder tank search depth?` | 2 | Wie tief unter der Toilette nach einem Tank gesucht wird |
| `Needs fluid?` | `sewage` | Flüssigkeit, die im Tank landet |
| `Bladder wipe item?` | `minecraft:paper` | Womit Pfützen aufgewischt werden |
| `Enable bladder?` / `Enable bowel?` | `true` | Schaltet Blase oder Darm ganz ab |

Nach Änderungen an den Listen genügt `/harndrang reload`.

## Siehe auch

- [Milchmanns Little Fixes](Milchmanns-Little-Fixes) – alle Funktionen der Mod
- [Durst](Durst) – woher die Getränke kommen

---

<sub>Stand: Revelation++ 26w42 mit Milchmanns Little Fixes 26w42. Werte sind am Quellcode der Mod geprüft und gelten für die Standard-Einstellungen.</sub>
