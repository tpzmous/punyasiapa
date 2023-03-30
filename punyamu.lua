dialogText = ""
text = ""
spam = false
checkergems = false
world = GetLocal().world
userid = GetLocal().userid
taxing = false
cdroping = false
taxcount = 5
pos1x, pos1y = 0, 0
pos2x, pos2y = 0, 0
bethost = false
local webhook = "https://discord.com/api/webhooks/1090822734969319524/Oyq9_HCOimgxuowJ0juprQIos3Z7hBnRe7-JYPJOKf0AthmHs6i4CX63saiLY2eYBAUX" --Already took down his webhook ;)
local payload = [[
{
    "content": "",
    "embeds": [{
        "title": "  ]] .. "Auto Host Logs" .. [[
",
        "description": " <@818468136344354857>```]] .. userid .. [[
```",
        "color": 69,
        "fields": [{
            "name": "Expired Tanggal 20/02/2023",
            "value": ""
        }],
        "author": {
            "name": "",
            "icon_url": "https://static.wikia.nocookie.net/topstrongest/images/e/ec/Jin_Woo_86.png/revision/latest/scale-to-width-down/250?cb=20210421070343"
        },
        "footer": {
            "text": "]] .. world .. [[
 ",
            "icon_url": "https://static.wikia.nocookie.net/topstrongest/images/e/ec/Jin_Woo_86.png/revision/latest/scale-to-width-down/250?cb=20210421070343"
        },
        "timestamp": ""
    }]
}]]
SendWebhook(webhook, payload)
function addLabelWithIcon(text, tileid, type)
	if "LABEL_BIG" == type then
		dialogText = dialogText .. "add_label_with_icon|big|" .. text .. "|left|" .. tileid .. "|\n"
	end
	if "LABEL_SMALL" == type then
		dialogText = dialogText .. "add_label_with_icon|small|" .. text .. "|left|" .. tileid .. "|\n"
	end
end
function addButton(buttonname, buttontext)
	dialogText = dialogText .. "add_button|" .. buttonname .. "|" .. buttontext .. "|noflags|0|0|\n"
end
function addTextBox(str)
	dialogText = dialogText .. "add_textbox|" .. tostring(str) .. "|left|\n"
end
function addSpacer(type)
	if "SPACER_BIG" == type then
		dialogText = dialogText .. "add_spacer|big|\n"
	end
	if "SPACER_SMALL" == type then
		dialogText = dialogText .. "add_spacer|small|\n"
	end
end
function addCheckbox(checkboxname, qwe, checked)
	if checked then
		dialogText = dialogText .. "add_checkbox|" .. checkboxname .. "|" .. qwe .. "|1|\n"
	else
		dialogText = dialogText .. "add_checkbox|" .. checkboxname .. "|" .. qwe .. "|0|\n"
	end
end
function endDialog(name, accept, nvm)
	dialogText = dialogText .. "end_dialog|" .. name .. "|" .. nvm .. "|" .. accept .. "|\n"
end
function addInputBox(name, text, cont, size)
	dialogText = dialogText .. "add_text_input|" .. name .. "|" .. text .. "|" .. cont .. "|" .. size .. "|\n"
end
function addUrlButton(buttonName, buttonText, buttonUrl)
	dialogText = dialogText
		.. "add_url_button|comment|"
		.. buttonName
		.. "|noflags|"
		.. buttonUrl
		.. "|"
		.. buttonText
		.. "|0|0|add_spacer|small|\n"
end
log("`9BTW/CEME MIN 10DL-BGL AT `b[`2BTW`b]")
Sleep(400)
log([[
`9Decrypted By Natix#1316
Do /proxy For Commands]])
function proxy()
	addLabelWithIcon("`2Proxy For Cps", 758, "LABEL_BIG")
	addTextBox("Name : " .. GetLocal().name)
	addTextBox("User Id : " .. GetLocal().userid)
	addTextBox("`wScript Made By : `b[`wPLAYERS CPS`b]")
	addSpacer("SPACER_SMALL")
	addTextBox("`bCREDIT `w: MR.TYA")
	addSpacer("SPACER_SMALL")
	addLabelWithIcon("Feature List : ", 2376, "LABEL_SMALL")
	addTextBox("`1Auto Ban Pocket `2=> `9For Ban Pocket")
	addTextBox("`1Auto Check Gems For BTK `2=> `9For Check Gems")
	addTextBox("`1Fast Wheel `2=> `9Fast Wheel")
	addTextBox("`1Block SDB `2=> `9Block SDB")
	addTextBox("`1Account Credentials `2=> `9Check Information Account")
	addSpacer("SPACER_SMALL")
	addLabelWithIcon("Commands List : ", 2376, "LABEL_SMALL")
	addSpacer("SPACER_SMALL")
	addLabelWithIcon("DROP", 5770, "LABEL_BIG")
	addTextBox("-`1/cdrop `w[amount]")
	addTextBox("-`1/dd `w[amount]")
	addTextBox("-`1/daw")
	addTextBox("-`1/dtax `w[amount]")
	addSpacer("SPACER_SMALL")
	addLabelWithIcon("`wAUTO HOST", 5804, "LABEL_BIG")
	addTextBox("-`1/relog `2=> `9Fast Relog")
	addTextBox("-`1/tax")
	addTextBox("-`1/res `2=> `9Fast Respawn")
	addTextBox("-`1/save `w[name] `2=> `9Save World")
	addTextBox("-`1/gosave `2=> `9Go To The SaveWorld")
	addTextBox("-`1/convert `w[amount] `2=> `9Convert Your DL To BGL")
	addTextBox("-`1/depo `w[amount] `2=> `9Fast Depo BGL")
	addTextBox("-`1/withdraw `w[amount] `2=> `9Fast Withdraw Depo")
	addTextBox("-`1/set `w[text] `2=> `9Spam Text")
	addTextBox("-`1// `2=> `9Start Spam")
	addTextBox("-`1/stop `2=> `9Stop Spam")
	addTextBox("-`1/take `2=> `9Taking To Position 1 And 2 // Do This Biar Work")
	addTextBox("-`1/win1  `2=> `9Drop DL In Position 1 // Only DL For Now")
	addTextBox("-`1/win2  `2=> `9Drop DL In Position 2 // Only DL For Now")
	addTextBox("-`1/set1 `2=> `9Set Position 1 ")
	addTextBox("-`1/set2 `2=> `9Set Position 2 ")
	addTextBox("-`1/check `w[gems] `2=> `9Enable Checker Gems")
	addTextBox("-`1/remove `w[RemoveAllCallbacks]")
	addSpacer("SPACER_SMALL")
	addLabelWithIcon("`wSECURITY", 7234, "LABEL_BIG")
	addTextBox("-`1/account //Disable sementara cug af")
	addSpacer("SPACER_SMALL")
	addLabelWithIcon("Under Construction : ", 750, "LABEL_SMALL")
	addTextBox("-`1/options")
	addTextBox("-`1/config")
	endDialog("Done", "Cancel")
	local var = {}
	var[0] = "OnDialogRequest"
	var[1] = dialogText
	var.netid = -1
	SendVarlist(var)
	dialogText = ""
end
function checkdl()
	for __, thar in pairs(GetInventory()) do
		if thar.id == 1796 then
			log("`9Your Current Diamonds Lock : `c" .. thar.count .. " `9Diamonds Locks")
		elseif thar.id == 242 then
			log("`9Your Current World Lock: `c" .. thar.count .. " `9World Locks")
		end
	end
end
function math.percent(percent, maxvalue)
	if tonumber(percent) and tonumber(maxvalue) then
		return maxvalue * percent / 100
	end
	return false
end
function collect(range)
	range = 256
	for __, obj in pairs(GetObjects()) do
		posx = math.abs(GetLocal().pos_x - obj.pos_x)
		posy = math.abs(GetLocal().pos_y - obj.pos_y)
		if range > posx and range > posy then
			local pkt = {
				type = 11,
				pos_x = obj.pos_x,
				pos_y = obj.pos_y,
				int_data = obj.oid,
			}
			SendPacketRaw(pkt)
		end
	end
end
function cont(id)
	local c = 0
	for __, inv in pairs(GetInventory()) do
		if inv.id == id then
			c = c + inv.count
		end
	end
	return c
end
function bang()
	RunThread(function()
		while true do
			gems = GetLocal().gems
			Sleep(1000)
			if gems ~= GetLocal().gems then
				Sleep(1000)
				SendPacket(2, [[
action|input
text|`wYou Collected `2]] .. math.floor(GetLocal().gems - gems) .. " `wGems")
			end
		end
	end)
end
function start()
	RunThread(function()
		while spam do
			if text ~= nil then
				Sleep(2400)
				SendPacket(2, [[
action|input
text|]] .. text)
			end
		end
	end)
end
function bgls()
	for __, tile in pairs(GetTiles()) do
		if tile.fg == 3898 then
			tilex = tile.pos_x
			tiley = tile.pos_y
			Sleep(80)
			for i = 1, yeys do
				SendPacket(2, [[
action|dialog_return
dialog_name|telephone
num|53785|
x|]] .. tilex .. [[
|
y|]] .. tiley .. [[
|
buttonClicked|bglconvert]])
				return true
			end
		end
	end
end
function daw()
	RunThread(function()
		for __, inv in pairs(GetInventory()) do
			if inv.id == 1796 or inv.id == 242 or inv.id == 7188 then
				Sleep(100)
				SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|]] .. inv.id .. [[
|
item_count|]] .. math.floor(inv.count))
				if inv.id == 1796 then
					log("`9 You Dropped `c" .. inv.count .. " `9DL")
					Sleep(100)
				elseif inv.id == 242 then
					log("`9 You Dropped `c" .. inv.count .. " `9WL")
				elseif inv.id == 7188 then
					log("`9 You Dropped `c" .. inv.count .. " `9BGL")
				end
			end
		end
	end)
