Kamihr_Drifts_Lair_H06={Name="Kamihr Drifts Lair H-6",Author="Rockstar",Description="Auto Cast Stone",Version="0.1"};

function Kamihr_Drifts_Lair_H06:OnLoad()
events.Add("onHandleNewChatLine","plugin_c_event",c);end

function Kamihr_Drifts_Lair_H06:OnUnload()
timer.RemoveTimer('s');events.Remove("onHandleNewChatLine","plugin_c_event");end 

function t()local ta=AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
if(ta.Entity~=nil)then return ta.Entity.Name;else return nil;end end

function c(nMode,text)if(string.Contains(text,'joined'))then 
timer.RemoveTimer('s');timer.Create("s",3.1,0,s);AshitaCore:GetDataModule():SendCommand('/heal off',1);
elseif(string.Contains(text,'victorious'))then 
timer.RemoveTimer('s');AshitaCore:GetDataModule():SendCommand('/heal on',1);end end

function s()local m={"Wintry Cave"};for i,v in pairs(m)do if(t()==nil)or(t()~=v)then 
AshitaCore:GetDataModule():SendCommand('/target ' .. 17871055,0);
elseif(t()==v)then AshitaCore:GetDataModule():SendCommand('/ma Stone <t>',1);end end end

return Kamihr_Drifts_Lair_H06;

-- In game command to get targeted mob's ID. 
--/luacast dostring "print(AshitaCore:GetDataModule():GetTarget():GetTargetWindow().Entity.ID);"
