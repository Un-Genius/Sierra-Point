event_inherited();

#region CUSTOMIZEABLE VARIABLES

width = 200;
height = 50;
text = "Start"; //displayed text
icon = -1; //sprite index
iconIndex = 0; //subimage of the sprite icon to be presented

enabled = true;
stayPressed = false;
toggled = false;

guiSprite = sprButton;
guiSpritePressed = sprButtonPressed;
depth = 0; //always above panels

origin = GUI_TOPLEFT; // GUI_TOPLEFT or GUI_CENTER

fontType = fntStandard;//global.language_font;
fontScale = 1;
fontColor = c_white;
fontAlign = fa_center; //fa_center, fa_left

pressedOffset = 2;

soundClick = sndClick;

targetScript = func_room_goto;
targetScriptArgs[0] = rm_map_town_1v1;

#endregion

#region INTERNAL VARS

buttonPressed = false;

#endregion
