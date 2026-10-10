**Immersive Railroading** bringt maßstabsgetreue Eisenbahnen nach Revelation++: Dampf- und Dieselloks, Personen-, Güter- und Kesselwagen, die mit echter Physik fahren – mit Gewicht, Zugkraft und Bremsweg. Die Fahrzeuge entstehen nicht an der Werkbank, sondern Teil für Teil in großen Maschinen. Neben den Fahrzeugen der Mod enthält Revelation++ mehrere Fahrzeug-Pakete, darunter deutsche Dampfloks, moderne Züge und Straßenbahnen.

## Der Weg zum ersten Zug

1. **Grundlagen schaffen.** Du brauchst viel **Stahl**, **Behandelte Holzbretter** und **Strom** (RF/FE). Alles drei bekommst du am einfachsten über Immersive Engineering. Such dir außerdem eine große, ebene Fläche – die längsten Maschinen sind 30 Blöcke lang.
2. **Werkzeuge herstellen:** [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch), [Großer Schraubenschlüssel](Großer-Schraubenschlüssel) und [Schienenplan](Schienenplan).
3. **Gießanlage bauen.** Mit dem Handbuch aufstellen, mit dem Schraubenschlüssel fertigstellen, Strom anschließen. In der [Gießanlage](Gießanlage) schmilzt du Stahl ein und gießt daraus Schienengüsse und Fahrzeugteile.
4. **Schienenwalze bauen.** Die [Schienenwalze](Schienenwalze) walzt aus einem Schienenguss 20 Schienensegmente.
5. **Gleise legen** mit dem [Schienenplan](Schienenplan), den Schienensegmenten und Behandelten Holzbrettern.
6. **Fahrzeug bauen.** Gieße in der Gießanlage den **Rahmen** des gewünschten Fahrzeugs und setze ihn mit einem Rechtsklick auf ein ausreichend langes Gleis (etwa 20 Blöcke). Klicke den Rahmen dann mit dem Großen Schraubenschlüssel an: Hast du passende Teile dabei, baut jeder Klick das nächste davon ein. Fehlt etwas, nennt er dir die Teile für den nächsten Bauabschnitt und womit du sie herstellst.

> 💡 **Tipp:** Rahmen, Teile und Gleis müssen dieselbe Spurweite haben. Die Spurweite stellst du in der Gießanlage beim Gießen ein; im Tooltip jedes Teils und Fahrzeugs steht, welche es hat.

## Werkzeuge

| Werkzeug | Wozu |
| --- | --- |
| [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) | Stellt die Maschinen auf – auf Wunsch gleich mit den Blöcken aus deinem Inventar. |
| [Großer Schraubenschlüssel](Großer-Schraubenschlüssel) | Macht aus den aufgestellten Blöcken eine Maschine, baut Fahrzeuge zusammen und auseinander, dreht Drehscheiben. |
| [Schienenplan](Schienenplan) | Legt Gleise, Weichen, Steigungen und Drehscheiben. |
| [Golden Spike](Golden-Spike) | Formt frei geschwungene Gleise (Custom Curve) und Weichen-Abzweige. |
| [Switch Key](Switch-Key) | Verriegelt Weichen auf gerade oder Abzweig. |
| [Track Exchanger](Track-Exchanger) | Ändert Stil, Schienenbett und Spurweite fertiger Gleise. |

## Maschinen

Alle Maschinen sind Multiblöcke. Du stellst sie mit dem [Handbuch](Immersive-Railroading-Handbuch) auf und machst sie mit einem Rechtsklick des [Großen Schraubenschlüssels](Großer-Schraubenschlüssel) betriebsbereit. Jede Maschine braucht beim Arbeiten **32 RF/FE pro Tick**.

