function _()
    (""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()
end

local ev = require('samp.events')

local work = false
local pn = 0

function main()
repeat wait(0) until isSampAvailable()
	checkSerial()
	if not dostup then
thisScript():unload()
else
	sampRegisterChatCommand('antin', function() work = not work sampAddChatMessage(work and '{FF5733}[AntiNeFludi]{FFFFFF} �������!' or '{FF5733}[AntiNeFludi]{FFFFFF} ��������!', -1) end)
	sampRegisterChatCommand("setdelay", setdelay)
	sampAddChatMessage('{FF5733}[AntiNeFludi]{FFFFFF} �� ��������!', -1)
	sampAddChatMessage('{FF5733}[AntiNeFludi]{FFFFFF} �����: {FF5733}vk.com/roma_yakov', -1)
	wait(-1)
end
end

function setdelay(par)
     delay = par:match("(%d+)")
     if delay ~= nil then
    sampAddChatMessage('{FF5733}[AntiNeFludi]{FFFFFF} �� ���������� ��������{FF1F00} '..delay..'{FFFFFF} ����', -1)
     else
       sampAddChatMessage('{FF5733}[AntiNeFludi]{FFFFFF} ���������: /setdelay �������� (� ����)', -1)
    end
end

function ev.onServerMessage(color, text)
if work
	then pn = 1
end
if work and text:match('��� ��������� PayDay �� ������ �������� ������� 20 �����.') or text:match('__________���������� ���__________') then
lua_thread.create(function()
pn = 0
wait(delay)
local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
    local data = allocateMemory(68)
    sampStorePlayerOnfootData(myId, data)
    setStructElement(data, 36, 1, 128, false)
    sampSendOnfootData(data)
    freeMemory(data)
pn = 0
end)
end
end



function onWindowMessage(msg, param)
	if work and pn == 1 and msg == 0x100 and param == 0x4E then
	consumeWindowMessage()
	end
end

function getserial()
    local ffi = require("ffi")
    ffi.cdef[[
    int __stdcall GetVolumeInformationA(
    const char* lpRootPathName,
    char* lpVolumeNameBuffer,
    uint32_t nVolumeNameSize,
    uint32_t* lpVolumeSerialNumber,
    uint32_t* lpMaximumComponentLength,
    uint32_t* lpFileSystemFlags,
    char* lpFileSystemNameBuffer,
    uint32_t nFileSystemNameSize
    );
    ]]
    local serial = ffi.new("unsigned long[1]", 0)
    ffi.C.GetVolumeInformationA(nil, nil, 0, serial, nil, nil, nil, 0)
    return serial[0]
end

function checkSerial()
	user = getserial()
	if user == 4194750497 then
		dostup = true
	else
		dostup = false
	end
end

function _()
    (""):�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()():�()
end

return f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f, f
