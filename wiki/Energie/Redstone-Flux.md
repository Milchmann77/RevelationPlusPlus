**Redstone Flux** (kurz **RF**) ist die Einheit, in der Revelation++ Strom misst. Fast jede Maschine, jedes Kabel und jeder Akku rechnet in RF – oder in einer Einheit, die genau gleich viel wert ist. Denn in Revelation++ gilt eine einfache Regel: **Alle Energieeinheiten sind gleich viel wert.** Ein EU aus IndustrialCraft 2 zählt so viel wie ein RF, ein Joule aus Mekanism ebenso und ein MJ aus BuildCraft auch. Du musst nie umrechnen.

| Eigenschaft | Wert |
| --- | --- |
| Abkürzung | RF; in vielen neueren Mods FE (Forge Energy) – beides ist dasselbe |
| Herkunft | Mod *Redstone Flux* von Team CoFH (Thermal Expansion), heute fest in Forge eingebaut |
| Leistung | RF/t – RF pro Tick; eine Sekunde hat 20 Ticks |
| Grundregel in Revelation++ | 1 RF = 1 FE = 1 EU = 1 J = 1 MJ = 1 µI = 1 gJ |

## Was RF ist

RF ist eine **Menge** Energie, so wie Liter eine Menge Wasser sind. Ein Akku speichert RF, eine Maschine verbraucht RF. Wie schnell Energie fließt, misst du in **RF/t** (RF pro Tick). Ein Tick ist eine Zwanzigstelsekunde.

Ein Beispiel: Die Maschinen aus [Immersive Railroading](Immersive-Railroading) brauchen beim Arbeiten **32 RF/t**. Das sind 640 RF pro Sekunde und 38.400 RF pro Minute.

| Gerät | Was die Zahl bedeutet |
| --- | --- |
| Generator | wie viel RF/t er erzeugt |
| Akku | wie viel RF er speichert – und wie viel RF/t er höchstens annimmt oder abgibt |
| Kabel | wie viel RF/t höchstens hindurchpasst |
| Maschine | wie viel RF/t sie beim Arbeiten braucht, oft auch: wie viel RF ein Arbeitsschritt kostet |

### RF und Forge Energy

RF stammt aus der Mod *Redstone Flux* von Team CoFH, die auch Thermal Expansion geschrieben haben. Seit Minecraft 1.12 bringt Forge ein eigenes Energiesystem mit: **Forge Energy (FE)**. Es funktioniert genau wie RF, und die beiden lassen sich ohne Wandler verbinden – ein Thermal-Kabel versorgt eine FE-Maschine und umgekehrt.

Manche Mods geben der Forge Energy einen eigenen Namen. Gemeint ist immer dasselbe:

| Name | Mod |
| --- | --- |
| µI (Micro Infinity) | Ender IO |
| IF (Immersive Flux) | Immersive Engineering, Immersive Petroleum |
| CF (Crystal Flux) | Actually Additions |
| T (Tesla) | Mods mit *Tesla Core Lib* |

## Alle Einheiten sind gleich viel wert

Einige Mods haben ganz eigene Energiesysteme mit eigenen Einheiten. In Revelation++ sind sie alle auf RF abgestimmt:

| Einheit | Name | Wo sie dir begegnet | Wert |
| --- | --- | --- | --- |
| RF | Redstone Flux | Thermal-Mods, Draconic Evolution, RFTools, Extreme Reactors, Redstone Arsenal | 1 RF |
| FE | Forge Energy | Flux Networks, Refined Storage, Cyclic, Industrial Foregoing und fast alle neueren Mods | 1 RF |
| EU | Energy Unit | IndustrialCraft 2, Advanced Solar Panels, Compact Solars, Advanced Machines, Gravitation Suite | 1 RF |
| J | Joule | Mekanism, Mekanism Generators | 1 RF |
| gJ | Galacticraft-Joule | Galacticraft, Galaxy Space, ExtraPlanets, More Planets | 1 RF |
| MJ | Minecraft Joule | BuildCraft | 1 RF |

Mekanism rechnet intern in Joule, zeigt aber RF an. In der Konfiguration von Mekanism (`EnergyType` in `config/mekanism.cfg`) lässt sich die Anzeige auf J, EU oder T umstellen – die Zahlen bleiben gleich.

