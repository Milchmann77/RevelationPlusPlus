//Mekanism Chemical Crystallizer Recipes

mods.mekanism.chemical.crystallizer.removeRecipe(<ore:dustNatrium>);
mods.mekanism.chemical.crystallizer.removeRecipe(<ore:dustLithium>);
mods.mekanism.chemical.crystallizer.removeRecipe(<ore:dustSulfur>);
mods.mekanism.chemical.crystallizer.addRecipe(<gas:sodium> * 1000, <milifi:element_dust:11>);
mods.mekanism.chemical.crystallizer.addRecipe(<gas:lithium> * 1000, <ore:dustLithium>.firstItem);
mods.mekanism.chemical.crystallizer.addRecipe(<gas:sulfurdioxide> * 1000, <ore:dustSulfur>.firstItem);