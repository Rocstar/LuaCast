Marjami_Ravine_Lair_Drone_C07={
Name="Marjami Ravine Lair Drone C-7",
Author="Rockstar",
Description="Auto Cast Stone",
Version="0.1"};

function s()
local m={"Avian Roost"};for i,v in pairs(m)do if(t()==nil)or(t()~=v)then
AshitaCore:GetDataModule():SendCommand('/target ' .. 17866998,0);
elseif(t()==v)then AshitaCore:GetDataModule():SendCommand('/ma Stone <t>',1);end end end

function t()
local ta=AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
if(ta.Entity~=nil)then return ta.Entity.Name;else return nil;end end

function c(nMode, text)
if(string.Contains(text,'has joined the'))then timer.RemoveTimer('s');timer.Create("s",3.1,0,s);
elseif(string.Contains(text,'is victorious'))then timer.RemoveTimer('s');end end

function Marjami_Ravine_Lair_Drone_C07:OnLoad()
timer.Create("s",3.1,0,s);events.Add("onHandleNewChatLine","plugin_c_event",c);end

function Marjami_Ravine_Lair_Drone_C07:OnUnload()
timer.RemoveTimer('s');events.Remove("onHandleNewChatLine","plugin_c_event");end 

return Marjami_Ravine_Lair_Drone_C07;

-- In game command to get targeted mob's ID.
-- /luacast dostring "print(AshitaCore:GetDataModule():GetTarget():GetTargetWindow().Entity.ID);"
