--INFIQQ UI. Vanilla WOW 1.12.1
--Some Scripts also work well on 2.4.3


--when you cast/use something, on your action bars you see a global cooldown(1 sec). i don't like this animation,
--and sometimes this shit on old 1.12.1 engine kill my FPS. this script removes GCD animation.
function CooldownFrame_SetTimer(this, start, duration, enable)
if ( start > 0 and duration > 4 and enable > 0) then
this.start = start;
this.duration = duration;
this.stopping = 0;
this:SetSequence(0);
this:Show(1);
else
this:Hide();
end
end


--removing text "health" and "mana" from unitframes.
function TextStatusBar_UpdateTextString(textStatusBar)
if ( not textStatusBar ) then
textStatusBar = this;
end
local string = textStatusBar.TextString;
if(string) then
local value = textStatusBar:GetValue();
local valueMin, valueMax = textStatusBar:GetMinMaxValues();
if ( valueMax > 0 ) then
textStatusBar:Show();
if ( value == 0 and textStatusBar.zeroText ) then
string:SetText(textStatusBar.zeroText);
textStatusBar.isZero = 1;
string:Show();
else
textStatusBar.isZero = nil;
if ( textStatusBar.prefix ) then
string:SetText(value);
else
string:SetText(value);
end
if ( GetCVar("statusBarText") == "1" and textStatusBar.textLockable ) then
string:Show();
elseif ( textStatusBar.lockShow > 0 ) then
string:Show();
else
string:Hide();
end
end
else
textStatusBar:Hide();
end
end
end


--this script changes font of your keybinds. just download any font of you want in /wow/Fonts dir, and place your font name here "Fonts\\ "
--number 12 is a font size
NumberFontNormalSmall:SetFont("Fonts\\42852.TTF", 12, "OUTLINE");

--removing red spam, like "ability is not ready yet"
UIErrorsFrame:SetAlpha(0)
--Larger frames. You can easy modify it, just edit numbers (0+).
PlayerFrame:SetScale(1.2)
TargetFrame:SetScale(1.2)
PetFrame:SetScale(0.9)
BuffFrame:SetScale(1.1)
--Changing font style and size on the Player and Target frame name.
PlayerName:SetFont("Fonts\\42852.TTF", 11, "OUTLINE");
TargetName:SetFont("Fonts\\42852.TTF", 10, "OUTLINE");

--Moving and resizing Castbar
CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetPoint("CENTER",UIParent,"CENTER", 0, -242)
CastingBarFrame.SetPoint = function() end
CastingBarFrame:SetScale(1.2)

--Player and Target names: changing color.
PlayerName:SetVertexColor(1, 1, 1)
TargetName:SetVertexColor(1, 1, 1)

--Changing font style and size on playerframe mana and health bars.
PlayerFrameHealthBarText:SetFont("Fonts\\arialn.ttf",10,"OUTLINE")
PlayerFrameManaBarText:SetFont("Fonts\\arialn.ttf",10,"OUTLINE")

--removing text from pet frame mana and health bars.
PetFrameHealthBarText:SetAlpha(0)
PetFrameManaBarText:SetAlpha(0)

--hide the gryphons
MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()

-- hide the xp bar
MainMenuExpBar:Hide()
MainMenuBarMaxLevelBar:SetAlpha(0)

-- hide all the background textures.
MainMenuBarTexture0:Hide() 

-- leaving them on looks better
MainMenuBarTexture1:Hide() 

-- unless you are going to hide the
MainMenuBarTexture2:Hide()

 -- micromenu and bag buttons too.
MainMenuBarTexture3:Hide()

--etc
ActionBarUpButton:Hide()
ActionBarDownButton:Hide()
MainMenuBarPageNumber:SetAlpha(0)

--hiding stance/shapeshift bar frame
ShapeshiftBarFrame:SetAlpha(0)

--moving frames without moveanything addon. just edit the numbers, and use /console reloadui
PlayerFrame:ClearAllPoints()
PlayerFrame:SetPoint("BOTTOM",UIParent,"TOP", -300, -300)

PetFrame:ClearAllPoints()
PetFrame:SetPoint("BOTTOM",PlayerFrame,"TOP", 32, -28)

TargetFrame:ClearAllPoints()
TargetFrame:SetPoint("BOTTOM",PlayerFrame,"BOTTOM", 100, -48)

--moving actionbars, same
MainMenuBar:ClearAllPoints()
MainMenuBar:SetPoint("BOTTOM",UIParent,"BOTTOM", 255, 5)

MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("BOTTOM",UIParent,"BOTTOM", 1, 51)

MultiBarLeft:ClearAllPoints()
MultiBarLeft:SetPoint("RIGHT",UIParent,"RIGHT", -45, -123)

MultiBarRight:ClearAllPoints()
MultiBarRight:SetPoint("RIGHT",MultiBarLeft,"RIGHT", 40, 0)

--moving exp bar
MainMenuExpBar:ClearAllPoints()
MainMenuExpBar:SetPoint("BOTTOM",UIParent,"BOTTOM", -1, 0)

--moving micro menu
CharacterMicroButton:ClearAllPoints()
CharacterMicroButton:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT", -134, 5)

--moving latency bar
MainMenuBarPerformanceBar:ClearAllPoints()
MainMenuBarPerformanceBar:SetPoint("TOP",MainMenuBar,"TOP", 5, 13)

--moving keyring 
KeyRingButton:ClearAllPoints()
KeyRingButton:SetPoint("RIGHT",SocialsMicroButton,"RIGHT", 21, -10)

--this makes your chat entry field to appear on the top.
ChatFrameEditBox:ClearAllPoints()
ChatFrameEditBox:SetPoint('BOTTOMLEFT', ChatFrame1, 'TOPLEFT', -2, 0)
ChatFrameEditBox:SetPoint('BOTTOMRIGHT', ChatFrame1, 'TOPRIGHT',  2, 0)

--scaling some things
MainMenuBarPerformanceBarFrame:SetScale(0.78)
MainMenuExpBar:SetScale(0.49)
CharacterMicroButton:SetScale(0.50)
SpellbookMicroButton:SetScale(0.50)
TalentMicroButton:SetScale(0.50)
QuestLogMicroButton:SetScale(0.50)
SocialsMicroButton:SetScale(0.50)
KeyRingButton:SetScale(0.49)

--hiding some things
WorldMapMicroButton:Hide()
MainMenuMicroButton:Hide()
HelpMicroButton:Hide()

--hiding bags. i use F12 keybind to open all my bags.
CharacterBag3Slot:Hide()
CharacterBag2Slot:Hide()
CharacterBag1Slot:Hide()
CharacterBag0Slot:Hide()
MainMenuBarBackpackButton:Hide()

--removing art texture from pet action bar
SlidingActionBarTexture0:SetAlpha(0)
SlidingActionBarTexture1:SetAlpha(0)
