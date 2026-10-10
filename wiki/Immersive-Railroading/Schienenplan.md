Der **Schienenplan** ist das wichtigste Werkzeug von *Immersive Railroading*. Mit ihm verlegst du die Gleise, auf denen die Züge dieser Mod fahren: gerade Strecken, Steigungen, Kurven, Weichen und Drehscheiben. Du stellst im Schienenplan ein, welches Gleisstück du haben willst, und setzt es mit einem Rechtsklick in die Welt. Der Schienenplan selbst wird dabei nicht verbraucht – nur die Baumaterialien.

| Eigenschaft | Wert |
| --- | --- |
| Name im Spiel | Schienenplan |
| Englischer Name | Track Blueprint |
| Mod | [Immersive Railroading](Immersive-Railroading) |
| Item-ID | `immersiverailroading:item_rail` |
| Art | Werkzeug, nicht stapelbar |
| Verbrauch beim Bauen | keiner, nur die Baumaterialien |

## Herstellung

Den Schienenplan stellst du an der Werkbank aus **6 Stahlbarren** und **1 Papier** her. Die Stahlbarren bilden ein „H“, das Papier kommt in die Mitte:

<table>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center"></td>
    <td align="center">Stahlbarren</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Schienenplan</b></td>
  </tr>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center">Papier</td>
    <td align="center">Stahlbarren</td>
  </tr>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center"></td>
    <td align="center">Stahlbarren</td>
  </tr>
</table>

