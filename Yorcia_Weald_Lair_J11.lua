Yorcia_Weald_Lair_J11={
Name="Yorcia Weald Lair J-11",
Author="Rockstar",
Description="Auto Cast Stone",
Version="0.1"};

function s()
local m={"Arboreal Bastion"};for i,v in pairs(m)do if(t()==nil)or(t()~=v)then 
AshitaCore:GetDataModule():SendCommand('/target ' .. 17854813,0);
elseif(t()==v)then AshitaCore:GetDataModule():SendCommand('/ma Stone <t>',1);end end end

function t()
local ta=AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
if(ta.Entity~=nil)then return ta.Entity.Name;else return nil;end end

function c(nMode, text)
if(string.Contains(text,'joined'))then timer.RemoveTimer('s');timer.Create("s",3.1,0,s);
elseif(string.Contains(text,'victorious'))then timer.RemoveTimer('s');end end

function Yorcia_Weald_Lair_J11:OnLoad()
events.Add("onHandleNewChatLine","plugin_c_event",c);end

function Yorcia_Weald_Lair_J11:OnUnload()
timer.RemoveTimer('s');events.Remove("onHandleNewChatLine","plugin_c_event");end 

return Yorcia_Weald_Lair_J11;

-- In game command to get targeted mob's ID.
-- /luacast dostring "print(AshitaCore:GetDataModule():GetTarget():GetTargetWindow().Entity.ID);"