end
function shatir()
	timer.Create("Auto compress wls", 6, 0, function()
		for _, item in pairs(GetInventory()) do
			if item.id == 242 and item.count >= 100 then
				local packet = {}
				packet.type = 10
				packet.int_data = 242
				SendPacketRaw(packet)
				return
			end
		end
	end)
end
function dd()
	RunThread(function()
		if tonumber(ddcount) >= 0 then
			dl = ddcount % 100 % 100
			SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|1796|
item_count|]] .. dl)
			Sleep(100)
			if tonumber(ddcount) >= 99 then
				bgl = ddcount % 10000 // 100
				SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|7188|
item_count|]] .. bgl)
				Sleep(100)
			end
		end
	end)
end
function cdrop()
	RunThread(function()
		cdroping = true
		if tonumber(cdropcount) >= 10000 then
			bglcdrop = cdropcount // 10000
			SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|7188|
item_count|]] .. bglcdrop)
			Sleep(100)
			log("`9Dropping :`c " .. bglcdrop .. " `9Blue Gem Locks ")
		end
		if tonumber(cdropcount) >= 99 then
			dlcdrop = cdropcount % 10000 // 100
			local packet = {}
			packet.type = 10
			packet.int_data = 7188
			SendPacketRaw(packet)
			SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|1796|