> ℹ️ **Anderswo ist das anders.** In den meisten anderen Modpacks und Wikis gilt 1 EU = 4 RF und 1 MJ = 10 RF. Folgst du einer Anleitung von dort, rechne hier 1:1.

### Was das für dich heißt

- **Umwandeln kostet nichts.** Alle Wandler unten reichen Energie 1:1 und ohne Verlust weiter.
- **Zahlen lassen sich direkt vergleichen.** Eine MFSU mit 40 Millionen EU speichert genauso viel wie ein Akku mit 40 Millionen RF.
- **Du kannst Systeme frei mischen.** Ein IC2-Generator kann einen Mekanism-Akku laden, ein Thermal-Dynamo eine IC2-Maschine antreiben – du brauchst nur das passende Kabel dazwischen.

> 💡 **Tipp:** Der **Generator** aus IndustrialCraft 2 liefert in Revelation++ **32 EU/t** statt der üblichen 10. Ein Stück Kohle bringt darin 12.800 EU – ein guter Einstieg in die Stromversorgung.

## Mods mit eigener Rechengröße

Ein paar Mods rechnen intern in einer eigenen Größe. Was hineinfließt, zählt trotzdem für jede Einheit gleich – nur die Anzeige ist anders:

| Mod | Anzeige | Umrechnung |
| --- | --- | --- |
| Applied Energistics 2 | AE | 1 AE = 2 RF. Der **Energieakzeptor** nimmt RF und EU gleichermaßen an. |
| OpenComputers | ohne Einheit | 1 Einheit = 10 RF. Der **Leistungswandler** nimmt RF/FE und EU an. |
| QuarryPlus (*Additional Enchanted Miner*) | MJ | 1 MJ von QuarryPlus = 10 RF = 10 EU = 10 MJ aus BuildCraft. |
| Railcraft | Ladung | Der **IC2-Stromumformer** macht aus 1 EU 1 Ladung. Zurück in RF geht es nicht. |

Ganz eigene Systeme sind dagegen zum Beispiel **EMC** (ProjectE), **LP** (Blood Magic), **Vis** (Thaumcraft), **Sternenlicht** (Astral Sorcery) und **Grid Power** (Extra Utilities 2). Sie lassen sich nicht in RF umwandeln. Eine Ausnahme ist **Mana** aus Botania: Das **Mana Fluxfield** macht aus 1 Mana 10 RF – aber nur in diese Richtung.

## Energie übertragen und umwandeln

Thermal-Kabel (Fluxducts), Ender-IO-Leitungen und die Drähte von Immersive Engineering übertragen nur RF/FE. Für EU, Joule, gJ oder MJ brauchst du Kabel oder Wandler, die mehrere Systeme beherrschen. Weil alle Einheiten gleich viel wert sind, geht dabei nichts verloren.

| Weg | Was er kann |
| --- | --- |
| Universelles Kabel (Mekanism) | Verbindet sich mit fast allem: RF/FE, EU, Joule und Tesla. Jede Maschine bekommt ihren Strom in ihrer eigenen Einheit. |
| Flux-Netzwerk (Flux Networks) | Drahtlos. **Flux Stecker** nehmen RF/FE und EU auf, **Flux Zugangspunkte** geben RF/FE und EU ab. |
| Energy Converters | Eine **Energy Bridge** mit Eingängen (*Consumer*) und Ausgängen (*Producer*) für FE, RF, EU, MJ und Tesla. |
| Galacticraft | Galacticraft-Maschinen, Akkus und **Aluminiumkabel** nehmen RF/FE, EU, Joule und MJ auf und geben sie wieder ab. |
| Industrial Wires | IC2-Kabel auf den Isolatoren von Immersive Engineering – EU über weite Strecken. |
| Elektromotor (Forestry) | Macht aus EU RF. |

### Universelles Kabel aus Mekanism

