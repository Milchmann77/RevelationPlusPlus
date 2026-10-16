Der **Schneeschmelzer** hält im Winter dein Gelände schneefrei. Er schmilzt mit Strom den Schnee um sich herum – den nächstgelegenen zuerst – und macht daraus Schneebälle oder Wasser. Ideal für Straßen, Gleise, Bahnhöfe und Felder, die sonst unter einer Schneedecke verschwinden.

| Eigenschaft | Wert |
| --- | --- |
| Name im Spiel | Schneeschmelzer |
| Mod | [Milchmanns Little Fixes](Milchmanns-Little-Fixes) |
| Block-ID | `milifi:snowmelter` |
| Kreativ-Reiter | Redstone |
| Energiespeicher | 1.000.000 RF/FE |
| Verbrauch | 1000 RF pro Schneeschicht, bis zu 20 Schichten pro Sekunde |
| Reichweite | unbegrenzt, soweit die Welt um ihn herum geladen ist |

## Herstellung

<table>
  <tr>
    <td align="center">Silberblock</td>
    <td align="center">Heizspule</td>
    <td align="center">Silberblock</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Schneeschmelzer</b></td>
  </tr>
  <tr>
    <td align="center">Platinzahnrad</td>
    <td align="center"><a href="#schneeschaufel">Schneeschaufel</a></td>
    <td align="center">Platinzahnrad</td>
  </tr>
  <tr>
    <td align="center">Silberblock</td>
    <td align="center">Redstone-Empfängerspule</td>
    <td align="center">Silberblock</td>
  </tr>
</table>

| Zutat | Herkunft |
| --- | --- |
| Silberblock, Platinzahnrad | z. B. Thermal Foundation – jeder Block und jedes Zahnrad aus dem Ore Dictionary passt |
| Heizspule | Tough As Nails |
| Redstone-Empfängerspule | Thermal Foundation |
| Schneeschaufel | Milchmanns Little Fixes, [siehe unten](#schneeschaufel) |

## So funktioniert er

1. **Strom anschließen:** Der Schneeschmelzer nimmt RF/FE von jeder Seite an.
2. **Schmelzen:** Jeden Tick schmilzt er eine Schneeschicht und verbraucht dafür 1000 RF. Er beginnt beim nächstgelegenen Schnee und räumt eine Stelle komplett frei, bevor er weitermacht. Neuer Schnee in der Nähe kommt vor älterem Schnee weiter weg dran.
3. **Leuchten:** Solange er arbeitet, glüht er (Lichtstufe 13), seine Heizspulen glimmen auf, und an den geschmolzenen Stellen steigen rote Funken auf. Im Ruhezustand bleiben die Spulen kalt.

Ein Schneeblock zählt als 8 Schichten: Der Schneeschmelzer macht daraus zuerst eine Schneedecke mit 7 Schichten und arbeitet sich dann nach unten.

> 💡 **Tipp:** Wie groß die freie Fläche wird, hängt von Strom und Schneefall ab. Schmilzt der Schneeschmelzer schneller, als es schneit, wächst der freie Kreis um ihn herum; schneit es stärker, schrumpft er wieder. Bei vollem Tempo braucht er 20.000 RF pro Sekunde.

### Was aus dem Schnee wird

Für jede geschmolzene Schicht entstehen **2 Schneebälle**:

1. Steht direkt neben dem Schneeschmelzer ein Inventar (Truhe, Fass, Röhre …), landen die Schneebälle dort.
2. Ist kein Platz, füllt er stattdessen **500 mB Wasser** in einen angrenzenden Tank.
3. Gibt es beides nicht, fallen die Schneebälle an der geschmolzenen Stelle auf den Boden.

> ⚠️ **Achtung:** Ohne angeschlossene Truhe oder Tank liegen nach einem Schneesturm überall Schneebälle herum. Stell am besten eine Truhe direkt daneben.

### Grenzen

- Er arbeitet nur in Bereichen, die gerade geladen sind, und lädt selbst keine Chunks.
- Ohne Strom (weniger als 1000 RF im Speicher) ruht er.
- Auf dem Server kann die Reichweite begrenzt sein (Einstellung `Snow melter maximum radius?`, Standard: unbegrenzt).

## Schneeschaufel

Die **Schneeschaufel** ist eine Schaufel nur für Schnee: Sie baut Schneedecken und Schneeblöcke so schnell ab wie eine Eisenschaufel und lässt dabei Schneebälle fallen. Andere Blöcke baut sie nicht schneller ab als die bloße Hand. Außerdem ist sie die Hauptzutat des Schneeschmelzers.

| Eigenschaft | Wert |
| --- | --- |
| Item-ID | `milifi:snow_shovel` |
| Haltbarkeit | 250 (wie Eisenwerkzeug) |

<table>
  <tr>
    <td align="center"></td>
    <td align="center">HDPE-Bogen</td>
    <td align="center">HDPE-Bogen</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Schneeschaufel</b></td>
  </tr>
  <tr>
    <td align="center"></td>
    <td align="center">PlaStick</td>
    <td align="center">HDPE-Bogen</td>
  </tr>
  <tr>
    <td align="center">PlaStick</td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
</table>

HDPE-Bogen und PlaStick stammen aus Mekanism. Das Rezept funktioniert auch gespiegelt.

> 🔥 **Fortschritt:** Stellst du eine Schneeschaufel her und benutzt sie, bis sie zerbricht, bekommst du den Fortschritt *Winterdienstmeister*.

## Schnee in Revelation++

Damit du weißt, womit du es zu tun hast:

- **Schnee türmt sich:** Durch *Winter Wonderland* wächst bei Schneefall die Schneedecke Schicht für Schicht, bis zu einem vollen Block hoch. Tagsüber, wenn es nicht schneit oder regnet, taut sie langsam wieder ab.
- **Aus 8 Schichten wird ein Block:** Milchmanns Little Fixes macht aus einer Schneedecke mit 8 Schichten automatisch einen echten Schneeblock.
- **Auch Schneeblöcke tauen:** Wenn Winter Wonderland taut, taut auch der oberste Schneeblock unter freiem Himmel mit – er wird zu einer Schneedecke mit 7 Schichten.

> ⚠️ **Achtung:** Das gilt auch für Schneeblöcke, die du selbst verbaut hast, sofern sie unter freiem Himmel liegen. Ein Iglu oder eine Schneeskulptur unter offenem Himmel schmilzt also langsam weg. Unter einem Dach bleibt sie erhalten.

## Siehe auch

- [Milchmanns Little Fixes](Milchmanns-Little-Fixes) – alle Funktionen der Mod
- [Blitzableiter](Blitzableiter) – liefert Energie im Überfluss
- [Temperatur](Temperatur) – warum der Winter in Revelation++ ungemütlich wird

---

<sub>Stand: Revelation++ 26w42 mit Milchmanns Little Fixes 26w42. Werte sind am Quellcode der Mod geprüft und gelten für die Standard-Einstellungen.</sub>