![Rezept des Schienenplans in der Werkbank](https://raw.githubusercontent.com/TeamOpenIndustry/ImmersiveRailroading/release_1.10.0/src/main/resources/assets/immersiverailroading/wiki/images/3yocbiv.png)

- **Jeder Stahlbarren passt.** Das Rezept nimmt alles, was als `ingotSteel` eingetragen ist – Stahl aus Immersive Engineering genauso wie aus Railcraft, Thermal oder Mekanism.
- **Der einfachste Weg zum Stahl** führt über Immersive Engineering: In der *Kokerei* wird aus Kohle *Kohlekoks*, und im *Groben Hochofen* schmilzt du damit Eisenbarren zu Stahlbarren.
- In manchen Anleitungen taucht ein Rezept mit Eisenbarren auf. Das gibt es nur in Modpacks ganz ohne Stahl – in Revelation++ brauchst du echten Stahl.
- Im Spiel zeigt dir JEI das Rezept jederzeit: „Schienenplan“ suchen und <kbd>R</kbd> drücken.

## Bedienung auf einen Blick

| Was du tust | Was passiert |
| --- | --- |
| **Rechtsklick in die Luft** | Das Einstellungsfenster öffnet sich. |
| **Rechtsklick auf einen Block** | Das eingestellte Gleis wird auf diesen Block gebaut – oder ein Schienenentwurf gesetzt, wenn *Entwurf platzieren* angehakt ist. |
| **Schienenplan in der Nebenhand**, Rechtsklick mit leerer Haupthand auf einen Block | Der angeklickte Block wird als *Schienenbett* übernommen. |
| Dasselbe, aber **schleichend** | Der Block wird als *Schienenbettfüllung* übernommen. |
| Mauszeiger auf den Schienenplan im Inventar | Der Tooltip zeigt die aktuellen Einstellungen. |

Das Gleis beginnt auf dem angeklickten Block und verläuft in deine **Blickrichtung**. Die Richtung rastet in 22,5°-Schritten ein – du kannst also auch schräg bauen.

> 💡 **Tipp:** Mit <kbd>F</kbd> wechselt der Schienenplan in die Nebenhand. Auf diesem Weg kannst du sogar Blöcke als Schienenbett nehmen, die in der Auswahlliste des Einstellungsfensters fehlen, zum Beispiel Steinziegel.

## Das Einstellungsfenster

Ein Rechtsklick in die Luft öffnet die Einstellungen. Links stehen die Knöpfe, rechts siehst du eine Vorschau des Gleisstücks, die du mit dem Regler *Zoom* vergrößern kannst. <kbd>Esc</kbd> oder <kbd>Enter</kbd> schließt das Fenster und speichert die Einstellungen im Schienenplan. Manche Knöpfe erscheinen nur bei bestimmten Gleistypen.

> ℹ️ Immersive Railroading ist nur teilweise ins Deutsche übersetzt, deshalb stehen ein paar Knöpfe auch im deutschen Spiel auf Englisch. Die Tabelle nennt sie so, wie du sie im Spiel siehst.

| Einstellung | Mögliche Werte | Was sie bewirkt |
| --- | --- | --- |
| **Länge** *(Zahlenfeld ganz oben, ohne Beschriftung)* | 1 bis 1000 | Länge des Gleisstücks in Blöcken. Bei *Kurve* legt sie den Radius fest, bei *Drehscheibe* den Radius der Scheibe. |
| **Spurweite** | Breitspur, Normalspur, Schmalspur, Minecraftspur, Modellspur | Abstand der Schienen. Gleis, Schienensegmente und Fahrzeug müssen dieselbe Spurweite haben. Voreingestellt ist Normalspur. |
| **Typ** | Gerade, Steigung, Kurve, Weiche, Drehscheibe, Custom Curve | Form des Gleisstücks, siehe *Die Gleistypen*. |
| **Vertical Smoothing** | Both, Near, Far, Neither | Nur bei Steigung, Kurve, Weiche und Custom Curve: wie der Übergang bei Höhenunterschieden ausgerundet wird – am Anfang (*Near*), am Ende (*Far*), an beiden Enden (*Both*) oder gar nicht (*Neither*, gleichmäßige Steigung mit Knick). |
| **Richtung** | Flexibel, Sperre links, Sperre rechts | Nur bei Kurve und Weiche: zu welcher Seite das Gleis abbiegt. Bei *Flexibel* entscheidet dein Blickwinkel beim Setzen, die beiden Sperren legen die Seite fest. |
| **… Grad Kurve** *(Regler)* | 22,5 · 45 · 67,5 · 90 | Nur bei Kurve und Weiche: Winkel der Kurve bzw. des Abzweigs. |
| **Curvosity** *(Regler)* | 0,25 bis 1,50 | Nur bei Weiche und Custom Curve: wie weit der Bogen ausholt. Die Vorschau zeigt die Wirkung sofort. |
| **Track Style** | Default, Concrete Ties, Rails Only | Aussehen des Gleises – Holzschwellen, Betonschwellen oder nur Schienen – und damit auch das nötige Material. Fahrzeug-Pakete können weitere Stile mitbringen. |
| **Schienenbett** | kein, Kies, Bruchstein, Erde, Ziegelsteine, Netherziegel, Beton, Keramik, Holzstämme, Holzbretter … | Block, der zwischen den Schwellen zu sehen ist, zum Beispiel Kies als Schotterbett. |
| **Schienenbettfüllung** | dieselbe Auswahl | Füllt beim Bauen jede Lücke unter dem Gleis mit diesem Block – ideal für Dämme und Brücken. |
| **Position** | Fixiert, Pixel, Pixel (fest), Fein, Fein (fest) | Wie genau sich das Gleis an der angeklickten Stelle ausrichtet (siehe unten). |
| **Entwurf platzieren** | an / aus | Setzt statt eines fertigen Gleises einen Schienenentwurf, siehe *Planen mit dem Schienenentwurf*. |
| **Grade Crossing** | an / aus | Verbreitert und erhöht das Schienenbett zu beiden Seiten – so entsteht ein Bahnübergang für Straßen und Wege. |

**Die Spurweiten in Metern:** Breitspur 2,14 m (Brunel-Spur) · Normalspur 1,435 m (wie bei der DB) · Schmalspur 0,914 m · Minecraftspur 0,632 m · Modellspur 0,2 m.

**Die Positionsarten:**

- **Fixiert** – Das Gleis sitzt immer mittig auf dem Block. Für die meisten Strecken die richtige Wahl.
- **Pixel** – Das Gleis beginnt dort, wo du hinklickst, gerundet auf 1/16 Block.
- **Pixel (fest)** – Wie *Pixel*, aber quer zur Fahrtrichtung bleibt das Gleis mittig. Das gilt nur für Gleise, die genau nach Norden, Osten, Süden oder Westen zeigen.
- **Fein** – Das Gleis beginnt exakt dort, wo du hinklickst.
- **Fein (fest)** – Wie *Fein*, aber quer zur Fahrtrichtung mittig (mit derselben Einschränkung).

## Die Gleistypen

### Gerade

Ein gerades Gleisstück in deiner Blickrichtung, auch schräg in 22,5°-Schritten.

### Steigung

Ein gerades Stück, das auf seiner ganzen Länge **genau einen Block** ansteigt – vom angeklickten Block aus bergauf. Je länger du die Steigung einstellst, desto flacher wird sie: Länge 21 ergibt im Schnitt 5 % Steigung, Länge 41 nur noch 2,5 %. Lange, flache Rampen schaffen schwere Züge deutlich besser als kurze, steile. Für mehrere Blöcke Höhenunterschied setzt du mehrere Steigungen hintereinander; ein Gefälle baust du einfach von unten nach oben.

### Kurve

Ein Kreisbogen mit festem Winkel (Regler *Grad Kurve*, 22,5° bis 90°). Der Radius beträgt *Länge − 1* Blöcke. Diesen Typ gibt es noch aus älteren Versionen der Mod; meistens ist **Custom Curve** die flexiblere Wahl. Für einen schnellen 90°-Bogen ist die Kurve aber weiterhin praktisch.

### Weiche

Ein gerades Gleis mit abzweigendem Strang. Winkel und Seite des Abzweigs stellst du über *Grad Kurve* und *Richtung* ein. Mit dem **[Golden Spike](Golden-Spike)** kannst du den Abzweig auch frei formen, genau wie bei Custom Curve.

- Ohne Redstone-Signal steht die Weiche auf **gerade**.
- Bekommt ein Gleisblock am Weichenanfang ein Redstone-Signal, etwa von einem Hebel oder Redstone-Block direkt daneben, stellt sie auf **Abzweig**.
- Mit dem **[Switch Key](Switch-Key)** verriegelst du eine Weiche fest auf gerade oder Abzweig. Verriegelte Weichen ignorieren Redstone.

### Drehscheibe

Eine runde Drehscheibe, zum Beispiel zum Wenden von Dampfloks. *Länge* ist hier der Radius. Wie groß die Scheibe höchstens werden darf, hängt von der Spurweite ab: Breitspur 44, Normalspur 30, Schmalspur 19, Minecraftspur 13 und Modellspur 4 Blöcke.

Gedreht wird mit dem **[Großen Schraubenschlüssel](Großer-Schraubenschlüssel)**: Rechtsklick auf die Drehscheibe an der Stelle, in deren Richtung die Brücke zeigen soll. Die Brücke rastet in 22,5°-Schritten ein.

### Custom Curve

Ein frei geformtes Gleis („Flex-Gleis“) mit bis zu 1000 Blöcken Länge – auch mit Höhenunterschied, also als Kurve mit Steigung. Endpunkt und Richtung legst du mit dem **[Golden Spike](Golden-Spike)** fest:

1. Typ *Custom Curve* wählen und *Entwurf platzieren* anhaken.
2. Den Entwurf am Startpunkt setzen. Schau dabei in die Richtung, in die das Gleis losführen soll.
3. Mit dem Golden Spike auf den Entwurf rechtsklicken – damit ist er verknüpft.
4. Mit dem Golden Spike auf den Zielblock rechtsklicken und dabei in die Richtung schauen, aus der das Gleis dort ankommen soll. Die Vorschau passt sich sofort an, und du kannst den Zielpunkt beliebig oft neu setzen.
5. Passt alles, schleichst du und baust den Entwurf ab – das Gleis wird gebaut.

Den **Golden Spike** stellst du aus 4 Goldbarren her:

<table>
  <tr>
    <td align="center">Goldbarren</td>
    <td align="center">Goldbarren</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Golden Spike</b></td>
  </tr>
  <tr>
    <td align="center">Goldbarren</td>
    <td align="center"></td>
  </tr>
  <tr>
    <td align="center">Goldbarren</td>
    <td align="center"></td>
  </tr>
</table>

> 💡 **Tipp:** Der Golden Spike hilft auch bei *Gerade* und *Steigung*: Entwurf anklicken, dann den Zielblock – die passende Länge wird automatisch eingetragen. Ein Rechtsklick mit dem Golden Spike in die Luft öffnet die Einstellungen des verknüpften Entwurfs.

### Und Kreuzungen?

Einen eigenen Kreuzungs-Typ brauchst du nicht. Gleise dürfen einfach über bestehende Gleise gebaut werden, auch schräg und mit anderer Spurweite.

## Planen mit dem Schienenentwurf

Ist *Entwurf platzieren* angehakt, setzt ein Rechtsklick auf einen Block kein fertiges Gleis, sondern einen **Schienenentwurf**: eine Vorschau des Gleises direkt in der Welt. Material wird dabei noch nicht verbraucht. So probierst du in Ruhe aus, wo die Strecke verlaufen soll, bevor du baust.

| Aktion am Entwurf | Wirkung |
| --- | --- |
| Rechtsklick | Öffnet die Einstellungen dieses Entwurfs. |
| Schleichen + Rechtsklick mit leerer Hand | Richtet den Entwurf neu aus: Er übernimmt deine Blickrichtung und – außer bei *Fixiert* – die angeklickte Stelle. |
| Rechtsklick mit dem Golden Spike | Verknüpft den Entwurf mit dem Golden Spike (siehe *Custom Curve*). |
| Abbauen | Entfernt den Entwurf. |
| Schleichen + abbauen | **Baut das Gleis.** Im Überlebensmodus nur, wenn du genug Material dabeihast. |
| *Entwurf platzieren* in den Einstellungen abhaken und schließen | Baut das Gleis ebenfalls sofort. |

> ⚠️ **Achtung:** Sehr lange Entwürfe (ab etwa 160 Blöcken Luftlinie) halten ihre Chunks dauerhaft geladen. Entferne sie, wenn du sie nicht mehr brauchst – das entlastet den Server.

## Materialbedarf

Im **Kreativmodus** baust du kostenlos, und Blöcke im Weg werden automatisch weggeräumt. Im **Überlebensmodus** müssen alle Materialien in deinem Inventar sein. Fehlt etwas, sagt dir der Chat genau was, zum Beispiel *„Es fehlt: 6 Schienensegment (Normalspur)“*.

| Material | Woher bekommst du es? |
| --- | --- |
| **Schienensegmente** in der Spurweite des Gleises | In der [Gießanlage](Gießanlage) gießt du einen *Schienenguss*, den die [Schienenwalze](Schienenwalze) zu **20 Schienensegmenten** walzt. Die Spurweite legst du beim Gießen fest; ein Guss in Normalspur kostet Stahl im Wert von 20 Stahlbarren. Beide Maschinen sind Multiblöcke, ihre Baupläne findest du im [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) unter `CASTING` und `RAIL_MACHINE`. |
| **Schwellen** für den Stil *Default* | **Behandelte Holzbretter** aus Immersive Engineering (8 Holzbretter um einen Eimer Teeröl). Alternativ gehen *Holzschwelle* und *Teerölholzblock* aus Railcraft. **Normale Holzbretter funktionieren in Revelation++ nicht.** |
| Schwellen für den Stil *Concrete Ties* | je Schwelle 2 × Beton und 1 × Eisenbarren |
| Schwellen für den Stil *Rails Only* | je Schwelle 1 × Beton und 1 × Eisenbarren |
| Schienenbett *(nur wenn gewählt)* | der gewählte Block, nur wenige Stück |
| Schienenbettfüllung *(nur wenn gewählt)* | ein Block für jede Lücke unter dem Gleis |

Als Beton zählt Vanilla-Beton in jeder Farbe sowie *Beton* und *Glatter Beton* aus Immersive Engineering.

**So viel brauchst du für eine gerade Strecke in Normalspur:**

| Länge | Schienensegmente | Schwellen | Schienenbett *(falls gewählt)* |
| --- | --- | --- | --- |
| 10 Blöcke | 6 | 3 | 1 |
| 20 Blöcke | 10 | 5 | 2 |
| 40 Blöcke | 20 | 10 | 3 |
| 100 Blöcke | 50 | 25 | 8 |

Als **Faustregel** gilt: Pro 4 Blöcke Strecke brauchst du 2 Schienensegmente und 1 Schwelle. Ein Schienenguss reicht also für rund 40 Blöcke, und ein Kilometer Strecke kostet etwa 500 Stahlbarren und 250 behandelte Holzbretter. Die Werte gelten für Gleise, die genau nach Norden, Osten, Süden oder Westen verlaufen. Diagonale Strecken, Kurven und Breitspur brauchen mehr, Minecraft- und Modellspur weniger.

Baust du ein Gleis wieder ab, bekommst du Schienensegmente, Schwellen und Schienenbett zurück. Die Blöcke der Schienenbettfüllung bleiben als normale Blöcke in der Welt stehen.

## Besonderheiten in Revelation++

- 🌉 **Gleise brauchen keinen Untergrund.** In Revelation++ ist die Pflicht zu festem Boden unter den Schienen abgeschaltet. Du kannst Gleise frei in die Luft bauen, und sie brechen auch nicht ab, wenn darunter Blöcke verschwinden. Für ordentliche Brücken und Dämme gibt es die *Schienenbettfüllung*.
- ⚠️ **Züge sind lebensgefährlich.** Bei einem Zusammenstoß zieht dir ein Zug pro km/h ein halbes Herz ab – zehnmal so viel wie ohne die Einstellung des Packs –, und Rüstung schützt nicht. Ab 20 km/h ist das bei vollen 10 Herzen sofort tödlich. Arbeite an befahrenen Strecken nur, wenn gerade kein Zug kommt.
- 🚂 **Auf die Spurweite der Fahrzeuge achten.** Revelation++ enthält mehrere Fahrzeug-Pakete, darunter deutsche Dampfloks, moderne Züge und Straßenbahnen. Die Spurweite eines Fahrzeugs steht in seinem Tooltip. Passt sie nicht zum Gleis, meldet das Spiel beim Aufgleisen *„Falsche Spurweite!“*.

## Häufige Probleme

| Problem | Lösung |
| --- | --- |
| Beim Rechtsklick passiert nichts. | Etwas steht im Weg. Das Gleis braucht freien Platz – Luft, Gras, Schnee und Ähnliches werden ersetzt, feste Blöcke nicht. Setze zuerst einen Entwurf, dann siehst du genau, wo das Gleis liegen würde. |
| *„Es fehlt: … Schienensegment (Normalspur)“* | Du hast zu wenige Segmente dabei oder sie haben eine andere Spurweite. Die Segmente müssen zur Spurweite im Schienenplan passen. |
| *„Es fehlt: … Behandelte Holzbretter …“* | Normale Holzbretter zählen nicht als Schwellen. Stelle behandelte Holzbretter her oder nimm Holzschwellen aus Railcraft. |
| Das Gleis zeigt in die falsche Richtung. | Die Richtung folgt deinem Blick in 22,5°-Schritten. Einen Entwurf richtest du neu aus, indem du mit leerer Hand schleichst und ihn rechtsklickst. |
| Die Weiche schaltet nicht. | Das Redstone-Signal muss am Weichenanfang anliegen. Mit dem Switch Key verriegelte Weichen reagieren nicht auf Redstone. |
| *„Falsche Spurweite!“* beim Aufgleisen eines Fahrzeugs | Gleis und Fahrzeug haben unterschiedliche Spurweiten. Schau im Tooltip des Fahrzeugs nach und baue das Gleis passend. |

## Weitere Verwendung

Außer zum Bauen brauchst du den Schienenplan als Zutat für den **[Track Exchanger](Track-Exchanger)**. Mit ihm änderst du Stil, Schienenbett und Spurweite fertiger Gleise, ohne sie abzureißen – im Überlebensmodus gegen das neue Material, das alte bekommst du zurück. Schienenplan und Schraubenschlüssel werden beim Herstellen verbraucht.

<table>
  <tr>
    <td align="center">Glasscheibe</td>
    <td align="center">Glasscheibe</td>
    <td align="center">Glasscheibe</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Track Exchanger</b></td>
  </tr>
  <tr>
    <td align="center">Großer Schraubenschlüssel</td>
    <td align="center">Eisenbarren</td>
    <td align="center">Schienenplan</td>
  </tr>
  <tr>
    <td align="center">Glasscheibe</td>
    <td align="center">Redstone-Staub</td>
    <td align="center">Glasscheibe</td>
  </tr>
</table>

## Wissenswertes

- Im Kreativmodus gibt dir ein Mittelklick (Block auswählen) auf ein fertiges Gleis einen Schienenplan mit genau dessen Einstellungen. So wiederholst du ein Gleisstück exakt.
- Der Name im Code ist etwas irreführend: `item_rail` ist der Schienenplan, die Schienensegmente heißen `item_rail_part`. Wichtig, falls du mit Befehlen wie `/give` arbeitest.

## Siehe auch

- [Immersive Railroading](Immersive-Railroading) – Übersicht und Weg zum ersten Zug
- [Gießanlage](Gießanlage) und [Schienenwalze](Schienenwalze) – stellen Schienenguss und Schienensegmente her
- [Golden Spike](Golden-Spike) – formt Custom Curves und Weichen-Abzweige
- [Großer Schraubenschlüssel](Großer-Schraubenschlüssel) – baut die Maschinen von Immersive Railroading und dreht Drehscheiben
- [Switch Key](Switch-Key) – verriegelt Weichen
- [Track Exchanger](Track-Exchanger) – ändert Stil, Schienenbett und Spurweite fertiger Gleise
- [Immersive Railroading Handbuch](Immersive-Railroading-Handbuch) – enthält die Baupläne für Gießanlage, Schienenwalze und die übrigen Maschinen
- Offizielles Wiki der Mod (englisch, teilweise veraltet): [Track Blueprint](https://github.com/TeamOpenIndustry/ImmersiveRailroading/wiki/Track-Blueprint) · [Custom Curves](https://github.com/TeamOpenIndustry/ImmersiveRailroading/wiki/Custom-Curves)

---

<sub>Stand: Revelation++ 26w41e mit Immersive Railroading 1.10.0. Rezepte und Werte sind am Quellcode der Mod und an der Konfiguration des Packs geprüft.</sub>
