Die **Schienenwalze** walzt aus einem *Schienenguss* **20 Schienensegmente** – das Material, das der [Schienenplan](Schienenplan) zum Gleisbau braucht. Neben der [Gießanlage](Gießanlage) ist sie die zweite Maschine, die du für dein erstes Gleis brauchst.

| Eigenschaft | Wert |
| --- | --- |
| Name im Handbuch | `RAIL_MACHINE` |
| Englischer Name | Track Roller |
| Mod | [Immersive Railroading](Immersive-Railroading) |
| Art | Multiblock-Maschine |
| Größe (L × B × H) | 30 × 2 × 3 Blöcke |
| Strom | 32 RF/FE pro Tick, nur während sie walzt |

## Aufbau

Die Schienenwalze ist eine 30 Blöcke lange, 2 Blöcke breite Bahn aus Stahlgerüst. In der Mitte sitzt auf 8 Blöcken Länge die eigentliche Walze, 3 Blöcke hoch. Du brauchst:

| Anzahl | Block | Herkunft |
| ---: | --- | --- |
| 44 | Stahlgerüst | Immersive Engineering |
| 32 | Leichter Maschinenblock | Immersive Engineering |
| 16 | Schwerer Maschinenblock | Immersive Engineering |

1. Wähle im [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) die Maschine `RAIL_MACHINE` und stelle sie per Rechtsklick auf den Boden auf. Die Bahn läuft von dir weg; der angeklickte Block wird ihr Eingang.
2. Mach sie mit einem Rechtsklick des [Großen Schraubenschlüssels](Großer-Schraubenschlüssel) betriebsbereit.
3. Schließ Strom an: Er kommt **oben** auf den erhöhten Mittelteil.

## So walzt du Schienen

1. **Schienenguss besorgen:** In der [Gießanlage](Gießanlage) einen Schienenguss in der gewünschten Spurweite gießen.
2. **Einlegen:** Mit dem Schienenguss in der Hand die Schienenwalze rechtsklicken – egal wo. Sie nimmt genau einen Guss auf.
3. **Abwarten:** Nach etwa 5 Sekunden ist der Guss gewalzt. Solange die Walze arbeitet, hörst du sie hämmern.
4. **Abholen:** Mit **leerer Hand** die Walze rechtsklicken – die 20 Schienensegmente fallen vor dir heraus.

Die Schienensegmente haben dieselbe Spurweite wie der Guss. Den nächsten Guss beginnt die Walze erst, wenn du die fertigen Segmente abgeholt hast.

> 💡 **Tipp:** Die Walze lässt sich automatisieren. Schienengüsse kannst du am Eingang (dem Anfang der Bahn) per Trichter oder Rohr einspeisen und die Segmente am anderen Ende (dem Ausgang) abziehen.

## Schienenguss und Schienensegment

| | Schienenguss | Schienensegment |
| --- | --- | --- |
| Englischer Name | Rail Casting | Rail Segment |
| Item-ID | `immersiverailroading:item_cast_rail` | `immersiverailroading:item_rail_part` |
| Stapelgröße | 16 | 64 |
| Herkunft | [Gießanlage](Gießanlage) | Schienenwalze, 20 Stück pro Guss |
| Spurweite | im Tooltip | im Namen, z. B. *Schienensegment (Normalspur)* |
| Kosten | 20 Einheiten Stahl in Normalspur (= 20 Stahlbarren) | – |

Ein Schienenguss in Normalspur reicht für rund 40 Blöcke gerades Gleis. Die genaue Rechnung steht beim [Schienenplan](Schienenplan) unter *Materialbedarf*.

## Siehe auch

- [Schienenplan](Schienenplan) – legt mit den Segmenten die Gleise
- [Gießanlage](Gießanlage) – gießt die Schienengüsse
- [Immersive Railroading](Immersive-Railroading) – alle Maschinen im Überblick
- Offizielles Wiki der Mod (englisch, teilweise veraltet): [Track Roller](https://github.com/TeamOpenIndustry/ImmersiveRailroading/wiki/Track-Roller)

---

<sub>Stand: Revelation++ 26w41e mit Immersive Railroading 1.10.0. Werte sind am Quellcode der Mod geprüft.</sub>
