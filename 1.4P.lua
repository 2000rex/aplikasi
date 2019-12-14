local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
	if lib ~= n then
		lib = n
		local ranges = gg.getRangesList(lib)
		if #ranges == 0 then
			print("∅ ERROR "..lib.." não foi encontrado! ∅")
			gg.toast("∅ ERROR: "..lib.." não foi encontrado! ∅")
			os.exit()
		else
			memFrom = ranges[1].start
			memTo = ranges[#ranges]["end"]
		end
	end
end
function hex2tbl(hex)
	local ret = {}
	hex:gsub("%S%S", function (ch)
		ret[#ret + 1] = ch
		return ""
	end)
	return ret
end
function original(orig)
	local tbl = hex2tbl(orig)
	local len = #tbl
	if len == 0 then return end
	local used = len
	if len > lim then used = lim end
	local s = ''
	for i = 1, used do
		if i ~= 1 then s = s..";" end
		local v = tbl[i]
		if v == "??" or v == "**" then v = "0~~0" end		
		s = s..v.."r"
	end
	s = s.."::"..used
	gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
	if len > used then
		for i = used + 1, len do
			local v = tbl[i]
			if v == "??" or v == "**" then
				v = 256
			else
				v = ("0x"..v) + 0
				if v > 127 then v = v - 256 end
			end
			tbl[i] = v
		end
	end
	local found = gg.getResultCount();
	results = {}
	local count = 0
	local checked = 0
	while true do
		if checked >= found then
			break
		end
		local all = gg.getResults(8)
		local total = #all
		local start = checked
		if checked + used > total then
			break
		end
		for i, v in ipairs(all) do
	    v.address = v.address + myoffset
        end
         gg.loadResults(all)
		while start < total do		
			local good = true
			local offset = all[1 + start].address - 1
			if used < len then			
				local get = {}
				for i = lim + 1, len do
					get[i - lim] = {address = offset + i, flags = gg.TYPE_BYTE, value = 0}
				end
				get = gg.getValues(get)
				for i = lim + 1, len do
					local ch = tbl[i]
					if ch ~= 256 and get[i - lim].value ~= ch then
						good = false
						break
					end
				end
			end
			if good then
				count = count + 1
				results[count] = offset
				checked = checked + used
			else
				local del = {}
				for i = 1, used do
					del[i] = all[i + start]
				end
				gg.removeResults(del)
			end
			start = start + used
		end
	end
	
end
function replaced(repl)
	num = num + 1
	local tbl = hex2tbl(repl)
	if src ~= nil then
		local source = hex2tbl(src)
		for i, v in ipairs(tbl) do
			if v ~= "??" and v ~= "**" and v == source[i] then tbl[i] = "**" end
		end
		src = nil
	end
	local cnt = #tbl
	local set = {}
	local s = 0
	for _, addr in ipairs(results) do
		for i, v in ipairs(tbl) do
			if v ~= "??" and v ~= "**" then
				s = s + 1
				set[s] = {
					["address"] = addr + i, 
					["value"] = v.."r",
					["flags"] = gg.TYPE_BYTE,
				}
			end
		end		
	end
	if s ~= 0 then gg.setValues(set) end
	ok = true
end
function Squid(A0_24)
    return (A0_24:gsub("..", function(A0_25)
      return string.char((tonumber(A0_25, 16) + 256 - 34 + 255999744) % 256)
    end))
  end
  if _G["debug"]["getinfo"](gg.alert).source == "=[Java]" then
  else
    i = 1
    gg.setVisible(false)
    while true do
      i = i + 1
      file = io.open("/storage/emulated/0/" .. i, "w")
      file:write("-- CoRingaBR Anti Log")
      file:close()
      gg.setVisible(false)
      gg.processKill()
      gg.setVisible(true)
    end
    return
end 
  save = {}
  for _FORV_27_ = 1, 10000 do
    table.insert(save, {
      ["address"] = 0 + _FORV_27_,
      ["flags"] = 12
    })
  end
  time = _G["os"]["clock"]()
  for _FORV_27_ = 1, 5 do
    _G["gg"]["addListItems"](save)
  end
  if 2 <= _G["os"]["clock"]() - time then
    _G["gg"]["removeListItems"](save)
    i = 1
      gg.setVisible(false)
    while true do
      i = i + 1
      gg.alert("🚫Script Ant Dec\n🚫Ant Hook","Falhor")
      print("🐮CoRinga BR Protect")
      file = io.open("/storage/emulated/0/" .. i, "w")
      file:write("-- CoRinga BR Anti Log")
      file:close()
      gg.setVisible(false)
      gg.processKill()
      gg.setVisible(true)
    end
    return
   end 
      _G["gg"]["removeListItems"](save)
if gg.isPackageInstalled("com.gxlkj.tl") then
	gg.toast("DELETE GG DECRYPT😂")
	os.exit(x)
end
if gg.isPackageInstalled("sstool.only.com.sstool") then
	gg.toast("DELETE GG DECRYPT😂")
	os.exit(x)
end
if gg.isPackageInstalled("com.mrteamz.idvbb") then
	gg.toast("DELETE GG DECRYPT😂")
	os.exit(x)
end
if gg.isPackageInstalled("com.gmail.heagoo.apkeditor.pro") then
	gg.toast("DELETE GG DECRYPT😂")
	os.exit(x)
end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end

gg.alert("EXECULTE NA LOGO DA GARENA","ENTRAR")

function GameVarDef()
GetTelephonyManagerIMEI = 0x1590BF4
GetBuildSerial = 0x1590AE4
GetTelephonyManagerMEID = 0x1590D04
end



function START()
GameVarDef()
menu = gg.choice({
'🛡AntBaniment',
'👻Ghost Teleport',
'📡Antenna Visual',
'🌐Visual World',
'🔫War weapons',
'🗂New Document',
'📑Nick Fake Name',
'💸Visual Stuff',
'⚿Lobby',
'❎End'},nil,'Script By CoRinga BR')
if menu == 1 then A()end
if menu == 2 then B()end
if menu == 3 then C()end
if menu == 4 then D()end
if menu == 5 then E()end
if menu == 6 then MENGG()end
if menu == 7 then nomeF()end
if menu == 8 then G()end
if menu == 9 then LOBBY()end
if menu == 10 then os.exit()end
CORINGABR = -1
end

function A()
menu1 = gg.multiChoice({
'🛡Unbanned v1',
'🛡Unbanned v2',
'🛡Unbanned v3',
'🛡Unbanned Device',
'🛡Ant Logs',
'🔐Bypass v2',
'🔐Bypass V3',
'🤖PrevElimination',
'🤖PrevCache',
'🤖ProvAccount Guest',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then UnIMEI()end
if menu1[2] == true then UnSERIAL()end
if menu1[3] == true then UnMEID()end
if menu1[4] == true then DEVICE()end
if menu1[5] == true then DEVI2v()end
if menu1[6] == true then UnBypas2v()end
if menu1[7] == true then UnBypas3vv()end
if menu1[8] == true then MUERT()end
if menu1[9] == true then CACHH()end
if menu1[10] == true then CONTAGUEST()end
if menu1[11] == true then START()end
end
CORINGABR = -1
end

function UnIMEI()
      gg.loadList(gg.EXT_STORAGE .. '/libs.log', gg.LOAD_APPEND)
      gg.loadResults((gg.getListItems()))
      gg.removeListItems((gg.getListItems()))
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name('libil2cpp.so')
      myoffset = GetTelephonyManagerIMEI
      original('7F 45 4C 46 01 01 01 00')
      replaced('00 00 A0 E3 1E FF 2F E1')
      gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.3093038e25;-1.3068388e21;-9.3858979e22;-9.4006553e22::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.3858979e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5112e21", gg.TYPE_FLOAT)
gg.clearResults()
gg.getListItems()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.getRangesList("libil2cpp.so")
gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0x82DCB000, 0x856FC000)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.3093038e25;-1.3068388e21;-9.3858979e22;-9.4006553e22::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.3858979e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5112e21", gg.TYPE_FLOAT)
gg.clearResults()
gg.getListItems()
gg.toast("🛡Unbanned v1")
end

function UnSERIAL()
      gg.loadList(gg.EXT_STORAGE .. '/libs.log', gg.LOAD_APPEND)
      gg.loadResults((gg.getListItems()))
      gg.removeListItems((gg.getListItems()))
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name('libil2cpp.so')
      myoffset = GetBuildSerial
      original('7F 45 4C 46 01 01 01 00')
      replaced('00 00 A0 E3 1E FF 2F E1')
      gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.3093038e25;-1.3068388e21;-9.3858979e22;-9.4006553e22::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.3858979e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5112e21", gg.TYPE_FLOAT)
gg.clearResults()
os.remove(gg.EXT_STORAGE .. '/ᴍᴜʜᴀᴍᴀᴅɢᴀᴍᴇʀ.ʟᴜᴀ', gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. '/នᴇʀժαժᴜ.ᴛˣᴛ', gg.LOAD_APPEND)
gg.toast("🛡Unbanned v2")
end

function UnMEID()
      gg.loadList(gg.EXT_STORAGE .. '/libs.log', gg.LOAD_APPEND)
      gg.loadResults((gg.getListItems()))
      gg.removeListItems((gg.getListItems()))
      gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
      name('libil2cpp.so')
      myoffset = GetTelephonyManagerMEID
      original('7F 45 4C 46 01 01 01 00')
      replaced('00 00 A0 E3 1E FF 2F E1')
      gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2.6469824e-23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("61.510,75", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.getRangesList("libil2cpp.so")
gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0x82DCB000, 0x856FC000)
gg.getResultCount()
gg.clearResults()
gg.toast("🛡Unbanned v3")
end

function DEVICE()
SpeedVal = gg.prompt({"Unlock Device"},nil,{"Text"})
gg.loadList(gg.EXT_STORAGE .. '/device.log', gg.LOAD_APPEND)
gg.loadResults((gg.getListItems()))
gg.removeListItems((gg.getListItems()))
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name('libil2cpp.so')
myoffset = 0x1592FF4
original('7F 45 4C 46 01 01 01 00')
replaced('00 00 A0 E3 1E FF 2F E1')
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name('libil2cpp.so')
myoffset = 0x1592994
original('7F 45 4C 46 01 01 01 00')
replaced('00 00 A0 E3 1E FF 2F E1')
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name('libil2cpp.so')
myoffset = 0x1588BF0
original('7F 45 4C 46 01 01 01 00')
replaced('00 00 A0 E3 1E FF 2F E1')
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2.6469824e-23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("61.510,75", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.3093038e25;-1.3068388e21;-9.3858979e22;-9.4006553e22::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.3858979e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5112e21", gg.TYPE_FLOAT)
gg.clearResults()
gg.getListItems()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.getRangesList("libil2cpp.so")
gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0x82DCB000, 0x856FC000)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.3093038e25;-1.3068388e21;-9.3858979e22;-9.4006553e22::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.3858979e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5112e21", gg.TYPE_FLOAT)
gg.clearResults()
gg.getListItems()
gg.toast('🛡️Unbanned Device')
end



function DEVI2v()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x20A4AE4
original("7F 45 4C 46 01 01 01 00")
replaced('00 00 A0 E3 1E FF 2F E1')
gg.clearResults()
end

function UnBypas2v()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316;1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1954047316;1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.clearResults()
  gg.editAll(1, gg.TYPE_AUTO)
  gg.clearResults()
  gg.searchNumber("1", gg.TYPE_AUTO)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.toast("🔐Bypass V2")
end

function UnBypas3vv()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_BAD)
  gg.searchNumber("1", gg.TYPE_QWORD | gg.TYPE_XOR | gg.TYPE_FLOAT | gg.TYPE_WORD | gg.TYPE_BYTE | gg.TYPE_DOUBLE | gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_BAD)
  gg.searchNumber("1", gg.TYPE_QWORD | gg.TYPE_XOR | gg.TYPE_FLOAT | gg.TYPE_WORD | gg.TYPE_BYTE | gg.TYPE_DOUBLE | gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults(850)
  gg.toast("🔐Bypass v3")
end

function MUERT()
gg.setRanges(gg.REGION_C_DATA)  gg.searchNumber("\000-1.3095104e25;-1.3068405e21;-9.4914291e20;-3.3568104e27;-9.4915107e20;-3.6951134e20;-9.3885677e22::25", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("-5.9029581e21;-2.0291021e20", gg.TYPE_FLOAT)
gg.clearResults()
gg.loadList(gg.EXT_STORAGE.."/ksteam.log", gg.LOAD_APPEND)
t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xB5B604
original("7F 45 4C 46 01 01 01 00")
replaced('00 00 A0 E3 1E FF 2F E1')
gg.clearResults()
gg.toast('Ant Eliminação')
end

function CACHH()
os.remove(gg.EXT_STORAGE .. '/com.garena.msdk/guest100067.dat')
os.remove(gg.EXT_STORAGE .. '/com.garena.msdk')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/reportnew.db')
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/ymrtc_log.txt')
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/ymrtc_log_bak.txt")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/ymrtc_log_bak.txt")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/ymrtc_log.txt")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/files/reportnew.db")
os.remove("/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache")
os.remove(gg.EXT_STORAGE..'/com.garena.msdk/guest100067.dat')
os.remove(gg.EXT_STORAGE..'/com.garena.msdk')
os.remove(gg.EXT_STORAGE..'/Android/data/com.dts.freefireth/files/reportnew.db')
os.remove(gg.EXT_STORAGE..'/Android/data/com.dts.freefireth/files/ymrtc_log.txt')
end

function CONTAGUEST()
gg.loadList(gg.EXT_STORAGE.."/msdk.freefireth.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x20B1824--Deve limpar a conta
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1472A88--Após o login no SDK
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x20A810C--Definir conta
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
os.remove("/storage/emulated/0/com.garena.msdk/guest100067.dat")
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16F3F14--obter substituição da conta
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16F402C--obter convidado da conta permitido
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x222E0C8--Obter registro de login
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x222D838--obter instância
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
end

----------------------------------------------------------

function B()
menu1 = gg.multiChoice({
'👻Ghost Teleport',
'❌OFF',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then GHTELEON()end
if menu1[2] == true then GHTELEOFFM()end
if menu1[3] == true then START()end
end
CORINGABR = -1
end

function GHTELEON()
gg.loadList(gg.EXT_STORAGE.."/Bp^dc[t.txt", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1AB1554
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("👻Ghost Teleport")
end

function GHTELEOFFM()
gg.loadList(gg.EXT_STORAGE.."/Bp^dc[t.txt", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1AB1554
original("7F 45 4C 46 01 01 01 00")
replaced("70 4C 2D E9 10 B0 8D E2")
gg.clearResults()
gg.toast("👻OFF")
end

function C()
menu1 = gg.multiChoice({
'📡Antena Permament',
'📡Antenna Head',
'📡Antena Hand',
'❌Hand OFF',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then PEANEN()end
if menu1[2] == true then HATENNA()end
if menu1[3] == true then NANE()end
if menu1[4] == true then BNM()end
if menu1[5] == true then START()end
end
CORINGABR = -1
end

function PEANEN()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.0F;0.78218489885F;0.20846158266F;5.9762459e-7F;1.0F:17",
 gg.TYPE_FLOAT, false, 
gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", 
gg.TYPE_FLOAT, false, 
gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("300.0012345", 
gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("📡Antenna Permament")
gg.setVisible(false)
end

function HATENNA()
gg.setRanges(32)
gg.searchNumber("7.5538861e-7F;1F:5", 16, false, 536870912, 0, -1)
gg.refineNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("200", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5.9762459e-7F;1F:5", 16, false, 536870912, 0, -1)
gg.refineNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("200", 16)
gg.clearResults()
gg.toast("📡Antenna Head")
end

function NANE()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1;3.2404066e-7::5', gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('250.1;3.2404066e-7', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('-0.39830258489;1;0.5870424509::9', gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-0.39830258489;250.1;0.5870424509', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('📡Antena Hand')
end


function BNM()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('250.1', gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('1', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('↔#####')
end

----------------------------------------------------------


function D()
menu1 = gg.multiChoice({
'⛼Night mode',
'🏞Map HD',
'⛷Without parachute',
'⛹Medkit Running',
'🏚WallHacker',
'😺White doll',
'🌴Delete Tree',
'🏃Speed Run',
'🐦Eagle sight',
'🏇Auto Jump',
'🍃Delete grass',
'🎣Medkit 30s',
'🗺no Land',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then NOITE()end
if menu1[2] == true then HDMAP()end
if menu1[3] == true then PARAM()end
if menu1[4] == true then COFM()end
if menu1[5] == true then WLMH()end
if menu1[6] == true then BNCOBCO()end
if menu1[7] == true then SEMARVORE()end
if menu1[8] == true then SPEED5x()end
if menu1[9] == true then GUIAMWN()end
if menu1[10] == true then PULO5X()end
if menu1[11] == true then GRAMADL()end
if menu1[12] == true then MD3S()end
if menu1[13] == true then NOLAND()end
if menu1[14] == true then START()end
end
CORINGABR = -1
end

function NOITE()
menu = gg.multiChoice({
'☻Night mode On/',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then NOITEON() end
if menu [2] == true then START()end
end
CORINGABR = -1
end


function NOITEON()
gg.loadList(gg.EXT_STORAGE.."/KS.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libunity.so")
myoffset = 0x1A2280
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 00 E3 1E FF 2F E1")
gg.clearResults()
gg.toast('☻Night mode ')
end


function HDMAP()
gg.loadList(gg.EXT_STORAGE.."/KS.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x228777C
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 00 E3 1E FF 2F E1")
gg.clearResults()
end


function PARAM()
menu = gg.multiChoice({
'⛷Without parachute',
'⛷OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then PARAH() end
if menu [2] == true then PARADDOFF() end
if menu [3] == true then START() end
end
CORINGABR = -1
end



function PARAH()
gg.loadList(gg.EXT_STORAGE.."/KS.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xA0A824
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 00 E3 1E FF 2F E1")
gg.clearResults()
gg.toast('Sem Paraquedas')
end


function PARADDOFF()
gg.loadList(gg.EXT_STORAGE.."/coringa.txt", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xA0A824
original("7F 45 4C 46 01 01 01 00")
replaced("00 48 2D E9 0D B0 A0 E1")
gg.clearResults()
gg.toast("OFF")
os.remove(gg.EXT_STORAGE .. "/ᴍᴜʜᴀᴍᴀᴅɢᴀᴍᴇʀ.ʟᴜᴀ")
end



function COFM()
gg.loadList(gg.EXT_STORAGE.."/KS.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1D05830
original("7F 45 4C 46 01 01 01 00")
replaced("0A 00 00 E3 1E FF 2F E1")
gg.clearResults()
gg.toast('⛹Medkit Running')
end


function WLMH()
menu = gg.multiChoice({
'🏚Wall Hacker',
'🗻Wall Hacke Stone',
'🏘Wall Hacke car',
'🗻OFF',
'🏘OFF',
'🏚OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then FLYON() end
if menu [2] == true then WSTON()end
if menu [3] == true then WMAX()end
if menu [4] == true then OFFV1() end
if menu [5] == true then OFFV2v() end
if menu [6] == true then FLYOFF() end
if menu [7] == true then START() end
end
CORINGABR = -1
end

function FLYON()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.3080069e21F;1.0e-6F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1.0e-6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-2", gg.TYPE_FLOAT)
gg.toast("Wallhack On")
end


function WSTON()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('1.0e-6F;1.0e-6F;1.0e-6F;1.0e-6F;6.4883538e-39F:17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('1.0e-6', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll('-9', gg.TYPE_FLOAT)
gg.toast('Wallhack Stone')
end


function WMAX()
gg.loadList(gg.EXT_STORAGE .. "/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16F7BEC
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
end


function OFFV1()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-9F;-9F;-9F;-9F;6.4883538e-39F:17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('-9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll('1.0e-6', gg.TYPE_FLOAT)
gg.toast('Wallhack Stone Off')
gg.clearResults()
end



function OFFV2v()
gg.loadList(gg.EXT_STORAGE .. "/lib.hack", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16F7BEC
original("7F 45 4C 46 01 01 01 00")
replaced("F0 48 2D E9 10 B0 8D E2")
gg.clearResults()
gg.loadList(gg.EXT_STORAGE .. "/lib.hack", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16F7BEC
original("7F 45 4C 46 01 01 01 00")
replaced("F0 4D 2D E9 18 B0 8D E2")
gg.clearResults()
gg.toast('WallHackCar car OFF')
end

function FLYOFF()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.3080069e21F;-2:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("1.0e-6", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Wallhack OFF")
end


function BNCOBCO()
menu = gg.multiChoice({
'😺White doll on/',
'😺White doll',
'😺OFF',
'😺White All',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then BNC1() end
if menu [2] == true then BNFF() end
if menu [3] == true then BNCOFF() end
if menu [4] == true then HMLSLLL() end
if menu [5] == true then START() end
end
CORINGABR = -1
end


function BNC1()
boneco = 0xA2B3A4
brancoc = 0x14C814C
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = boneco
original("7F 45 4C 46 01 01 01 00")
replaced("01 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = brancoc
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 BB E3")
gg.clearResults()
gg.toast("👴White doll")
end

function BNFF()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA) 
gg.searchNumber("-7.1603158e24;0.0549999997;3.14159274101::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.0549999997", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("😺White doll") 
end

function BNCOFF()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA) 
gg.searchNumber("-7.1603158e24;999;3.14159274101::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0.0549999997", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("😺White doll OFF")
end

function HMLSLLL()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA) 
gg.searchNumber("-7.1603158e24;0.0549999997;3.14159274101::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.0549999997", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-0", gg.TYPE_FLOAT)
gg.clearResults()
end


function SEMARVORE()
menu = gg.multiChoice({
'🌴Delete Tree',
'🌴OFF ',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then ARVORE1() end
if menu [2] == true then ARVORE2() end
if menu [3] == true then START() end
end
CORINGABR = -1
end


function ARVORE1()
gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("60;0.00100000005::9",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.refineNumber("60",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.getResults(1)
      gg.editAll("-1.01292111",gg.TYPE_FLOAT)
      gg.clearResults()
gg.toast('🌴Delete Tree')
end


function ARVORE2()
gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1.01292111;0.00100000005::9",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.refineNumber("-1.01292111",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.getResults(1)
      gg.editAll("60",gg.TYPE_FLOAT)
      gg.clearResults()
gg.toast('🌴OFF')
end


function SPEED5x()
menu = gg.multiChoice({
'🏃Speed 5x',
'🏃OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then correrun1() end
if menu [2] == true then correrun2() end
if menu [3] == true then START() end
end
CORINGABR = -1
end


function correrun1()
gg.setRanges(32)
gg.searchNumber("00r;00r;50r;40r;33r;33r;B3r;3Fr::8", 1, false, 536870912, 0, -1)
gg.getResults(8)
gg.editAll("66r;66r;96r;40r;33r;33r;B3r;3Fr", 1)
gg.clearResults()
gg.toast("🏃Speed 5X")
end

function correrun2()
gg.setRanges(32)
gg.searchNumber("66r;66r;96r;40r;33r;33r;B3r;3Fr::8", 1, false, 536870912, 0, -1)
gg.getResults(8)
gg.editAll("00r;00r;50r;40r;33r;33r;B3r;3Fr", 1)
gg.clearResults()
gg.toast("🏃OFF")
end


function GUIAMWN()
menu = gg.multiChoice({
'🐦Eagle sight',
'🐦OFF',
'🐦Eagle Menu',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then VISIONAGULE() end
if menu [2] == true then OFFAGUIEL() end
if menu [3] == true then GIAMEN() end
if menu [4] == true then START() end
end
CORINGABR = -1
end


function VISIONAGULE()
gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('1Fr;85r;ABr;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr::12', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(12)
      gg.editAll('1Fr;85r;ABr;3Fr;00r;00r;90r;41r;00r;00r;80r;3Fr', gg.TYPE_BYTE)
      gg.clearResults()
      gg.toast('🐦Eagle sight')
end


function OFFAGUIEL()
gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('1Fr;85r;ABr;3Fr;00r;00r;90r;41r;00r;00r;80r;3Fr::12', gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(12)
      gg.editAll('1Fr;85r;ABr;3Fr;00r;00r;80r;3Fr;00r;00r;80r;3Fr', gg.TYPE_BYTE)
      gg.clearResults()
      gg.toast('🐦 OFF')
end

function GIAMEN()
menu = gg.multiChoice({
'🐦Eagle sight',
'🐦OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then eagleon() end
if menu [2] == true then eagleoff() end
if menu [3] == true then START() end
end
CORINGABR = -1
end


function eagleon()
gg.loadList(gg.EXT_STORAGE .. "/lib.hack", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1F447D4
original("7F 45 4C 46 01 01 01 00")
replaced("C2 01 44 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("Eagle Eye")
end

function eagleoff()
gg.loadList(gg.EXT_STORAGE .. "/lib.hack", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1F447D4
original("7F 45 4C 46 01 01 01 00")
replaced("70 4C 2D E9 10 B0 8D E2")
gg.clearResults()
gg.toast("Eagle Eye Off")
end





function PULO5X()
menu = gg.multiChoice({
'🏇Auto Jump 5x',
'🏇OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then PULOAUTO5X() end
if menu [2] == true then PULOAUOFF() end
if menu [3] == true then START() end
end
CORINGABR = -1
end


function PULOAUTO5X()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.34;3;0.69999998808:9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.69999998808', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('1.75999999046', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('🏇Auto Jump 5x')
end

function PULOAUOFF()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.34;3;0.69999998808:9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.75999999046', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0.69999998808', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('❌OFF')
end

function GRAMADL()
menu = gg.multiChoice({
'🍃Delete grass',
'🍃OFF',
'⛳Vertigo',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then ON45HOEMM() end
if menu [2] == true then VIDAETT() end
if menu [3] == true then VTGO() end
if menu [4] == true then START() end
end
CORINGABR = -1
end

function ON45HOEMM()
gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("8.4077908e-45;100;300::30",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.refineNumber("100",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.getResults(3)
      gg.editAll("-1",gg.TYPE_FLOAT)
      gg.clearResults()
gg.toast('🍃Delete grass')
end

function VIDAETT()
gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("8.4077908e-45;-1;300::30",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.refineNumber("-1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.getResults(3)
      gg.editAll("100",gg.TYPE_FLOAT)
      gg.clearResults()
gg.toast('❌OFF')
end

function VTGO()
gg.loadList(gg.EXT_STORAGE.."/KS.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16AC374
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
end

function MD3S()
gg.loadList(gg.EXT_STORAGE.."/KS.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x16AC374
original("7F 45 4C 46 01 01 01 00")
replaced("46 0F 43 E3 1E FF 2F E1")
gg.clearResults()
gg.toast('🎣Medki 30s')
end


function  NOLAND()
menu = gg.multiChoice({
'🗺No Land',
'🗺OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then LANDON() end
if menu [2] == true then LANDOFF() end
if menu [3] == true then START() end
end
CORINGABR = -1
end

function LANDON()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("00r;00r;C4r;42r;00r;00r;80r;3Fr;00r::9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("00r;00r;C4r;42r;00r;00r;80r;BFr;00r", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("No Land")
gg.setVisible(false)
end

function LANDOFF()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("00r;00r;C4r;42r;00r;00r;80r;BFr;00r", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll("00r;00r;C4r;42r;00r;00r;80r;3Fr;00r::9", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("No Land OFF")
gg.setVisible(false)
end

----------------------------------------------------------


function E()
menu1 = gg.multiChoice({
'🎯No Recoil',
'🔎Aim Fix Beta',
'🏹White Aim',
'💀Headshot',
'🎳Aim 360',
'🏑Aim Automatic',
'⛹Running Shot',
'🏒Aim Lock Beta',
'👽Aim Head Beta',
'🏊Shoot the water',
'👾Aim Head Boss',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then RECOIL()end
if menu1[2] == true then FXBTA()end
if menu1[3] == true then MIRABB()end
if menu1[4] == true then HSHOT()end
if menu1[5] == true then AIM360v()end
if menu1[6] == true then VEUTIM()end
if menu1[7] == true then AIMMOVIN()end
if menu1[8] == true then LOCKAIM()end
if menu1[9] == true then MORTEHH()end
if menu1[10] == true then NTMKKKK()end
if menu1[11] == true then BTFIX()end
if menu1[12] == true then START()end
end
CORINGABR = -1
end

function RECOIL()
gg.loadList(gg.EXT_STORAGE.."/CORINGA.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1AACEB0
original("7F 45 4C 46 01 01 01 00")
replaced("02 00 00 E3 1E FF 2F E1")
gg.clearResults()
gg.toast('🎯No Recoil')
end


function FXBTA()
gg.clearResults()
t = gg.getListItems()
gg.removeListItems(t)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.5;0.5;0.84705883265::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-0.5;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("6", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("00r;00r;34r;43r;00r;00r;B4r;C3r;00r;00r;B4r;43r;00r;00r;20r;C2r;00r;00r;B4r;C2r::20", 1, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("00r;00r;34r;43r;00r;00r;B4r;C3r;00r;00r;20r;42r;00r;00r;20r;C2r;00r;00r;B4r;C2r", 1)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("00r;00r;B0r;40r;00r;00r;80r;3Fr;00r;00r;40r;3Fr::12", 1, false, 536870912, 0, -1)
gg.getResults(12)
gg.editAll("00r;00r;B0r;40r;00r;00r;00r;00r;00r;00r;00r;00r", 1)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("00r;00r;34r;43r;00r;00r;B4r;C3r;00r;00r;20r;42r;00r;00r;20r;C2r;00r;00r;B4r;C2r::20", 1, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("00r;00r;34r;43r;00r;00r;B4r;C3r;00r;00r;00r;00r;00r;00r;20r;C2r;00r;00r;B4r;C2r", 1)
gg.clearResults()
end

function MIRABB()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("0.5;0.5;0.84705883265:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("5.0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("White Aim")
end

function HSHOT()
gg.setRanges(32)
gg.searchNumber(" 5.5;1.0;0.75::9", 16, false, 536870912, 0, -1)
gg.refineNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-999", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(" 5.5;0.75::9", 16, false, 536870912, 0, -1)
gg.refineNumber("0.75", 16, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-999", 16)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)--HEADSHOT
gg.searchNumber("0000B040rA;0000803FrA;0000403FrA:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("1,085,276,160;0;0", gg.TYPE_DWORD)
gg.clearResults()
  end
  
function AIM360v()
  menu = gg.multiChoice({
'🎳Aim 360',
'🎳OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then AIMLOON() end
if menu [2] == true then EMLOCK() end
if menu [3] == true then START() end
end
CORINGABR = -1
end

function AIMLOON()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA) 
gg.searchNumber("180;-360;40;-40;-90:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("360", gg.TYPE_FLOAT)
gg.clearResults()
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. "/ᴍᴜʜᴀᴍᴀᴅɢᴀᴍᴇʀ.ʟᴜᴀ")
end

function EMLOCK()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA) 
gg.searchNumber("180;-360;360;-40;-90:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("360", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("40", gg.TYPE_FLOAT)
gg.clearResults()
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt", gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. "/ᴍᴜʜᴀᴍᴀᴅɢᴀᴍᴇʀ.ʟᴜᴀ")
end


function VEUTIM()
gg.loadList(gg.EXT_STORAGE.."/NORECILlog", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1AACE24
original("7F 45 4C 46 01 01 01 00")
replaced("64 00 00 E3 1E FF 2F E1")
end
  
function AIMMOVIN()
menu = gg.multiChoice({
'⛹Running Shot',
'⛹OFF',
'Back'},nil,'Script By CoRinga BR')
if menu == nil then else
if menu [1] == true then AIMMOVV() end
if menu [2] == true then AIMMVFF() end
if menu [3] == true then START() end
end
CORINGABR = -1
end


function AIMMOVV()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1D8CBB4
original("7F 45 4C 46 01 01 01 00")
replaced("01 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("Running Shot") 
end

function AIMMVFF()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1D8CBB4
original("7F 45 4C 46 01 01 01 00")
replaced("0C 00 90 E5 1E FF 2F E1")
gg.clearResults()
gg.toast("❌OFF")
end

function LOCKAIM()
gg.loadList(gg.EXT_STORAGE.."/LOCKED.log", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1729EE8
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 00 E3 1E FF 2F E1")
end

function MORTEHH()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x9FA874
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
end

function NTMKKKK()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xA0ACEC
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
end

function BTFIX()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x9FEEC8
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")--HeadPosição
myoffset = 0xA00E8C
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
end

----------------------------------------------------------


function G()
menu1 = gg.multiChoice({
'💎Visual Diamond',
'💰Visual Gold',
'🕭Like Visual',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then DIAMANT()end
if menu1[2] == true then OUROV()end
if menu1[3] == true then LIKV()end
if menu1[4] == true then START()end
end
CORINGABR = -1
end

function DIAMANT()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xD9C584
original("7F 45 4C 46 01 01 01 00")
replaced("EF 05 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("Diamond Visual!! Suksess")
end


function OUROV()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xD9C574
original("7F 45 4C 46 01 01 01 00")
replaced("EF 05 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("Coin Visual")
end


function LIKV()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x23260F8
original("7F 45 4C 46 01 01 01 00")
replaced("EF 05 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("Like Visual")
end

----------------------------------------------------------


function MENGG()
menu1 = gg.multiChoice({
'🔇ignore first zone',
'🚬Unlimited Ammo',
'👾Big Head',
'♨Damage Visible',
'🌐Teleport Test',
'💀HEAD',
'Back'},nil,'Script By CoRinga BR')
if menu1 == nil then else
if menu1[1] == true then Bet1()end
if menu1[2] == true then Bet2()end
if menu1[3] == true then Bet3()end
if menu1[4] == true then DMGVV()end
if menu1[5] == true then DAMZONE()end
if menu1[6] == true then HDSH()end
if menu1[7] == true then START()end
end
CORINGABR = -1
end


function Bet1()

end

function Bet2()

end

function Bet3()

end

function DMGVV()

end

function DAMZONE()


end

function HDSH()

end

----------------------------------------------------------

function nomeF()
gg.loadList(gg.EXT_STORAGE.."/lib/arm", gg.LOAD_APPEND)
local t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xA25188 --Nick Falso
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0x1456188 --popupshoW
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults()
gg.toast("Nick Name Fake/V")
end

----------------------------------------------------------

function LOBBY()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("\000-1.3095104e25;-1.3068405e21;-9.4914291e20;-3.3568104e27;-9.4915107e20;-3.6951134e20;-9.3885677e22::25", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("-5.9029581e21;-2.0291021e20", gg.TYPE_FLOAT)
gg.clearResults()
gg.loadList(gg.EXT_STORAGE.."/guenns.txt", gg.LOAD_APPEND)
t = gg.getListItems()
gg.loadResults(t)
gg.removeListItems(t)
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name("libil2cpp.so")
myoffset = 0xB5B604
original("7F 45 4C 46 01 01 01 00")
replaced('F0 4F 2D E9 1C B0 8D E2')
gg.clearResults()
gg.toast('📌Lobby')
end

while(true)do if gg.isVisible(true)then CORINGABR = 1 gg.setVisible(false)end
if CORINGABR == 1 then START()end
end