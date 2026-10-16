Der **Blitzableiter** fängt bei Gewitter einen echten Blitz ein und speichert dessen Energie: zwischen **500 Millionen und 5 Milliarden RF** pro Einschlag. Die Energie gibt er an alles ab, was direkt an ihn angrenzt und Strom aufnehmen kann – ein riesiger Energieschub für Spieler mit großem Speicher.

| Eigenschaft | Wert |
| --- | --- |
| Name im Spiel | Blitzableiter |
| Mod | [Milchmanns Little Fixes](Milchmanns-Little-Fixes) |
| Block-ID | `milifi:lightningrod` |
| Kreativ-Reiter | Redstone |
| Speicher | 5.000.000.000 RF (5 Milliarden) |
| Ertrag pro Blitz | 500 Millionen bis 5 Milliarden RF, zufällig |
| Redstone | sendet Signalstärke 15, solange es gewittert |

## Herstellung

<table>
  <tr>
    <td align="center">Quantum Core</td>
    <td align="center">Iridiumblock</td>
    <td align="center">Quantum Core</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Blitzableiter</b></td>
  </tr>
  <tr>
    <td align="center">Quantum Core</td>
    <td align="center">Silberblock</td>
    <td align="center">Quantum Core</td>
  </tr>
  <tr>
    <td align="center">Wafer aus Titan</td>
    <td align="center">IV Energy Producer (IC2)</td>
    <td align="center">Wafer aus Titan</td>
  </tr>
</table>

| Zutat | Herkunft |
| --- | --- |
| Quantum Core | Advanced Solar Panels |
| Iridiumblock, Silberblock | z. B. Thermal Foundation – jeder Block aus dem Ore Dictionary passt (`blockIridium`, `blockSilver`) |
| Wafer aus Titan | ExtraPlanets |
| IV Energy Producer (IC2) | Energy Converters |

Das Rezept stammt aus den CraftTweaker-Scripts von Revelation++.

## Aufbau

1. **Metall drunter:** Der Blitzableiter funktioniert nur, wenn **direkt unter ihm ein Metallblock** steht, etwa ein Eisenblock, ein Eisengitter oder ein Stahlblock. Stein, Holz oder Erde reichen nicht.
2. **Hoch hinaus:** Im Umkreis von 64 Blöcken bekommt nur der **höchste** Blitzableiter den Blitz ab. Bau deinen also höher als alle anderen in der Nähe.
3. **Speicher daneben:** Setz einen Energiespeicher oder ein Kabel direkt an eine Seite des Blitzableiters. Er schiebt seine Energie jeden Tick in alle angrenzenden Blöcke, die Strom aufnehmen – so schnell, wie sie es schaffen.

> 💡 **Tipp:** Bei bis zu 5 Milliarden RF pro Blitz läuft ein gewöhnlicher Akku sofort über. Nimm etwas Großes – etwa einen Energiekern aus Draconic Evolution oder eine Induktionsmatrix aus Mekanism – oder verteil die Energie direkt über ein Flux-Netzwerk.

## So läuft ein Gewitter ab

1. Ein Gewitter beginnt.
2. Ist der Blitzableiter **komplett leer**, steht auf Metall und ist der höchste in seiner Umgebung, schlägt **einmal** ein Blitz in ihn ein – mit Donner, Funken und Rauch.
3. Der Blitzableiter speichert zwischen 500 Millionen und 5 Milliarden RF und gibt sie nach und nach ab.
4. Hat der Einschlag ihn mindestens zur Hälfte gefüllt (2,5 Milliarden RF), **endet das Gewitter**, und es regnet nur noch.

Pro Gewitter schlägt es nur einmal ein. Der nächste Blitz kommt frühestens beim nächsten Gewitter – und nur, wenn der Blitzableiter bis dahin wieder leer ist.

## Anzeige

Schaust du auf einen Blitzableiter, erscheint über der Schnellleiste ein Balken mit seinem Füllstand: grün, wenn er fast leer ist, über Gelb bis Rot, wenn er voll ist. Schleichst du dabei, steht die genaue Zahl darüber, z. B. `1234567890 / 5000000000 RF`.

## Gewitter-Melder

Solange es irgendwo in der Welt gewittert, gibt der Blitzableiter ein Redstone-Signal der Stärke 15 ab – auch wenn er gerade nicht getroffen wird. Damit kannst du zum Beispiel Lampen, Türen oder Maschinen steuern, sobald ein Gewitter aufzieht.

## Sicherheit

Der Einschlag ist ein **echter Blitz**:

> ⚠️ **Achtung:** In Revelation++ richtet ein Blitz **20 Schaden** an (10 Herzen). Halte dich bei Gewitter mindestens ein paar Blöcke vom Blitzableiter fern, und halte auch Tiere und Dorfbewohner davon weg.

- Der Blitz kann in der Nähe Feuer legen. Bau den Blitzableiter nicht auf ein Holzdach und lass nichts Brennbares direkt daneben liegen.
- Herumliegende Items werden in Revelation++ vom Blitz nicht zerstört.
- Wie bei jedem Blitz werden Creeper in der Nähe zu geladenen Creepern, Schweine zu Schweinezombies und Dorfbewohner zu Hexen.

## Häufige Fragen

**Warum schlägt kein Blitz ein?**
Prüf der Reihe nach: Gewittert es wirklich (nicht nur Regen)? Ist der Blitzableiter leer – der Balken muss ganz grün und leer sein? Steht er auf einem Metallblock? Gibt es im Umkreis von 64 Blöcken einen höheren Blitzableiter? Und hat es in diesem Gewitter schon eingeschlagen?

**Mein Speicher nimmt die Energie nicht an.**
Der Speicher muss direkt an den Blitzableiter angrenzen und Forge Energy (RF/FE) aufnehmen. Viele Mods begrenzen, wie viel pro Tick hineingeht – dann dauert das Entleeren entsprechend länger.

## Siehe auch

- [Milchmanns Little Fixes](Milchmanns-Little-Fixes) – alle Funktionen der Mod
- [Schneeschmelzer](Schneeschmelzer) – ein Abnehmer für viel Energie

---

<sub>Stand: Revelation++ 26w42 mit Milchmanns Little Fixes 26w42. Werte sind am Quellcode der Mod geprüft.</sub>
