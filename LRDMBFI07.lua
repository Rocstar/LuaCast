-- Header Info
LRDMBFI07={
Name="Lair Reive Drone Morimar Basalt Fields I-7",
Author="Rockstar",
Description="Auto Cast Stone",
Version="0.1"};

-- In game command to get targeted mob's ID for changing.
-- /luacast dostring "print(AshitaCore:GetDataModule():GetTarget():GetTargetWindow().Entity.ID);"

-- Cast Stone
function s()
local m={"Grimy Boulders"};for i,v in pairs(m)do 
if(t()==nil)or(t()~=v)then AshitaCore:GetDataModule():SendCommand('/target ' .. 17863179,0);
elseif(t()==v)then AshitaCore:GetDataModule():SendCommand('/ma Stone <t>',1);end end end

-- Auto Target
function t()
local ta=AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
if(ta.Entity~=nil)then return ta.Entity.Name;else return nil;end end

-- Chat Line
function C(nMode, text)
if(string.Contains(text,'has joined the'))then timer.RemoveTimer('s');timer.Create("s",3.1,0,s);
elseif(string.Contains(text,'is victorious'))then timer.RemoveTimer('s');end end

-- On Load
function LRDMBFI07:OnLoad()
timer.Create("s",3.1,0,s);events.Add("onHandleNewChatLine","plugin_C_event",C);end

-- On Unload
function LRDMBFI07:OnUnload()
timer.RemoveTimer('s');events.Remove("onHandleNewChatLine","plugin_C_event");end return LRDMBFI07;