Das bequemste Allround-Kabel: Es nimmt Strom aus jedem Generator an, den es berührt, und verteilt ihn an alle angeschlossenen Maschinen – egal, ob sie RF, EU oder Joule wollen. An IC2-Maschinen gibt es seine EU so ab, dass **nichts explodiert** (siehe [Spannung bei EU](#spannung-bei-eu)).

| Stufe | Durchsatz |
| --- | --- |
| Universelles Basiskabel | 3.200 RF/t |
| Fortgeschrittenes Universelles Kabel | 12.800 RF/t |
| Universelles Elitekabel | 64.000 RF/t |
| Ultimatives Universelles Kabel | 320.000 RF/t |

### Flux Networks

Ein Flux-Netzwerk überträgt Strom ohne Kabel – über beliebige Entfernungen und sogar in andere Dimensionen. Ein **Flux Stecker** nimmt Strom auf, ein **Flux Zugangspunkt** gibt ihn ab. Beide schaffen von Haus aus bis zu 800.000 RF/t; im Menü kannst du das begrenzen und Prioritäten setzen.

Mit IC2 klappt das in beide Richtungen: IC2-Kabel können EU in einen Flux Stecker schieben, und ein Flux Zugangspunkt beliefert IC2-Maschinen mit genau der Spannung, die sie vertragen. In den Netzwerk-Einstellungen kannst du die Anzeige von RF auf EU umstellen.

### Energy Converters

Energy Converters arbeitet mit Bausteinen:

1. Stell eine **Energy Bridge** auf. Sie ist der Zwischenspeicher und fasst 10.000 RF.
2. Setz direkt daneben einen **Energy Consumer** für die Einheit, die hineinkommt – zum Beispiel einen *LV Energy Consumer (IC2)* für EU aus einem Generator.
3. Setz auf eine andere Seite einen **Energy Producer** für die Einheit, die herauskommen soll – zum Beispiel einen *FE Energy Producer*.

Consumer und Producer der gleichen Art lassen sich im Crafting-Feld ineinander umwandeln.

> 💡 **Tipp:** Nimm für RF-Maschinen den **FE**-Producer, nicht den RF-Producer. FE passt zu fast allem; den RF-Producer brauchst du praktisch nie.

> ⚠️ **Achtung:** Ein *EU Energy Producer* gibt EU immer mit der Spannung seiner Stufe ab: LV 32, MV 128, HV 512, EV 2048, IV 8192 EU/t. Schließ ihn nur an IC2-Kabel und -Maschinen an, die diese Spannung vertragen.

## Spannung bei EU

RF kennt keine Spannung – eine Maschine nimmt einfach so viel, wie sie braucht. **IndustrialCraft 2** ist anders: EU fließt in Paketen, und jedes Gerät verträgt nur Pakete bis zu einer bestimmten Größe.

| Stufe | Spannung (EU pro Paket) | Kabel | Akku |
| --- | --- | --- | --- |
| LV (Niederspannung) | 32 | Zinnkabel | BatBox |
| MV (Mittelspannung) | 128 | Kupferkabel | CESU |
| HV (Hochspannung) | 512 | Goldkabel | MFE |
| EV (Extremspannung) | 2048 | Hochspannungskabel | MFSU |
| IV | 8192 | Glasfaserkabel | – |

> ⚠️ **Achtung:** Bekommt eine IC2-Maschine Pakete mit mehr Spannung, als sie verträgt, **explodiert** sie – das ist in Revelation++ eingeschaltet. Schickst du mehr Strom durch ein Kabel, als es tragen kann, **schmilzt** es.

So bleibst du auf der sicheren Seite:

- **Transformatoren** (NS-, MS-, HS- und ES-Transformator) setzen die Spannung um eine Stufe herauf oder herab.
- Das **Universelle Kabel** von Mekanism und der **Flux Zugangspunkt** passen sich der Maschine an. Darüber versorgst du jede IC2-Maschine gefahrlos.
- Ein Akku gibt Strom mit seiner eigenen Stufe ab: Eine MFSU schickt 2048er-Pakete – direkt an eine einfache Maschine angeschlossen, geht das schief.

## Häufige Fragen

**Meine IC2-Maschine ist explodiert. Warum?**
Sie hat Pakete mit zu hoher Spannung bekommen – meist von einem großen Akku, einem Energy Producer einer hohen Stufe oder über ein Kabel von einem großen Generator. Setz einen Transformator davor oder versorge sie über ein Universelles Kabel von Mekanism.

**Warum kommt kein Strom durch mein Thermal-Kabel in die IC2-Maschine?**
Thermal-Kabel übertragen nur RF/FE, IC2-Maschinen nehmen nur EU an. Nimm ein Universelles Kabel von Mekanism, einen Flux Zugangspunkt oder einen Wandler aus Energy Converters.

**Applied Energistics zeigt nur halb so viel Energie an, wie ich hineinstecke.**
Das ist richtig so: AE2 rechnet in AE, und 1 AE sind 2 RF.

**QuarryPlus zeigt MJ an. Wie viel RF sind das?**
Ein MJ von QuarryPlus sind 10 RF. Ob du QuarryPlus mit RF, EU oder MJ aus BuildCraft fütterst, ist egal – alle drei zählen gleich viel.

**Eine Anleitung sagt, 1 EU seien 4 RF. Stimmt das?**
Nicht in Revelation++. Hier ist jede Einheit genau ein RF wert.

## Für Server-Admins

Damit die Regel überall gilt, sind diese Einstellungen im Pack gesetzt:

| Mod | Datei | Einstellung |
| --- | --- | --- |
| Mekanism | `config/mekanism.cfg` | alle Umrechnungen (`EUToJoules`, `JoulesToEU`, `RFToJoules`, `JoulesToRF`, `ForgeToJoules`, `JoulesToForge`, `TeslaToJoules`, `JoulesToTesla`) = 1 |
| Galacticraft | `config/Galacticraft/energy.cfg` | `BuildCraft`, `IndustrialCraft`, `Mekanism` und `RF Conversion Ratio` = 1 |
| Industrial Wires | `config/industrialwires.cfg` | `euPerIf` = 1, `wireRatio` = 1 |
| Energy Converters | `config/energyconverters.cfg` | `euConversionFactor` = 1, `mjConversionFactor` = 1 |
| Applied Energistics 2 | `config/AppliedEnergistics2/AppliedEnergistics2.cfg` | `powerratios`: `IC2` = 0,5 (so viel wie `ForgeEnergy`) |
| OpenComputers | `config/opencomputers/settings.conf` | `power.value`: `IndustrialCraft2`, `Mekanism` und `Galacticraft` = 100 (so viel wie `RedstoneFlux`) |
| ICBM Classic | `config/icbmclassic/mods/ic2.cfg` | `from_ic2` = 1 |
| Gendustry | `config/gendustry/revelation.cfg` | `EU_MJ_Ratio` = 10 (so viel wie `RF_MJ_Ratio`) |

Einige Mods haben ihr Verhältnis fest im Code – meist 1 EU = 4 RF und 1 MJ = 10 RF. Zusammen mit den 1:1-Wandlern entstünde daraus Energie aus dem Nichts. [Milchmanns Little Fixes](Milchmanns-Little-Fixes#energie-11-in-allen-mods) stellt deshalb beim Laden auch diese Mods auf 1:1 um:

| Mod | Was sich ändert |
| --- | --- |
| Flux Networks | Flux Stecker und Flux Zugangspunkte rechnen 1 EU = 1 RF (vorher 4 RF); die EU-Anzeige ebenso. |
| Forestry | Der Elektromotor macht aus 1 EU 1 RF (vorher 4 bis 5 RF). |
| QuarryPlus | EU und MJ aus BuildCraft zählen so viel wie RF (vorher 4- bzw. 10-mal so viel). |
| Binnie (Extra Bees, Extra Trees, Genetics) | EU und MJ aus BuildCraft zählen so viel wie RF (vorher 4- bzw. 10-mal so viel). |

Bei Forestry zeigen die Tooltips der Schaltkreise für den Elektromotor noch die alten RF-Werte. Was der Motor wirklich liefert, steht in seinem Menü. Klappt eine Umstellung nicht – etwa nach einem Update der betroffenen Mod –, steht im Log (`latest.log`) eine Warnung mit `Energie 1:1`, und die Mod rechnet weiter wie vorher.

## Siehe auch

- [Blitzableiter](Blitzableiter) – bis zu 5 Milliarden RF aus einem einzigen Blitz
- [Schneeschmelzer](Schneeschmelzer) – ein großer Stromverbraucher
- [Durst](Durst#thirst-quencher) – der Thirst Quencher braucht RF
- [Temperatur](Temperatur#temperature-regulator) – der Temperature Regulator läuft mit RF
- [Immersive Railroading](Immersive-Railroading) – Maschinen mit 32 RF/t

---

<sub>Stand: Revelation++ 26w42 mit Milchmanns Little Fixes 26w42. Umrechnungen sind an den Konfigurationen des Packs und am Quellcode der Mods geprüft.</sub>
