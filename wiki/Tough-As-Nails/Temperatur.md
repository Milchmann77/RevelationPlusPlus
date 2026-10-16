Mit *Tough As Nails* hat dein Körper eine **Temperatur**. Kälte und Hitze aus deiner Umgebung ziehen sie langsam nach unten oder oben – im Schneesturm mitten im Winter genauso wie neben einem Hochofen im Hochsommer. Wird es zu extrem, nimmst du Schaden. Diese Seite zeigt, was die Temperatur beeinflusst und wie du dich schützt.

| Eigenschaft | Wert |
| --- | --- |
| Mod | [Tough As Nails](Tough-As-Nails), angepasst für Revelation++ |
| Anzeige | Thermometer-Symbol mittig über der Schnellleiste |
| Skala | 0 bis 25, angenehm sind 11 bis 14 |
| Gefahr | *Unterkühlung* bei 2 und darunter, *Überhitzung* ab 23 |

## So funktioniert die Körpertemperatur

Aus allem um dich herum – Biom, Jahreszeit, Tageszeit, Wetter, Höhe, Blöcken in der Nähe und deiner Kleidung – ergibt sich eine **Zieltemperatur**. Deine Körpertemperatur bewegt sich Schritt für Schritt auf dieses Ziel zu.

In Revelation++ geht das gemächlich: je nach Abstand zum Ziel etwa ein Punkt alle 10 bis 60 Sekunden – rund dreimal langsamer als im normalen Tough As Nails. Du hast also Zeit zu reagieren, wenn das Symbol kälter oder wärmer wird.

| Temperatur | Bereich | Was passiert |
| ---: | --- | --- |
| 0–2 | eisig | **Unterkühlung** |
| 3–5 | eisig | Noch keine Folgen, aber höchste Zeit für Wärme. |
| 6–10 | kühl | – |
| 11–14 | angenehm | – |
| 15–19 | warm | – |
| 20–22 | heiß | Noch keine Folgen, aber höchste Zeit für Abkühlung. |
| 23–25 | heiß | **Überhitzung** |

*Unterkühlung* und *Überhitzung* kosten dich alle 2,5 Sekunden ein Viertelherz. Auf *Einfach* hört der Schaden bei 5 Herzen auf, auf *Normal* bei einem halben Herz – auf *Schwer* kannst du daran sterben.

## Was die Temperatur beeinflusst

Die folgenden Werte addieren sich zur Zieltemperatur. Ohne jeden Einfluss läge sie bei 12.

### Biom

Je nach Biom zwischen **−10** (Eisebenen und andere Schneebiome) und **+10** (Wüste, Mesa). Eine Ebene liegt bei etwa +2, eine Taiga bei etwa −6. Die Mod mittelt dabei deinen Standort mit den Punkten 10 Blöcke nördlich, südlich, östlich und westlich – an Biomgrenzen gleicht sich die Temperatur also an.

### Jahreszeit

Durch *Serene Seasons* hat Revelation++ Jahreszeiten, jede in drei Abschnitte geteilt. Gegenüber dem normalen Tough As Nails sind die Sommer in Revelation++ deutlich heißer, der Hochwinter etwas milder und Früh- und Spätwinter kälter:

| Jahreszeit | früh | mitte | spät |
| --- | ---: | ---: | ---: |
| Frühling | −5 | 0 | +5 |
| Sommer | +9 | +10 | +9 |
| Herbst | +5 | 0 | −5 |
| Winter | −9 | −10 | −9 |

Jeder Abschnitt dauert 7 Minecraft-Tage, eine Jahreszeit also 21 Tage und ein ganzes Jahr 84 Tage. Neue Welten beginnen im Hochsommer. Jahreszeiten gibt es nur in der Oberwelt; welche gerade ist, zeigt dir die *Jahreszeitenuhr*.

### Tageszeit

