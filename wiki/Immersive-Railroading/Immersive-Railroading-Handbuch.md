Das **Immersive Railroading Handbuch** ist das Bauplan-Buch für alle Maschinen der Mod. Du wählst darin eine Maschine aus, siehst sie als durchsichtige Vorschau in der Welt und kannst sie mit einem Rechtsklick direkt aufstellen lassen – die Blöcke nimmt das Handbuch dafür aus deinem Inventar.

| Eigenschaft | Wert |
| --- | --- |
| Name im Spiel | Immersive Railroading Handbuch |
| Englischer Name | Immersive Railroading Manual (im offiziellen Wiki „Blueprint Book“) |
| Mod | [Immersive Railroading](Immersive-Railroading) |
| Item-ID | `immersiverailroading:item_manual` |
| Art | Werkzeug, nicht stapelbar |

## Herstellung

**6 Stahlbarren** und **1 Buch** in H-Form, das Buch in der Mitte:

<table>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center"></td>
    <td align="center">Stahlbarren</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Immersive Railroading Handbuch</b></td>
  </tr>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center">Buch</td>
    <td align="center">Stahlbarren</td>
  </tr>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center"></td>
    <td align="center">Stahlbarren</td>
  </tr>
</table>

Wie beim [Schienenplan](Schienenplan) zählt jeder Stahlbarren aus dem Ore Dictionary (`ingotSteel`).

## Bedienung

| Was du tust | Was passiert |
| --- | --- |
| **Schleichen + Rechtsklick in die Luft** | Wechselt zur nächsten Maschine. Der Chat zeigt `Placing: …` mit ihrem Namen. |
| **Auf den Boden schauen** | Eine durchsichtige Vorschau zeigt, wo die gewählte Maschine stehen würde. Sie dreht sich mit deiner Blickrichtung. |
| **Rechtsklick auf den Boden** | Stellt die Maschine an dieser Stelle auf (Erklärung unten). |
| Rechtsklick in die Luft | Schickt dir einen Link zum offiziellen, englischen Wiki der Mod in den Chat. |
| Mauszeiger auf das Handbuch im Inventar | Der Tooltip zeigt die gewählte Maschine, z. B. `Typ: CASTING`. |

Die Maschinen heißen im Handbuch nur mit ihrem internen Namen:

| Im Handbuch | Maschine |
| --- | --- |
| `CASTING` | [Gießanlage](Gießanlage) |
| `RAIL_MACHINE` | [Schienenwalze](Schienenwalze) |
| `STEAM_HAMMER` | Dampfhammer |
| `PLATE_MACHINE` | Plattenwalze |
| `BOILER_MACHINE` | Kesselwalze |

Größe, Material und Zweck aller Maschinen findest du auf der Übersichtsseite [Immersive Railroading](Immersive-Railroading).

## Eine Maschine aufstellen

1. Wähle die Maschine mit Schleichen + Rechtsklick in die Luft.
2. Schau auf den Boden und dreh dich, bis die Vorschau richtig liegt.
3. Rechtsklick auf den Boden. Das Handbuch geht nun alle Positionen der Maschine durch:
   - Gras, Schnee und Ähnliches im Weg werden abgebaut.
   - Steht ein fester Block im Weg, bricht das Aufstellen ab, und der Chat nennt dir die Koordinaten: *„Ungültiger Block: x=… y=… z=…“*. Räum ihn weg und versuch es erneut.
   - Alle fehlenden Blöcke setzt das Handbuch aus deinem Inventar. Reicht das Material nicht, steht im Chat *„Es fehlt:“* mit einer Liste wie `- 12 x Stahlgerüst`. Hol den Rest und klick einfach noch einmal – bereits gesetzte Blöcke bleiben stehen.
4. Steht alles, machst du die Maschine mit einem Rechtsklick des [Großen Schraubenschlüssels](Großer-Schraubenschlüssel) auf einen ihrer Blöcke betriebsbereit.

Im Kreativmodus setzt das Handbuch alle Blöcke kostenlos.

> 💡 **Tipp:** Du kannst eine Maschine auch von Hand nach der Vorschau bauen. Entscheidend ist nur, dass am Ende jeder Block an der richtigen Stelle sitzt – dann erkennt der Schraubenschlüssel die Maschine.

## Siehe auch

- [Immersive Railroading](Immersive-Railroading) – Übersicht und Weg zum ersten Zug
- [Großer Schraubenschlüssel](Großer-Schraubenschlüssel) – macht aufgestellte Maschinen betriebsbereit
- [Gießanlage](Gießanlage) und [Schienenwalze](Schienenwalze) – die ersten Maschinen, die du brauchst

---

<sub>Stand: Revelation++ 26w41e mit Immersive Railroading 1.10.0. Werte sind am Quellcode der Mod geprüft.</sub>