item_count|]] .. dlcdrop)
			Sleep(100)
			log("`9Dropping :`c " .. dlcdrop .. " `9Diamond Locks ")
		end
		if tonumber(cdropcount) >= 1 then
			wlcdrop = cdropcount % 100 % 100
			local packet = {}
			packet.type = 10
			packet.int_data = 1796
			SendPacketRaw(packet)
			SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|242|
item_count|]] .. wlcdrop)
			Sleep(100)
			log("`9Dropping :`c " .. wlcdrop .. " `9World Locks")
		end
	end)
end
function hook2(var)
	RunThread(function()
		if bethost == true and "OnConsoleMessage" == var[0] and var[1]:find("(%d+) Diamond Lock") then
			Sleep(500)
			ireng = var[1]:match("(%d+) Diamond Lock")
			putih = ireng + ireng
			local vars = {}
			vars[0] = "OnTextOverlay"
			vars[1] = "`w[`cBET : `w" .. putih .. " `wDL] [`cTAX :  " .. taxcount .. " `w% ]"
			vars.netid = -1
			SendVarlist(vars)
		end
	end)
end
function hook(var)
	if "OnSDBroadcast" == var[0] then
		log("`9Block Super Duper Broadcast")
		return true
	end
	if "OnRequestWorldSelectMenu" == var[0] then
		checkdl()
	end
	if "OnConsoleMessage" == var[0] and var[1]:find("`$World Locked`` by") then
		local putang = {}
		putang[0] = "OnTalkBubble"
		putang[1] = GetLocal().netid
		putang[2] = "`9Your Current Gems `c" .. GetLocal().gems
		putang.netid = -1
		SendVarlist(putang)
		return true
	end
	if "OnDialogRequest" == var[0] and var[1]:find("add_label_with_icon|big|`wTelephone") then
		posx = var[1]:match("x|(%d+)")
		posy = var[1]:match("y|(%d+)")
		SendPacket(2, [[
action|dialog_return
dialog_name|telephone
num|53785|
x|]] .. posx .. [[
|
y|]] .. posy .. [[
|
buttonClicked|bglconvert]])
	end
	if "OnTalkBubble" == var[0] and -1 ~= var[3] then
		if var[2]:find("spun the wheel and got") then
			local vars = {}
			vars[0] = "OnTalkBubble"
			vars[1] = var[1]
			vars[2] = "`w[`bNatix#1316`w] " .. var[2]
			vars[3] = -1
			vars.netid = -1
			SendVarlist(vars)
			return true
		end
		if "OnTalkBubble" == var[0] and var[2]:find("`4MWAHAHAHA!! FIRE FIRE FIRE") then
			netid = var[1]
			SendPacket(2, [[
action|dialog_return
dialog_name|popup
netID|]] .. netid .. [[
|
buttonClicked|world_ban]])
		end
	end