| Maschine | Im Handbuch | Größe (L × B × H) | Material | Wozu |
| --- | --- | --- | --- | --- |
| [Gießanlage](Gießanlage) | `CASTING` | 23 × 7 × 8 | 114 Steinziegel, 126 Sand, 86 Brennziegel, 63 Stahlgerüst, 15 Schwerer Maschinenblock, 1 Stahlblock | Stahl schmelzen; Schienengüsse, Rahmen, Räder und andere Gussteile gießen |
| [Schienenwalze](Schienenwalze) | `RAIL_MACHINE` | 30 × 2 × 3 | 44 Stahlgerüst, 32 Leichter Maschinenblock, 16 Schwerer Maschinenblock | Schienenguss zu 20 Schienensegmenten walzen |
| Dampfhammer | `STEAM_HAMMER` | 1 × 5 × 6 | 10 Leichter Maschinenblock, 3 Schwerer Maschinenblock, 1 Stahlblock, 1 Kolben | Rohe Gussteile (Zylinder, Stangen, Steuerungsteile) nachbearbeiten |
| Plattenwalze | `PLATE_MACHINE` | 30 × 5 × 5 | 90 Stahlgerüst, 88 Leichter Maschinenblock, 41 Schwerer Maschinenblock | Stahlblöcke zu Platten walzen: 8 kleine, 4 mittlere, 2 große oder 1 Kesselplatte pro Block |
| Kesselwalze | `BOILER_MACHINE` | 8 × 6 × 1 | 24 Steinstufen, 8 Leichter Maschinenblock, 4 Schwerer Maschinenblock | Kesselplatten zu Kesselsegmenten für Dampfloks rollen |

Stahlgerüst, Leichter und Schwerer Maschinenblock, Brennziegel und Stahlblock stammen aus Immersive Engineering; die Rezepte zeigt dir JEI.

## Welches Teil kommt woher?

| Fahrzeugteil | So stellst du es her |
| --- | --- |
| Rahmen, Räder, Drehgestelle, Radantrieb, Schieberkasten, Motorblock, Getriebe, Generator | Gießanlage |
| Dampfzylinder, Haupt-, Seiten- und Kolbenstangen, Teile der Steuerung, Dieselkolben | Gießanlage, danach Dampfhammer |
| Hülle, Führerstand, Feuerbüchse, Rauchkammer, Rohrleitungen | große Platten aus der Plattenwalze |
| Kraftstofftank, Lüfter und Ähnliches | mittlere Platten |
| Glocke, Pfeife, Signalhorn | kleine Platten |
| Kesselsegmente | Kesselplatte aus der Plattenwalze, danach Kesselwalze |
| Holzteile (je nach Fahrzeug) | normale Holzbretter |

Was genau ein Fahrzeug braucht, verrät dir der Große Schraubenschlüssel am aufgesetzten Rahmen.

## Wichtig zu wissen

- ⚠️ **Züge sind in Revelation++ lebensgefährlich.** Ein Zusammenstoß kostet pro km/h ein halbes Herz, und Rüstung schützt nicht. Ab 20 km/h ist das bei vollen 10 Herzen tödlich.
- 💥 **Dampfloks können explodieren.** Läuft der Kessel trocken oder steigt der Druck deutlich über das Maximum, fliegt die Lok in die Luft – samt Schaden an der Umgebung. Sorge für Wasser und nimm geparkten Loks den Brennstoff weg.
- 💧 **Wasser für Dampfloks:** Neben normalem Wasser nehmen sie in Revelation++ auch gereinigtes Wasser aus Tough As Nails, Heißquellwasser aus Biomes O' Plenty und ein paar weitere Wasserarten.
- 🔥 **Nicht in die Gießanlage fallen.** Wer ins Gießbecken gerät, stirbt in Sekunden.

## Alle Seiten zu Immersive Railroading

- [Schienenplan](Schienenplan) – Gleise legen
- [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) – Maschinen aufstellen
- [Großer Schraubenschlüssel](Großer-Schraubenschlüssel) – Maschinen und Fahrzeuge bauen
- [Gießanlage](Gießanlage) – Stahl schmelzen und gießen
- [Schienenwalze](Schienenwalze) – Schienensegmente herstellen
- [Golden Spike](Golden-Spike) – frei geformte Gleise
- [Switch Key](Switch-Key) – Weichen verriegeln
- [Track Exchanger](Track-Exchanger) – fertige Gleise umbauen
- Offizielles Wiki der Mod (englisch, teilweise veraltet): [Getting Started](https://github.com/TeamOpenIndustry/ImmersiveRailroading/wiki/Getting-Started)

---

<sub>Stand: Revelation++ 26w41e mit Immersive Railroading 1.10.0. Werte sind am Quellcode der Mod und an der Konfiguration des Packs geprüft.</sub>
