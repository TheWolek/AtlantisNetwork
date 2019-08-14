if(isNil "extraCash") then { extraCash = 0; };

[player, 60] spawn drug_beer_effects;
extraCash = extraCash + 12;
["Czujesz się charyzmatyczny i otrzymałeś dodatkowe bonusy.",false] spawn domsg;