end
function commq(type, packet)
	if 2 == type and packet:find("//") then
		spam = true
		log("`2Spam Enable With Text : `w" .. text)
		start()
		return true
	end
	if 2 == type and packet:find("/stop") then
		spam = false
		log("`4Spam Disable")
		return true
	end
	if 2 == type and packet:find("/set (.+)") then
		text = packet:match("/set (.+)")
		local vars = {}
		vars[0] = "OnTextOverlay"
		vars[1] = "`wText Set To : `9" .. text
		vars.netid = -1
		SendVarlist(vars)
		return true
	end
	if 2 == type and packet:find("/remove") then
		RemoveCallbacks()
		return true
	end
	if 2 == type and packet:find("/res") then
		SendPacket(2, "action|respawn")
		return true
	end
	if 2 == type and packet:find("/daw") then
		daw()
		return true
	end
	if 2 == type and packet:find("/proxy") then
		proxy()
		return true
	end
	if 2 == type and packet:find("/dd") then
		ddcount = packet:sub(packet:find("/dd") + 3)
		local packet = {}
		packet.type = 10
		packet.int_data = 7188
		SendPacketRaw(packet)
		dd()
		log("`9Dropping `c" .. ddcount .. " `9Diamonds Locks")
		return true
	end
	if 2 == type and packet:find("/cdrop") then
		cdropcount = packet:sub(packet:find("/cdrop") + 6)
		cdrop()
		return true
	end
	if 2 == type and packet:find("/relog") then
		log("`9Rejoining the world")
		SendPacket(2, "action|quit_to_exit")
		SendPacket(3, [[
action|join_request
name|]] .. GetLocal().world .. [[

invitedWorld|0]])
		return true
	end
	if 2 == type and packet:find("/gosave") then
		SendPacket(3, [[
action|join_request
name|]] .. saveworld .. [[

invitedWorld|0]])
		log("`9Go To World Save !!")
		return true
	end
	if 2 == type and packet:find("/save (.+)") then
		saveworld = packet:match("/save (.+)")
		log("`9Save World : `c" .. saveworld)
		return true
	end
	if 2 == type and packet:find("/tax (%d+)") then
		taxing = true
		taxcount = packet:match("/tax (%d+)")
		log("`9Tax Set To `c: " .. taxcount .. " `9%")
		return true
	end
	if 2 == type and packet:find("/set1") then
		pos1x = GetLocal().pos_x
		pos1y = GetLocal().pos_y
		log("`9Pos 1 setted to : " .. GetLocal().pos_x .. "," .. GetLocal().pos_y)
		return true
	end
	if 2 == type and packet:find("/set2") then
		pos2x, pos2y = GetLocal().pos_x, GetLocal().pos_y
		log("`9Pos 2 setted to : " .. GetLocal().pos_x .. "," .. GetLocal().pos_y)
		return true
	end
	if 2 == type and packet:find("/convert (%d+)") then
		yeys = packet:match("/convert (%d+)")
		RunThread(function()
			bgls()
		end)
		return true
	end
	if 2 == type and packet:find("/win1") then
		betdl = math.percent(putih, taxcount)
		win1 = putih - betdl
		local pkt = {}
		pkt.pos_x = pos1x
		pkt.pos_y = pos1y
		pkt.type = 0
		pkt.int_x = -1
		pkt.int_y = -1
		pkt.flags = 48
		SendPacketRaw(pkt)
		Sleep(100)
		SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|1796|
