**Tough As Nails** macht das Überleben in Revelation++ härter: Neben Hunger und Leben musst du auf deinen **Durst** und deine **Körpertemperatur** achten. Revelation++ nutzt dafür eine eigene, angepasste Version der Mod und ihrer Erweiterung *Tough Expansion* – mit anderen Werten, Rezepten und ein paar Änderungen am Verhalten.

| Eigenschaft | Wert |
| --- | --- |
| Mod | Tough As Nails 3.1.0.1 (eigene Version für Revelation++) |
| Erweiterung | Tough Expansion 3.4.24 (eigene Version für Revelation++) |
| Anzeigen | Durstleiste rechts über der Hungerleiste, Thermometer-Symbol mittig über der Schnellleiste |
| Konfiguration | `config/toughasnails/`, `config/ToughExpansion.cfg` |

## Die beiden Themen

| Seite | Worum es geht |
| --- | --- |
| [Durst](Durst) | Was dich durstig macht, wo du Wasser findest, wie du es filterst – mit Feldflasche, Regenkollektor, Säften und Thirst Quencher. |
| [Temperatur](Temperatur) | Was dich frieren oder schwitzen lässt – Biom, Jahreszeit, Höhe, Wetter, Blöcke, Kleidung – und wie du dich schützt. |

## Was in Revelation++ anders ist

### Geändertes Verhalten

Die Revelation++-Versionen von Tough As Nails und Tough Expansion verhalten sich an einigen Stellen anders als die Originale:

| Was | Original | Revelation++ |
| --- | --- | --- |
| Feldflasche füllen | an jedem Wasserblock und Kessel, mit ungefiltertem Wasser | nur mit **gefiltertem** Wasser: Block aus gefiltertem Wasser, Regenkollektor oder Holzkohlefilter |
| Thirst Quencher füllen | mit normalem oder gefiltertem Wasser | nur mit **gefiltertem** Wasser |
| Lagerfeuer nachlegen | funktionierte wegen eines Tippfehlers in der Mod nicht | mit *Fire Wood* aus cocricot |
| Höhe | kälter, je höher du bist | kälter, je weiter du von der Meereshöhe entfernt bist – nach oben **und** nach unten |
| Fehlerbehebungen | – | ein Absturz beim Ablauf von Klimatisierungs-Effekten und ein Darstellungsfehler beim Temperatur-Symbol sind behoben; die Tooltips von Thirst Quencher und Temperature Regulator stimmen |

### Andere Einstellungen

| Einstellung | Original | Revelation++ |
| --- | --- | --- |
| Tempo der Körpertemperatur | Punkt alle 1 bis 20 Sekunden | rund dreimal langsamer: Punkt alle 10 bis 60 Sekunden |
| Höhe | bis −3 pro 64 Blöcke | bis −7 pro 64 Blöcke |
| Kleidung (Wolle, gelierter Schleim) | ±1 pro Teil | ±4 pro Teil; dazu Fellrüstung (Mo' Creatures) und Arktisrüstung (Twilight Forest) mit +4 |
| Lagerfeuer | +5 | +10 |
| weitere Wärme- und Kältequellen | wenige | viele, z. B. Hochöfen und Kokereien (+20), Fackeln (+3), Eis (−5), Kryotheum (−15) |
| Tageszeit | nur nachts kälter (−9, in extremen Biomen mehr) | mittags bis +5, nachts bis −5 |
| Jahreszeiten | Sommer bis +5, Winter bis −14 | Sommer bis +10, Winter bis −10 |
| Nässe / Schneefall / Sprinten | −7 / −10 / +3 | −10 / −5 / +5 |
| Direkt aus Wasserblöcken trinken | an | **aus** |
| Eiswürfel aus Eis, Magmasplitter aus Magmablöcken | an | **aus** – dafür gibt es sie im Pulverisierer |

Die genauen Werte stehen auf den Seiten [Durst](Durst) und [Temperatur](Temperatur).

### Neue Rezepte

Über die CraftTweaker-Scripts von Revelation++ haben einige Gegenstände neue Rezepte bekommen:

- **Lagerfeuer** aus Fire Wood und einer Bruchsteinstufe
- **Holzkohlefilter** aus Papier und Pulverisierter Holzkohle – nur noch einer statt drei pro Rezept
- **Regenkollektor**, **Thermometer**, **Thirst Quencher**, **Temperature Regulator** und **Portable Temperature Regulator** mit eigenen, aufwendigeren Rezepten
- Trinkwasser aus Pam's HarvestCraft wird mit einer Glasflasche zur **gefilterten Wasserflasche** (und umgekehrt)
- Eine Wasserflasche lässt sich nicht mehr im Ofen filtern.

Alle Rezepte zeigt dir JEI; die wichtigsten stehen auf den beiden Unterseiten.

## Zusammenspiel mit anderen Mods

| Mod | Was sie beiträgt |
| --- | --- |
| Serene Seasons | Jahreszeiten, die die Temperatur verändern |
| Tough Expansion | Thirst Quencher und Temperature Regulator |
| Water Skin | zeigt die Hydration auf der Durstleiste an |
| Collecting Rain | Ein leerer Eimer füllt sich bei Regen in 5 Sekunden mit Wasser. |
| Water Control, Universal Tweaks | Wasserquellen sind endlich, und eine Glasflasche verbraucht einen ganzen Wasserblock. |
| Winter Wonderland | Schnee häuft sich im Winter Schicht für Schicht an. |
| [Milchmanns Little Fixes](Milchmanns-Little-Fixes) | Was du trinkst, landet in der Blase – siehe [Notdurft](Notdurft). Außerdem sorgt die Mod dafür, dass jedes Getränk nur einmal zählt; Water Skin hätte es sonst ein zweites Mal gewertet. |

## Befehle

Für Operatoren gibt es den Befehl `/toughasnails`:

| Befehl | Was er tut |
| --- | --- |
| `/toughasnails tempinfo` | Blendet eine Aufschlüsselung aller Einflüsse auf deine Temperatur ein oder aus – ideal, um herauszufinden, warum dir kalt ist. |
| `/toughasnails settemp Wert` | Setzt deine Körpertemperatur auf einen Wert von 0 bis 25. |

## Siehe auch

- [Durst](Durst)
- [Temperatur](Temperatur)
- [Schneeschmelzer](Schneeschmelzer) – gegen zu viel Schnee im Winter

---

<sub>Stand: Revelation++ 26w42 mit Tough As Nails 3.1.0.1 und Tough Expansion 3.4.24 (beide angepasst). Verglichen mit Tough As Nails 3.1.0.141 und Tough Expansion 3.4.24 im Original; Werte sind am Quellcode der Mods, an den Konfigurationsdateien und an den CraftTweaker-Scripts des Packs geprüft.</sub>
