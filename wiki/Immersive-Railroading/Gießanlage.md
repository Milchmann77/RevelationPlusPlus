Die **Gießanlage** ist die wichtigste Maschine von *Immersive Railroading*. Sie schmilzt Stahl ein und gießt daraus Schienengüsse, Rahmen, Räder und viele andere Fahrzeugteile. Ohne sie gibt es weder Gleise noch Züge.

| Eigenschaft | Wert |
| --- | --- |
| Name im Handbuch | `CASTING` |
| Englischer Name | Casting Basin |
| Mod | [Immersive Railroading](Immersive-Railroading) |
| Art | Multiblock-Maschine |
| Größe (L × B × H) | 23 × 7 × 8 Blöcke |
| Strom | 32 RF/FE pro Tick – dauerhaft, auch im Leerlauf |

## Aufbau

Die Gießanlage besteht aus einem 7 × 7 Blöcke großen, 8 Blöcke hohen Schmelzturm und einem 16 Blöcke langen Gießbett aus Sand. Du brauchst:

| Anzahl | Block | Herkunft |
| ---: | --- | --- |
| 126 | Sand | Vanilla |
| 114 | Steinziegel | Vanilla |
| 86 | Brennziegel | Immersive Engineering |
| 63 | Stahlgerüst | Immersive Engineering |
| 15 | Schwerer Maschinenblock | Immersive Engineering |
| 1 | Stahlblock | Immersive Engineering oder jeder andere Stahlblock |

1. Wähle im [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) die Maschine `CASTING` und stelle sie per Rechtsklick auf den Boden auf. Die Blöcke nimmt das Handbuch aus deinem Inventar.
2. Mach sie mit einem Rechtsklick des [Großen Schraubenschlüssels](Großer-Schraubenschlüssel) betriebsbereit.
3. Schließ Strom an: Er kommt **oben** in den Turm, an den Schweren Maschinenblock ganz oben in der Mitte der Vorderseite (der Seite, vor der du beim Aufstellen standest).

## So gießt du

1. **Fenster öffnen:** Rechtsklick auf die Gießanlage.
2. **Was gießen?** Der obere Knopf (*Typ:*) öffnet die Auswahl. Dort findest du:
   - alle Fahrzeuge – erst das Fahrzeug, dann das einzelne Teil oder gleich alle gießbaren Teile auf einmal,
   - den **Schienenguss** für die [Schienenwalze](Schienenwalze),
   - Stahlbarren und Stahlblöcke, falls du flüssigen Stahl wieder zurückgewinnen willst,
   - die Gleiserweiterungen (Belader, Sensor, Retarder und Co.).
3. **Spurweite** einstellen. Wählst du ein Fahrzeugteil, springt sie automatisch auf die Spurweite des Fahrzeugs.
4. **Starten:** *Einmalige Fertigung* gießt ein Stück und hält dann an, *Mehrfache Fertigung* gießt immer weiter. Der aktive Modus leuchtet rot; ein zweiter Klick hält die Anlage an.
5. **Stahl einwerfen:** Wirf Stahlbarren oder Stahlblöcke von oben in den Turm. Sie schmelzen sofort, solange Strom anliegt. Ein Barren bringt 1 Einheit, ein Block 9 Einheiten; der Tank fasst 810.
6. **Abwarten:** Die Anlage füllt alle halbe Sekunde 1 Einheit in die Form. Im Fenster siehst du links den Füllstand und unten den Fortschritt des Gusses.
7. **Abholen:** Ist der Guss fertig, klickst du die Gießanlage an, und die Teile fallen vor dir heraus. Solange fertige Teile drinliegen, gießt sie nichts Neues.

### Was kostet ein Guss?

| Guss | Stahl (Einheiten) |
| --- | --- |
| Schienenguss in Normalspur | 20 |
| Schienenguss in Schmalspur / Breitspur | 13 / 30 |
| Schienenguss in Minecraftspur / Modellspur | 9 / 3 |
| Gleiserweiterungen (8 Stück, Normalspur) | 8 |
| Fahrzeugteile | je nach Teil und Fahrzeug – das Fenster zeigt es dir |

Der Guss dauert so viele halbe Sekunden, wie er Einheiten kostet. Ein Schienenguss in Normalspur ist also nach 10 Sekunden fertig.

### Rohe Gussteile

Manche Teile, etwa Dampfzylinder und Stangen, kommen **roh** aus der Form. Ihr Tooltip sagt dann *„Muss vor Nutzung erst in einem Dampfhammer weiterverarbeitet werden!“*. Erst nach dem Dampfhammer kannst du sie einbauen.

### Fehlgüsse einschmelzen

Gussteile, Schienengüsse und Gleiserweiterungen, die du nicht mehr brauchst, wirfst du einfach wieder hinein – sie schmelzen zurück zu flüssigem Stahl.

## Vorsicht

- 🔥 **Nicht ins Becken fallen!** Wer im Schmelzbecken landet, verliert jeden Tick 2,5 Herzen, und keine Rüstung hilft dagegen – das überlebt niemand. Das gilt auch für Tiere und Monster.
- 🗑️ **Wirf nur Stahl und Gussteile hinein.** Alles andere verbrennt ersatzlos, sobald flüssiger Stahl im Becken ist.
- ⚡ **Stromverbrauch:** Die Gießanlage zieht 32 RF/FE pro Tick, solange ihr Chunk geladen ist – auch wenn sie gerade nichts gießt. Ohne genug Strom schmilzt und gießt sie nicht.

> 💡 **Tipp:** Die fertigen Teile lassen sich auch automatisch abziehen. Die Ausgabe sitzt in der untersten Reihe einer Längswand des Gießbetts, etwa auf halber Länge.

## Siehe auch

- [Schienenwalze](Schienenwalze) – macht aus dem Schienenguss Schienensegmente
- [Immersive Railroading](Immersive-Railroading) – welches Fahrzeugteil aus welcher Maschine kommt
- [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) und [Großer Schraubenschlüssel](Großer-Schraubenschlüssel) – Maschinen aufstellen
- Offizielles Wiki der Mod (englisch): [Casting Basin](https://github.com/TeamOpenIndustry/ImmersiveRailroading/wiki/Casting-Basin)

---

<sub>Stand: Revelation++ 26w41e mit Immersive Railroading 1.10.0. Werte sind am Quellcode der Mod geprüft.</sub>