Mittags ist es bis zu **+5** wärmer, um Mitternacht bis zu **−5** kälter. Morgens und abends liegt der Einfluss bei null.

### Höhe

In Revelation++ wird es kälter, je weiter du dich von der Meereshöhe entfernst – **nach oben und nach unten**:

| Höhe (Y) | Einfluss |
| ---: | ---: |
| 255 | −20 |
| 200 | −14 |
| 160 | −10 |
| 128 | −6 |
| 100 | −3 |
| 65 bis 73 | 0 |
| 64 | −1 |
| 40 | −3 |
| 20 | −5 |
| 11 | −6 |
| 0 | −8 |

Das gilt in der Oberwelt. Auf Berggipfeln wird es also bitterkalt – und in tiefen Höhlen ebenfalls frisch.

### Unter der Erde

Je tiefer du unter der Oberfläche bist, desto weniger spürst du Biom, Jahreszeit und Tageszeit. 30 Blöcke unter der Oberfläche fallen sie ganz weg. Der Einfluss der Höhe bleibt.

### Wetter und Bewegung

| Einfluss | Wert | Hinweis |
| --- | ---: | --- |
| Nass (im Wasser oder im Regen) | −10 | In heißen Quellen (Biomes O' Plenty) wirst du nicht kalt. |
| Schneefall | −5 | nur unter freiem Himmel |
| Sprinten | +5 | |

### Blöcke in der Nähe

Wärme- und Kältequellen wirken in einem Bereich von 7 × 7 Blöcken um dich herum, von drei Blöcken unter deinen Füßen bis auf Kopfhöhe. Es zählt immer nur die **stärkste** Quelle – zwei Lagerfeuer wärmen nicht mehr als eines.

| Block | Einfluss |
| --- | ---: |
| Kokerei, Grober Hochofen, Verbesserter Hochofen, Legierungsofen (Immersive Engineering) | +20 |
| Kokerei (Railcraft) | +20 |
| Lava | +15 |
| Magmablock | +12,5 |
| Lagerfeuer (brennend) | +10 |
| Netherrack-Ofen aus Natura (brennend) | +6 |
| Feuer, Glowstone, heiße Quelle (Biomes O' Plenty) | +5 |
| Ofen (brennend), Fackel | +3 |
| Steinfackel (Tinkers' Construct) | +2 |
| Redstone-Fackel, Netherrack | +1 |
| Schneedecke | −1 |
| Eis | −5 |
| flüssiger Stickstoff (ExtraPlanets) | −10 |
| Geliertes Kryotheum (Thermal Foundation), Stickstoffeis (ExtraPlanets) | −15 |

### Kleidung

| Kleidung | Einfluss pro Teil | volle Rüstung |
| --- | ---: | ---: |
| Wollkleidung (Tough As Nails) | +4 | +16 |
| Fellrüstung (Mo' Creatures) | +4 | +16 |
| Arktisrüstung (The Twilight Forest) | +4 | +16 |
| Rüstung aus geliertem Schleim (Tough As Nails) | −4 | −16 |
| Verzauberung *Warming* | +1 | +4 |
| Verzauberung *Cooling* | −1 | −4 |

In Revelation++ wirkt Kleidung viermal so stark wie im normalen Tough As Nails – eine komplette Wollausstattung macht aus eisigem Wetter angenehmes. Die beiden Verzauberungen gibt es am Zaubertisch für jedes Rüstungsteil; sie schließen sich gegenseitig aus. Ein Teil, das schon als Kleidung zählt, bekommt durch die Verzauberung keinen Zusatzbonus.

## Schutz vor Kälte und Hitze

### Wollkleidung und gelierter Schleim

Die **Wollkleidung** (Wollhaube, Wolljacke, Wollhose, Wollstiefel) stellst du wie jede Rüstung her, nur aus Wolle. Für die Kühl-Rüstung brauchst du **Gelierten Schleim**: 8 Eiswürfel um einen Schleimball ergeben 3 Stück. Daraus fertigst du Helm, Brustplatte, Beinschutz und Stiefel.

> ℹ️ **Gut zu wissen:** In Revelation++ lässt Eis beim Abbauen keine **Eiswürfel** fallen, und Magmablöcke lassen keine **Magmasplitter** fallen. Eiswürfel bekommst du im Pulverisierer (Thermal Expansion): ein Eisblock ergibt 4 Eiswürfel. Magmasplitter gibt es dort aus Magmacreme.

### Lagerfeuer

Ein brennendes **Lagerfeuer** wärmt mit +10 und leuchtet hell. In Revelation++ hat es ein eigenes Rezept:

<table>
  <tr>
    <td align="center">Fire Wood</td>
    <td rowspan="2" align="center">➜</td>
    <td rowspan="2" align="center"><b>1 × Lagerfeuer</b></td>
  </tr>
  <tr>
    <td align="center">Bruchsteinstufe</td>
  </tr>
</table>

*Fire Wood* stammt aus der Deko-Mod cocricot.

- **Anzünden:** mit Feuerzeug, oder mit Stöcken – dann zündet jeder Stock mit 10 % Wahrscheinlichkeit.
- **Nachlegen:** Rechtsklick mit Fire Wood, solange es brennt. So brennt es länger.
- **Ausgehen:** Nach ein paar Minuten brennt es von selbst herunter. Regen löscht es sofort.

> ⚠️ **Achtung:** Wer in ein brennendes Lagerfeuer läuft, fängt Feuer.

### Heiz- und Kühlspule

Spulen klimatisieren einen **geschlossenen Raum**: Mit Redstone-Signal (an der Spule oder am Block darüber) füllt die **Heizspule** den Raum mit Wärme (+10), die **Kühlspule** mit Kälte (−10). Die Wirkung breitet sich durch freie Blöcke bis zu 50 Blöcke weit aus – aber nur dort, wo kein Himmel zu sehen ist. Ohne Dach geht nichts.

<table>
  <tr>
    <td align="center">Magmasplitter</td>
    <td align="center"></td>
    <td align="center">Magmasplitter</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Heizspule</b></td>
  </tr>
  <tr>
    <td align="center">Magmasplitter</td>
    <td align="center">Bruchstein</td>
    <td align="center">Magmasplitter</td>
  </tr>
  <tr>
    <td align="center">Bruchstein</td>
    <td align="center">Redstone</td>
    <td align="center">Bruchstein</td>
  </tr>
</table>

Die Kühlspule entsteht genauso, nur mit Eiswürfeln statt Magmasplittern. Eine eingeschaltete Heizspule raucht, eine Kühlspule streut Schneeflocken.

### Temperature Regulator

Der **Temperature Regulator** aus *Tough Expansion* bringt alle Spieler im Umkreis von **40 Blöcken** (in jeder Höhe) auf eine angenehme Temperatur von 14 – einen Punkt alle 5 Sekunden – und beendet Unterkühlung und Überhitzung.

<table>
  <tr>
    <td align="center">Kupferzahnrad</td>
    <td align="center">Thermometer</td>
    <td align="center">Kupferzahnrad</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Temperature Regulator</b></td>
  </tr>
  <tr>
    <td align="center">Kühlspule</td>
    <td align="center">Maschinenrahmen</td>
    <td align="center">Heizspule</td>
  </tr>
  <tr>
    <td align="center">Kupferzahnrad</td>
    <td align="center">Redstone-Empfängerspule</td>
    <td align="center">Kupferzahnrad</td>
  </tr>
</table>

| Eigenschaft | Wert |
| --- | --- |
| Energiespeicher | 16.000.000 RF |
| Verbrauch | 10 RF pro Tick und Spieler, solange er jemanden regelt |
| Bedienung | Rechtsklick mit leerer Hand wechselt den Redstone-Modus: braucht Signal / braucht kein Signal / ignoriert Redstone. Schleichen + Rechtsklick zeigt den Energiestand. |

### Portable Temperature Regulator

Den **Portable Temperature Regulator** trägst du bei dir – im Inventar oder im Trinket-Slot (Baubles). Er regelt nur deine eigene Temperatur, genauso wie der große Regulator, und braucht dafür 10 RF pro Tick. Sein Speicher fasst 1.600.000 RF.

<table>
  <tr>
    <td align="center">Invarzahnrad</td>
    <td align="center">Thermometer</td>
    <td align="center">Invarzahnrad</td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Portable Temperature Regulator</b></td>
  </tr>
  <tr>
    <td align="center">Heizspule</td>
    <td align="center">Temperature Regulator</td>
    <td align="center">Kühlspule</td>
  </tr>
  <tr>
    <td align="center">Invarzahnrad</td>
    <td align="center">Thermometer</td>
    <td align="center">Invarzahnrad</td>
  </tr>
</table>

### Tränke

| Trank | Zutat (in einen seltsamen Trank) | Dauer | Wirkung |
| --- | --- | --- | --- |
| Trank der Kälteresistenz | Eiswürfel | 1:00, mit Redstone 2:00 | schützt vor Unterkühlung |
| Trank der Hitzeresistenz | Magmasplitter | 1:00, mit Redstone 2:00 | schützt vor Überhitzung |

Die Tränke verhindern den Schaden, nicht die Temperatur selbst: Läuft die Wirkung ab, während du noch frierst, geht es sofort los.

## Thermometer

Das **Thermometer** zeigt die Umgebungstemperatur an der Stelle, an der du stehst – ohne deine Kleidung, Nässe oder Sprinten. So erkennst du, ob ein Ort auf Dauer zu kalt oder zu warm ist. In Revelation++ baust du es aus dem Thermometer von Energy Control:

<table>
  <tr>
    <td align="center"></td>
    <td align="center">Glasscheibe</td>
    <td align="center"></td>
    <td rowspan="3" align="center">➜</td>
    <td rowspan="3" align="center"><b>1 × Thermometer</b></td>
  </tr>
  <tr>
    <td align="center">Glasscheibe</td>
    <td align="center">Thermometer (Energy Control)</td>
    <td align="center">Glasscheibe</td>
  </tr>
  <tr>
    <td align="center"></td>
    <td align="center">Glasscheibe</td>
    <td align="center"></td>
  </tr>
</table>

## Tipps

- **Winter:** Wollkleidung anziehen und auf keinen Fall nass werden. Nässe, Winter und Nacht zusammen machen −25 – da hilft nur noch ein warmes Haus mit Lagerfeuer oder Heizspule.
- **Sommer in der Wüste:** Gelierter Schleim, nicht sprinten, und wenn möglich nachts reisen.
- **Bergwerke:** Tief unten ist es in Revelation++ kühl. Eine Fackel neben dem Arbeitsplatz wärmt schon ein wenig.
- **Industrie:** Hochöfen und Kokereien heizen kräftig. Arbeite im Sommer nicht stundenlang direkt daneben.
- **Basis:** Ein Temperature Regulator macht die ganze Basis angenehm – ideal für Server mit mehreren Spielern.

## Siehe auch

- [Tough As Nails](Tough-As-Nails) – Überblick und was in Revelation++ anders ist
- [Durst](Durst) – die zweite Hälfte von Tough As Nails
- [Schneeschmelzer](Schneeschmelzer) – damit der Winter nicht alles zuschneit

---

<sub>Stand: Revelation++ 26w42 mit Tough As Nails 3.1.0.1 und Tough Expansion 3.4.24 (beide angepasst) sowie Serene Seasons 1.2.18. Werte sind am Quellcode der Mods, an den Konfigurationsdateien und an den CraftTweaker-Scripts des Packs geprüft.</sub>
