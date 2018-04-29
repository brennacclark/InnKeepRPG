collideable = false;


frameWidth = 32;
frameHeight = 64; 

cropType = 0;				// type of crop based on crop enum
daysOld = 0;				// when daysOld=7, growthStageDuration=3
growthStage = 0;			// daysOld/growthStageDuration = 2;
growthStageDuration = 0;
maxGrowthStage = (sprite_get_width(spr_crops)/frameWidth) -1;


fullyGrown = false;
sparkle  = -1;

xx = x - (frameWidth/2)+2;
yy = y - frameHeight + 6;