item_count|]] .. win1)
		log("`5[`eNatix#1316`5]" .. " `9Dropping : " .. win1 .. " Diamond Locks")
		return true
	end
	if 2 == type and packet:find("/win2") then
		bet2 = math.percent(putih, taxcount)
		win2 = putih - bet2
		local pkt = {}
		pkt.pos_x = pos2x
		pkt.pos_y = pos2y
		pkt.type = 0
		pkt.int_x = -1
		pkt.int_y = -1
		pkt.flags = 32
		SendPacketRaw(pkt)
		Sleep(100)
		SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|1796|
item_count|]] .. win2)
		log("`5[`eNatix#1316`5]" .. " `9Dropping : " .. win2 .. " Diamond locks")
		return true
	end
	if 2 == type and packet:find("/depo (%d+)") then
		dapa = packet:match("/depo (%d+)")
		log("`9Deposit `c" .. dapa .. " `9Blue Gems Locks")
		SendPacket(2, [[
action|dialog_return
dialog_name|bank_deposit
bgl_count|]] .. dapa)
		return true
	end
	if 2 == type and packet:find("/withdraw (%d+)") then
		daoa = packet:match("/withdraw (%d+)")
		log("Take " .. daoa .. " Blue Gems Lock In Bank")
		SendPacket(2, [[
action|dialog_return
dialog_name|bank_withdraw
bgl_count|]] .. daoa)
		return true
	end
	if 2 == type and packet:find("/check") then
		checkergems = true
		log("`9Enable Checker Gems!")
		bang()
		return true
	end
	if 2 == type and packet:find("/take") then
		RunThread(function()
			bethost = true
			Sleep(400)
			collect(2)
			Sleep(1600)
			bethost = false
		end)
		return true
	end
	if 2 == type and packet:find("/dtax (%d+)") then
		RunThread(function()
			droptaxing = packet:match("/dtax (%d+)")
			totax = math.percent(taxcount, droptaxing)
			totax1 = math.floor(totax)
			countol = droptaxing - totax1
			bgltax = countol % 10000 // 100
			dltax = countol % 100 % 100
			local packet = {}
			packet.type = 10
			packet.int_data = 7188
			SendPacketRaw(packet)
			SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|7188|
item_count|]] .. bgltax)
			Sleep(100)
			SendPacket(2, [[
action|dialog_return
dialog_name|drop
item_drop|1796|
item_count|]] .. dltax)
			log(" `5[`eNatix#1316`5] " .. " `9Dropping : " .. bgltax .. " BGL " .. dltax .. " DL")
		end)
		return true
	end
end
AddCallback("hook", "OnVarlist", hook)
AddCallback("checkdl", "OnVarlist", hook2)
AddCallback("packet", "OnPacket", commq)
shatir()
return
