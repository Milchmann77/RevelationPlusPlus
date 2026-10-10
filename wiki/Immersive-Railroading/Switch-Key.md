Mit dem **Switch Key** (Weichenschlüssel) verriegelst du eine Weiche fest auf *gerade* oder *Abzweig*. Eine verriegelte Weiche ignoriert Redstone – praktisch für Abstellgleise, Bahnhöfe und Strecken, auf denen niemand versehentlich umstellen soll.

| Eigenschaft | Wert |
| --- | --- |
| Name im Spiel | Switch Key (keine deutsche Übersetzung) |
| Mod | [Immersive Railroading](Immersive-Railroading) |
| Item-ID | `immersiverailroading:item_switch_key` |
| Art | Werkzeug, nicht stapelbar |

## Herstellung

**4 Stahlbarren** in Schlüsselform:

<table>
  <tr>
    <td align="center"></td>
    <td align="center">Stahlbarren</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Switch Key</b></td>
  </tr>
  <tr>
    <td align="center"></td>
    <td align="center">Stahlbarren</td>
  </tr>
  <tr>
    <td align="center">Stahlbarren</td>
    <td align="center">Stahlbarren</td>
  </tr>
</table>

Jeder Stahlbarren aus dem Ore Dictionary (`ingotSteel`) passt.

## Bedienung

| Was du tust | Was passiert |
| --- | --- |
| **Rechtsklick auf eine Weiche** | Schaltet weiter: verriegelt auf gerade → verriegelt auf Abzweig → entriegelt. Der Chat meldet den neuen Zustand. |
| **Rechtsklick in die Luft** (oder auf einen anderen Block) | Entriegelt aus der Ferne die Weiche, die du zuletzt mit diesem Schlüssel verriegelt hast. |
| Mauszeiger auf den Schlüssel im Inventar | Der Tooltip zeigt, welche Weiche du zuletzt verriegelt hast – mit Koordinaten und Zustand. |

Du kannst auf jeden Gleisblock der Weiche klicken, nicht nur auf den Weichenanfang.

### Meldungen im Chat

Die Meldungen sind nicht übersetzt und erscheinen auf Englisch:

| Meldung | Bedeutung |
| --- | --- |
| `Switch locked to Straight` | Verriegelt auf gerade |
| `Switch locked to Diverge` | Verriegelt auf Abzweig |
| `Switch unlocked` | Entriegelt – die Weiche folgt wieder dem Redstone |
| `The last-locked switch has been wirelessly unlocked!` | Die zuletzt verriegelte Weiche wurde aus der Ferne entriegelt |
| `The last-locked switch is already unlocked!` | Die Weiche war schon entriegelt |
| `You haven't locked any switches with this key!` | Mit diesem Schlüssel wurde noch keine Weiche verriegelt |

> ⚠️ **Achtung:** Das Entriegeln aus der Ferne klappt nur, solange der Chunk mit der Weiche geladen ist. Ist er es nicht, vergisst der Schlüssel die Weiche, ohne sie zu entriegeln – dann musst du hinlaufen und sie direkt anklicken.

## Weichen ohne Schlüssel

Ohne Verriegelung steht eine Weiche auf *gerade* und stellt auf *Abzweig*, sobald ein Gleisblock an ihrem Anfang ein Redstone-Signal bekommt – etwa von einem Hebel daneben. Wie du Weichen baust, steht beim [Schienenplan](Schienenplan).

## Siehe auch

- [Schienenplan](Schienenplan) – Weichen bauen
- [Golden Spike](Golden-Spike) – Weichen-Abzweige frei formen
- [Immersive Railroading](Immersive-Railroading) – Übersicht

---

<sub>Stand: Revelation++ 26w41e mit Immersive Railroading 1.10.0. Werte sind am Quellcode der Mod geprüft.</sub>
