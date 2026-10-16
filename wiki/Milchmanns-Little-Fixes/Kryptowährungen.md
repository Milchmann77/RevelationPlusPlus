Milchmanns Little Fixes bringt **818 Kryptowährungen** als Münzen ins Spiel – von Bitcoin über Ethereum bis zu den kleinsten Coins. Das Besondere: Jede Münze kennt ihren **echten, aktuellen Kurs** in Euro. Halte Shift gedrückt, und der Tooltip rechnet ihn dir aus.

| Eigenschaft | Wert |
| --- | --- |
| Mod | [Milchmanns Little Fixes](Milchmanns-Little-Fixes) |
| Anzahl | 818 Münzen (Angebot von Bitpanda, Stand 22.09.2026) |
| Item-IDs | Kürzel in Kleinbuchstaben, z. B. `milifi:btc`, `milifi:eth`, `milifi:doge` |
| Kreativ-Reiter | Kryptowährungen (sortiert nach Marktwert) |
| Kursquellen | Binance und Bitpanda |

## Woher bekomme ich Münzen?

Für die Münzen gibt es **kein Rezept**. Du findest sie im Kreativ-Reiter *Kryptowährungen* – im Überlebensmodus bekommst du sie also nur von einem Admin oder durch Handel mit anderen Spielern.

Im Spiel haben die Münzen keine weitere Funktion. Sie eignen sich zum Beispiel als Rollenspiel-Währung, als Bezahlung unter Spielern oder einfach als Kursanzeige im Inventar.

## Den Kurs ablesen

Fährst du mit der Maus über eine Münze, steht im Tooltip *„Halte SHIFT um den Preis zu berechnen.“* Mit gedrückter Shift-Taste siehst du dann zum Beispiel:

```
1 Bitcoin (BTC) ≙ 54.321,12 EUR
1 EUR ≙ 0,00001840905 Bitcoin (BTC)
Quelle: Binance
```

- Die erste Zeile zeigt, was eine Münze in Euro wert ist, die zweite, wie viele Münzen du für einen Euro bekommst.
- Die Zahlen sind auf 7 gültige Stellen gerundet und im Format deiner Spielsprache geschrieben.
- Ist der Kurs älter als eine Minute, steht dahinter, von wann er ist (*„Stand 14:32“*), ab 12 Stunden auch mit Datum.

Während der Kurs noch geladen wird, steht dort *„Preis wird geladen…“*, gibt es gar keinen Kurs, *„Kein Kurs verfügbar“*.

> ℹ️ **Gut zu wissen:** Die Kurse holt dein **eigenes Spiel** aus dem Internet, nicht der Server. Ohne Internetverbindung oder wenn eine Firewall die Kursseiten blockiert, bekommst du keinen Kurs angezeigt.

## Woher die Kurse kommen

Das Spiel fragt die Kurse nur ab, solange jemand sie sich ansieht – also wenn du mit gedrückter Shift-Taste über Münzen fährst. Dann gilt:

1. Bevorzugt wird der direkte Euro-Kurs von **Binance** (höchstens eine Minute alt, aktualisiert alle 3 Sekunden).
2. Fehlt der, kommt der Kurs von **Bitpanda** (höchstens fünf Minuten alt, aktualisiert alle 30 Sekunden).
3. Als Letztes rechnet das Spiel den Binance-Kurs in Tether (USDT) in Euro um.

Weicht der Binance-Kurs einer Münze um mehr als die Hälfte von Bitpanda ab, handelt es sich vermutlich um eine andere Münze mit demselben Kürzel. Für diese Münze gilt dann bis zum nächsten Spielstart nur noch Bitpanda.

## Die größten Münzen

Die Reihenfolge im Kreativ-Reiter richtet sich nach dem Marktwert. Ganz vorne stehen:

| Münze | Kürzel | Item-ID |
| --- | --- | --- |
| Bitcoin | BTC | `milifi:btc` |
| Ethereum | ETH | `milifi:eth` |
| Tether | USDT | `milifi:usdt` |
| Binance | BNB | `milifi:bnb` |
| Ripple | XRP | `milifi:xrp` |
| USD Coin | USDC | `milifi:usdc` |
| Solana | SOL | `milifi:sol` |
| Tron | TRX | `milifi:trx` |

## Für Server-Admins

- Wie oft die Kurse bei Binance abgefragt werden, steht in `config/milchmannslittlefixes.cfg` unter `How much milliseconds between cryptocurrency updates?` (Standard: 3000 ms). Die Einstellung gilt für jedes Spiel einzeln, weil jeder Client seine Kurse selbst abfragt.
- Die Münzliste steckt in der Mod selbst. Wird eine Münze aus der Liste entfernt, verschwindet sie aus allen Welten.

## Siehe auch

- [Milchmanns Little Fixes](Milchmanns-Little-Fixes) – alle Funktionen der Mod

---

<sub>Stand: Revelation++ 26w42 mit Milchmanns Little Fixes 26w42. Werte sind am Quellcode der Mod geprüft.</sub>
