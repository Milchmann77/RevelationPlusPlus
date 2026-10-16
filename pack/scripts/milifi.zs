// ---------------------------------------------------------------------------
// Rezepte fuer Milchmanns Little Fixes (milifi), die nicht schon in den
// grossen Rezeptdateien stehen: Klarheitskapsel und Plastikwerkzeuge.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Klarheitskapsel (milifi:clarity_capsule)
//
// Gedacht als Arzneimittel, nicht als Zaubertrank. Drei Stufen, vom Hausmittel
// bis zur Packung aus der Apotheke:
//
//   1. Kraeuterkapsel   Kamille, Ginseng, Specter Goo   -> 1 Kapsel
//   2. Lithiumkapsel    Lithiumstaub als Wirkstoff      -> 4 Kapseln
//   3. Blister          gepresst und industriell verpackt -> 8 Kapseln
//
// Der Specter Goo steht in jeder Stufe, denn er ist der Bezug zur Krankheit
// selbst: Antiserum wird aus dem Gift gewonnen, Impfstoff aus dem Erreger.
// Praktisch heisst das auch, dass man die Geisterzombies erst zu Gesicht
// bekommen muss, um an das Mittel zu kommen - wer bei Verstand ist, trifft
// keine. Die Heilung setzt die Krankheit voraus.
//
// Warum Lithium mehr Kapseln bringt: Lithium wird in Milligramm dosiert. Eine
// Portion Staub reicht fuer ein ganzes Blech, waehrend vom Kraeuterauszug je
// Kapsel eine ganze Handvoll hineingeht.
//
// Warum die Kohle im Lithium-Ansatz bleibt: in der Apotheke wird Lithium als
// Carbonat verwendet, nicht als Metall - der Kohlenstoff gehoert also dazu.
// Blankes Lithiummetall und Wasser waere eine Stichflamme, keine Tablette.
//
// Warum im Blister keine Wachshuelle steckt: industriell werden Tabletten
// gepresst, nicht Kapseln gefuellt. Dann braucht jede einzelne keine Huelle
// mehr, das uebernimmt die Verpackung - Fuellstoff und Kunststoff statt Wachs.
//
// Die uebrigen Zutaten und ihr Gegenstueck in einer echten Rezeptur:
//
//   Kamille          Wirkstoff, beruhigend (Apigenin) - klassischer Arzneitee
//   Ginseng          Wirkstoff, Adaptogen gegen geistige Erschoepfung
//   Zuckerkohle      Traegerstoff; medizinische Kohle ist ein echtes
//                    Arzneimittel, und aus Zucker gewonnene Kohle ist
//                    besonders reiner Kohlenstoff
//   Gereinigtes W.   Loesungsmittel jeder Rezeptur
//   Zucker           Fuellstoff - echte Tabletten bestehen ueberwiegend aus
//                    Laktose oder Saccharose, nicht aus Wirkstoff
//   Bienenwachs      die Kapselhuelle, eine je Kapsel
//
// ---------------------------------------------------------------------------

import crafttweaker.item.IIngredient;

// Wahlweise: Rustics eigenes Wachs oder Forestrys leere Wachskapsel.
val huelle as IIngredient = <rustic:beeswax> | <forestry:capsule>;

// Zuckerkohle aus milifi; falls du dafuer (noch) kein Rezept hast, geht auch
// gewoehnliche Holzkohle.
val kohle as IIngredient = <milifi:sugar_charcoal> | <minecraft:coal:1>;

// Ueber den OreDict, damit es nicht darauf ankommt, welche Mod den Staub
// liefert. Bei Mekanism kommt er aus der Sole: Wasser -> Sole -> Lithium in
// der Verdunstungsanlage, dann in den Kristallisator. Das ist auch in der
// Wirklichkeit der Weg - Lithium fuer Arzneimittel stammt aus Salzsole, die in
// Verdunstungsbecken eingedickt wird.
val lithium as IIngredient = <ore:dustLithium>;

val goo     as IIngredient = <sanity:spectergoo>;
val kamille as IIngredient = <rustic:chamomile>;
val ginseng as IIngredient = <rustic:ginseng>;
val wasser  as IIngredient = <toughasnails:purified_water_bottle>;
val zucker  as IIngredient = <minecraft:sugar>;

// --- 1. Kraeuterkapsel: eine Kapsel ----------------------------------------
// Oben die Wirkstoffe, in der Mitte Traeger und Loesungsmittel, unten
// Fuellstoff und Huelle.
recipes.addShaped("milifi_clarity_capsule_herbal", <milifi:clarity_capsule>,
    [[kamille, goo,    ginseng],
     [kohle,   wasser, kohle  ],
     [zucker,  huelle, zucker ]]);

// --- 2. Lithiumkapsel: vier Huellen, vier Kapseln --------------------------
recipes.addShaped("milifi_clarity_capsule_lithium", <milifi:clarity_capsule> * 4,
    [[huelle, lithium, huelle],
     [zucker, goo,     wasser],
     [huelle, kohle,   huelle]]);

// --- 3. Blister: gepresst, doppelte Ausbeute -------------------------------
recipes.addShaped("milifi_clarity_capsule_blister", <milifi:clarity_capsule> * 8,
    [[<industrialforegoing:plastic>, lithium, <industrialforegoing:plastic>],
     [zucker,                        goo,     zucker                      ],
     [kohle,                         wasser,  kohle                       ]]);

// --- Geschmackssache ------------------------------------------------------
// Beipackzettel: statt eines Zuckers ein Blatt Papier in die Mitte unten.
//   [[kamille, goo,    ginseng],
//    [kohle,   wasser, kohle  ],
//    [zucker,  huelle, <minecraft:paper>]]

// ---------------------------------------------------------------------------
// Plastikwerkzeuge (milifi:plastic_*) aus Mekanism-HDPE
//
// Gleiches Material wie die Schneeschaufel: der Kopf aus HDPE-Platten, der
// Griff aus PlaSticks. Die Formen entsprechen den Vanilla-Werkzeugen.
// ---------------------------------------------------------------------------

val hdpe     as IIngredient = <mekanism:polyethene:2>; // HDPE-Platte
val plastick as IIngredient = <mekanism:polyethene:3>; // PlaStick

recipes.addShaped("milifi_plastic_pickaxe", <milifi:plastic_pickaxe>,
    [[hdpe, hdpe,     hdpe],
     [null, plastick, null],
     [null, plastick, null]]);

recipes.addShapedMirrored("milifi_plastic_axe", <milifi:plastic_axe>,
    [[hdpe, hdpe,     null],
     [hdpe, plastick, null],
     [null, plastick, null]]);

recipes.addShaped("milifi_plastic_spade", <milifi:plastic_spade>,
    [[null, hdpe,     null],
     [null, plastick, null],
     [null, plastick, null]]);

recipes.addShapedMirrored("milifi_plastic_hoe", <milifi:plastic_hoe>,
    [[hdpe, hdpe,     null],
     [null, plastick, null],
     [null, plastick, null]]);

recipes.addShaped("milifi_plastic_sword", <milifi:plastic_sword>,
    [[null, hdpe,     null],
     [null, hdpe,     null],
     [null, plastick, null]]);
