Cast={Name="cast",Author="Rockstar",Description="Auto Cast Stone",Version="0.1"};

function s()local m={"Breathless Clansman","Shambling Naraka","Dismal Djinn","Effluvial Acuex","Acrimonious Dullahan",
"Kantankerous Yztarg","","","","","","","","","","","","","","","",""};
for i,v in pairs(m)do if(t()==nil)or(t()~=v)then AshitaCore:GetDataModule():SendCommand('/target <bt>',1);
elseif(t()==v)then AshitaCore:GetDataModule():SendCommand('/ma Stone <t>',1);end end end

function t()local ta=AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
if(ta.Entity~=nil)then return ta.Entity.Name;else return nil;end end

function c(nMode, text)if(string.Contains(text,'start cast'))then timer.RemoveTimer('s');timer.Create("s",3.1,0,s);
elseif(string.Contains(text,'stop cast'))then timer.RemoveTimer('s');end end

function cast:OnLoad()events.Add("onHandleNewChatLine","plugin_c_event",c);end

function cast:OnUnload()timer.RemoveTimer('s');events.Remove("onHandleNewChatLine","plugin_c_event");end 

return cast;
