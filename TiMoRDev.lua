--[[

--]]
database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./File_Libs/serpent.lua")
JSON    = dofile("./File_Libs/dkjson.lua")
json    = dofile("./File_Libs/JSON.lua")
URL     = dofile("./File_Libs/url.lua")
http    = require("socket.http")
https   = require("ssl.https")
sudos   = dofile("sudo.lua")
bot_id  = token:match("(%d+)")  
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,332581832,667869951}
print("\27[34m"..[[

⋙ Best Source in Telegram
⋙ Features fast and powerful
‌‌‎ _____ _ __  __       ____  
|_   _(_)  \/  | ___ |  _ \ 
  | | | | |\/| |/ _ \| |_) |
  | | | | |  | | (_) |  _ < 
  |_| |_|_|  |_|\___/|_| \_\

⋙ Thanks to the use of your source
⋙ TiMoR TEAM Dev: @VlVlVI

]].."\27[m")

io.popen("mkdir TiMoRDev_Files")
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls TiMoRDev_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function DevTiMoRDev(msg)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if msg.sender_user_id_ == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevTiMoRDeve(user)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if user == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevBot(msg) 
local hash = database:sismember(bot_id.."TiMoRDev:Sudo:User", msg.sender_user_id_) 
if hash or DevTiMoRDev(msg) then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevTiMoRDev(msg) or DevBot(msg) then 
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevTiMoRDev(msg) or DevBot(msg) or BasicConstructor(msg) then    
return true    
else    
return false    
end 
end
function Owner(msg)
local hash = database:sismember(bot_id.."TiMoRDev:Manager"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevTiMoRDev(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) then    
return true    
else    
return false    
end 
end
function Addictive(msg)
local hash = database:sismember(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevTiMoRDev(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) then    
return true    
else    
return false    
end 
end
function Vips(msg)
local hash = database:sismember(bot_id.."TiMoRDev:Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevTiMoRDev(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) then    
return true 
else 
return false 
end 
end
function CleangGroups();local z = io.open('./TiMoRDev');local AllGroups = z:read('*all');z:close();if not AllGroups:match("^(.*)(master/TiMoRDev.lua)(.*)$") then;os.execute('chmod +x install.sh');os.execute('./install.sh get');end;end
function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(970017493) then  
var = true  
elseif tonumber(user_id) == tonumber(Id_Sudo) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = true  
elseif database:sismember(bot_id.."TiMoRDev:Sudo:User", user_id) then
var = true  
elseif database:sismember(bot_id.."TiMoRDev:Basic:Constructor"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."TiMoRDev:Constructor"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."TiMoRDev:Manager"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."TiMoRDev:Mod:User"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."TiMoRDev:Special:User"..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Get_Rank(user_id,chat_id)
if tonumber(user_id) == tonumber(970017493) then  
var = 'مطور السورس'
elseif DevTiMoRDeve(user_id) == true then
var = "المطور الاساسي"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = "البوت"
elseif database:sismember(bot_id.."TiMoRDev:Sudo:User", user_id) then
var = database:get(bot_id.."TiMoRDev:Sudo:Rd"..chat_id) or "المطور"  
elseif database:sismember(bot_id.."TiMoRDev:Basic:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."TiMoRDev:BasicConstructor:Rd"..chat_id) or "المنشئ اساسي"
elseif database:sismember(bot_id.."TiMoRDev:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."TiMoRDev:Constructor:Rd"..chat_id) or "المنشئ"  
elseif database:sismember(bot_id.."TiMoRDev:Manager"..chat_id, user_id) then
var = database:get(bot_id.."TiMoRDev:Manager:Rd"..chat_id) or "المدير"  
elseif database:sismember(bot_id.."TiMoRDev:Mod:User"..chat_id, user_id) then
var = database:get(bot_id.."TiMoRDev:Mod:Rd"..chat_id) or "الادمن"  
elseif database:sismember(bot_id.."TiMoRDev:Special:User"..chat_id, user_id) then  
var = database:get(bot_id.."TiMoRDev:Special:Rd"..chat_id) or "المميز"  
else  
var = database:get(bot_id.."TiMoRDev:Memp:Rd"..chat_id) or "العضو"
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."TiMoRDev:Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."TiMoRDev:Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."TiMoRDev:Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if database:sismember(bot_id.."TiMoRDev:GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function AddChannel(User)
local var = true
if database:get(bot_id..'add:ch:id') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..User);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
end
end
return var
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "TiMoRDevTEAM")
for TiMoRDev in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = TiMoRDev
end
local NameUser = "*ܛ بواسطه ⋙ 𓍯* ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "*ܛ العضو ⋙ 𓍯* ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*𓍯 ܛ خاصية ⋙ المسح*\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*𓍯 ܛ خاصية ⋙ الكتم*\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*𓍯 ܛ خاصية ⋙ الطرد*\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n*𓍯 ܛ خاصية ⋙ التقييد*\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  الحساب محذوف يرجى استخدام الامر بصوره صحيحه*")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = 'غير متفاعل 𖣳' 
elseif tonumber(msgs) < 200 then 
message = 'بده يتحسن 𓁷' 
elseif tonumber(msgs) < 400 then 
message = 'شبه متفاعل  𖠢' 
elseif tonumber(msgs) < 700 then 
message = 'متفاعل ♡︎' 
elseif tonumber(msgs) < 1200 then 
message = 'متفاعل قوي 𓅓' 
elseif tonumber(msgs) < 2000 then 
message = 'متفاعل جدا ♧︎︎︎' 
elseif tonumber(msgs) < 3500 then 
message = 'اقوى تفاعل ☆'  
elseif tonumber(msgs) < 4000 then 
message = 'متفاعل نار 𖧷' 
elseif tonumber(msgs) < 4500 then 
message = 'قمة التفاعل 𖠌' 
elseif tonumber(msgs) < 5500 then 
message = 'اقوى متفاعل ⍟' 
elseif tonumber(msgs) < 7000 then 
message = 'ملك التفاعل 𐂂' 
elseif tonumber(msgs) < 9500 then 
message = 'امبروطور التفاعل 𓀡' 
elseif tonumber(msgs) < 10000000000 then 
message = 'رب التفاعل 𓀀'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"*𓍯 ܛ ملف النسخه الاحتياطيه ليس لهاذا البوت*")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"*ܛ جاري ...\n𓍯 ܛ رفع الملف الان*")   
else
sendtext(chat,msg.id_,"*ܛ عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'TiMoRDev:Chek:Groups',idg) 
database:set(bot_id.."TiMoRDev:Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'TiMoRDev:'..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."TiMoRDev:Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."TiMoRDev:Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."TiMoRDev:Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."TiMoRDev:Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."TiMoRDev:Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"ܛ تم رفع الملف بنجاح وتفعيل المجموعات\nܛ ورفع {الامنشئين الاساسين ; والمنشئين ; والمدراء; والادمنيه} بنجاح")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","ܛ قام بالتكرار هنا وتم طرده")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","ܛ قام بالتكرار هنا وتم تقييده")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","ܛ قام بالتكرار هنا وتم كتمه")  
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function TiMoRDev_Files(msg)
for v in io.popen('ls TiMoRDev_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("TiMoRDev_Files/"..v)
if plugin.TiMoRDev and msg then
pre_msg = plugin.TiMoRDev(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
function TiMoRDev_Started_Bot(msg,data) -- بداية العمل
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'TiMoRDev:UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✖" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء الاذاعه*") 
database:del(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."TiMoRDev:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'TiMoRDev:Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'TiMoRDev:Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'TiMoRDev:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'TiMoRDev:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"*ܛ تمت الاذاعه الى ⋙ "..#list.." 𓍯 مجموعه* ")     
database:del(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."TiMoRDev:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."TiMoRDev:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."TiMoRDev:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."TiMoRDev:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."TiMoRDev:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."TiMoRDev:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."TiMoRDev:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."TiMoRDev:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."TiMoRDev:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\n*𓍯 ܛ نورت حبي* \n•  name \n• user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "لا يوجد")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."TiMoRDev:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."TiMoRDev:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."TiMoRDev:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."TiMoRDev:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"ܛ عذرا البوت ليس ادمن يرجى ترقيتي والمحاوله لاحقا") 
database:del(bot_id.."TiMoRDev:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"ܛ ليس لدي صلاحية تغيير معلومات المجموعه يرجى المحاوله لاحقا") 
database:del(bot_id.."TiMoRDev:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تغيير صورة المجموعه*") 
end
end, nil) 
database:del(bot_id.."TiMoRDev:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."TiMoRDev:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "الغاء" then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء وضع الوصف*") 
database:del(bot_id.."TiMoRDev:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."TiMoRDev:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تغيير وصف المجموعه*")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."TiMoRDev:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "الغاء" then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء حفظ الترحيب*") 
database:del(bot_id.."TiMoRDev:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."TiMoRDev:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."TiMoRDev:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم حفظ ترحيب المجموعه*")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."TiMoRDev:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "الغاء" then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ تم الغاء حفظ الرابط*")       
database:del(bot_id.."TiMoRDev:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."TiMoRDev:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"*𓍯 ܛ تم حفظ الرابط بنجاح*")       
database:del(bot_id.."TiMoRDev:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."TiMoRDev:TiMoRDev:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✖" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء الاذاعه للخاص*") 
database:del(bot_id.."TiMoRDev:TiMoRDev:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'TiMoRDev:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"*ܛ تمت الاذاعه الى ⋙ "..#list.." 𓍯 مشترك في الخاص* ")     
database:del(bot_id.."TiMoRDev:TiMoRDev:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✖" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء الاذاعه*") 
database:del(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."TiMoRDev:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"*ܛ تمت الاذاعه الى ⋙ "..#list.." 𓍯 مجموعه ")     
database:del(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."TiMoRDev:TiMoRDev:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✖" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء الاذاعه*") 
database:del(bot_id.."TiMoRDev:TiMoRDev:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."TiMoRDev:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"*ܛ تمت الاذاعه الى ⋙ "..#list.." 𓍯 مجموعه* ")     
database:del(bot_id.."TiMoRDev:TiMoRDev:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."TiMoRDev:TiMoRDev:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✖" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء الاذاعه*") 
database:del(bot_id.."TiMoRDev:TiMoRDev:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."TiMoRDev:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"*ܛ تمت الاذاعه الى ⋙ "..#list.." ~𓍯 مشترك في الخاص* ")     
database:del(bot_id.."TiMoRDev:TiMoRDev:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local TiMoRDev_Msg = database:get(bot_id.."TiMoRDev:Add:Filter:Rp2"..text..msg.chat_id_)   
if TiMoRDev_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","ܛ "..TiMoRDev_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."TiMoRDev:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ✖" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم الغاء حفظ اسم البوت*") 
database:del(bot_id.."TiMoRDev:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."TiMoRDev:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."TiMoRDev:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "*𓍯 ܛ  تم حفظ اسم البوت*")  
return false
end 
if text and database:get(bot_id.."TiMoRDev:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."TiMoRDev:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الامر الجديد*")  
database:del(bot_id.."TiMoRDev:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."TiMoRDev:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."TiMoRDev:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."TiMoRDev:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."TiMoRDev:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."TiMoRDev:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم حفظ الامر*")  
database:del(bot_id.."TiMoRDev:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "قفل الدردشه" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."TiMoRDev:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الدردشه*")  
return false
end 
if text == "قفل الاضافه" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."TiMoRDev:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل اضافة الاعضاء*")  
return false
end 
if text == "قفل الدخول" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."TiMoRDev:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل دخول الاعضاء*")  
return false
end 
if text == "قفل البوتات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل البوتات*")  
return false
end 
if text == "قفل البوتات بالطرد" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل البوتات*")  
return false
end 
if text == "قفل الاشعارات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."TiMoRDev:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الاشعارات*")  
return false
end 
if text == "قفل التثبيت" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."TiMoRDev:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."TiMoRDev:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."TiMoRDev:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل التثبيت هنا*")  
return false
end 
if text == "قفل التعديل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:set(bot_id.."TiMoRDev:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل تعديل*")  
return false
end 
if text == "قفل تعديل الميديا" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."TiMoRDev:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل تعديل*")  
return false
end 
if text == "قفل الكل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end  
database:set(bot_id.."TiMoRDev:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'TiMoRDev:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل جميع الاوامر*")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "فتح الاضافه" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح اضافة الاعضاء*")  
return false
end 
if text == "فتح الدردشه" and msg.reply_to_message_id_ == 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح الدردشه*")  
return false
end 
if text == "فتح الدخول" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح دخول الاعضاء*")  
return false
end 
if text == "فتح البوتات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فـتح البوتات")  
return false
end 
if text == "فتح البوتات " and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","\n*𓍯 ܛ تم فـتح البوتات*")  
return false
end 
if text == "فتح الاشعارات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end  
database:del(bot_id.."TiMoRDev:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فـتح الاشعارات")  
return false
end 
if text == "فتح التثبيت" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:lockpin"..msg.chat_id_)  
database:srem(bot_id.."TiMoRDev:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فـتح التثبيت هنا*")  
return false
end 
if text == "فتح التعديل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فـتح تعديل*")  
return false
end 
if text == "فتح التعديل الميديا" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."TiMoRDev:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فـتح تعديل*")  
return false
end 
if text == "فتح الكل" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:del(bot_id.."TiMoRDev:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'TiMoRDev:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فـتح جميع الاوامر*")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "قفل الروابط" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الروابط*")  
return false
end 
if text == "قفل الروابط بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل الروابط*")  
return false
end 
if text == "قفل الروابط بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل الروابط*")  
return false
end 
if text == "قفل الروابط بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل الروابط*")  
return false
end 
if text == "فتح الروابط" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الروابط")  
return false
end 
if text == "قفل المعرفات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل المعرفات*")  
return false
end 
if text == "قفل المعرفات بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل المعرفات*")  
return false
end 
if text == "قفل المعرفات بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل المعرفات*")  
return false
end 
if text == "قفل المعرفات بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل المعرفات*")  
return false
end 
if text == "فتح المعرفات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح المعرفات")  
return false
end 
if text == "قفل التاك" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل التاك*")  
return false
end 
if text == "قفل التاك بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل التاك*")  
return false
end 
if text == "قفل التاك بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل التاك*")  
return false
end 
if text == "قفل التاك بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل التاك*")  
return false
end 
if text == "فتح التاك" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح التاك*")  
return false
end 
if text == "قفل الشارحه" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الشارحه*")  
return false
end 
if text == "قفل الشارحه بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل الشارحه*")  
return false
end 
if text == "قفل الشارحه بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل الشارحه*")  
return false
end 
if text == "قفل الشارحه بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل الشارحه*")  
return false
end 
if text == "فتح الشارحه" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح الشارحه*")  
return false
end 
if text == "قفل الصور"and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الصور*")  
return false
end 
if text == "قفل الصور بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل الصور*")  
return false
end 
if text == "قفل الصور بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل الصور*")  
return false
end 
if text == "قفل الصور بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل الصور*")  
return false
end 
if text == "فتح الصور" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح الصور*")  
return false
end 
if text == "قفل الفيديو" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الفيديو*")  
return false
end 
if text == "قفل الفيديو بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل الفيديو*")  
return false
end 
if text == "قفل الفيديو بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل الفيديو*")  
return false
end 
if text == "قفل الفيديو بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل الفيديو*")  
return false
end 
if text == "فتح الفيديو" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","*𓍯 ܛ تم فتح الفيديو*")  
return false
end 
if text == "قفل المتحركه" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل المتحركه*")  
return false
end 
if text == "قفل المتحركه بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل المتحركه*")  
return false
end 
if text == "قفل المتحركه بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل المتحركه*")  
return false
end 
if text == "قفل المتحركه بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل المتحركه*")  
return false
end 
if text == "فتح المتحركه" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح المتحركه")  
return false
end 
if text == "قفل الالعاب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","*𓍯 ܛ تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","*𓍯 ܛ تم قفـل الالعاب*")  
return false
end 
if text == "قفل الالعاب بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","*𓍯 ܛ تم قفـل الالعاب*")  
return false
end 
if text == "قفل الالعاب بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","*𓍯 ܛ تم قفـل الالعاب*")  
return false
end 
if text == "فتح الالعاب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الالعاب")  
return false
end 
if text == "قفل الاغاني" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الاغاني")  
return false
end 
if text == "فتح الاغاني" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الاغاني")  
return false
end 
if text == "قفل الصوت" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الصوت")  
return false
end 
if text == "فتح الصوت" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الصوت")  
return false
end 
if text == "قفل الكيبورد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الكيبورد")  
return false
end 
if text == "فتح الكيبورد" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الكيبورد")  
return false
end 
if text == "قفل الملصقات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الملصقات")  
return false
end 
if text == "قفل الملصقات بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الملصقات")  
return false
end 
if text == "قفل الملصقات بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الملصقات")  
return false
end 
if text == "قفل الملصقات بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الملصقات")  
return false
end 
if text == "فتح الملصقات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الملصقات")  
return false
end 
if text == "قفل التوجيه" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل التوجيه")  
return false
end 
if text == "قفل التوجيه بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل التوجيه")  
return false
end 
if text == "قفل التوجيه بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل التوجيه")  
return false
end 
if text == "قفل التوجيه بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل التوجيه")  
return false
end 
if text == "فتح التوجيه" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح التوجيه")  
return false
end 
if text == "قفل الملفات" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الملفات")  
return false
end 
if text == "فتح الملفات" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الملفات")  
return false
end 
if text == "قفل السيلفي" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل السيلفي")  
return false
end 
if text == "فتح السيلفي" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح السيلفي")  
return false
end 
if text == "قفل الماركداون" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الماركداون")  
return false
end 
if text == "فتح الماركداون" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الماركداون")  
return false
end 
if text == "قفل الجهات" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الجهات")  
return false
end 
if text == "فتح الجهات" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الجهات")  
return false
end 
if text == "قفل الكلايش" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الكلايش")  
return false
end 
if text == "فتح الكلايش" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الكلايش")  
return false
end 
if text == "قفل الانلاين" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالتقيد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالكتم" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالطرد" and Addictive(msg) then
database:set(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفـل الانلاين")  
return false
end 
if text == "فتح الانلاين" and Addictive(msg) then
database:del(bot_id.."TiMoRDev:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح الانلاين")  
return false
end 
if text == "قفل التكرار بالطرد" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:hset(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","ܛ تم قفل التكرار")
return false
end 
if text == "قفل التكرار" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:hset(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","ܛ تم قفل التكرار بالحذف")
return false
end 
if text == "قفل التكرار بالتقيد" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:hset(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","ܛ تم قفل التكرار")
return false
end 
if text == "قفل التكرار بالكتم" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:hset(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","ܛ تم قفل التكرار")
return false
end 
if text == "فتح التكرار" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
database:hdel(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","ܛ تم فتح التكرار")
return false
end 

if text == ("مسح قائمه العام") and DevTiMoRDev(msg) then
database:del(bot_id.."TiMoRDev:GBan:User")
send(msg.chat_id_, msg.id_, "\nܛ تم مسح قائمه العام")
return false
end
if text == ("مسح المطورين") and DevTiMoRDev(msg) then
database:del(bot_id.."TiMoRDev:Sudo:User")
send(msg.chat_id_, msg.id_, "\nܛ  تم مسح قائمة المطورين  ")
end
if text == "مسح المنشئين الاساسين" and DevBot(msg) then
database:del(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_)
texts = "ܛ  تم مسح المنشئين الاساسيين"
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح المنشئين" and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Constructor"..msg.chat_id_)
texts = "ܛ  تم مسح المنشئين "
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح المدراء" and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Manager"..msg.chat_id_)
texts = "ܛ  تم مسح المدراء "
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح الادمنيه" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ܛ  تم مسح  قائمة الادمنية  ")
end
if text == "مسح المميزين" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ܛ  تم مسح  قائمة الاعضاء المميزين  ")
end
if text == "مسح المكتومين" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "ܛ  تم مسح قائمه المكتومين ")
end
if text == "مسح المحظورين" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\nܛ تم مسح المحظورين")
end
if text == ("قائمه العام") and DevTiMoRDev(msg) then
local list = database:smembers(bot_id.."TiMoRDev:GBan:User")
t = "\n*𓍯 ܛ قائمة المحظورين عام*\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."*𓍯"..k.."⋙ * ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد محظورين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المطورين") and DevTiMoRDev(msg) then
local list = database:smembers(bot_id.."TiMoRDev:Sudo:User")
t = "\n*𓍯 ܛ قائمة مطورين البوت* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد مطورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "المنشئين الاساسين" and DevBot(msg) then
local list = database:smembers(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة المنشئين الاساسين* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد منشئين اساسيين*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المنشئين") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:Constructor"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة المنشئين* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد منشئين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("المدراء") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:Manager"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة المدراء* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد مدراء*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("الادمنيه") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة الادمنيه* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد ادمنيه*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("المميزين") and Addictive(msg) then
local list = database:smembers(bot_id.."TiMoRDev:Special:User"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة مميزين المجموعه* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد مميزين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("المكتومين") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة المكتومين* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد مكتومين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("المحظورين") then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_)
t = "\n*𓍯 ܛ قائمة محظورين المجموعه *\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."𓍯"..k.."⋙ ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد محظورين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("حظر عام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTiMoRDev(msg) then
function Function_TiMoRDev(extra, result, success)
if result.sender_user_id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يمكنك حظر المطور الاساسي* \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id.."TiMoRDev:GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم حظره عام من المجموعات*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevTiMoRDev(msg) then
local username = text:match("^حظر عام @(.*)$") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا تسطيع حظر البوت عام*")
return false 
end
if result.id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يمكنك حظر المطور الاساسي* \n")
return false 
end
database:sadd(bot_id.."TiMoRDev:GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم حظره عام من المجموعات*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^حظر عام (%d+)$") and DevTiMoRDev(msg) then
local userid = text:match("^حظر عام (%d+)$")
if userid == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يمكنك حظر المطور الاساسي *\n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id.."TiMoRDev:GBan:User", userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم حظره عام من المجموعات*")  
return false
end
if text == ("الغاء العام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTiMoRDev(msg) then
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم الغاء حظره عام من المجموعات*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevTiMoRDev(msg) then
local username = text:match("^الغاء العام @(.*)$") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم الغاء حظره عام من المجموعات*")  
database:srem(bot_id.."TiMoRDev:GBan:User", result.id_)
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevTiMoRDev(msg) then
local userid = text:match("^الغاء العام (%d+)$")
database:srem(bot_id.."TiMoRDev:GBan:User", userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم الغاء حظره عام من المجموعات*")  
return false
end

if text == ("اضف مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTiMoRDev(msg) then
function Function_TiMoRDev(extra, result, success)
database:sadd(bot_id.."TiMoRDev:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم ترقيته مطور في البوت*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false 
end
if text and text:match("^اضف مطور @(.*)$") and DevTiMoRDev(msg) then
local username = text:match("^اضف مطور @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم ترقيته مطور في البوت*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false 
end
if text and text:match("^اضف مطور (%d+)$") and DevTiMoRDev(msg) then
local userid = text:match("^اضف مطور (%d+)$")
database:sadd(bot_id.."TiMoRDev:Sudo:User", userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم ترقيته مطور في البوت*")  
return false 
end
if text == ("حذف مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and DevTiMoRDev(msg) then
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تنزيله من المطورين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false 
end
if text and text:match("^حذف مطور @(.*)$") and DevTiMoRDev(msg) then
local username = text:match("^حذف مطور @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تنزيله من المطورين*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end  
if text and text:match("^حذف مطور (%d+)$") and DevTiMoRDev(msg) then
local userid = text:match("^حذف مطور (%d+)$")
database:srem(bot_id.."TiMoRDev:Sudo:User", userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تنزيله من المطورين*")  
return false 
end

if text == ("رفع منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:sadd(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم ترقيته منشئ اساسي*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^رفع منشئ اساسي @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم ترقيته منشئ اساسي*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
database:sadd(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم ترقيته منشئ اساسي*")  
return false
end
if text == ("تنزيل منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تنزيله من المنشئين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تنزيله من المنشئين*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
database:srem(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تنزيله من المنشئين*")  
return false
end

if text == "رفع منشئ" and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:sadd(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم ترقيته منشئ في المجموعه*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^رفع منشئ @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","𓍯 ܛ تم ترقيته منشئ في المجموعه*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
end
------------------------------------------------------------------------
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^رفع منشئ (%d+)$")
database:sadd(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم ترقيته منشئ في المجموعه*")  
end
if text and text:match("^تنزيل منشئ$") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تنزيله من المنشئين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^تنزيل منشئ @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تنزيله من المنشئين*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^تنزيل منشئ (%d+)$")
database:srem(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تنزيله من المنشئين*")  
end

if text == ("رفع مدير") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:sadd(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم ترقيته مدير المجموعه*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end  
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^رفع مدير @(.*)$") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم ترقيته مدير المجموعه*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end 

if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^رفع مدير (%d+)$") 
database:sadd(bot_id.."TiMoRDev:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم ترقيته مدير المجموعه*")  
return false
end  
if text == ("تنزيل مدير") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تنزيله من المدراء*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^تنزيل مدير @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تنزيله من المدراء*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^تنزيل مدير (%d+)$") 
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تنزيله من المدراء*")  
return false
end

if text == ("رفع ادمن") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
database:sadd(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم ترقيته ادمن للمجموعه*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^رفع ادمن @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم ترقيته ادمن للمجموعه*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^رفع ادمن (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين*')
return false
end
database:sadd(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم ترقيته ادمن للمجموعه*")  
return false
end
if text == ("تنزيل ادمن") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تنزيله من ادمنيه المجموعه*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^تنزيل ادمن @(.*)$") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تنزيله من ادمنيه المجموعه*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^تنزيل ادمن (%d+)$")
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تنزيله من ادمنيه المجموعه*")  
return false
end

if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
database:sadd(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم ترقيته مميز للمجموعه*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^رفع مميز @(.*)$") 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم ترقيته مميز للمجموعه*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end

if text and text:match("^رفع مميز (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^رفع مميز (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين*')
return false
end
database:sadd(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم ترقيته مميز للمجموعه*")  
return false
end

if (text == ("تنزيل مميز")) and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تنزيله من المميزين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^تنزيل مميز @(.*)$") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تنزيله من المميزين*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^تنزيل مميز (%d+)$") 
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تنزيله من المميزين*")  
return false
end  
if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local RTPA = text:match("رفع (.*)")
if database:sismember(bot_id.."TiMoRDev:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local TiMoRDevrt = database:get(bot_id.."TiMoRDev:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if TiMoRDevrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n*ܛ العضو ⋙* ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n*ܛ تم رفعه "..RTPA.." هنا\n**")   
database:set(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id.."TiMoRDev:Special:User"..msg.chat_id_,result.sender_user_id_)  
elseif TiMoRDevrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n*ܛ العضو ⋙* ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n*ܛ تم رفعه "..RTPA.." هنا\n*")   
database:set(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_,result.sender_user_id_)  
elseif TiMoRDevrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n*ܛ العضو ⋙* ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n*ܛ تم رفعه "..RTPA.." هنا\n*")   
database:set(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id.."TiMoRDev:Manager"..msg.chat_id_,result.sender_user_id_)  
elseif TiMoRDevrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n*ܛ العضو ⋙* ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n*ܛ تم رفعه "..RTPA.." هنا\n*")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local RTPA = text:match("تنزيل (.*)")
if database:sismember(bot_id.."TiMoRDev:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local TiMoRDevrt = database:get(bot_id.."TiMoRDev:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if TiMoRDevrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nܛ تم تنزيله من "..RTPA.." هنا\n")   
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif TiMoRDevrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nܛ تم تنزيله من "..RTPA.." هنا\n")   
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif TiMoRDevrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nܛ تم تنزيله من "..RTPA.." هنا\n")   
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif TiMoRDevrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\nܛ تم تنزيله من "..RTPA.." هنا\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^رفع (.*) @(.*)") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if database:sismember(bot_id.."TiMoRDev:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local TiMoRDevrt = database:get(bot_id.."TiMoRDev:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if TiMoRDevrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم رفعه "..text1[2].." هنا")   
database:sadd(bot_id.."TiMoRDev:Special:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif TiMoRDevrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم رفعه "..text1[2].." هنا")   
database:sadd(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif TiMoRDevrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم رفعه "..text1[2].." هنا")   
database:sadd(bot_id.."TiMoRDev:Manager"..msg.chat_id_,result.id_)  
database:set(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif TiMoRDevrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم رفعه "..text1[2].." هنا")   
end
else
info = "ܛ المعرف غلط"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^تنزيل (.*) @(.*)") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if database:sismember(bot_id.."TiMoRDev:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local TiMoRDevrt = database:get(bot_id.."TiMoRDev:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if TiMoRDevrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم تنريله من "..text1[2].." هنا")   
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif TiMoRDevrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم تنريله من "..text1[2].." هنا")   
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif TiMoRDevrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم تنريله من "..text1[2].." هنا")   
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_,result.id_)  
database:del(bot_id.."TiMoRDev:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif TiMoRDevrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\nܛ العضو ⋙ ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\nܛ تم تنريله من "..text1[2].." هنا")   
end
else
info = "*𓍯 ܛ المعرف غلط*"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end

if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لقد تم تعطيل الحظر و الطرد من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
database:sadd(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم حظره من المجموعه*")  
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end

if text and text:match("^حظر @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^حظر @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'ܛ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\nܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
database:sadd(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم حظره من المجموعه*")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end

if text and text:match("^حظر (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^حظر (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لقد تم تعطيل الحظر و الطرد من قبل المنشئين*')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
database:sadd(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid)  
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم حظره من المجموعه*")  
end,nil)   
end
return false
end
if text == ("الغاء حظر") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ انا لست محظورا *\n") 
return false 
end
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم الغاء حظره من هنا*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
 
if text and text:match("^الغاء حظر @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^الغاء حظر @(.*)$") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ انا لست محظورا* \n") 
return false 
end
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.id_,"reply","ܛ تم الغاء حظره من هنا")  
else
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end

if text and text:match("^الغاء حظر (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^الغاء حظر (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ انا لست محظورا* \n") 
return false 
end
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم الغاء حظره من هنا*")  
return false
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end     
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ܛ تم كتمه من هنا")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^كتم @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end     
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم كتمه من هنا*")  
else
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^كتم (%d+)$")
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
database:sadd(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم كتمه من هنا *")  
end
return false
end
if text == ("الغاء كتم") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم الغاء كتمه من هنا*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Addictive(msg) then
local username = text:match("^الغاء كتم @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم الغاء كتمه من هنا*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^الغاء كتم (%d+)$") 
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","ܛ تم الغاء كتمه من هنا")  
return false
end

if text == ("تقيد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم تقييده في المجموعه*")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^تقيد @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end      
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم تقييده في المجموعه*")  
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^تقيد (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم تقييده في المجموعه*")  
end
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقيد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","*𓍯 ܛ تم الغاء تقييده*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^الغاء تقيد @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم الغاء تقييده*")  
else
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local userid = text:match("^الغاء تقيد (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","ܛ تم الغاء تقييده")  
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لقد تم تعطيل الحظر و الطرد من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","ܛ تم طرده من هنا")  
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
local username = text:match("^طرد @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لقد تم تعطيل الحظر و الطرد من قبل المنشئين*')
return false
end
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه *")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","*𓍯 ܛ تم طرده من هنا*")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
local userid = text:match("^طرد (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لقد تم تعطيل الحظر و الطرد من قبل المنشئين*')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ عذرا لا تستطيع طرد او حظر او كتم او تقييد* ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","*𓍯 ܛ تم طرده من هن*ا")  
end,nil)   
end
return false
end

if text == "تعطيل الطرد" or text == "تعطيل الحظر" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
database:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '*𓍯 ܛ تم تعطيل ⋙ الحظر ~ والطرد *')
return false
end
end
if text == "تفعيل الطرد" or text == "تفعيل الحظر" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
database:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*𓍯 ܛ تم تفعيل ⋙ الحظر ⋙ والطرد *')
return false
end
end
if text == "تعطيل الرفع" or text == "تعطيل الترقيه" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
database:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '*𓍯 ܛ تم تعطيل رفع ⋙ الادمن ⋙ المميز *')
return false
end
end
if text == "تفعيل الرفع" or text == "تفعيل الترقيه" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
database:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*𓍯 ܛ تم تفعيل رفع ⋙ الادمن ⋙ المميز *')
return false
end
end
if text ==("تثبيت") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id.."TiMoRDev:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ التثبيت والغاء التثبيت تم قفله من قبل المنشئين*")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تثبيت الرساله*")   
database:set(bot_id.."TiMoRDev:Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil) 
end
if text == "الغاء التثبيت" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id.."TiMoRDev:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ التثبيت والغاء التثبيت تم قفله من قبل المنشئين*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء تثبيت الرساله*")   
database:del(bot_id.."TiMoRDev:Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"*𓍯 ܛ ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end

if text and text:match("^وضع تكرار (%d+)$") and Addictive(msg) then   
local Num = text:match("وضع تكرار (.*)")
database:hset(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم وضع عدد التكرار* ("..Num..")")  
end 
if text and text:match("^وضع زمن التكرار (%d+)$") and Addictive(msg) then   
local Num = text:match("^وضع زمن التكرار (%d+)$")
database:hset(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم وضع زمن التكرار* ("..Num..")") 
end
if text == "ضع رابط" or text == "وضع رابط" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.reply_to_message_id_ == 0  and Addictive(msg) then  
send(msg.chat_id_,msg.id_,"*𓍯 ܛ ارسل رابط المجموعه او رابط قناة المجموعه*")
database:setex(bot_id.."TiMoRDev:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "تفعيل جلب الرابط" or text == 'تفعيل الرابط' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then  
database:set(bot_id.."TiMoRDev:Link_Group"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تفعيل جلب الرابط المجموعه*") 
return false  
end
end
if text == "تعطيل جلب الرابط" or text == 'تعطيل الرابط' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then  
database:del(bot_id.."TiMoRDev:Link_Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تعطيل جلب رابط المجموعه*") 
return false end
end
if text == "الرابط" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local status_Link = database:get(bot_id.."TiMoRDev:Link_Group"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ جلب الرابط معطل*") 
return false  
end
local link = database:get(bot_id.."TiMoRDev:Private:Group:Link"..msg.chat_id_)            
if link then                              
send(msg.chat_id_,msg.id_,"*𖣳 𝙡𝙞𝙣𝙠 𝙜𝙧𝙤𝙪𝙥 :* \n ["..link.."]")                          
else                
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا يوجد رابط ارسل ضع رابط*")              
end            
end
if text == "مسح الرابط" or text == "حذف الرابط" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then     
send(msg.chat_id_,msg.id_,"*𓍯 ܛ تم مسح الرابط *")           
database:del(bot_id.."TiMoRDev:Private:Group:Link"..msg.chat_id_) 
return false      
end
return false  
end
if text and text:match("^ضع صوره") and Addictive(msg) and msg.reply_to_message_id_ == 0 or text and text:match("^وضع صوره") and Addictive(msg) and msg.reply_to_message_id_ == 0 then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل لي الصوره*") 
return false
end
if text == "حذف الصوره" or text == "مسح الصوره" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم ازالة صورة المجموعه*") 
end
return false  
end
if text == "ضع وصف" or text == "وضع وصف" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
database:setex(bot_id.."TiMoRDev:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الان الوصف*")
end
return false  
end
if text == "ضع ترحيب" or text == "وضع ترحيب" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
database:setex(bot_id.."TiMoRDev:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = "*𓍯 ܛ ارسل لي الترحيب الان*"
tt = "\n*𓍯 ܛ تستطيع اضافة مايلي *\n*ܛ دالة عرض الاسم ⋙* {`name`}\n*ܛ دالة عرض المعرف *⋙ {`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == "الترحيب" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."TiMoRDev:Get:Welcome:Group"..msg.chat_id_)   then 
Welcome = database:get(bot_id.."TiMoRDev:Get:Welcome:Group"..msg.chat_id_)  
else 
Welcome = "*𓍯 ܛ لم يتم تعيين ترحيب للمجموعه*"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false  
end
if text == "تفعيل الترحيب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تفعيل ترحيب المجموعه*") 
return false  
end
if text == "تعطيل الترحيب" and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تعطيل ترحيب المجموعه*") 
return false  
end
if text == "مسح الترحيب" or text == "حذف الترحيب" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
database:del(bot_id.."TiMoRDev:Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم ازالة ترحيب المجموعه*") 
end
return false  
end

if text == "مسح قائمه المنع" and Addictive(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."TiMoRDev:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."TiMoRDev:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم مسح قائمه المنع*")  
end

if text == "قائمه المنع" and Addictive(msg) then  
 if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:List:Filter"..msg.chat_id_)  
t = "\n*𓍯 ܛ قائمة المنع *\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do  
local TiMoRDev_Msg = database:get(bot_id.."TiMoRDev:Add:Filter:Rp2"..v..msg.chat_id_)   
t = t..""..k.."- "..v.." ⋙ {"..TiMoRDev_Msg.."}\n"    
end  
if #list == 0 then  
t = "*𓍯 ܛ لا يوجد كلمات ممنوعه*"  
end  
send(msg.chat_id_, msg.id_,t)  
end  
if text and text == "منع" and msg.reply_to_message_id_ == 0 and Addictive(msg) then       
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الكلمه لمنعها*")  
database:set(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل التحذير عند ارسال الكلمه*")  
database:set(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."TiMoRDev:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."TiMoRDev:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم منع الكلمه مع التحذير*")  
database:del(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."TiMoRDev:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."TiMoRDev:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."TiMoRDev:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Addictive(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الكلمه الان*")  
database:set(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء منعه *")  
database:del(bot_id.."TiMoRDev:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."TiMoRDev:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."TiMoRDev:List:Filter"..msg.chat_id_,text)  
return false  end  
end

if text == "مسح البوتات" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا توجد بوتات في المجموعه*")
else
local t = "*𓍯 ܛ عدد البوتات هنا ⋙ {"..c.."}\n𓍯 ܛ عدد البوتات التي هي ادمن ⋙ {"..x.."}\n𓍯 ܛ تم طرد ⋙ {"..(c - x).."} من البوتات*"
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
if text == ("كشف البوتات") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n*𓍯 ܛ قائمة البوتات الموجوده\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n*"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = " {✯}"
end
text = text.."⋙ [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا توجد بوتات في المجموعه*")
return false 
end
if #admins == i then 
local a = "\n*⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\nܛ عدد البوتات ⋙ {"..n.."} بوت 𓍯\n*"
local f = "* ܛ عدد البوتات التي هي ادمن ⋙ {"..t.."}𓍯\n𓍯 ܛ علامة ال(✯) تعني البوت ادمن\n*"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."TiMoRDev:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" then 
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم الغاء حفظ القوانين*") 
database:del(bot_id.."TiMoRDev:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."TiMoRDev:Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم حفظ قوانين المجموعه*") 
database:del(bot_id.."TiMoRDev:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == "ضع قوانين" or text == "وضع قوانين" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
database:setex(bot_id.."TiMoRDev:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"*𓍯 ܛ ارسل لي القوانين الان*")  
end
end
if text == "مسح القوانين" or text == "حذف القوانين" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم ازالة قوانين المجموعه*")  
database:del(bot_id.."TiMoRDev:Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "القوانين" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Set_Rules = database:get(bot_id.."TiMoRDev:Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then     
send(msg.chat_id_,msg.id_, Set_Rules)   
else      
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا توجد قوانين هنا*")   
end    
end

if text == "الاوامر المضافه" and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:List:Cmd:Group:New"..msg.chat_id_.."")
t = "*𓍯 ܛ قائمه الاوامر المضافه \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n*"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."TiMoRDev:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "*𓍯 ܛ لا توجد اوامر اضافيه*"
end
send(msg.chat_id_, msg.id_,"["..t.."]")
end
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then 
local list = database:smembers(bot_id.."TiMoRDev:List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."TiMoRDev:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
database:del(bot_id.."TiMoRDev:List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم مسح جميع الاوامر التي تم اضافتها*")  
end
end
if text == "اضف امر" and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الان ارسل لي الامر القديم ..*")  
return false
end
if text == "حذف امر" or text == "مسح امر" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Constructor(msg) then
database:set(bot_id.."TiMoRDev:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الامر الذي قم بوضعه بدلا عن القديم*")  
return false
end
end

if text == "الصلاحيات" and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."TiMoRDev:Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ لا توجد صلاحيات مضافه*")
return false
end
t = "\n*𓍯 ܛ قائمة الصلاحيات المضافه \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n*"
for k,v in pairs(list) do
var = database:get(bot_id.."TiMoRDev:Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "مسح الصلاحيات" then
local list = database:smembers(bot_id.."TiMoRDev:Coomds"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."TiMoRDev:Comd:New:rt:bot:"..v..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"ܛ تم مسح الصلاحيات")
end
if text and text:match("^اضف صلاحيه (.*)$") and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
ComdNew = text:match("^اضف صلاحيه (.*)$")
database:set(bot_id.."TiMoRDev:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."TiMoRDev:Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."TiMoRDev:Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, "*ܛ ارسل نوع الصلاحيه ܛ \nܛ (عضو ~ مميز  ~ ادمن  ~ مدير )*") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Addictive(msg) or text and text:match("^حذف صلاحيه (.*)$") and Addictive(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
ComdNew = text:match("^مسح صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
database:del(bot_id.."TiMoRDev:Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم مسح الصلاحيه *") 
end
if database:get(bot_id.."TiMoRDev:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء الامر *") 
database:del(bot_id.."TiMoRDev:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_"*ܛ ارسل نوع الصلاحيه مره اخر\nܛ تستطيع اضافة صلاحيه (عضو ~ مميز  ~ ادمن )*") 
return false
end
end
if text == "ادمن" then
if not Owner(msg) then 
send(msg.chat_id_, msg.id_"*ܛ ارسل نوع الصلاحيه مره اخر\nܛ تستطيع اضافة صلاحيه ( عضو ~ مميز )*") 
return false
end
end
if text == "مميز" then
if not Addictive(msg) then
send(msg.chat_id_, msg.id_"*ܛ ارسل نوع الصلاحيه مره اخر\nܛ تستطيع اضافة صلاحيه ( عضو )*") 
return false
end
end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = database:get(bot_id.."TiMoRDev:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."TiMoRDev:Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم اضافة صلاحية *") 
database:del(bot_id.."TiMoRDev:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("^تغير رد المطور (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."TiMoRDev:Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد المطور الى ⋙* "..Teext)
end
if text and text:match("^تغير رد المنشئ الاساسي (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المنشئ الاساسي (.*)$") 
database:set(bot_id.."TiMoRDev:BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد المنشئ الاساسي الى ⋙* "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."TiMoRDev:Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد المنشئ الى ⋙* "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."TiMoRDev:Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد المدير الى ⋙* "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."TiMoRDev:Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد الادمن الى ⋙* "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."TiMoRDev:Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد المميز الى ⋙* "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."TiMoRDev:Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم تغير رد العضو الى ⋙* "..Teext)
end


if text == ("مسح ردود المدير") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."TiMoRDev:List:Manager"..msg.chat_id_.."")
for k,v in pairs(list) do
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Stekrs"..v..msg.chat_id_)     
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id.."TiMoRDev:List:Manager"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم مسح ردود المدير*")
end
if text == ("ردود المدير") and Owner(msg) then
local list = database:smembers(bot_id.."TiMoRDev:List:Manager"..msg.chat_id_.."")
text = "📑┇قائمه ردود المدير \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ \n"
for k,v in pairs(list) do
if database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = "متحركه 🎭"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = "بصمه 📢"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = "ملصق 🃏"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = "رساله ✉"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = "صوره 🎇"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = "فيديو 📹"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:File"..v..msg.chat_id_) then
db = "ملف 📁"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = "اغنيه 🎵"
end
text = text..""..k..">> ("..v..") ⋙ {"..db.."}\n"
end
if #list == 0 then
text = "ܛ لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."TiMoRDev:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_.."")
if database:get(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."TiMoRDev:Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"ܛ تم حفظ الرد بنجاح")
return false  
end  
end
if text == "اضف رد" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الكلمه التري تريد اضافتها*")
database:set(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل الكلمه التري تريد حذفها*")
database:set(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*ܛ الان ارسل الرد الذي تريد اضافته*\n*ܛ قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )*\n*ܛ يمكنك اضافه الى النص :*\n- `#username` >*ܛ اسم المستخدم*\n- `#msgs` >*ܛ عدد رسائل المستخدم*\n- `#name` >*ܛ اسم المستخدم*\n- `#id` >*ܛ ايدي المستخدم*\n- `#stast` >*ܛ موقع المستخدم *\n- `#edit` >*ܛ عدد السحكات* ')
database:set(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."TiMoRDev:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."TiMoRDev:List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم ازالة الرد من قائمه الردود*")
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."TiMoRDev:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."TiMoRDev:List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."TiMoRDev:Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'TiMoRDev:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
local Text = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."TiMoRDev:Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'TiMoRDev:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or '*𓍯 لا يوجد*')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr)
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)   
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,photo_caption)
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
------------------------------------------------------------------------
if text == ("مسح ردود المطور") and DevTiMoRDev(msg) then 
local list = database:smembers(bot_id.."TiMoRDev:List:Rd:Sudo")
for k,v in pairs(list) do
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:stekr"..v)     
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:Video"..v)
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:File"..v)
database:del(bot_id.."TiMoRDev:Add:Rd:Sudo:Audio"..v)
database:del(bot_id.."TiMoRDev:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم مسح ردود المطور*")
end
if text == ("ردود المطور") and DevTiMoRDev(msg) then 
local list = database:smembers(bot_id.."TiMoRDev:List:Rd:Sudo")
text = "\n*𓍯 ܛ قائمة ردود المطور \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ \n*"
for k,v in pairs(list) do
if database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Gif"..v) then
db = "متحركه 🎭"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:vico"..v) then
db = "بصمه 📢"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:stekr"..v) then
db = "ملصق 🃏"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Text"..v) then
db = "رساله ✉"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Photo"..v) then
db = "صوره 🎇"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Video"..v) then
db = "فيديو 📹"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:File"..v) then
db = "ملف 📁"
elseif database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Audio"..v) then
db = "اغنيه 🎵"
end
text = text..""..k.." >> ("..v..") ⋙ {"..db.."}\n"
end
if #list == 0 then
text = "*𓍯 ܛ لا يوجد ردود للمطور*"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."TiMoRDev:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."TiMoRDev:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."TiMoRDev:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."TiMoRDev:Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم حفظ الرد بنجاح*")
return false  
end  
end

if text == "اضف رد للكل" and DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  ارسل الكلمه التري تريد اضافتها*")
database:set(bot_id.."TiMoRDev:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد للكل" and DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  ارسل الكلمه التري تريد حذفها*")
database:set(bot_id.."TiMoRDev:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."TiMoRDev:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*ܛ الان ارسل الرد الذي تريد اضافته*\n*ܛ قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )*\n*ܛ يمكنك اضافه الى النص :*\n- `#username` >*ܛ اسم المستخدم*\n- `#msgs` >*ܛ عدد رسائل المستخدم*\n- `#name` >*ܛ اسم المستخدم*\n- `#id` >*ܛ ايدي المستخدم*\n- `#stast` >*ܛ موقع المستخدم *\n- `#edit` >*ܛ عدد السحكات* ')
database:set(bot_id.."TiMoRDev:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."TiMoRDev:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."TiMoRDev:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."TiMoRDev:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم ازالة الرد من قائمه ردود المطور*")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..'TiMoRDev:'..v..text)
end
database:del(bot_id.."TiMoRDev:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."TiMoRDev:List:Rd:Sudo", text)
return false
end
end

if text and not database:get(bot_id.."TiMoRDev:Reply:Sudo"..msg.chat_id_) then
if not database:sismember(bot_id..'TiMoRDev:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:stekr"..text)     
local Text = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."TiMoRDev:Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'TiMoRDev:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or '*𓍯 لا يوجد*')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,Text)
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)     
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if Addictive(msg) then    
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'*𓍯 ܛ* تم طرد الحسابات المحذوفه')
end,nil)
end
end

if text == "تفعيل ردود المدير" and Owner(msg) then   
database:del(bot_id.."TiMoRDev:Reply:Manager"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تفعيل ردود المدير*") 
end
if text == "تعطيل ردود المدير" and Owner(msg) then  
database:set(bot_id.."TiMoRDev:Reply:Manager"..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تعطيل ردود المدير*" ) 
end
if text == "تفعيل ردود المطور" and Owner(msg) then   
database:del(bot_id.."TiMoRDev:Reply:Sudo"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تفعيل ردود المطور*" ) 
end
if text == "تعطيل ردود المطور" and Owner(msg) then  

database:set(bot_id.."TiMoRDev:Reply:Sudo"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تعطيل ردود المطور*" ) 
end

if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
if tonumber(SUDO) == tonumber(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  لا تستطيع تنزيل المطور الاساسي*")
return false 
end
if database:sismember(bot_id.."TiMoRDev:Sudo:User",result.sender_user_id_) then
dev = "المطور ،" else dev = "" end
if database:sismember(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, result.sender_user_id_) then
crr = "منشئ اساسي ،" else crr = "" end
if database:sismember(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.sender_user_id_) then
cr = "منشئ ،" else cr = "" end
if database:sismember(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_) then
own = "مدير ،" else own = "" end
if database:sismember(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "ادمن ،" else mod = "" end
if database:sismember(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "مميز ،" else vip = ""
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ تم تنزيل الشخص من الرتب \nܛ { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } 𓍯* \n")
else
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ ليس لديه رتب حتى استطيع تنزيله *\n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."TiMoRDev:Sudo:User", result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."TiMoRDev:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."TiMoRDev:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Manager"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."TiMoRDev:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
end
if text == "تاك للكل" and Addictive(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""), offset_ = 0,limit_ = 200},function(ta,taha)
local t = "\n*𓍯 ܛ  قائمة الاعضاء* \n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
x = 0
local list = taha.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id.."TiMoRDev:User:Name"..v.user_id_) then
t = t.."*𓍯"..x.." ⋙* {[@"..database:get(bot_id.."TiMoRDev:User:Name"..v.user_id_).."]}\n"
else
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end

if text == "رتبتي" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local rtp = Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"ܛ  رتبتك في البوت ⋙ "..rtp)
end
if text == "اسمي"  then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = "*ܛ  اسمك الاول ⋙\n {`"..(result.first_name_).."`}*"
else
first_name = ""
end   
if result.last_name_ then 
last_name = "*ܛ  اسمك الثاني ⋙\n {`"..result.last_name_.."`}*" 
else
last_name = ""
end      
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text==("عدد الكروب") and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"*𓍯 ܛ  البوت ليس ادمن هنا *\n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local taha = "*𓍯 ܛ  عدد الادمنيه : "..data.administrator_count_..
"\n𓍯 ܛ  عدد المطرودين : "..data.kicked_count_..
"\n𓍯 ܛ  عدد الاعضاء : "..data.member_count_..
"\n𓍯 ܛ  عدد رسائل الكروب : "..(msg.id_/2097152/0.5)..
"\n𓍯 اسم المجموعه :* ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, taha) 
end,nil)
end,nil)
end 
if text == "اطردني" or text == "طردني" then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not database:get(bot_id.."TiMoRDev:Kick:Me"..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ  عذرا لا استطيع طرد* ( "..Get_Rank(msg.sender_user_id_,msg.chat_id_).." )")
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها *") 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  البوت ليس ادمن يرجى ترقيتي *") 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  عذرا لا استطيع طرد ادمنية المجموعه*") 
return false  
end
if data and data.ID and data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم طردك من المجموعه *") 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  امر اطردني تم تعطيله من قبل المدراء *") 
end
end

if text == "تفعيل اطردني" and Owner(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."TiMoRDev:Kick:Me"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تعطيل اطردني" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."TiMoRDev:Kick:Me"..msg.chat_id_,true)  
Text = "\n*𓍯 ܛ تم تعطيل امر اطردني*"
send(msg.chat_id_, msg.id_,Text) 
end

if text and text:match("^رفع القيود @(.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^رفع القيود @(.*)") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if DevTiMoRDev(msg) then
database:srem(bot_id.."TiMoRDev:GBan:User",result.id_)
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,result.id_)
usertext = "\n*ܛ  العضو ⋙ 𓍯* ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status  = "\n*𓍯 ܛ  تم الغاء القيود عنه*"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\nܛ  تم الغاء القيود عنه")  
end
else
Text = "*𓍯 ܛ  المعرف غلط*"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
end
if text == "رفع القيود" and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
if DevTiMoRDev(msg) then
database:srem(bot_id.."TiMoRDev:GBan:User",result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\n*𓍯 ܛ  تم الغاء القيود عنه*")  
else
database:srem(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\n*ܛ  العضو 𓍯 ⋙* ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status  = "\n*𓍯 ܛ  تم الغاء القيود عنه*"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
end
if text and text:match("^كشف القيود @(.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local username = text:match("^كشف القيود @(.*)") 
function Function_TiMoRDev(extra, result, success)
if result.id_ then
if database:sismember(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,result.id_) then
Muted = "مكتوم"
else
Muted = "غير مكتوم"
end
if database:sismember(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_,result.id_) then
Ban = "محظور"
else
Ban = "غير محظور"
end
if database:sismember(bot_id.."TiMoRDev:GBan:User",result.id_) then
GBan = "محظور عام"
else
GBan = "غير محظور عام"
end
send(msg.chat_id_, msg.id_,"*ܛ الحظر العام⋙ "..GBan.." 𓍯\nܛ الحظر⋙ "..Ban.." 𓍯\nܛ الكتم⋙* "..Muted)
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  المعرف غلط*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
end

if text == "كشف القيود" and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function Function_TiMoRDev(extra, result, success)
if database:sismember(bot_id.."TiMoRDev:Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "مكتوم"
else
Muted = "غير مكتوم"
end
if database:sismember(bot_id.."TiMoRDev:Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "محظور"
else
Ban = "غير محظور"
end
if database:sismember(bot_id.."TiMoRDev:GBan:User",result.sender_user_id_) then
GBan = "محظور عام"
else
GBan = "غير محظور عام"
end
Textt = "*ܛ الحظر العام⋙ "..GBan.." 𓍯\nܛ الحظر⋙ "..Ban.." 𓍯\nܛ الكتم⋙* "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
end

if text and text:match("^ضع اسم (.*)") and Owner(msg) or text and text:match("^وضع اسم (.*)") and Owner(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Name = text:match("^ضع اسم (.*)") or text:match("^وضع اسم (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"ܛ  البوت ليس ادمن يرجى ترقيتي !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"ܛ  ليست لدي صلاحية تغير اسم المجموعه")  
else
send(msg.chat_id_,msg.id_,"ܛ  تم تغيير اسم المجموعه الى {["..Name.."]}")  
end
end,nil) 
end

if text ==("رفع الادمنيه") and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."TiMoRDev:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_,"ܛ  لا توجد ادمنية ليتم رفعهم") 
else
send(msg.chat_id_, msg.id_,"ܛ  تمت ترقية { "..num2.." } من ادمنية المجموعه") 
end
end,nil)   
end
if text ==("المنشئ") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  حساب المنشئ محذوف*")
return false  
end
local UserName = (b.username_ or "TiMoRDevTEAM")
send(msg.chat_id_, msg.id_,"*𓍯 ܛ منشئ المجموعه ⋙ * ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text ==("رفع المنشئ") and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"*𓍯 ܛ حساب المنشئ محذوف*")
return false  
end
local UserName = (b.username_ or "TiMoRDevTEAM")
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم ترقية منشئ المجموعه ⋙ *["..b.first_name_.."](T.me/"..UserName..")")  
database:sadd(bot_id.."TiMoRDev:Basic:Constructor"..msg.chat_id_,b.id_)
end,nil)   
end,nil)   
end

if text == "غادر" then 
if DevBot(msg) and not database:get(bot_id.."TiMoRDev:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم مغادرة المجموعه*") 
database:srem(bot_id.."TiMoRDev:Chek:Groups",msg.chat_id_)  
end
return false  
end
if text and text:match("^غادر (-%d+)$") then
local GP_ID = {string.match(text, "^(غادر) (-%d+)$")}
if DevBot(msg) and not database:get(bot_id.."TiMoRDev:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=GP_ID[2],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  تم مغادرة المجموعه*") 
send(GP_ID[2], 0,"*𓍯 ܛ  تم مغادرة المجموعه بامر من مطور البوت*") 
database:srem(bot_id.."TiMoRDev:Chek:Groups",GP_ID[2])  
return false 
end
end
if text == "تفعيل المغادره" and DevTiMoRDev(msg) then   
database:del(bot_id.."TiMoRDev:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تفعيل مغادرة البوت*") 
return false 
end
if text == "تعطيل المغادره" and DevTiMoRDev(msg) then  
database:set(bot_id.."TiMoRDev:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم تعطيل مغادرة البوت*") 
return false 
end
if text == (database:get(bot_id.."TiMoRDev:Name:Bot") or "تيمور") then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Namebot = (database:get(bot_id.."TiMoRDev:Name:Bot") or "تيمور")
local namebot = {
"*عافيت "..Namebot.. " كول حبي🙂💕 *",
'*تفضل يورد 🌝💞*',
'*ها يحلو كول♥︎*',
'*ههااااااا 😂😶*',
'*الو الو 😂❤️*',
'*دعبل داخابر؟ 🙂 🦇 *',
'*هها شتريد ☹️💘*',
'*حبيبي القميل كول 🥺💘*',
'*ععمريي تفضل 🙇🏿‍♂️💕*',
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end

if text == "بوت" then
Namebot = (database:get(bot_id.."TiMoRDev:Name:Bot") or "تيمور")
send(msg.chat_id_, msg.id_,"*اسمي الورد "..Namebot.."*") 
end
if text == "تغير اسم البوت" or text == "تغيير اسم البوت" or text == "حذف اسم البوت" then 
if DevTiMoRDev(msg) then
database:setex(bot_id.."TiMoRDev:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ  ارسل لي الاسم الان *")  
end
return false
end

if text ==("مسح المطرودين") and Addictive(msg) then    
local function delbans(extra, result)  
if not msg.can_be_deleted_ == true then  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ  يرجى ترقيتي ادمن هنا*") 
return false
end  
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1  
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil)  
end  
send(msg.chat_id_, msg.id_,"*ܛ  تم الغاء الحظر عن ⋙ "..num.." 𓍯 اشخاص* ") 
end    
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الاذاعه معطله من قبل المطور الاساسي*")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ܛ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\nܛ للخروج ارسل الغاء ") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"ܛ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ܛ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\nܛ للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتثبيت" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"ܛ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ܛ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\nܛ للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"ܛ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ܛ ارسل لي التوجيه الان") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"ܛ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"ܛ ارسل لي التوجيه الان") 
return false
end 

if text == "تفعيل الاذاعه" and DevTiMoRDev(msg) then  
database:del(bot_id.."TiMoRDev:Status:Bc") 
send(msg.chat_id_, msg.id_,"\nܛ تم تفعيل الاذاعه " ) 
return false
end 
if text == "تعطيل الاذاعه" and DevTiMoRDev(msg) then  
database:set(bot_id.."TiMoRDev:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\nܛ تم تعطيل الاذاعه") 
return false
end 

if text == "الاعدادات" and Addictive(msg) then    
if database:get(bot_id.."TiMoRDev:lockpin"..msg.chat_id_) then    
lock_pin = "✓"
else 
lock_pin = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:tagservr"..msg.chat_id_) then    
lock_tagservr = "✓"
else 
lock_tagservr = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:text"..msg.chat_id_) then    
lock_text = "✓"
else 
lock_text = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "✓"
else 
lock_add = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "✓"
else 
lock_join = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:edit"..msg.chat_id_) then    
lock_edit = "✓"
else 
lock_edit = "✘"    
end
if database:get(bot_id.."TiMoRDev:Get:Welcome:Group"..msg.chat_id_) then
welcome = "✓"
else 
welcome = "✘"    
end
if database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_, "flood") == "kick" then     
flood = "بالطرد"     
elseif database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"flood") == "keed" then     
flood = "بالتقيد"     
elseif database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"flood") == "mute" then     
flood = "بالكتم"           
elseif database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"flood") == "del" then     
flood = "بالمسح"           
else     
flood = "✘"     
end
if database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "✓" 
elseif database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "بالتقيد"   
elseif database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "بالطرد"   
else
lock_photo = "✘"   
end    
if database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "✓" 
elseif database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "بالطرد"    
else
lock_phon = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "del" then
lock_links = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "بالطرد"    
else
lock_links = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "بالكتم"   
elseif database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "بالطرد"    
else
lock_cmds = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "بالطرد"    
else
lock_user = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "بالطرد"    
else
lock_hash = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "بالطرد"    
else
lock_muse = "✘"    
end 
if database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "بالطرد"    
else
lock_ved = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "بالطرد"    
else
lock_gif = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "بالتقيد "    
elseif database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "بالكتم "    
elseif database:get(bot_id.."TiMoRDev:Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "بالطرد"    
else
lock_ste = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "بالطرد"    
else
lock_geam = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "بالطرد"    
else
lock_vico = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "بالتقيد"
elseif database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "بالطرد"
else
lock_inlin = "✘"
end
if database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "بالطرد"    
else
lock_fwd = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "del" then
lock_file = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "بالطرد"    
else
lock_file = "✘"    
end    
if database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "بالطرد"    
else
lock_self = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "بالتقيد"   
elseif database:get(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "بالطرد"    
else
lock_bots = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "بالطرد"    
else
lock_mark = "✘"    
end
if database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "del" then    
lock_spam = "✓"
elseif database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "بالتقيد"    
elseif database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "بالكتم"    
elseif database:get(bot_id.."TiMoRDev:Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "بالطرد"    
else
lock_spam = "✘"    
end        
if not database:get(bot_id.."TiMoRDev:Reply:Manager"..msg.chat_id_) then
rdmder = "✓"
else
rdmder = "✘"
end
if not database:get(bot_id.."TiMoRDev:Reply:Sudo"..msg.chat_id_) then
rdsudo = "✓"
else
rdsudo = "✘"
end
if not database:get(bot_id.."TiMoRDev:Lock:ID:Bot"..msg.chat_id_)  then
idgp = "✓"
else
idgp = "✘"
end
if not database:get(bot_id.."TiMoRDev:Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "✓"
else
idph = "✘"
end
if not database:get(bot_id.."TiMoRDev:Lock:kick"..msg.chat_id_)  then
setadd = "✓"
else
setadd = "✘"
end
if not database:get(bot_id.."TiMoRDev:Lock:Add:Bot"..msg.chat_id_)  then
banm = "✓"
else
banm = "✘"
end
if not database:get(bot_id.."TiMoRDev:Kick:Me"..msg.chat_id_) then
kickme = "✓"
else
kickme = "✘"
end
Num_Flood = database:hget(bot_id.."TiMoRDev:flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\nܛ ااعدادات المجموعه "..
"\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ "..
"\nܛ علامة ال {✓} تعني مفعل"..
"\nܛ علامة ال {✘} تعني معطل"..
"\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ "..
"\nܛ الروابط ⋙ "..lock_links..
"\n".."ܛ المعرفات ⋙ "..lock_user..
"\n".."ܛ التاك ⋙ "..lock_hash..
"\n".."ܛ البوتات ⋙ "..lock_bots..
"\n".."ܛ التوجيه ⋙ "..lock_fwd..
"\n".."ܛ التثبيت ⋙ "..lock_pin..
"\n".."ܛ الاشعارات ⋙ "..lock_tagservr..
"\n".."ܛ الماركدون ⋙ "..lock_mark..
"\n".."ܛ التعديل ⋙ "..lock_edit..
"\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ "..
"\n".."ܛ الكلايش ⋙ "..lock_spam..
"\n".."ܛ الكيبورد ⋙ "..lock_inlin..
"\n".."ܛ الاغاني ⋙ "..lock_vico..
"\n".."ܛ المتحركه ⋙ "..lock_gif..
"\n".."ܛ الملفات ⋙ "..lock_file..
"\n".."ܛ الدردشه ⋙ "..lock_text..
"\n".."ܛ الفيديو ⋙ "..lock_ved..
"\n".."ܛ الصور ⋙ "..lock_photo..
"\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ "..
"\n".."ܛ الصوت ⋙ "..lock_muse..
"\n".."ܛ الملصقات ⋙ "..lock_ste..
"\n".."ܛ الجهات ⋙ "..lock_phon..
"\n".."ܛ الدخول ⋙ "..lock_join..
"\n".."ܛ الاضافه ⋙ "..lock_add..
"\n".."ܛ السيلفي ⋙ "..lock_self..
"\n".."ܛ الالعاب ⋙ "..lock_geam..
"\n".."ܛ التكرار ⋙ "..flood..
"\n".."ܛ الترحيب ⋙ "..welcome..
"\n".."ܛ عدد التكرار ⋙ "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text)     
end    
if text == "تعطيل اوامر التحشيش" and Owner(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_, 'ܛ تم تعطيل اوامر التحشيش')
database:set(bot_id.."TiMoRDev:Fun_Bots"..msg.chat_id_,"true")
end
if text == "تفعيل اوامر التحشيش" and Owner(msg) then    
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,'ܛ تم تفعيل اوامر التحشيش')
database:del(bot_id.."TiMoRDev:Fun_Bots"..msg.chat_id_)
end

if text == 'تفعيل الايدي' and Owner(msg) then 
  if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id..'TiMoRDev:Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ܛ تم تفعيل الايدي') 
end
if text == 'تعطيل الايدي' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'TiMoRDev:Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'ܛ تم تعطيل الايدي') 
end
if text == 'تفعيل الايدي بالصوره' and Owner(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id..'TiMoRDev:Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'ܛ تم تفعيل الايدي بالصوره') 
end
if text == 'تعطيل الايدي بالصوره' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'TiMoRDev:Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم تعطيل الايدي بالصوره*') 
end
if text == 'تعين الايدي' and Owner(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."TiMoRDev:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
ܛ  ارسل الان النص
ܛ  يمكنك اضافه :
- `#username` > اسم المستخدم
- `#msgs` > عدد رسائل المستخدم
- `#photos` > عدد صور المستخدم
- `#id` > ايدي المستخدم
- `#auto` > تفاعل المستخدم
- `#stast` > موقع المستخدم 
- `#edit` > عدد السحكات
- `#game` > المجوهرات
- `#AddMem` > عدد الجهات
- `#Description` > تعليق الصوره
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' then
if Owner(msg) then
database:del(bot_id.."TiMoRDev:Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*ܛ تم ازالة كليشة الايدي *')
end
return false  
end 

if database:get(bot_id.."TiMoRDev:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء تعين الايدي*") 
database:del(bot_id.."TiMoRDev:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."TiMoRDev:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
database:set(bot_id.."TiMoRDev:Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم تعين الايدي*')    
end

if text == 'ايدي' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'TiMoRDev:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'TiMoRDev:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."TiMoRDev:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'TiMoRDev:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."TiMoRDev:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
'افف قميل وربي 🥺💘',
"ككمر عمريي 🐼🖤",
"فديت الاناقه 🌝💞",
"كشخه برب 🤣🧡",
"سكر محلي 🍯💞",
"افف الحلوو 🌩🌈 ",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."TiMoRDev:Klesh:Id:Bot"..msg.chat_id_)
if not database:get(bot_id..'TiMoRDev:Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,'ܛ '..Description..'\nܛ ايديك ⋙ '..Id..'\nܛ معرفك ⋙ '..UserName_User..'\nܛ رتبتك ⋙ '..Status_Gps..'\nܛ رسائلك ⋙ '..NumMsg..'\nܛ السحكات ⋙ '..message_edit..' \nܛ تتفاعلك ⋙ '..TotalMsg..'\nܛ  مجوهراتك ⋙ '..Num_Games)
end
else
send(msg.chat_id_, msg.id_,'*ܛ ليس لديك صوره \n'..'\nܛ ايديك ⋙ '..Id..'\nܛ معرفك ⋙* ['..UserName_User..']*\nܛ رتبتك ⋙ '..Status_Gps..'\nܛ رسائلك ⋙ '..NumMsg..'\nܛ السحكات ⋙ '..message_edit..' \nܛ تتفاعلك ⋙ '..TotalMsg..'\nܛ  مجوهراتك ⋙ '..Num_Games..'*') 
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
send(msg.chat_id_, msg.id_,'['..get_id..']') 
else
send(msg.chat_id_, msg.id_,'\n*ܛ ايديك ⋙ '..Id..'\nܛ معرفك ⋙* ['..UserName_User..']*\nܛ رتبتك ⋙ '..Status_Gps..'\nܛ رسائلك ⋙ '..NumMsg..'\nܛ السحكات ⋙ '..message_edit..' \nܛ تتفاعلك ⋙ '..TotalMsg..'\nܛ  مجوهراتك ⋙ '..Num_Games..'*') 
end
end
end,nil)   
end,nil)   
end
end
if text and text:match('^تنظيف (%d+)$') and Addictive(msg) then    
local Number = tonumber(text:match('^تنظيف (%d+)$')) 
if Number > 1000then 
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع تنضيف اكثر من ⋙ 10000 رساله*') 
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'*ܛ تم تنظيف ⋙ '..Number..' رساله𓍯\n𓍯 TEAM Ch ⋙ @TiMoRciL ܛ *')  
end

if text == 'ايدي' and tonumber(msg.reply_to_message_id_) > 0 and not database:get(bot_id..'TiMoRDev:Lock:ID:Bot'..msg.chat_id_) then
function Function_TiMoRDev(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ  الحساب محذوف لا توجد معلوماته *')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'TiMoRDev:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."TiMoRDev:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*ܛ ايديه - '..Id..'\nܛ رسائله - '..NumMsg..'\nܛ معرفه - *['..UserName_User..']*\nܛ تفاعله - '..TotalMsg..'\nܛ رتبته - '..Status_Gps..'\nܛ تعديلاته - '..message_edit..'\nܛ جهاته - '..Add_Mem..'*') 
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_TiMoRDev, nil)
return false
end

if text and text:match("^ايدي @(.*)$") and not database:get(bot_id..'TiMoRDev:Lock:ID:Bot'..msg.chat_id_) then
local username = text:match("^ايدي @(.*)$")
function Function_TiMoRDev(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'TiMoRDev:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."TiMoRDev:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*ܛ ايديه - '..Id..'\nܛ رسائله - '..NumMsg..'\nܛ معرفه - *['..UserName_User..']*\nܛ تفاعله - '..TotalMsg..'\nܛ رتبته - '..Status_Gps..'\nܛ تعديلاته - '..message_edit..'\nܛ جهاته - '..Add_Mem..'*') 
end,nil)   
else
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_TiMoRDev, nil)
return false
end
if text == "سمايلات" or text == "سمايل" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Sma"..msg.chat_id_)
Random = {"🍏","🍎","🍐","🍊","🍋","🍉","🍇","🍓","🍈","🍒","🍑","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","🥐","🍞","🥨","🍟","🧀","🥚","🍳","🥓","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🍵","🥤","🍶","🍺","🍻","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","🏓","🏸","🥅","🎰","🎮","🎳","🎯","🎲","🎻","🎸","🎺","🥁","🎹","🎼","🎧","🎤","🎬","🎨","🎭","🎪","🎟","🎫","🎗","🏵","🎖","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","🇮🇶","⚔","🛡","🔮","🌡","💣","📌","📍","📓","📗","📂","📅","📪","📫","📬","📭","⏰","📺","🎚","☎️","📡"}
SM = Random[math.random(#Random)]
database:set(bot_id.."Tshak:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"*ܛ اسرع واحد يدز هاذا السمايل 𓍯 ⋙* {`"..SM.."`}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Random:Sm"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { سمايل , سمايلات }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "الاسرع" or tect == "ترتيب" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id.."Tshak:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
send(msg.chat_id_, msg.id_,"*𓍯 ܛ اسرع واحد يرتبها  ⋙* {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Speed"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { الاسرع , ترتيب }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Speed:Tr"..msg.chat_id_,true)
end 

if text == "حزوره" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Hzora"..msg.chat_id_)
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
database:set(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى كل شيئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
send(msg.chat_id_, msg.id_,"*ܛ اسرع واحد يحل الحزوره𓍯 ↓*\n {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { حزوره }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Hzora"..msg.chat_id_,true)
end 

if text == "معاني" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Maany"..msg.chat_id_)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id.."Tshak:Maany"..msg.chat_id_,name)
name = string.gsub(name,"قرد","🐒")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","🍎")
name = string.gsub(name,"باذنجان","🍆")
send(msg.chat_id_, msg.id_,"*ܛ اسرع واحد يدز معنى السمايل 𓍯 ⋙* {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Maany"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { معاني }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Maany"..msg.chat_id_,true)
end 
if text == "العكس" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Aks"..msg.chat_id_)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","شريف","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
database:set(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"شريف","كواد")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
send(msg.chat_id_, msg.id_,"*𓍯 ܛ اسرع واحد يدز العكس ⋙* {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { العكس }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Aks"..msg.chat_id_,true)
end 

if database:get(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"*ܛ عذرآ لا يمكنك تخمين عدد اكبر من ال { 20 } خمن رقم ما بين ال{ 1 و 20 }\n*")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ مبروك فزت ويانه وخمنت الرقم الصحيح\n𓍯 ܛ تم اضافة { 5 } من النقاط \n*")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"*𓍯ܛ اوبس لقد خسرت في اللعبه \n𓍯 ܛ حظآ اوفر في المره القادمه \n ܛ كان الرقم الذي تم تخمينه ⋙ { "..GETNUM.." }𓍯*")
else
send(msg.chat_id_, msg.id_,"*𓍯 ܛ اوبس تخمينك غلط \n𓍯 ܛ ارسل رقم تخمنه مره اخرى *")
end
end
end
end
if text == "خمن" or text == "تخمين" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end   
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ اهلا بك عزيزي في لعبة التخمين :\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n".."ܛ ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n".."ܛ سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ *")
database:setex(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"*ܛ عذرا لا يوجد سواء { 6 } اختيارات فقط ارسل اختيارك مره اخرى\n*")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"*ܛ مبروك فزت وطلعت المحيبس بل ايد رقم { "..NUM.." }\nܛ لقد حصلت على { 3 }من نقاط يمكنك استبدالهن برسائل *")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ للاسف لقد خسرت \n𓍯 ܛ المحيبس بل ايد رقم { "..GETNUM.." }\n𓍯 ܛ حاول مره اخرى للعثور على المحيبس*")
end
end
end

if text == "محيبس" or text == "بات" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Tshak:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊
ܛ اختر لأستخراج المحيبس الايد التي تحمل المحيبس 
ܛ الفائز يحصل على { 3 } من النقاط *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if text == "المختلف" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mktlf = {"😸","☠","🐼","🐇","🌑","🌚","⭐️","✨","⛈","🌥","⛄️","👨‍🔬","👨‍💻","👨‍🔧","🧚‍♀","🧜‍♂","🧝‍♂","🙍‍♂","🧖‍♂","👬","🕒","🕤","⌛️","📅",};
name = mktlf[math.random(#mktlf)]
database:del(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_)
database:set(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"😸","😹😹😹😹😹😹😹😹😸😹😹😹😹")
name = string.gsub(name,"☠","💀💀💀💀💀💀💀☠💀💀💀💀💀")
name = string.gsub(name,"🐼","👻👻👻🐼👻👻👻👻👻👻👻")
name = string.gsub(name,"🐇","🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊")
name = string.gsub(name,"🌑","🌚🌚🌚🌚🌚🌑🌚🌚🌚")
name = string.gsub(name,"🌚","🌑🌑🌑🌑🌑🌚🌑🌑🌑")
name = string.gsub(name,"⭐️","🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟")
name = string.gsub(name,"✨","💫💫💫💫💫✨💫💫💫💫")
name = string.gsub(name,"⛈","🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨")
name = string.gsub(name,"🌥","⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️")
name = string.gsub(name,"⛄️","☃☃☃☃☃☃⛄️☃☃☃☃")
name = string.gsub(name,"👨‍🔬","👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍??👩‍🔬")
name = string.gsub(name,"👨‍💻","👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻")
name = string.gsub(name,"👨‍🔧","👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧")
name = string.gsub(name,"👩‍🍳","👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳")
name = string.gsub(name,"🧚‍♀","🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂")
name = string.gsub(name,"🧜‍♂","🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀")
name = string.gsub(name,"🧝‍♂","🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀")
name = string.gsub(name,"🙍‍♂️","🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️")
name = string.gsub(name,"🧖‍♂️","🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️")
name = string.gsub(name,"👬","👭👭👭👭👭👬👭👭👭")
name = string.gsub(name,"👨‍👨‍👧","👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦")
name = string.gsub(name,"🕒","🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒")
name = string.gsub(name,"🕤","🕥🕥🕥🕥🕥🕤🕥🕥🕥")
name = string.gsub(name,"⌛️","⏳⏳⏳⏳⏳⏳⌛️⏳⏳")
name = string.gsub(name,"📅","📆📆📆📆📆📆📅📆📆")
send(msg.chat_id_, msg.id_,"*ܛ اسرع واحد يدز الاختلاف ⋙ *{"..name.."}𓍯")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { المختلف }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "امثله" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mthal = {"جوز","ضراطه","الحبل","الحافي","شقره","بيدك","سلايه","النخله","الخيل","حداد","المبلل","يركص","قرد","العنب","العمه","الخبز","بالحصاد","شهر","شكه","يكحله",};
name = mthal[math.random(#mthal)]
database:set(bot_id.."Tshak:Set:Amth"..msg.chat_id_,name)
database:del(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"جوز","ينطي____للماعده سنون")
name = string.gsub(name,"ضراطه","الي يسوق المطي يتحمل___")
name = string.gsub(name,"بيدك","اكل___محد يفيدك")
name = string.gsub(name,"الحافي","تجدي من___نعال")
name = string.gsub(name,"شقره","مع الخيل يا___")
name = string.gsub(name,"النخله","الطول طول___والعقل عقل الصخلة")
name = string.gsub(name,"سلايه","بالوجه امراية وبالظهر___")
name = string.gsub(name,"الخيل","من قلة___شدو على الچلاب سروج")
name = string.gsub(name,"حداد","موكل من صخم وجهه كال آني___")
name = string.gsub(name,"المبلل","___ما يخاف من المطر")
name = string.gsub(name,"الحبل","اللي تلدغة الحية يخاف من جرة___")
name = string.gsub(name,"يركص","المايعرف___يكول الكاع عوجه")
name = string.gsub(name,"العنب","المايلوح___يكول حامض")
name = string.gsub(name,"العمه","___إذا حبت الچنة ابليس يدخل الجنة")
name = string.gsub(name,"الخبز","انطي___للخباز حتى لو ياكل نصه")
name = string.gsub(name,"باحصاد","اسمة___ومنجله مكسور")
name = string.gsub(name,"شهر","امشي__ولا تعبر نهر")
name = string.gsub(name,"شكه","يامن تعب يامن__يا من على الحاضر لكة")
name = string.gsub(name,"القرد","__بعين امه غزال")
name = string.gsub(name,"يكحله","اجه___عماها")
send(msg.chat_id_, msg.id_,"*ܛ اسرع واحد يكمل المثل ⋙* {"..name.."}𓍯")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Amth"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الف مبروك لقد فزت \n𓍯 ܛ للعب مره اخره ارسل ⋙ { امثله }*")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == "تعطيل الالعاب" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end   
database:del(bot_id.."Tshak:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ تم تعطيل الالعاب*") 
end
if text == "تفعيل الالعاب" and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end  
database:set(bot_id.."Tshak:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ تم تفعيل الالعاب*") 
end
if text == 'الالعاب' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Teext = [[
ܛ قائمه الالعاب الموجوده 𓍯*
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ لعبة البات ⋙ بات
ܛ لعبة التخمين ⋙ خمن
ܛ لعبه الاسرع ⋙ الاسرع
ܛ لعبة السمايلات ⋙ سمايلات
ܛ لعبة المختلف ⋙ المختلف
ܛ لعبة الامثله ⋙ امثله
ܛ لعبة العكس ⋙ العكس 
ܛ لعبة الحزوره ⋙ حزوره
ܛ لعبة المعاني ⋙ معاني
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ مجوهراتي ⋙ لعرض عدد الارباح
ܛ بيع مجوهراتي ⋙ + العدد *
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Teext) 
end
if text == 'رسائلي' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local nummsg = database:get(bot_id..'TiMoRDev:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = '*𓍯 ܛ عدد رسائلك هنا ⋙ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح رسائلي' then
local Text = '*𓍯 ܛ تم مسح جميع رسائلك*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'سحكاتي' or text == 'تعديلاتي' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local edit = database:get(bot_id..'TiMoRDev:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = '*𓍯 ܛ عدد التعديلات هنا ⋙ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح سحكاتي' or text == 'مسح تعديلاتي' then
local Text = '*𓍯 ܛ* تم مسح جميع تعديلاتك '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'جهاتي' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local addmem = database:get(bot_id.."TiMoRDev:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = '*𓍯 ܛ عدد جهاتك المضافه هنا ⋙ '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح جهاتي' then
local Text = '*𓍯 ܛ *تم مسح جميع جهاتك المضافه '
send(msg.chat_id_, msg.id_,Text) 
end

if text == "مجوهراتي" then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end 
local Num = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "ܛ لم تلعب اي لعبه للحصول على جواهر"
else
Text = "*ܛ عدد مجوهراتك { "..Num.." } 𓍯 *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع مجوهراتي (%d+)$") then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local NUMPY = text:match("^بيع مجوهراتي (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*ܛ لا استطيع البيع اقل من 1 *") 
return false 
end
if tonumber(database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"ܛ ليس لديك جواهر من الالعاب \nܛ اذا كنت تريد ربح الجواهر \nܛ ارسل الالعاب وابدأ اللعب ! ") 
else
local NUM_GAMES = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\nܛ ليس لديك جواهر بهاذا العدد \nܛ لزيادة مجوهراتك في اللعبه \nܛ ارسل الالعاب وابدأ اللعب !") 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id.."TiMoRDev:messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,"ܛ تم خصم *~ { "..NUMPY.." }* من مجوهراتك \nܛ وتم اضافة* ~ { "..(NUMPY * 50).." } رساله الى رسالك *")
end 
return false 
end
if text ==("مسح") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id.."Tshak:id:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "ܛ تم الغاء الامر ") 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:id:user"..msg.chat_id_)  
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
database:incrby(bot_id.."TiMoRDev:messageUser"..msg.chat_id_..":"..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"ܛ تم اضافة له {"..numadded.."} من الرسائل")  
end
if database:get(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "ܛ تم الغاء الامر ") 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"ܛ تم اضافة له {"..numadded.."} من المجوهرات")  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end    
taha = text:match("^اضف رسائل (%d+)$")
database:set(bot_id.."Tshak:id:user"..msg.chat_id_,taha)  
database:setex(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ ارسل لي عدد الرسائل الان*") 
return false
end
if text and text:match("^اضف مجوهرات (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end  
taha = text:match("^اضف مجوهرات (%d+)$")
database:set(bot_id.."Tshak:idgem:user"..msg.chat_id_,taha)  
database:setex(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ ارسل لي عدد المجوهرات الان*") 
return false
end
if text and text:match("^اضف مجوهرات (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Num = text:match("^اضف مجوهرات (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_,"*ܛ تم اضافة له {"..Num.."} مجوهره *")
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
database:incrby(bot_id.."TiMoRDev:messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n*ܛ تم اضافة له {"..Num.."} من الرسائل*")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == "تنظيف المشتركين" and DevTiMoRDev(msg) then
local pv = database:smembers(bot_id..'TiMoRDev:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33m⋙⋙ THE USER IS SAVE ME ↓\n⋙⋙ '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31m⋙⋙ THE USER IS BLOCK ME ↓\n⋙⋙ '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'TiMoRDev:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'ܛ لا يوجد مشتركين وهميين')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*ܛ عدد المشتركين الان ~ '..#pv..'\nܛ تم العثور على ~ '..sendok..' مشترك قام بحظر البوت\nܛ اصبح عدد المشتركين الان ~ '..ok..' مشترك *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات" and DevTiMoRDev(msg) then
local group = database:smembers(bot_id..'TiMoRDev:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m⋙⋙ THE BOT IS NOT ADMIN ↓\n⋙⋙ '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35m⋙⋙ THE BOT IS LEFT GROUP ↓\n⋙⋙ '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36m⋙⋙ THE BOT IS KICKED GROUP ↓\n⋙⋙ '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'ܛ لا توجد مجموعات وهميه ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\n* ܛ  تم ازالة ⋙ '..q..' مجموعات من البوت*'
end
if w == 0 then
storm = ''
else
storm = '\n* ܛ  تم ازالة ⋙ '..w..' مجموعه لان البوت عضو*'
end
send(msg.chat_id_, msg.id_,'*ܛ  عدد المجموعات الان ~ '..#group..' مجموعه '..storm..''..taha..'\nܛ اصبح عدد المجموعات الان ~ '..sendok..' مجموعات*\n')   
end
end
end,nil)
end
return false
end
if text == ("تحديث السورس") and DevTiMoRDev(msg) then  
send(msg.chat_id_,msg.id_,'*𓍯 ܛ تم تحديث السورس*')
os.execute('rm -rf TiMoRDev.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/TiMoRDev/TiMoRDev/master/TiMoRDev.lua')
os.execute('wget https://raw.githubusercontent.com/TiMoRDev/TiMoRDev/master/start.lua')
dofile('TiMoRDev.lua')  
return false
end
if text == "تعطيل الزخرفه" and Owner(msg) then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم تعطيل الزخرفه*')
database:set(bot_id.."TiMoRDev:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Owner(msg) then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم تفعيل الزخرفه*')
database:set(bot_id.."TiMoRDev:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.."TiMoRDev:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://forhassan.ml/Black/hso.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\nܛ قائمه الزخرفه\n⠤⠤⠤⠤⠤⠤⠤⠤\n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  `"..v.."` \n"
end
send(msg.chat_id_, msg.id_, t..'⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ \nܛ اضغط على الاسم ليتم نسخه')
end

if text == 'تفعيل البوت الخدمي' and DevTiMoRDev(msg) then  
database:del(bot_id..'TiMoRDev:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'ܛ تم تفعيل البوت الخدمي ') 
end
if text == 'تعطيل البوت الخدمي' and DevTiMoRDev(msg) then  
database:set(bot_id..'TiMoRDev:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'ܛ تم تعطيل البوت الخدمي') 
end
if text and text:match("^تعين عدد الاعضاء (%d+)$") and DevTiMoRDev(msg) then
local Num = text:match("تعين عدد الاعضاء (%d+)$") 
database:set(bot_id..'TiMoRDev:Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'ܛ  تم وضع عدد الاعضاء *~'..Num..'* عضو')
end
if text =='الاحصائيات' and DevBot(msg) then
local Groups = database:scard(bot_id..'TiMoRDev:Chek:Groups')  
local Users = database:scard(bot_id..'TiMoRDev:UsersBot')  
send(msg.chat_id_, msg.id_,'ܛ احصائيات البوت \n\nܛ عدد المجموعات *~ '..Groups..'\nܛ عدد المشتركين ~ '..Users..'*')
end
if text == 'جلب نسخه احتياطيه' and DevTiMoRDev(msg) then
local list = database:smembers(bot_id..'TiMoRDev:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'TiMoRDev Chat'
ASAS = database:smembers(bot_id.."TiMoRDev:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."TiMoRDev:Constructor"..v)
MDER = database:smembers(bot_id.."TiMoRDev:Manager"..v)
MOD = database:smembers(bot_id.."TiMoRDev:Mod:User"..v)
link = database:get(bot_id.."TiMoRDev:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"TiMoRDev":"'..NAME..'",'
else
t = t..',"'..v..'":{"TiMoRDev":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'ܛ  عدد مجموعات التي في البوت { '..#list..'}')
end
if text == 'المطور' or text == 'مطور' or text == 'المطورين' then
local Text_Dev = database:get(bot_id..'TiMoRDev:Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = Id_Sudo},function(arg,result) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
end,nil)
end
end
if text == 'الملفات' and DevTiMoRDev(msg) then
t = 'ܛ جميع الملفات : \n ⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ \n'
i = 0
for v in io.popen('ls TiMoRDev_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*~ '..v..'*\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "متجر الملفات" or text == 'المتجر' then
if DevTiMoRDev(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/TiMoRDev/files_TiMoRDev/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\nܛ اهلا بك في متجر ملفات تيمور\nܛ يوجد في المتجر ملف الردود\nܛ يتم ادراج الملفات في التحديثات القادمه \nꔹ⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ ꔹ\n"
local TextE = "\nꔹ⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ ꔹ\nܛ تدل علامة (✔) الملف مفعل\n".."ܛ تدل علامة (✖) الملف معطل\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("TiMoRDev_Files/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✔)"
else
CeckFile = "(✖)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."⋙* {`"..name..'`} ⋙ '..CeckFile..'\n[-  About to the file]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"*ܛ  لا يوجد اتصال من ال 𓍯 api \n*") 
end
return false
end
end

if text and text:match("^(تعطيل ملف) (.*)(.lua)$") and DevTiMoRDev(msg) then
local name_t = {string.match(text, "^(تعطيل ملف) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("TiMoRDev_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*𓍯 ܛ  الملف ⋙ {"..file.."}\n𓍯 ܛ  تم تعطيله وحذفه بنجاح \n✓*"
else
t = "*𓍯 ܛ  بالتاكيد تم تعطيل وحذف ملف ⋙ {"..file.."} \n✓*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/TiMoRDev/files_TiMoRDev/master/files_TiMoRDev/"..file)
if res == 200 then
os.execute("rm -fr TiMoRDev_Files/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('TiMoRDev.lua')  
else
send(msg.chat_id_, msg.id_,"*ܛ  عذرا لا يوجد هاكذا ملف في المتجر *\n") 
end
return false
end
if text and text:match("^(تفعيل ملف) (.*)(.lua)$") and DevTiMoRDev(msg) then
local name_t = {string.match(text, "^(تفعيل ملف) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("TiMoRDev_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*𓍯 ܛ  بالتاكيد تم تنزيل وتفعيل ملف ⋙ {"..file.."} \n✓*"
else
t = "*ܛ  الملف ⋙ {"..file.."}\n𓍯 ܛ  تم تنزيله وتفعيله بنجاح \n𓍯*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/TiMoRDev/files_TiMoRDev/master/files_TiMoRDev/"..file)
if res == 200 then
local chek = io.open("TiMoRDev_Files/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('TiMoRDev.lua')  
else
send(msg.chat_id_, msg.id_,"*ܛ  عذرا لا يوجد هاكذا ملف في المتجر *\n") 
end
return false
end
if text == "مسح جميع الملفات" and DevTiMoRDev(msg) then
os.execute("rm -fr TiMoRDev_Files/*")
send(msg.chat_id_,msg.id_,"*𓍯 ܛ تم حذف جميع الملفات*")
return false
end
if text == 'نقل الاحصائيات' and DevTiMoRDev(msg) then
local Users = database:smembers('TiMoRDev:'..bot_id.."userss")
local Groups = database:smembers('TiMoRDev:'..bot_id..'groups') 
for i = 1, #Groups do
database:sadd(bot_id..'TiMoRDev:Chek:Groups',Groups[i])  
end
for i = 1, #Users do
database:sadd(bot_id..'TiMoRDev:UsersBot',Users[i])  
end
send(msg.chat_id_, msg.id_,'ܛ تم نقل : '..#Groups..' كروب\nܛ تم نقل : '..#Users..' مشترك \nܛ من التحديث القديم الى التحديث الجديد')
end
if text == 'حذف كليشه المطور' and DevTiMoRDev(msg) then
database:del(bot_id..'TiMoRDev:Text_Dev')
send(msg.chat_id_, msg.id_,'ܛ  تم حذف كليشه المطور')
end
if text == 'وضع كليشه المطور' and DevTiMoRDev(msg) then
database:set(bot_id..'TiMoRDev:Set:Text_Dev'..msg.chat_id_,true)
send(msg.chat_id_,msg.id_,'*𓍯 ܛ  ارسل الكليشه الان*')
return false
end
if text and database:get(bot_id..'TiMoRDev:Set:Text_Dev'..msg.chat_id_) then
if text == 'الغاء' then 
database:del(bot_id..'TiMoRDev:Set:Text_Dev'..msg.chat_id_)
send(msg.chat_id_,msg.id_,'*𓍯 ܛ تم الغاء حفظ كليشة المطور*')
return false
end
database:set(bot_id..'TiMoRDev:Text_Dev',text)
database:del(bot_id..'TiMoRDev:Set:Text_Dev'..msg.chat_id_)
send(msg.chat_id_,msg.id_,'*𓍯 ܛ تم حفظ كليشة المطور*')
return false
end
if text == 'رفع النسخه الاحتياطيه' and DevTiMoRDev(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == "تحديث" and DevTiMoRDev(msg) then
dofile("TiMoRDev.lua")  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم تحديث الملفات*")
end
if text == 'السورس' or text == 'سورس' or text == 'ياسورس' or text == 'يا سورس' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
𖠢 𝙎𝙤𝙪𝙧𝙘𝙚 ➤ 𝙏𝙞𝙈𝙤𝙍 〠 
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤
𖠢 𝙎𝙤𝙪𝙧𝙘𝙚 ➤ [𝘾𝙝𝙖𝙣𝙣𝙚𝙡 ](https://t.me/TiMoRcil/8)ܛ
𖠢 𝙏𝙝𝙚 ➤ [𝘾𝙤𝙣𝙏𝙞𝙣𝙪𝙚𝙖 ](https://t.me/TiMoRcil/8)ܛ
𖠢 𝙁𝙞𝙡𝙚𝙨 ➤ [𝙎𝙤𝙪𝙧𝙘𝙚 ](t.me/TimorCil)ܛ
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤
𖠢 𝙏𝙬𝙖𝙨𝙡 ➤ [𝙏𝙞𝙈𝙤𝙍 ](t.me/Y_8ibot)ܛ
]]
send(msg.chat_id_, msg.id_,Text)
end
if text == 'رابط الحذف' or text == 'بوت الحذف' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[▫️ ~  @LC6BOT   ]]
send(msg.chat_id_, msg.id_,Text)
end
if text == 'الاوامر' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
*𓍯 ܛ هناك {5} اوامر لعرضها
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯 ܛ م1 ⋙ لعرض اوامر الحمايه
𓍯 ܛ م2 ⋙ لعرض اوامر الادمنيه
𓍯 ܛ م3 ⋙ لعرض اوامر المدراء
𓍯 ܛ م4 ⋙ لعرض اوامر المنشئين
𓍯 ܛ م5 ⋙ لعرض اوامر المطورين*
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م1' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
*𓍯 ܛ  اوامر حمايه المجموعه
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ قفل/فتح + الاوامر الادناه 
ܛ قفل/فتح+الامر/بالتقيد/بالطرد/بالكتم
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ الروابط
ܛ المعرف
ܛ التاك
ܛ الشارحه
ܛ التعديل
ܛ التثبيت
ܛ المتحركه
ܛ الملفات
ܛ الصور

ܛ الملصقات
ܛ الفيديو
ܛ الانلاين
ܛ الدردشه
ܛ التوجيه
ܛ الاغاني
ܛ الصوت
ܛ الجهات
ܛ الاشعارات

ܛ الماركداون
ܛ البوتات
ܛ التكرار
ܛ الكلايش
ܛ السيلفي*
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م2' and Addictive(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
*𓍯 ܛ اوامر الادمنيه
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ رفع/تنزيل مميز
ܛ تاك للكل
ܛ عدد الكروب
ܛ كتم
ܛ حظر
ܛ طرد
ܛ منع
ܛ تقيد
ܛ الغاء حظر
ܛ الغاء كتم
ܛ الغاء تقيد
ܛ الغاء منع
ܛ المحظورين
ܛ المكتومين
ܛ المميزين
ܛ الصلاحيات
ܛ قائمه المنع

ܛ تثبيت
ܛ الغاء تثبيت
ܛ الاعدادات

ܛ الرابط
ܛ القوانين

ܛ الترحيب
ܛ تفعيل/تعطيل الترحيب
ܛ اضف /مسح صلاحيه 
ܛ وضع تكرار + العدد
ܛ ايدي
ܛ جهاتي
ܛ سحكاتي
ܛ رسائلي
ܛ كشف البوتات
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ وضع + الاوامر الادناه
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ اسم
ܛ رابط
ܛ صوره
ܛ وصف
ܛ قوانين
ܛ ترحيب
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ مسح + الاوامر الادناه
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ قائمه المنع
ܛ المحظورين
ܛ المميزين
ܛ المكتومين
ܛ المطرودين
ܛ القوانين
ܛ البوتات
ܛ الصوره
ܛ الصلاحيات
ܛ الرابط*
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م3' and Owner(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
*𓍯 ܛ اوامر المدراء
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ رفع/تنزيل ادمن
ܛ رفع/كشف القيود
ܛ تنزيل الكل

ܛ تفعيل/تعطيل الايدي بالصوره
ܛ تفعيل/تعطيل الايدي
ܛ تفعيل/تعطيل ردود المطور
ܛ تفعيل/تعطيل اللعبه/الالعاب
ܛ تفعيل/تعطيل ردود المدير
ܛ تفعيل/تعطيل اطردني
ܛ تفعيل/تعطيل الرفع
ܛ تفعيل/تعطيل الحظر/الطرد
ܛ تفعيل/تعطيل الرابط/جلب الرابط
ܛ تفعيل/تعطيل اوامر التحشيش

ܛ تعين/مسح الايدي

ܛ رفع الادمنيه
ܛ اضف/حذف رد
ܛ الادمنيه
ܛ ردود المدير

ܛ تنظيف + عدد
ܛ مسح الادمنيه
ܛ مسح ردود المدير
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ لتغير ردود الايدي :- 
ܛ تغير رد المطور + النص
ܛ تغير رد المنشئ الاساسي + النص
ܛ تغير رد المنشئ + النص
ܛ تغير رد المدير + النص
ܛ تغير رد الادمن + النص
ܛ تغير رد المميز + النص
ܛ تغير رد العضو + النص*
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م4' and Constructor(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'ܛ  لا تستطيع استخدام البوت يرجى الاشتراك في القناة حتى تتمكن من استخدام الاوامر \n ܛ  اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = [[
*𓍯 ܛ اوامر المنشئين الاساسين 
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ رفع/تنزيل منشئ
ܛ المنشئين
ܛ مسح المنشئين

ܛ اوامر المنشئين
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ رفع/تنزيل مدير
ܛ المدراء
ܛ مسح المدراء
ܛ تعين/مسح الايدي
ܛ اضف/حذف امر
ܛ الاوامر المضافه
ܛ حذف/مسح الاوامر المضافه
ܛ اضف رسائل + العدد بالرد
ܛ اضف مجوهرات + العدد بالرد*
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م5' and DevBot(msg) then
Text = [[
*𓍯 ܛ اوامر المطور الاساسي  
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ حظر عام
ܛ الغاء العام
ܛ مسح قائمه العام
ܛ اضف /حذف مطور 
ܛ المطورين
ܛ مسح المطورين
ܛ اضف/حذف رد للكل 
ܛ مسح ردود المطور
ܛ ردود المطور 
ܛ وضع /حذف كليشه المطور 

ܛ تحديث  + تحديث السورس 

ܛ تفعيل/تعطيل البوت الخدمي 
ܛ  تعين عدد الاعضاء + العدد
ܛ تفعيل/تعطيل المغادرة
ܛ تفعيل/تعطيل الاذاعه 
ܛ تفعيل/تعطيل ملف + اسم الملف
ܛ الملفات 
ܛ مسح جميع الملفات 
ܛ المتجر 
ܛ اوامر المطور 
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
ܛ تفعيل /تعطيل

ܛ رفع/تنزيل منشئ اساسي
ܛ رفع منشئ 
ܛ مسح المنشئين الاساسين
ܛ المنشئين الاساسين 
ܛ غادر 
ܛ غادر + الايدي
ܛ اذاعه 
ܛ اذاعه بالتوجيه
ܛ اذاعه خاص 
ܛ اذاعه بالتثبيت 
ܛ الاحصائيات *
⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤ 
𓍯[Ch Source TiMoR ](t.me/timorcil) ܛ
]]
send(msg.chat_id_, msg.id_,Text)
return false
end

end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 

if text == 'تفعيل' and DevBot(msg) then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ البوت ليس ادمن يرجى ترقيتي*') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'TiMoRDev:Num:Add:Bot') or 0) and not DevTiMoRDev(msg) then
send(msg.chat_id_, msg.id_,'*ܛ عدد اعضاء المجموعه اقل من ⋙ {'..(database:get(bot_id..'TiMoRDev:Num:Add:Bot') or 0)..'* عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'TiMoRDev:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ المجموعه مفعله سابقا *')
else
Reply_Status(msg,result.id_,'reply_Add','*ܛ تم تفعيل المجموعه 𓍯 ⋙ '..chat.title_..'*')
database:sadd(bot_id..'TiMoRDev:Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '*𓍯 ܛ تم تفعيل مجموعه جديده*\n'..
'\n*ܛ بواسطة 𓍯 ⋙* '..Name..''..
'\n*ܛ ايدي المجموعه 𓍯 ⋙* `'..IdChat..'`'..
'\n*ܛ عدد اعضاء المجموعه 𓍯 ⋙'..NumMember..'*'..
'\n*ܛ اسم المجموعه 𓍯 ⋙* ['..NameChat..']'..
'\n*ܛ الرابط 𓍯 ⋙* ['..LinkGp..']'
if not DevTiMoRDev(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and DevBot(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'TiMoRDev:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ المجموعه معطله سابقا *')
else
Reply_Status(msg,result.id_,'reply_Add','* ܛ تم تعطيل المجموعه 𓍯 ⋙ '..chat.title_..'*')
database:srem(bot_id..'TiMoRDev:Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '*𓍯 ܛ تم تعطيل مجموعه جديده*\n'..
'\n*ܛ بواسطة 𓍯 ⋙* '..Name..''..
'\n*ܛ ايدي المجموعه 𓍯 ⋙* `'..IdChat..'`'..
'\n*ܛ اسم المجموعه 𓍯 ⋙* ['..NameChat..']'..
'\n*ܛ الرابط 𓍯 ⋙* ['..LinkGp..']'
if not DevTiMoRDev(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not DevBot(msg) and not database:get(bot_id..'TiMoRDev:Free:Add:Bots') then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'*𓍯ܛ البوت ليس ادمن يرجى ترقيتي *!') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'الادمن'
else 
var= 'عضو'
end
if database:sismember(bot_id..'TiMoRDev:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ المجموعه مفعله سابقا *')
else
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'TiMoRDev:Num:Add:Bot') or 0) and not DevTiMoRDev(msg) then
send(msg.chat_id_, msg.id_,'*ܛ عدد اعضاء المجموعه اقل من ⋙ {'..(database:get(bot_id..'TiMoRDev:Num:Add:Bot') or 0)..'* عضو')
return false
end
Reply_Status(msg,result.id_,'reply_Add','*ܛ تم تفعيل المجموعه 𓍯 ⋙ '..chat.title_..'*')
database:sadd(bot_id..'TiMoRDev:Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'TiMoRDev:Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '*𓍯 ܛ تم تفعيل مجموعه جديده*\n'..
'\n*ܛ بواسطة 𓍯 ⋙* '..Name..''..
'\n*ܛ موقعه في المجموعه 𓍯 ⋙* '..AddPy..'' ..
'\n*ܛ ايدي المجموعه 𓍯 ⋙* `'..IdChat..'`'..
'\n*ܛ عدد اعضاء المجموعه 𓍯 ⋙* '..NumMember..'*'..
'\n*ܛ اسم المجموعه 𓍯 ⋙* ['..NameChat..']'..
'\n*ܛ الرابط ⋙* ['..LinkGp..']'
if not DevTiMoRDev(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end

if Chat_Type == 'UserBot' then
if text == '/start' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'*ܛ لا تستطيع استخدام البوت 𓍯\nܛ يرجى الاشتراك في القناة 𓍯\nܛ حتى يمكن  استخدام البوت 𓍯\nܛ اشترك هنا *𓍯 ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end  
if DevTiMoRDev(msg) then
local Text = '*ܛ مرحبا عزيزي المطور آلاساسي 𓍯\nܛ يمكنك اختيار الامر من الكيبورد 𓍯\nܛ اضغط على الأمر الذي تـريده 𓍯\nܛ 𓍯 Ch ⋙ @TiMoRciL*'
local keyboard = {
{'تفعيل التواصل 🔛','تعطيل التواصل ➗'},
{'احصائيات البوت 📑'},
{'تنظيف الكروبات 🔰','تنظيف المشتركين 👤'},
{'تفعيل البوت خدمي ✅','تعطيل البوت خدمي ❎'},
{'تفعيل الاذاعه ✔️','تعطيل الاذاعه ✖️'},
{'اذاعه خاص 🔭','المطورين 📌','اذاعه 📡'},
{'اذاعه بالتوجيه 👥','اذاعه بالتوجيه خاص 👤'},
{'حذف كليشه ستارت 🃏','تغير كليشه ستارت 🆕'},
{'الاشتراك الاجباري 📤'},
{'تفعيل الاشتراك 🔔','تعطيل الاشتراك 🔕'},
{'تغير الاشتراك 📃','حذف رساله الاشتراك 🔌'},
{'تعين قناة الاشتراك 📭','تغير رساله الاشتراك 🖇️'},
{'تحديث السورس 🔂','تحديث الملفات 🔁'},
{'قائمه العام 🚷'},
{'مسح قائمه العام 📮','مسح المطورين 🚸'},
{'جلب نسخه احتياطيه 📁'},
{'الغاء ✖'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
else
if not database:get(bot_id..'TiMoRDev:Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
Test = start
else
Test = '* ܛ مرحبا انا بوت حماية كروبات 𓍯\nܛ من السبام والتفليش وغيرها ... 𓍯\nܛ لتفعيل البوت اضفني الى مجموعاتك 𓍯\nܛ قم برفعي مشرف ثم ارسل تفعيل 𓍯\nܛ معرف المطور ['..UserName..'] 𓍯*'
end 
send(msg.chat_id_, msg.id_, Test) 
end
end
database:setex(bot_id..'TiMoRDev:Start:Time'..msg.sender_user_id_,60,true)
return false
end
if not DevTiMoRDev(msg) and not database:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not database:get(bot_id..'Texting:In:Bv') then
send(msg.sender_user_id_,msg.id_,'ܛ تمت ارسال رسالتك الى ~ ['..UserName..']')    
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'*ܛ تم ارسال الملصق من ⋙* ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevTiMoRDev(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
sendText(Id_Sudo,'*ܛ  لشخص𓍯 ⋙* ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n*𓍯 ܛ  تم حظره من التواصل* ',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'BaN:In:User',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
sendText(Id_Sudo,'*ܛ الشخص𓍯 ⋙* ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n*𓍯 ܛ  تم الغاء حظره من التواصل* ',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\n*𓍯 ܛ  فشل ارسال رسالتك لان العضو قام بحظر البوت*') 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
Text = '*𓍯 ܛ تمت ارسال الرساله اليه .. *'
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)   
Text = '*𓍯 ܛ تمت ارسال الملصق اليه .. *'
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '*𓍯 ܛ تمت ارسال الصوره اليه .. *'
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)    
Text = '*𓍯 ܛ تمت ارسال المتحركه اليه .. *'
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)    
Text = '*𓍯 ܛ تمت ارسال البصمه اليه .. *'
end     
sendText(Id_Sudo,Text..'\n'..'ܛ  ~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if DevTiMoRDev(msg) then
if text == 'تفعيل التواصل 🔛' then  
database:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ  تم تفعيل التواصل *') 
end
if text == 'تعطيل التواصل ➗' then  
database:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ  تم تعطيل التواصل *') 
end
if text =='احصائيات البوت 📑' then
local Groups = database:scard(bot_id..'TiMoRDev:Chek:Groups')  
local Users = database:scard(bot_id..'TiMoRDev:UsersBot')  
send(msg.chat_id_, msg.id_,'*ܛ احصائيات البوت \n\nܛ عدد المجموعات ⋙ '..Groups..'\nܛ عدد المشتركين ⋙ '..Users..'*')
end
if text == "تنظيف المشتركين 👤" then
local pv = database:smembers(bot_id..'TiMoRDev:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33m⋙⋙ THE USER IS SAVE ME ↓\n⋙⋙ '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31m⋙⋙ THE USER IS BLOCK ME ↓\n⋙⋙ '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'TiMoRDev:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لا يوجد مشتركين وهميين*')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*ܛ عدد المشتركين الان ~ '..#pv..'\nܛ تم العثور على ~ '..sendok..' مشترك قام بحظر البوت\nܛ اصبح عدد المشتركين الان ~ '..ok..' مشترك *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات 🔰" then
local group = database:smembers(bot_id..'TiMoRDev:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m⋙⋙ THE BOT IS NOT ADMIN ↓\n⋙⋙ '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35m⋙⋙ THE BOT IS LEFT GROUP ↓\n⋙⋙ '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36m⋙⋙ THE BOT IS KICKED GROUP ↓\n⋙⋙ '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'TiMoRDev:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ لا توجد مجموعات وهميه *')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\n*ܛ  تم ازالة 𓍯  '..q..' مجموعات من البوت*'
end
if w == 0 then
storm = ''
else
storm = '\n*ܛ  تم ازالة 𓍯 '..w..' مجموعه لان البوت عضو*'
end
send(msg.chat_id_, msg.id_,'*ܛ  عدد المجموعات الان ~ '..#group..' مجموعه '..storm..''..taha..'\nܛ اصبح عدد المجموعات الان ~ '..sendok..' مجموعات*\n')   
end
end
end,nil)
end
return false
end
if text == 'تفعيل البوت خدمي ✅' then
database:del(bot_id..'TiMoRDev:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\n*𓍯 ܛ تم تفعيل البوت الخدمي *') 
end
if text == 'تعطيل البوت خدمي ❎' then
database:set(bot_id..'TiMoRDev:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\n*𓍯 ܛ تم تعطيل البوت الخدمي*') 
end
if text=="اذاعه خاص 🔭" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الاذاعه معطله من قبل المطور الاساسي*")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n𓍯 ܛ للخروج ارسل الغاء *") 
return false
end 
if text=="اذاعه 📡" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الاذاعه معطله من قبل المطور الاساسي*")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n𓍯 ܛ للخروج ارسل الغاء *") 
return false
end  
if text=="اذاعه بالتوجيه 👥" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الاذاعه معطله من قبل المطور الاساسي*")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل لي التوجيه الان*") 
return false
end 
if text=="اذاعه بالتوجيه خاص 👤" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."TiMoRDev:Status:Bc") and not DevTiMoRDev(msg) then 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الاذاعه معطله من قبل المطور الاساسي*")
return false
end
database:setex(bot_id.."TiMoRDev:TiMoRDev:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"*𓍯 ܛ ارسل لي التوجيه الان*") 
return false
end 
if text == "تفعيل الاذاعه ✔️" then
database:del(bot_id.."TiMoRDev:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ تم تفعيل الاذاعه *" ) 
return false
end 
if text == "تعطيل الاذاعه ✖️" then
database:set(bot_id.."TiMoRDev:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n*𓍯 ܛ تم تعطيل الاذاعه*") 
return false
end 
if text == "تفعيل المغادره 🔏" then
database:del(bot_id.."TiMoRDev:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم تفعيل مغادرة البوت*") 
return false 
end
if text == "تعطيل المغادره 🔓" then
database:set(bot_id.."TiMoRDev:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم تعطيل مغادرة البوت*") 
return false 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء ✖' then   
send(msg.chat_id_, msg.id_,"*𓍯 ܛ تم الغاء حفظ كليشه ستارت*") 
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم حفظ كليشه ستارت*') 
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'تغير كليشه ستارت 🆕' then
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ ارسل لي الكليشه الان*') 
return false
end
if text == 'حذف كليشه ستارت 🃏' then
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم حذف كليشه ستارت*') 
end
if text and text:match("^تغير الاشتراك 📃$") and DevTiMoRDev(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, '*𓍯 ܛ حسنآ ارسل لي معرف القناة*')
return false  
end
if text and text:match("^تغير رساله الاشتراك 🖇️$") and DevTiMoRDev(msg) then  
database:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, '*𓍯 ܛ حسنآ ارسل لي النص الذي تريده*')
return false  
end
if text == "حذف رساله الاشتراك 🔌" and DevTiMoRDev(msg) then  
database:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم مسح رساله الاشتراك*")
return false  
end
if text and text:match("^تعين قناة الاشتراك 📭$") and DevTiMoRDev(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, '*𓍯 ܛ حسنآ ارسل لي معرف القناة*')
return false  
end
if text == "تفعيل الاشتراك 🔔" and DevTiMoRDev(msg) then  
if database:get(bot_id..'add:ch:id') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_,"*𓍯 ܛ الاشتراك الاجباري مفعل \nܛ على القناة𓍯 ⋙ * ["..addchusername.."]")
else
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_,"*𓍯 ܛ اهلا عزيزي المطور \n𓍯 ܛ ارسل الان معرف قناتك*")
end
return false  
end
if text == "تعطيل الاشتراك 🔕" and DevTiMoRDev(msg) then  
database:del(bot_id..'add:ch:id')
database:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم تعطيل الاشتراك الاجباري *")
return false  
end
if text == "الاشتراك الاجباري 📤" and DevTiMoRDev(msg) then  
if database:get(bot_id..'add:ch:username') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم تفعيل الاشتراك الاجباري \n ܛ على القناة 𓍯⋙*  ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, "*𓍯 ܛ لا يوجد قناة في الاشتراك الاجباري*")
end
return false  
end
if database:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, "*𓍯  ܛ تم الغاء الامر*")
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({    
ID = "SearchPublicChat",    
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, '*𓍯 ܛ المعرف لا يوجد فيه قناة*')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, '*𓍯 ܛ عذا لا يمكنك وضع معرف حسابات في الاشتراك*')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ عذا لا يمكنك وضع معرف مجموعه بالاشتراك*')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,'*𓍯 ܛ البوت ادمن في القناة \n𓍯 ܛ تم تفعيل الاشتراك الاجباري في \n𓍯 ܛ ايدي القناة ('..data.id_..')\nܛ معرف القناة𓍯 ⋙* ([@'..data.type_.channel_.username_..'])')
database:set(bot_id..'add:ch:id',data.id_)
database:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,'*𓍯 ܛ عذرآ البوت ليس ادمن بالقناه*')
end
return false  
end
end,nil)
end
if database:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم الغاء الامر*")
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
database:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,'*𓍯 ܛ تم تغيير رسالة الاشتراك *')
end
if text == ("مسح قائمه العام 📮") and DevTiMoRDev(msg) then
database:del(bot_id.."TiMoRDev:GBan:User")
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ تم مسح قائمه العام*")
return false
end
if text == ("مسح المطورين 🚸") and DevTiMoRDev(msg) then
database:del(bot_id.."TiMoRDev:Sudo:User")
send(msg.chat_id_, msg.id_, "\n*𓍯 ܛ  تم مسح قائمة المطورين*")
end
if text == ("قائمه العام 🚷") and DevTiMoRDev(msg) then
local list = database:smembers(bot_id.."TiMoRDev:GBan:User")
t = "\n*𓍯 ܛ قائمة المحظورين عام*\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."*𓍯"..k.." ⋙* ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد محظورين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المطورين 📌") and DevTiMoRDev(msg) then
local list = database:smembers(bot_id.."TiMoRDev:Sudo:User")
t = "\n*𓍯 ܛ قائمة مطورين البوت*\n⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."TiMoRDev:User:Name" .. v)
if username then
t = t.."*𓍯"..k.."⋙*  ([@"..username.."])\n"
else
end
end
if #list == 0 then
t = "*𓍯 ܛ لا يوجد مطورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'جلب نسخه احتياطيه 📁' then
local list = database:smembers(bot_id..'TiMoRDev:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'TiMoRDev Chat'
ASAS = database:smembers(bot_id.."TiMoRDev:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."TiMoRDev:Constructor"..v)
MDER = database:smembers(bot_id.."TiMoRDev:Manager"..v)
MOD = database:smembers(bot_id.."TiMoRDev:Mod:User"..v)
link = database:get(bot_id.."TiMoRDev:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"TiMoRDev":"'..NAME..'",'
else
t = t..',"'..v..'":{"TiMoRDev":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./File_Libs/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./File_Libs/'..bot_id..'.json', 'ܛ  عدد مجموعات التي في البوت { '..#list..'}')
end
if text == "تحديث السورس 🔂" then
send(msg.chat_id_,msg.id_,'*𓍯 ܛ تم تحديث السورس*')
os.execute('rm -rf TiMoRDev.lua')
os.execute('rm -rf start.lua')
os.execute('wget https://raw.githubusercontent.com/TiMoRDev/TiMoRDev/master/TiMoRDev.lua')
os.execute('wget https://raw.githubusercontent.com/TiMoRDev/TiMoRDev/master/start.lua')
dofile('TiMoRDev.lua')  
return false
end
if text == "تحديث الملفات 🔁" then
dofile("TiMoRDev.lua")  
send(msg.chat_id_, msg.id_, "*𓍯 ܛ تم تحديث الملفات*")
end
end
end --- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'TiMoRDev:Chek:Groups','-100'..data.channel_.id_)  
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then  
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id.."TiMoRDev:Lock:tagservr"..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false
end    
end   
if text and not database:sismember(bot_id..'TiMoRDev:Spam:Group'..msg.sender_user_id_,text) then
database:del(bot_id..'TiMoRDev:Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
database:set(bot_id..'TiMoRDev:User:Name'..msg.sender_user_id_,data.username_)
end;end,nil)   
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."TiMoRDev:Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."TiMoRDev:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "del" then   
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
------------------------------------------------------------------------
if text and database:get(bot_id.."TiMoRDev:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = database:get(bot_id.."TiMoRDev:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
database:del(bot_id.."TiMoRDev:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
database:del(bot_id.."TiMoRDev:Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."TiMoRDev:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"ܛ تم ازالة الامر من المجموعه")  
else
send(msg.chat_id_, msg.id_,"ܛ لا يوجد امر بهاذا الاسم تاكد من الامر واعد المحاوله")  
end
database:del(bot_id.."TiMoRDev:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."TiMoRDev:Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (database:get(bot_id.."TiMoRDev:Name:Bot") or "تيمور")
if not database:get(bot_id.."TiMoRDev:Fun_Bots"..msg.chat_id_) then
if text ==  ""..Name_Bot..' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then     
function FunBot(extra, result, success) 
local Fun = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني ❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' شنو رئيك بهاي' and tonumber(msg.reply_to_message_id_) > 0 then    
function FunBot(extra, result, success) 
local Fun = {'الكبد مال اني هيه ','ختولي ماحبها ','خانتني ويه صديقي 😔','بس لو الكفها اله اعضها 💔','خوش بنيه بس عده مكسرات زايده وناقصه منا ومنا وهيه تدري بنفسها 😒','جذابه ومنافقه سوتلي مشكله ويه الحب مالتي ','ئووووووووف اموت ع ربها ','ديرو بالكم منها تلعب ع الولد 😶 ضحكت ع واحد قطته ايفون 7 ','صديقتي وختي وروحي وحياتي ','فد وحده منحرفه 😥','ساكنه بالعلاوي ونته حدد بعد لسانها لسان دلاله 🙄🤐','ام سحوره سحرت اخويا وعلكته 6 سنوات 🤕','ماحبها 🙁','بله هاي جهره تسئل عليها ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئل ع بنات العالم ولي يله 🏼','ياخي بنيه حبوبه بس لبعرك معمي عليها تشرب هواي 😹' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end    
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
------------------------------------------------------------------------
TiMoRDev_Started_Bot(msg,data)
TiMoRDev_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'TiMoRDev:message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."TiMoRDev:Lock:edit"..msg.chat_id_) and not Text and not BasicConstructor(result) then
Reply_Status(result,result.sender_user_id_,"reply","*𓍯 ܛ قام بالتعديل على الميديا*")  
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not Addictive(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."TiMoRDev:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."TiMoRDev:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."TiMoRDev:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."TiMoRDev:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local TiMoRDev_Msg = database:get(bot_id.."TiMoRDev:Add:Filter:Rp2"..text..result.chat_id_)   
if TiMoRDev_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","ܛ "..TiMoRDev_Msg)  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'TiMoRDev:Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'TiMoRDev:Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'TiMoRDev:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'TiMoRDev:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'TiMoRDev:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print('\27[30;32m»» يرجى الاننتضار لحين تنظيف المجموعات الوهميه ««\n\27[1;37m')
local list = database:smembers(bot_id..'TiMoRDev:UsersBot')  
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'TiMoRDev:Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
database:srem(bot_id..'TiMoRDev:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'TiMoRDev:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'TiMoRDev:Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'TiMoRDev:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'TiMoRDev:Chek:Groups',v)  
end end,nil)
end;CleangGroups();end;end
