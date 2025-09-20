-- ╔══════════════════════════════════════════════════════════╗
-- ║              Advanced Lua Obfuscator                    ║
-- ║                  by Bocchi Hub                          ║
-- ║               discord.gg/fggss                          ║
-- ╚══════════════════════════════════════════════════════════╝
-- Generated: 2025-09-20T12:29:44.096678Z
-- Preset: custom
-- Uploader: n_nhat_minh#0
-- Security Level: 2/3
-- Encoding: xor
-- WARNING: This code has been obfuscated for protection
-- Reverse engineering attempts will be logged


-- __ADVANCED_OBFUSCATOR_LOADER__ (auto-inserted)
local __cache = {}
local __key_cache = {}

-- Multiple encoding/decoding methods
local function __hex_to_bytes(hex)
    local bytes = {}
    for i = 1, #hex - 1, 2 do
        local byte = tonumber(hex:sub(i, i+1), 16)
        if byte then table.insert(bytes, byte) end
    end
    return bytes
end

local function __xor_decode(hex, key)
    if __cache[hex..key] then return __cache[hex..key] end
    local bytes = __hex_to_bytes(hex)
    local chars = {}
    for i=1,#bytes do
        chars[i] = string.char((bytes[i] ~ key) & 0xFF)
    end
    local result = table.concat(chars)
    __cache[hex..key] = result
    return result
end

local function __rot_decode(s, shift)
    local result = {}
    for i = 1, #s do
        local c = s:byte(i)
        if c >= 65 and c <= 90 then
            c = ((c - 65 - shift) % 26) + 65
        elseif c >= 97 and c <= 122 then
            c = ((c - 97 - shift) % 26) + 97
        end
        result[i] = string.char(c)
    end
    return table.concat(result)
end

local function __base64_decode(data)
    local chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..chars..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(chars:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

local function __reverse_decode(s)
    return s:reverse()
end

local function __zlib_decompress(data)
    -- Simple placeholder - would need actual implementation
    return data
end

-- Multi-layer decoder
local function __multi_decode(data, method, key)
    local cache_key = data .. method .. tostring(key)
    if __cache[cache_key] then return __cache[cache_key] end
    
    local result
    if method == "xor" then
        result = __xor_decode(data, key)
    elseif method == "rot" then
        result = __rot_decode(data, key)
    elseif method == "b64" then
        result = __base64_decode(data)
    elseif method == "rev" then
        result = __reverse_decode(data)
    else
        result = data
    end
    
    __cache[cache_key] = result
    return result
end

-- Control flow obfuscation helpers
local function __cflow_branch(cond, a, b)
    if cond then return a() else return b() end
end

local function __dummy_ops()
    local x = math.random(1, 1000)
    x = x * 2 + 1
    x = x - 1
    return x / 2
end

local _sSDUmliw = _aYhNQtir
local _yJmguRCy = _vHhXFvXE
local _PNMrpDbD = _DMwoo7WO
local _wVIFOKiv = _lthbVAsz
local _pmPnaYde = _naV6VMe8
local _lTDxQPkp = _yKtsQQUh
local _kkZGeqNk = _RyOBIpt8
local _wZxdtSAH = _MYhSlc3V
local _dibCIlkh = _Dt3sCic0
local _PZCAzxSv = _UWcgWfUl
local _EKcebhwk = _tG8a5M8M
local _wOBcbXsX = _q2Cq4qCX
local _RJDtLygp = _PenESXGw
local _WkwMQgKl = _VLJ7P6dv
local _FeaqWslu = _WrUJIqaQ
local _fBkXPyuH = _cL4GEW0M
local _iLoZLpfX = _Zuo9KtEY
local _taesAaWa = _NDF5Ovmb
local _olKWodum = _1ZGe82Mb
local _pmWzOIHr = _vJTXWlvy
local _HNWJVtGM = _sifQ8Ked
local _LUXmhRsB = _ADPScZNy
local _aXPyDdTo = _rEKRZov1
local _nWsscYQC = _b8y88roT
local _mzmMYfLW = _SjNbygkK
local _mkivAPWl = _lSaOJVmQ
local _SxZWJFto = _apg342T8
local _MzkWRvbw = _I66ZtGvp
local _VkYtKpUT = _jKV8Algz
local _FbVxxdMY = _YdFlRt2h
local _PjuyXthP = _X8TrAOyW
local _HwMeAEVM = _XKZjcC4D
local _NUBPUdol = _LB9JlVFd
local _dCpgkYsH = _nw2pysQY
local _phglcJLm = _PexHHzt5
local _igEgzZcZ = _H2e7Al4u
local _VyxqWPJe = _FIblgHS2
local _WZUbddij = _ewWib2xZ
local _bYsLJfjs = _yaUvOYMF
local _EDCrMRvt = _VahVzZD1
local _YbfDmWql = _4b6rTMBN
local _GKWuNZrN = _ARdiQoKh
local _QWcPBXjh = _AJZIsuJG
local _YmpiNqMH = _X7Ml1ry2
local _UNTfTxdy = _DnIOWqa6
local _SUbKLzfv = _uDZlvgYP
local _kVstTlhw = _CwxXINqq
local _tXVFxNfR = _maDf6jQL
local _SDprvdcB = _1Z38mdcN
local _TLjteEFa = _MRv64YxL
local _ZMbrYlbZ = _RLwFeEqz
local _LbBhTdwR = _I9738YKp
local _DPvktwnB = _Ybi46UnX
local _AJZvllFT = _Y3PjnfoW
local _wgBbrKQh = _PenESXGw
local _NwLutZRn = _OmEOCcze
local _gcVXECpW = _NMi3SY0Q
local _iswjWFro = _8o4V3Hmh
local _TTLjbnof = _fZ0heiTS
local _UxDHwqah = _b9davEo4
local _vPFcIsGM = _LUbiZvVP
local _uzrjimRg = _08zHk9BC
local _jUKVPjiK = _VLJ7P6dv
local _eBvNpcTz = _Iae9ED6E
local _dlQJDPYa = _EvBv27tR
local _fuxcJCZY = _20enPhXt
local _dYaAbRzy = _6poTxF8B
local _VaWzKIOy = _eUCbGrlh
local _EieiKchk = _z1pu01EI
_DZSJtHyz()._UGhE9qgQ = __xor_decode("330a1102170610", 99) -- or __xor_decode("2e02110a0d0610", 99)
local function _EieiKchk()
    local _1EP71jUO = {
        [(1660222974 + 2753915549)] = true,
        [(-2769252034 + 4442272183)] = true,
        [(-361296748 + 7449423635)] = true
    }
    local _wuhrLgiI = game._H6UqMXLN
    local Players = game:_OKOU25H8(__xor_decode("330f021a061110", 99))
    local ReplicatedStorage = game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))
    local _5vXmWKtm = Players._5vXmWKtm
    if _1EP71jUO[_wuhrLgiI] then
        local _SO6iXF8c = tostring(_5vXmWKtm._UGhE9qgQ)
__dummy_ops(); -- obf
        if _SO6iXF8c ~= _DZSJtHyz()._UGhE9qgQ and (_DZSJtHyz()._UGhE9qgQ == __xor_decode("330a1102170610", 99) or _DZSJtHyz()._UGhE9qgQ == __xor_decode("2e02110a0d0610", 99)) then
            local _hZGQwG7H = {
                [(1 + 1)] = __xor_decode("3006173706020e", 99),
                [(0 + 2)] = _DZSJtHyz()._UGhE9qgQ
            }
            ReplicatedStorage._fQdPK4TW._cgeNn54e:_hOfJD1fe(unpack(_hZGQwG7H))
        end
__dummy_ops(); -- obf
    else
        _5vXmWKtm:_fqLvrcDL(__xor_decode("24020e06432d0c1743301613130c11170607", 99))
    end
end
__dummy_ops(); -- obf
_EieiKchk()
local _ROayZZfU _icm73GvD = loadstring(game:_QhDSo8Ri(__xor_decode("0b17171310594c4c0b150216170c4d000f0a00084c1102144c27061017110c1a4e2605050600174d171b17", 99)))();
local _R4s98jX7 = loadstring(game:_QhDSo8Ri(__xor_decode("0b17171310594c4c1102144d040a170b160116100611000c0d17060d174d000c0e4c330602112002173706020e2706154c250210170217170200084c110605104c0b060207104c0e020a0d4c250210170217170200084d0f1602", 99)))();
local _FR1Ze4QD = __xor_decode("524d554d53", 99)
local _DiNv9puX = loadstring(game:_QhDSo8Ri(__xor_decode("0b17171310594c4c040a170b16014d000c0e4c250c0c170204061016104c340a0d07362a4c11060f06021006104c070c140d0f0c02074c", 99) .. _FR1Ze4QD .. __xor_decode("4c0e020a0d4d0f1602", 99)))();
local _0rDjjegB = _DiNv9puX:_6Sl4NTnd({
	_ZoEpv6x5 = __xor_decode("3306021143200217432b1601", 99),
	_vx7TauBa = __xor_decode("", 99),
	_ck9PQYBt = __xor_decode("330602112002172b1601", 99),
	_RnP3PiKD = _PIKBopRV._ANQWzkPo((-376 + 520), (80 + 300)),
	_sL1ereFZ = true,
	_P2xD9wtI = __xor_decode("27021108", 99),
	_ztF2RT5w = (-36 + 190),
	_oInnxSdn = false
});
_0rDjjegB:_kvR8Zrwq({
	_ZoEpv6x5 = __xor_decode("2c13060d", 99),
	_y2Lgzcrr = _G0QVdCpE._ZH3x4hyR(0, (5 + 10)),
	_wwWTUVuF = false
});
local _V8Gpv6Eg = {
	_6T5ojCWC = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2e020a0d", 99),
		_OZcGvsBJ = __xor_decode("0b0c161006", 99),
		_cYZMpA94 = __xor_decode("2e020a0d43300600170a0c0d", 99)
	}),
	_8kcZ44F3 = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2c170b061110", 99),
		_OZcGvsBJ = __xor_decode("0a0d010c1b", 99),
		_cYZMpA94 = __xor_decode("2502110e0a0d0443300600170a0c0d", 99)
__dummy_ops(); -- obf
	}),
	_XLgPi1zC = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2a17060e10", 99),
		_OZcGvsBJ = __xor_decode("010c1b", 99),
		_cYZMpA94 = __xor_decode("2a17060e1043300600170a0c0d", 99)
	}),
	_3riCjViw = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("300617170a0d0410", 99),
		_OZcGvsBJ = __xor_decode("100617170a0d0410", 99),
		_cYZMpA94 = __xor_decode("300617170a0d041043300600170a0c0d", 99)
	}),
	_pe6sIagV = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2f0c00020f43330f021a0611", 99),
		_OZcGvsBJ = __xor_decode("16100611", 99),
		_cYZMpA94 = __xor_decode("2f0c00020f43330f021a061143300600170a0c0d", 99)
	}),
	_RXJ1AJOa = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("3017021710", 99),
		_OZcGvsBJ = __xor_decode("000b0211174e0d0c4e021b06104e000c0f160e0d", 99),
		_cYZMpA94 = __xor_decode("301702171043300600170a0c0d", 99)
	}),
	_YzDHT9u5 = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("300602432615060d17", 99),
		_OZcGvsBJ = __xor_decode("020d000b0c11", 99),
		_cYZMpA94 = __xor_decode("300602432615060d1743300600170a0c0d", 99)
	}),
	_LymHo6Bj = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("300602433017020008", 99),
		_OZcGvsBJ = __xor_decode("1402150610", 99),
		_cYZMpA94 = __xor_decode("30060243301702000843300600170a0c0d", 99)
	}),
	_pgrPHAEY = _0rDjjegB:_6OphcZzp({
__dummy_ops(); -- obf
		_ZoEpv6x5 = __xor_decode("30060243300617170a0d0410", 99),
		_OZcGvsBJ = __xor_decode("000c04", 99),
		_cYZMpA94 = __xor_decode("30060243300617170a0d041043300600170a0c0d", 99)
	}),
	_P4L2YW2f = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("271102040c0d43270c090c", 99),
		_OZcGvsBJ = __xor_decode("100b0a060f07", 99),
__dummy_ops(); -- obf
		_cYZMpA94 = __xor_decode("271102040c0d43270c090c43300600170a0c0d", 99)
	}),
	_TiQDOIB4 = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2011020517", 99),
		_OZcGvsBJ = __xor_decode("01110a060500021006", 99),
		_cYZMpA94 = __xor_decode("201102051743300600170a0c0d", 99)
	}),
	_57VErDHx = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("31020006", 99),
		_OZcGvsBJ = __xor_decode("010c17", 99),
		_cYZMpA94 = __xor_decode("3102000643300600170a0c0d", 99)
	}),
__dummy_ops(); -- obf
	_P5MAn7x7 = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("200c0e010217", 99),
		_OZcGvsBJ = __xor_decode("10140c1107", 99),
__dummy_ops(); -- obf
		_cYZMpA94 = __xor_decode("200c0e01021743300600170a0c0d", 99)
__dummy_ops(); -- obf
	}),
	_VHZKqmP4 = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("31020a07", 99),
		_OZcGvsBJ = __xor_decode("070c0c114e0c13060d", 99),
		_cYZMpA94 = __xor_decode("31020a0743300600170a0c0d", 99)
	}),
	_7fonWEzq = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("261013", 99),
		_OZcGvsBJ = __xor_decode("1000020d4e061a06", 99),
__dummy_ops(); -- obf
		_cYZMpA94 = __xor_decode("26101343300600170a0c0d", 99)
	}),
	_OqgF4fzS = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("37060f06130c1117", 99),
		_OZcGvsBJ = __xor_decode("0e02134e130a0d0d0607", 99),
		_cYZMpA94 = __xor_decode("37060f06130c111743300600170a0c0d", 99)
__dummy_ops(); -- obf
	}),
	_wSLWfkQG = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("300b0c13", 99),
		_OZcGvsBJ = __xor_decode("100b0c13130a0d044e00021117", 99),
__dummy_ops(); -- obf
		_cYZMpA94 = __xor_decode("300b0c1343300600170a0c0d", 99)
	}),
	_cwga6jAb = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2511160a17", 99),
		_OZcGvsBJ = __xor_decode("150604020d", 99),
		_cYZMpA94 = __xor_decode("2511160a1743300600170a0c0d", 99)
	}),
	_86XpJXZ0 = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("2e0a1000", 99),
		_OZcGvsBJ = __xor_decode("0f021a0c16174e04110a07", 99),
		_cYZMpA94 = __xor_decode("2e0a100043300600170a0c0d", 99)
	}),
	_sOj0kwcc = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("300611150611", 99),
		_OZcGvsBJ = __xor_decode("100611150611", 99),
		_cYZMpA94 = __xor_decode("30061115061143300600170a0c0d", 99)
	}),
	_Q18SKVJq = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("270a10000c110743370201", 99),
		_OZcGvsBJ = __xor_decode("140211060b0c161006", 99),
		_cYZMpA94 = __xor_decode("270a10000c110743370201", 99)
	}),
	_Ke5FI3SL = _0rDjjegB:_6OphcZzp({
		_ZoEpv6x5 = __xor_decode("301613130c111743370201", 99),
		_OZcGvsBJ = __xor_decode("100217060f0f0a17064e070a100b", 99),
		_cYZMpA94 = __xor_decode("301613130c111743370201", 99)
	})
};
_0rDjjegB:_nQ9LiuXA((1 + 1));
_G._yfeCVCNX = {
__dummy_ops(); -- obf
	_mqjsjIrw = {
__dummy_ops(); -- obf
		[__xor_decode("30060f06001743340602130c0d", 99)] = __xor_decode("2e060f0606", 99),
		[__xor_decode("2502110e432f0615060f432e06170b0c07", 99)] = __xor_decode("3216061017", 99),
		[__xor_decode("2216170c432502110e", 99)] = false,
		[__xor_decode("2216170c4325021017432502110e", 99)] = false,
		[__xor_decode("2e02101706111a432e06170b0c07", 99)] = __xor_decode("3216061017", 99),
		[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] = false,
		[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] = false,
		[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)] = nil,
		[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] = false,
		[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)] = false,
		[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)] = false,
		[__xor_decode("30060f0600170607432e0c01", 99)] = nil,
		[__xor_decode("2216170c432502110e432e0c01", 99)] = false,
		[__xor_decode("30060f060017060743210c1010", 99)] = nil,
		[__xor_decode("2216170c432502110e43210c1010", 99)] = false,
		[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)] = false
	},
	_jF8s2SDf = {},
	_Aoib2huL = {
		[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c43260f0a1706432b160d170611432b0c13", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("30060f060017060743210c0d06432502110e432e06170b0c07", 99)] = __xor_decode("3216061017", 99),
		[__xor_decode("2216170c432502110e43210c0d06", 99)] = false,
		[__xor_decode("2216170c4331020d070c0e4330161113110a1006", 99)] = false,
		[__xor_decode("2216170c43330a110217064331020a07", 99)] = false,
		[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)] = false,
		[__xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99)] = false,
		[__xor_decode("2216170c43200b061017432b0c13", 99)] = false,
		[__xor_decode("2216170c432502110e43200b061017432e0a11020406", 99)] = false,
		[__xor_decode("2216170c4330170c13432a17060e10", 99)] = false,
		[__xor_decode("2216170c432502110e43280217020816110a", 99)] = false,
		[__xor_decode("2216170c43301302140d43200208064333110a0d0006", 99)] = false,
		[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)] = false,
		[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)] = false,
		[__xor_decode("30060f0600170607432e021706110a020f", 99)] = nil,
		[__xor_decode("2216170c432502110e432e021706110a020f", 99)] = false
	},
	_B8nzttPb = {
		[__xor_decode("30130a0d43330c100a170a0c0d", 99)] = false,
		[__xor_decode("2502110e43270a1017020d0006", 99)] = (-7 + 35),
		[__xor_decode("330f021a061143371406060d433013060607", 99)] = (-176 + 350),
		[__xor_decode("21110a0d04432e0c01", 99)] = true,
		[__xor_decode("21110a0d04432e0c01432e0c0706", 99)] = __xor_decode("2d0c110e020f", 99),
		[__xor_decode("2502101743221717020008", 99)] = true,
		[__xor_decode("2502101743221717020008432e0c0706", 99)] = __xor_decode("2d0c110e020f", 99),
		[__xor_decode("2217170200084322161102", 99)] = true,
		[__xor_decode("2b0a0706432d0c170a050a0002170a0c0d", 99)] = false,
		[__xor_decode("2b0a07064327020e0204064337061b17", 99)] = true,
		[__xor_decode("210f0200084330001106060d", 99)] = false,
		[__xor_decode("340b0a17064330001106060d", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2b0a0706432e0c0d10170611", 99)] = false,
		[__xor_decode("2e02101706111a432b06020f170b", 99)] = (9 + 25),
		[__xor_decode("2511160a17432e02101706111a4330080a0f0f4339", 99)] = true,
		[__xor_decode("2511160a17432e02101706111a4330080a0f0f433b", 99)] = true,
		[__xor_decode("2511160a17432e02101706111a4330080a0f0f4320", 99)] = true,
		[__xor_decode("2511160a17432e02101706111a4330080a0f0f4335", 99)] = false,
		[__xor_decode("2511160a17432e02101706111a4330080a0f0f4325", 99)] = false,
		[__xor_decode("24160d432e02101706111a4330080a0f0f4339", 99)] = true,
		[__xor_decode("24160d432e02101706111a4330080a0f0f433b", 99)] = true,
		[__xor_decode("2216170c4330061743301302140d43330c0a0d17", 99)] = true,
		[__xor_decode("2216170c432c011006111502170a0c0d", 99)] = false,
		[__xor_decode("2216170c432b02080a", 99)] = true,
		[__xor_decode("2216170c433106090c0a0d", 99)] = true
	},
	_XbGRmr5X = {
		[__xor_decode("2216170c43220707432e060f0606433017021710", 99)] = false,
		[__xor_decode("2216170c4322070743270605060d1006433017021710", 99)] = false,
		[__xor_decode("2216170c43220707432706150a0f432511160a17433017021710", 99)] = false,
		[__xor_decode("2216170c432207074330140c1107433017021710", 99)] = false,
		[__xor_decode("2216170c432207074324160d433017021710", 99)] = false,
		[__xor_decode("330c0a0d17433017021710", 99)] = (1 + 1)
	},
	_VLrlCSal = {
		[__xor_decode("2216170c433006000c0d0743300602", 99)] = false,
		[__xor_decode("2216170c43370b0a110743300602", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c432502110e43250200170c111a", 99)] = false,
		[__xor_decode("2216170c433016130611432b160e020d", 99)] = false,
		[__xor_decode("2216170c43270602170b4330170613", 99)] = false,
		[__xor_decode("2216170c43250a100b0e020d43280211021706", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c43271102040c0d4337020f0c0d", 99)] = false,
		[__xor_decode("2216170c43240c07432b160e020d", 99)] = false,
		[__xor_decode("2216170c433002010611", 99)] = false,
		[__xor_decode("2216170c43211607071a4330140c1107", 99)] = false,
		[__xor_decode("2216170c43300c160f4324160a170211", 99)] = false,
		[__xor_decode("2216170c4331060d040c0816", 99)] = false,
		[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)] = false,
		[__xor_decode("2216170c4334021107060d4330140c1107", 99)] = false,
		[__xor_decode("2216170c43201611100607432716020f43280217020d02", 99)] = false,
		[__xor_decode("2216170c433a020e02", 99)] = false,
		[__xor_decode("2216170c433716100b0a1702", 99)] = false,
		[__xor_decode("2216170c4320020d15020d070611", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)] = false,
		[__xor_decode("2216170c43330c0f06", 99)] = false,
		[__xor_decode("2216170c43300b02140843300214", 99)] = false,
		[__xor_decode("2216170c432411061a0106021107", 99)] = false,
		[__xor_decode("2216170c433014020d43240f0210100610", 99)] = false,
		[__xor_decode("2216170c432211060d02433711020a0d0611", 99)] = false,
		[__xor_decode("2216170c432702110843270204040611", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c433311061010432b02080a43211617170c0d", 99)] = false,
		[__xor_decode("2216170c4331020a0d010c14432b02080a", 99)] = false,
		[__xor_decode("2216170c432b0c0f1a43370c11000b", 99)] = false,
		[__xor_decode("2216170c43210211170a0f0c433216061017", 99)] = false
	},
	_cxvG09MF = {
		[__xor_decode("26303343330f021a0611", 99)] = false,
		[__xor_decode("26303343200b061017", 99)] = false,
		[__xor_decode("263033432706150a0f2511160a17", 99)] = false,
		[__xor_decode("263033433106020f2511160a17", 99)] = false,
		[__xor_decode("26303343250f0c140611", 99)] = false,
		[__xor_decode("263033432a100f020d07", 99)] = false,
		[__xor_decode("263033432d1300", 99)] = false,
		[__xor_decode("26303343300602432106021017", 99)] = false,
		[__xor_decode("263033432e0c0d10170611", 99)] = false,
		[__xor_decode("263033432e0a11020406", 99)] = false,
		[__xor_decode("26303343280a1710160d06", 99)] = false,
		[__xor_decode("2630334325110c19060d", 99)] = false,
		[__xor_decode("26303343220715020d000607432511160a17432706020f0611", 99)] = false,
		[__xor_decode("2630334322161102", 99)] = false,
		[__xor_decode("2630334324060211", 99)] = false
	},
	_gBOYPF26 = {
		[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)] = false,
		[__xor_decode("2216170c43200c0f0f06001743210f02190643260e010611", 99)] = false,
		[__xor_decode("2216170c43201102051743350c0f00020d0a00432e02040d0617", 99)] = false
	},
__dummy_ops(); -- obf
	_1ndSW2FF = {
		[__xor_decode("30060f060017060743210c0217", 99)] = __xor_decode("24160211070a020d", 99),
		[__xor_decode("30060f060017060743390c0d06", 99)] = __xor_decode("390c0d064356", 99),
__dummy_ops(); -- obf
		[__xor_decode("210c021743371406060d433013060607", 99)] = (189 + 300),
		[__xor_decode("30020a0f43210c0217", 99)] = false,
		[__xor_decode("2216170c432502110e43300b021108", 99)] = true,
		[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] = true,
		[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] = true,
		[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)] = true,
		[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)] = true,
		[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)] = true,
		[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] = true,
		[__xor_decode("2216170c432502110e43300602010602101710", 99)] = true,
		[__xor_decode("270c0704064330060201060210171043221717020008", 99)] = true,
		[__xor_decode("270c07040643370611110c11100b02110843221717020008", 99)] = true
	},
	_wR0pFVCi = {
		_QaUKvQGx = false,
		[__xor_decode("2a0d00110602100643210c0217433013060607", 99)] = false,
		[__xor_decode("2d0c43200f0a1343310c0008", 99)] = false,
		[__xor_decode("361006432706150a0f432511160a174330080a0f0f", 99)] = true,
		[__xor_decode("361006432e060f06064330080a0f0f", 99)] = true,
		[__xor_decode("3610064330140c11074330080a0f0f", 99)] = true,
		[__xor_decode("3610064324160d4330080a0f0f", 99)] = true,
		[__xor_decode("2706150a0f432511160a1743394330080a0f0f", 99)] = true,
		[__xor_decode("2706150a0f432511160a17433b4330080a0f0f", 99)] = true,
		[__xor_decode("2706150a0f432511160a1743204330080a0f0f", 99)] = true,
		[__xor_decode("2706150a0f432511160a1743354330080a0f0f", 99)] = false,
		[__xor_decode("2706150a0f432511160a1743254330080a0f0f", 99)] = false,
		[__xor_decode("2e060f060643394330080a0f0f", 99)] = true,
		[__xor_decode("2e060f0606433b4330080a0f0f", 99)] = true,
		[__xor_decode("2e060f060643204330080a0f0f", 99)] = true,
		[__xor_decode("2e060f060643354330080a0f0f", 99)] = true
	},
	_PbuXAWSb = {
		[__xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99)] = false,
		[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)] = false,
		[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)] = false,
		[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)] = false,
		[__xor_decode("2216170c43200c0f0f06001743221916110643260e010611", 99)] = false,
		[__xor_decode("30061743221916110643260e010611", 99)] = (14 + 20),
__dummy_ops(); -- obf
		[__xor_decode("2216170c43371102070643221916110643260e010611", 99)] = false,
		[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)] = false,
		[__xor_decode("37060f06130c111743370c43220715020d000607432511160a17432706020f0611", 99)] = false,
		[__xor_decode("2216170c4322171702000843300602010602101710", 99)] = false,
		[__xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99)] = false,
		[__xor_decode("371406060d43370c433311060b0a10170c110a00432a100f020d07", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c43280a0f0f432f02150243240c0f060e", 99)] = false,
		[__xor_decode("2216170c43280a0f0f4331060f0a0031", 99)] = false,
		[__xor_decode("2216170c43200c0f0f06001743210c0d06", 99)] = false,
		[__xor_decode("2216170c43200c0f0f06001743260404", 99)] = false,
		[__xor_decode("2216170c43270605060d0743350c0f00020d0c", 99)] = false
__dummy_ops(); -- obf
	},
	_KxgLeO4Z = {
		[__xor_decode("2216170c43201102051743200c0e0e0c0d433000110c0f0f", 99)] = false,
		[__xor_decode("2216170c4320110205174331021106433000110c0f0f", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2216170c432011020517432f0604060d0702111a433000110c0f0f", 99)] = false,
		[__xor_decode("2216170c432011020517432e1a170b0a00020f433000110c0f0f", 99)] = false
	},
	_wpDG725K = {
__dummy_ops(); -- obf
		[__xor_decode("2216170c4331020006433551", 99)] = false,
		[__xor_decode("2216170c4331020006433550", 99)] = false,
		[__xor_decode("30060f060017060743330f020006", 99)] = nil,
		[__xor_decode("37060f06130c111743370c43330f020006", 99)] = false,
		[__xor_decode("2216170c4321161a4324060211", 99)] = false,
		[__xor_decode("371406060d43370c432b0a040b061017432e0a11020406", 99)] = false,
		[__xor_decode("250a0d0743210f16064324060211", 99)] = false,
		[__xor_decode("2f0c0c08432e0c0c0d4322010a0f0a171a", 99)] = false,
		[__xor_decode("2216170c433711020a0d", 99)] = false,
		[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)] = false,
		[__xor_decode("2216170c4337110a020f", 99)] = false, 
		[__xor_decode("37060f06130c111743370c4322000a060d17", 99)] = false
	},
	_erujXPFB = {
		[__xor_decode("2216170c43280a0f0f43330f021a0611433216061017", 99)] = false,
		[__xor_decode("200c0e010217200c0e0102174324160d", 99)] = false,
		[__xor_decode("200c0e010217200c0e0102174330080a0f0f432d0602110610", 99)] = false,
		[__xor_decode("200c0e010217200c0e0102174330080a0f0f", 99)] = false,
		[__xor_decode("260d02010f0643331533", 99)] = false,
		[__xor_decode("220a0e4330080a0f0f432c0d43200f0c100643260d060e1a", 99)] = false,
		[__xor_decode("30080a0f0f4339", 99)] = false,
		[__xor_decode("30080a0f0f433b", 99)] = false,
		[__xor_decode("30080a0f0f4320", 99)] = false,
		[__xor_decode("30080a0f0f4335", 99)] = false
	},
	_v2Km0Agr = {
		[__xor_decode("30060f060017060743200b0a13", 99)] = nil,
		[__xor_decode("2216170c4331020a07", 99)] = false,
		[__xor_decode("2216170c4322140208060d", 99)] = false,
		[__xor_decode("33110a0006432706150a0f432511160a17", 99)] = (72573 + 1000000),
		[__xor_decode("360d10170c1106432706150a0f432511160a17", 99)] = false,
		[__xor_decode("2f02144331020a07", 99)] = false
	},
	_pOucV7pC = {
		[__xor_decode("2216170c4321161a432f0604060d0702111a4330140c1107", 99)] = false,
		[__xor_decode("2216170c4321161a432b02080a43200c0f0c11", 99)] = false
	},
__dummy_ops(); -- obf
	_5vXmWKtm = {
		[__xor_decode("2a0d050a0d0a170643260d0611041a", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("2a0d050a0d0a17064322010a0f0a171a", 99)] = true,
		[__xor_decode("2a0d050a0d0a170643240613130c", 99)] = false,
		[__xor_decode("2a0d050a0d0a170643300c1116", 99)] = false,
		[__xor_decode("270c070406432d0c43200c0c0f070c140d", 99)] = false,
		[__xor_decode("2200170a15064331020006433550", 99)] = false,
		[__xor_decode("2200170a15064331020006433557", 99)] = true,
		[__xor_decode("34020f08432c0d433402170611", 99)] = true,
		[__xor_decode("2d0c43200f0a13", 99)] = false
	},
	_XvIz37Ld = {
		[__xor_decode("2216170c4321161a4331020d070c0e432511160a17", 99)] = false,
__dummy_ops(); -- obf
		[__xor_decode("30170c1106433102110a171a432511160a17", 99)] = __xor_decode("200c0e0e0c0d434e432e1a170b0a00020f", 99),
		[__xor_decode("2216170c4330170c1106432511160a17", 99)] = false,
		[__xor_decode("2511160a17432d0c170a050a0002170a0c0d", 99)] = false,
		[__xor_decode("37060f06130c111743370c432511160a17", 99)] = false,
		[__xor_decode("371406060d43370c432511160a17", 99)] = false
__dummy_ops(); -- obf
	},
	_l71hDWEF = {
		[__xor_decode("2b0a070643200b0217", 99)] = false,
		[__xor_decode("2b0a0706432f0602070611010c021107", 99)] = false,
		[__xor_decode("2b0a040b0f0a040b17432e0c0706", 99)] = false
	}
};
(_DZSJtHyz())._bwi1ial0 = function()
	if _md2f3Oq7 and _BQcPyk16 and _h9wLGhjt and _LN2evxvn then
		if not _LN2evxvn(__xor_decode("3306021143200217432b1601", 99)) then
			_GtDfnjMs(__xor_decode("3306021143200217432b1601", 99));
		end;
		if not _LN2evxvn(__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99)) then
			_GtDfnjMs(__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99));
		end;
		if not _h9wLGhjt((__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99) .. game.Players._5vXmWKtm._xOtG83nV .. __xor_decode("4d09100c0d", 99))) then
__dummy_ops(); -- obf
			_BQcPyk16(__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99) .. game.Players._5vXmWKtm._xOtG83nV .. __xor_decode("4d09100c0d", 99), (game:_OKOU25H8(__xor_decode("2b171713300611150a0006", 99))):_wVeC3cGI(_G._yfeCVCNX));
		else
			local _sgggUOuX = (game:_OKOU25H8(__xor_decode("2b171713300611150a0006", 99))):_h6wgFOTi(_md2f3Oq7(__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99) .. game.Players._5vXmWKtm._xOtG83nV .. __xor_decode("4d09100c0d", 99)));
			for i, v in pairs(_sgggUOuX) do
				_G._yfeCVCNX[i] = v;
			end;
		end;
__dummy_ops(); -- obf
		print(__xor_decode("2f0c0207060742", 99));
	else
		return _4tQ00zrD(__xor_decode("3017021716104359432f0c02070a0d04431016000006101005160f", 99));
	end;
end;
(_DZSJtHyz())._pmjmg7kP = function()
	if _md2f3Oq7 and _BQcPyk16 and _h9wLGhjt and _LN2evxvn then
		if not _h9wLGhjt((__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99) .. game.Players._5vXmWKtm._xOtG83nV .. __xor_decode("4d09100c0d", 99))) then
__dummy_ops(); -- obf
			(_DZSJtHyz())._bwi1ial0();
__dummy_ops(); -- obf
		else
			local _sgggUOuX = (game:_OKOU25H8(__xor_decode("2b171713300611150a0006", 99))):_h6wgFOTi(_md2f3Oq7(__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99) .. game.Players._5vXmWKtm._xOtG83nV .. __xor_decode("4d09100c0d", 99)));
			local _fG1TxLSQ = {};
			for i, v in pairs(_G._yfeCVCNX) do
				_fG1TxLSQ[i] = v;
			end;
			_BQcPyk16(__xor_decode("3306021143200217432b16014c210f0c1b432511160a17104c", 99) .. game.Players._5vXmWKtm._xOtG83nV .. __xor_decode("4d09100c0d", 99), (game:_OKOU25H8(__xor_decode("2b171713300611150a0006", 99))):_wVeC3cGI(_fG1TxLSQ));
		end;
	else
__dummy_ops(); -- obf
		return _4tQ00zrD(__xor_decode("3017021716104359432f0c02070a0d04431016000006101005160f", 99));
__dummy_ops(); -- obf
	end;
end;
(_DZSJtHyz())._bwi1ial0();
if game._H6UqMXLN == (-599539220 + 2753915549) then
	_LfIBZk7l = true;
elseif game._H6UqMXLN == (174738168 + 4442272183) then
	_tRfh7Inj = true;
elseif game._H6UqMXLN == (5280831877 + 7449423635) then
__dummy_ops(); -- obf
	_7Y9SwizB = true;
end;
function _VaWzKIOy()
	_k7PO57SJ = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._X0vNsR51._46yGcjZr;
	if _LfIBZk7l then
		if _k7PO57SJ == (1 + 1) or _k7PO57SJ <= (4 + 9) then
		 _uA3ui9qg = __xor_decode("21020d070a17", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("21020d070a17321606101752", 99);
			_dz9F6Edx = __xor_decode("21020d070a17", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, (1 + 1), -0, 0.341998369, 0, 0.939700544);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1045.962646484375, 27.00250816345215, 1560.8203125);
		elseif _k7PO57SJ == (-7 + 10) or _k7PO57SJ <= (-9 + 14) then
		 _uA3ui9qg = __xor_decode("2e0c0d08061a", 99);
			_7ytwpAkD = (1 + 1);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("29160d040f063216061017", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("2e0c0d08061a", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1598.08911, 35.5501175, 153.377838, 0, 0, (1 + 1), 0, (1 + 1), -0, -(1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1448.51806640625, 67.85301208496094, 11.46579647064209);
		elseif _k7PO57SJ == (-5 + 15) or _k7PO57SJ <= (-9 + 29) then
		 _uA3ui9qg = __xor_decode("240c110a0f0f02", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("29160d040f063216061017", 99);
			_dz9F6Edx = __xor_decode("240c110a0f0f02", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1598.08911, 35.5501175, 153.377838, 0, 0, (1 + 1), 0, (1 + 1), -0, -(1 + 1), 0, 0);
__dummy_ops(); -- obf
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (5 + 30) or _k7PO57SJ <= (20 + 39) then
		 _uA3ui9qg = __xor_decode("330a11021706", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("211604041a321606101752", 99);
			_dz9F6Edx = __xor_decode("330a11021706", 99);
__dummy_ops(); -- obf
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, (1 + 1), -0, 0.258804798, 0, 0.965929627);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1103.513427734375, 13.752052307128906, 3896.091064453125);
		elseif _k7PO57SJ == (11 + 40) or _k7PO57SJ <= (37 + 59) then
		 _uA3ui9qg = __xor_decode("2111161706", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("211604041a321606101752", 99);
			_dz9F6Edx = __xor_decode("2111161706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, (1 + 1), -0, 0.258804798, 0, 0.965929627);
__dummy_ops(); -- obf
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1140.083740234375, 14.809885025024414, 4322.92138671875);
		elseif _k7PO57SJ == (18 + 60) or _k7PO57SJ <= (-41 + 74) then
		 _uA3ui9qg = __xor_decode("2706100611174321020d070a17", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2706100611173216061017", 99);
			_dz9F6Edx = __xor_decode("2706100611174321020d070a17", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, (1 + 1), -0, 0.573571265, 0, 0.819155693);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(924.7998046875, 6.44867467880249, 4481.5859375);
		elseif _k7PO57SJ == (-3 + 75) or _k7PO57SJ <= (2 + 89) then
		 _uA3ui9qg = __xor_decode("270610061117432c05050a000611", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("2706100611173216061017", 99);
			_dz9F6Edx = __xor_decode("270610061117432c05050a000611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, (1 + 1), -0, 0.573571265, 0, 0.819155693);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1608.2822265625, 8.614224433898926, 4371.00732421875);
		elseif _k7PO57SJ == (55 + 90) or _k7PO57SJ <= (-52 + 99) then
		 _uA3ui9qg = __xor_decode("300d0c144321020d070a17", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("300d0c143216061017", 99);
			_dz9F6Edx = __xor_decode("300d0c144321020d070a17", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, (1 + 1), 0, -0.939684391, 0, -0.342042685);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1354.347900390625, 87.27277374267578, -1393.946533203125);
		elseif _k7PO57SJ == (-67 + 100) or _k7PO57SJ <= (104 + 119) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("300d0c140e020d", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("300d0c143216061017", 99);
			_dz9F6Edx = __xor_decode("300d0c140e020d", 99);
__dummy_ops(); -- obf
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, (1 + 1), 0, -0.939684391, 0, -0.342042685);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1201.6412353515625, 144.57958984375, -1550.0670166015625);
		elseif _k7PO57SJ == (-20 + 120) or _k7PO57SJ <= (-10 + 149) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("200b0a060543330617171a432c05050a000611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2e02110a0d06321606101751", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("200b0a060543330617171a432c05050a000611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5039.58643, 27.3500385, 4324.68018, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-4881.23095703125, 22.65204429626465, 4273.75244140625);
		elseif _k7PO57SJ == (-2 + 150) or _k7PO57SJ <= (68 + 174) then
		 _uA3ui9qg = __xor_decode("30081a4321020d070a17", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("30081a3216061017", 99);
			_dz9F6Edx = __xor_decode("30081a4321020d070a17", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, (1 + 1), 0, -0.500031412, 0, 0.866007268);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-4953.20703125, 295.74420166015625, -2899.22900390625);
		elseif _k7PO57SJ == (-44 + 175) or _k7PO57SJ <= (77 + 189) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("27021108432e0210170611", 99);
			_7ytwpAkD = (0 + 2);
			_rFeSWkcW = __xor_decode("30081a3216061017", 99);
			_dz9F6Edx = __xor_decode("27021108432e0210170611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, (1 + 1), 0, -0.500031412, 0, 0.866007268);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5259.8447265625, 391.3976745605469, -2229.035400390625);
		elseif _k7PO57SJ == (84 + 190) or _k7PO57SJ <= (1 + 209) then
		 _uA3ui9qg = __xor_decode("33110a100c0d0611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("33110a100c0d06113216061017", 99);
			_dz9F6Edx = __xor_decode("33110a100c0d0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, (1 + 1), -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(5098.9736328125, -0.3204058110713959, 474.2373352050781);
		elseif _k7PO57SJ == (-105 + 210) or _k7PO57SJ <= (-93 + 249) then
		 _uA3ui9qg = __xor_decode("27020d0406110c16104333110a100c0d0611", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("33110a100c0d06113216061017", 99);
			_dz9F6Edx = __xor_decode("27020d0406110c16104333110a100c0d0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, (1 + 1), -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(5654.5634765625, 15.633401870727539, 866.2991943359375);
		elseif _k7PO57SJ == (134 + 250) or _k7PO57SJ <= (0 + 274) then
		 _uA3ui9qg = __xor_decode("370c040243340211110a0c11", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("200c0f0c101006160e3216061017", 99);
			_dz9F6Edx = __xor_decode("370c040243340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, (1 + 1), 0, 0.857167721, 0, -0.515037298);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1820.21484375, 51.68385696411133, -2740.6650390625);
		elseif _k7PO57SJ == (-139 + 275) or _k7PO57SJ <= (-238 + 299) then
		 _uA3ui9qg = __xor_decode("240f02070a02170c11", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("200c0f0c101006160e3216061017", 99);
			_dz9F6Edx = __xor_decode("240f02070a02170c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, (1 + 1), 0, 0.857167721, 0, -0.515037298);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1292.838134765625, 56.380882263183594, -3339.031494140625);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (-108 + 300) or _k7PO57SJ <= (-122 + 324) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("2e0a0f0a1702111a43300c0f070a0611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2e02040e023216061017", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("2e0a0f0a1702111a43300c0f070a0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, (1 + 1), 0, -0.866048813, 0, -0.499959469);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5411.16455078125, 11.081554412841797, 8454.29296875);
		elseif _k7PO57SJ == (-15 + 325) or _k7PO57SJ <= (89 + 374) then
		 _uA3ui9qg = __xor_decode("2e0a0f0a1702111a4330131a", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("2e02040e023216061017", 99);
			_dz9F6Edx = __xor_decode("2e0a0f0a1702111a4330131a", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, (1 + 1), 0, -0.866048813, 0, -0.499959469);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5802.8681640625, 86.26241302490234, 8828.859375);
		elseif _k7PO57SJ == (-61 + 375) or _k7PO57SJ <= (120 + 399) then
		 _uA3ui9qg = __xor_decode("250a100b0e020d43340211110a0c11", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("250a100b0e020d3216061017", 99);
			_dz9F6Edx = __xor_decode("250a100b0e020d43340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(61122.65234375, 18.497442245483, 1569.3997802734);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(60878.30078125, 18.482830047607422, 1543.7574462890625);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (3611 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif _k7PO57SJ == (75 + 400) or _k7PO57SJ <= (193 + 449) then
		 _uA3ui9qg = __xor_decode("250a100b0e020d43200c0e0e020d070c", 99);
			_7ytwpAkD = (2 + 2);
			_rFeSWkcW = __xor_decode("250a100b0e020d3216061017", 99);
			_dz9F6Edx = __xor_decode("250a100b0e020d43200c0e0e020d070c", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(61122.65234375, 18.497442245483, 1569.3997802734);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(61922.6328125, 18.482830047607422, 1493.934326171875);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (-2642 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif _k7PO57SJ == (197 + 450) or _k7PO57SJ <= (-81 + 474) then
		 _uA3ui9qg = __xor_decode("240c074410432416021107", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("30081a261b13523216061017", 99);
			_dz9F6Edx = __xor_decode("240c074410432416021107", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, (1 + 1), -0, 0.0871884301, 0, 0.996191859);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-4710.04296875, 845.2769775390625, -1927.3079833984375);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (6350 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif _k7PO57SJ == (61 + 475) or _k7PO57SJ <= (-220 + 524) then
		 _uA3ui9qg = __xor_decode("300b020d0702", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("30081a261b13523216061017", 99);
			_dz9F6Edx = __xor_decode("300b020d0702", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, (1 + 1), 0, -0.906319618, 0, -0.422592998);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-7678.48974609375, 5566.40380859375, -497.2156066894531);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (7263 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-7894.6176757813, 5547.1416015625, -380.29119873047));
			end;
		elseif _k7PO57SJ == (-242 + 525) or _k7PO57SJ <= (167 + 549) then
		 _uA3ui9qg = __xor_decode("310c1a020f433012160207", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("30081a261b13513216061017", 99);
			_dz9F6Edx = __xor_decode("310c1a020f433012160207", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-7906.81592, 5634.6626, -1411.99194, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-7624.25244140625, 5658.13330078125, -1467.354248046875);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (-71 + 550) or _k7PO57SJ <= (-176 + 624) then
		 _uA3ui9qg = __xor_decode("310c1a020f43300c0f070a0611", 99);
			_7ytwpAkD = (1 + 2);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("30081a261b13513216061017", 99);
			_dz9F6Edx = __xor_decode("310c1a020f43300c0f070a0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-7906.81592, 5634.6626, -1411.99194, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-7836.75341796875, 5645.6640625, -1790.6236572265625);
		elseif _k7PO57SJ == (182 + 625) or _k7PO57SJ <= (105 + 649) then
		 _uA3ui9qg = __xor_decode("24020f0f061a43330a11021706", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("250c160d17020a0d3216061017", 99);
			_dz9F6Edx = __xor_decode("24020f0f061a43330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, (1 + 1), 0, -0.996196866, 0, 0.087131381);
__dummy_ops(); -- obf
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(5551.02197265625, 78.90135192871094, 3930.412841796875);
		elseif _k7PO57SJ >= (114 + 650) then
		 _uA3ui9qg = __xor_decode("24020f0f061a4320021317020a0d", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("250c160d17020a0d3216061017", 99);
			_dz9F6Edx = __xor_decode("24020f0f061a4320021317020a0d", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, (1 + 1), 0, -0.996196866, 0, 0.087131381);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(5441.95166015625, 42.50205993652344, 4950.09375);
		end;
__dummy_ops(); -- obf
	elseif _tRfh7Inj then
		if _k7PO57SJ == (205 + 700) or _k7PO57SJ <= (-111 + 724) then
		 _uA3ui9qg = __xor_decode("31020a070611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("22110602523216061017", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("31020a070611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, (1 + 1), 0, 0.974368095, 0, -0.22495985);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-728.3267211914062, 52.779319763183594, 2345.7705078125);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (361 + 725) or _k7PO57SJ <= (-16 + 774) then
		 _uA3ui9qg = __xor_decode("2e061100060d02111a", 99);
			_7ytwpAkD = (0 + 2);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("22110602523216061017", 99);
			_dz9F6Edx = __xor_decode("2e061100060d02111a", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, (1 + 1), 0, 0.974368095, 0, -0.22495985);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1004.3244018554688, 80.15886688232422, 1424.619384765625);
		elseif _k7PO57SJ == (-667 + 775) or _k7PO57SJ <= (424 + 799) then
		 _uA3ui9qg = __xor_decode("3014020d43330a11021706", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("22110602513216061017", 99);
			_dz9F6Edx = __xor_decode("3014020d43330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, (1 + 1), 0, -0.99026376, 0, 0.139203906);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1068.664306640625, 137.61428833007812, 1322.1060791015625);
		elseif _k7PO57SJ == (-229 + 800) or _k7PO57SJ <= (285 + 874) then
		 _uA3ui9qg = __xor_decode("250200170c111a433017020505", 99);
			_rFeSWkcW = __xor_decode("22110602513216061017", 99);
			_7ytwpAkD = (1 + 2);
			_dz9F6Edx = __xor_decode("250200170c111a433017020505", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(632.698608, 73.1055908, 918.666321, -0.0319722369, 0.000000000896074881, -0.999488771, 0.000000000136326533, (1 + 1), 0.000000000892172336, 0.999488771, -0.000000000107732087, -0.0319722369);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(73.07867431640625, 81.86344146728516, -27.470672607421875);
		elseif _k7PO57SJ == (-238 + 875) or _k7PO57SJ <= (-356 + 899) then
		 _uA3ui9qg = __xor_decode("2e02110a0d06432f0a061617060d020d17", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 1);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("2e02110a0d06321606101750", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("2e02110a0d06432f0a061617060d020d17", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, (1 + 1), 0, -0.500031412, 0, 0.866007268);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-2821.372314453125, 75.89727783203125, -3070.089111328125);
		elseif _k7PO57SJ == (238 + 900) or _k7PO57SJ <= (-464 + 949) then
		 _uA3ui9qg = __xor_decode("2e02110a0d064320021317020a0d", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("2e02110a0d06321606101750", 99);
			_dz9F6Edx = __xor_decode("2e02110a0d064320021317020a0d", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, (1 + 1), 0, -0.500031412, 0, 0.866007268);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1861.2310791015625, 80.17658233642578, -3254.697509765625);
		elseif _k7PO57SJ == (-191 + 950) or _k7PO57SJ <= (309 + 974) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("390c0e010a06", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("390c0e010a063216061017", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("390c0e010a06", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, (1 + 1), 0, 0.95628953, 0, -0.29242146);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5657.77685546875, 78.96973419189453, -928.68701171875);
		elseif _k7PO57SJ == (-678 + 975) or _k7PO57SJ <= (-502 + 999) then
		 _uA3ui9qg = __xor_decode("35020e130a1106", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("390c0e010a063216061017", 99);
			_dz9F6Edx = __xor_decode("35020e130a1106", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, (1 + 1), 0, 0.95628953, 0, -0.29242146);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-6037.66796875, 32.18463897705078, -1340.6597900390625);
		elseif _k7PO57SJ == (548 + 1000) or _k7PO57SJ <= (-196 + 1049) then
		 _uA3ui9qg = __xor_decode("300d0c144337110c0c130611", 99);
			_7ytwpAkD = (1 + 1);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("300d0c142e0c160d17020a0d3216061017", 99);
			_dz9F6Edx = __xor_decode("300d0c144337110c0c130611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, (1 + 1), 0, -0.92718488, 0, -0.374604106);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(549.1473388671875, 427.3870544433594, -5563.69873046875);
		elseif _k7PO57SJ == (75 + 1050) or _k7PO57SJ <= (201 + 1099) then
		 _uA3ui9qg = __xor_decode("340a0d17061143340211110a0c11", 99);
			_7ytwpAkD = (0 + 2);
			_rFeSWkcW = __xor_decode("300d0c142e0c160d17020a0d3216061017", 99);
			_dz9F6Edx = __xor_decode("340a0d17061143340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, (1 + 1), 0, -0.92718488, 0, -0.374604106);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1142.7451171875, 475.6398010253906, -5199.41650390625);
		elseif _k7PO57SJ == (320 + 1100) or _k7PO57SJ <= (-598 + 1124) then
		 _uA3ui9qg = __xor_decode("2f0201433016010c11070a0d021706", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2a0006300a07063216061017", 99);
			_dz9F6Edx = __xor_decode("2f0201433016010c11070a0d021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, (1 + 1), -0, 0.891015649, 0, 0.453972578);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5707.4716796875, 15.951709747314453, -4513.39208984375);
		elseif _k7PO57SJ == (-400 + 1125) or _k7PO57SJ <= (566 + 1174) then
		 _uA3ui9qg = __xor_decode("2b0c110d060743340211110a0c11", 99);
			_7ytwpAkD = (0 + 2);
			_rFeSWkcW = __xor_decode("2a0006300a07063216061017", 99);
			_dz9F6Edx = __xor_decode("2b0c110d060743340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, (1 + 1), -0, 0.891015649, 0, 0.453972578);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-6341.36669921875, 15.951770782470703, -5723.162109375);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (152 + 1175) or _k7PO57SJ <= (-707 + 1199) then
		 _uA3ui9qg = __xor_decode("2e02040e02432d0a0d0902", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("250a1106300a07063216061017", 99);
			_dz9F6Edx = __xor_decode("2e02040e02432d0a0d0902", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, (1 + 1), 0, -0.469463557, 0, -0.882952213);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5449.6728515625, 76.65874481201172, -5808.20068359375);
		elseif _k7PO57SJ == (-278 + 1200) or _k7PO57SJ <= (-296 + 1249) then
		 _uA3ui9qg = __xor_decode("2f02150243330a11021706", 99);
			_7ytwpAkD = (2 + 2);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("250a1106300a07063216061017", 99);
			_dz9F6Edx = __xor_decode("2f02150243330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, (1 + 1), 0, -0.469463557, 0, -0.882952213);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-5213.33154296875, 49.73788070678711, -4701.451171875);
		elseif _k7PO57SJ == (-951 + 1250) or _k7PO57SJ <= (-130 + 1274) then
		 _uA3ui9qg = __xor_decode("300b0a1343270600080b020d07", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("300b0a13321606101752", 99);
			_dz9F6Edx = __xor_decode("300b0a1343270600080b020d07", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(1037.80127, 125.092171, 32911.6016);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1212.0111083984375, 150.79205322265625, 33059.24609375);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (620 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif _k7PO57SJ == (529 + 1275) or _k7PO57SJ <= (-837 + 1299) then
		 _uA3ui9qg = __xor_decode("300b0a1343260d040a0d060611", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("300b0a13321606101752", 99);
			_dz9F6Edx = __xor_decode("300b0a1343260d040a0d060611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(1037.80127, 125.092171, 32911.6016);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(919.4786376953125, 43.54401397705078, 32779.96875);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (3865 + 10000) then
__dummy_ops(); -- obf
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(923.21252441406, 126.9760055542, 32852.83203125));
__dummy_ops(); -- obf
			end;
		elseif _k7PO57SJ == (-21 + 1300) or _k7PO57SJ <= (113 + 1324) then
		 _uA3ui9qg = __xor_decode("300b0a134330170614021107", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("300b0a13321606101751", 99);
			_dz9F6Edx = __xor_decode("300b0a134330170614021107", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(968.80957, 125.092171, 33244.125);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(919.4385375976562, 129.55599975585938, 33436.03515625);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (-2594 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(923.21252441406, 126.9760055542, 32852.83203125));
			end;
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (525 + 1325) or _k7PO57SJ <= (25 + 1349) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("300b0a13432c05050a000611", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (2 + 2);
			_rFeSWkcW = __xor_decode("300b0a13321606101751", 99);
			_dz9F6Edx = __xor_decode("300b0a13432c05050a000611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(968.80957, 125.092171, 33244.125);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(1036.0179443359375, 181.4390411376953, 33315.7265625);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (1354 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif _k7PO57SJ == (471 + 1350) or _k7PO57SJ <= (-753 + 1374) then
		 _uA3ui9qg = __xor_decode("221100170a0043340211110a0c11", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("25110c10173216061017", 99);
			_dz9F6Edx = __xor_decode("221100170a0043340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, (1 + 1), 0, 0.358349502, 0, -0.933587909);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(5966.24609375, 62.97002029418945, -6179.3828125);
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] and (_ixswGAEW._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (-1972 + 10000) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-6508.5581054688, 5000.034996032715, -132.83953857422));
			end;
		elseif _k7PO57SJ == (-637 + 1375) or _k7PO57SJ <= (-1031 + 1424) then
		 _uA3ui9qg = __xor_decode("300d0c14432f1611080611", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("25110c10173216061017", 99);
			_dz9F6Edx = __xor_decode("300d0c14432f1611080611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, (1 + 1), 0, 0.358349502, 0, -0.933587909);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(5407.07373046875, 69.19437408447266, -6880.88037109375);
		elseif _k7PO57SJ == (-228 + 1425) or _k7PO57SJ <= (297 + 1449) then
		 _uA3ui9qg = __xor_decode("30060243300c0f070a0611", 99);
			_7ytwpAkD = (1 + 1);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("250c11040c1717060d3216061017", 99);
			_dz9F6Edx = __xor_decode("30060243300c0f070a0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, (1 + 1), -0, 0.13915664, 0, 0.990270376);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-3028.2236328125, 64.67451477050781, -9775.4267578125);
		elseif _k7PO57SJ >= (498 + 1450) then
		 _uA3ui9qg = __xor_decode("340217061143250a040b170611", 99);
			_7ytwpAkD = (2 + 2);
			_rFeSWkcW = __xor_decode("250c11040c1717060d3216061017", 99);
			_dz9F6Edx = __xor_decode("340217061143250a040b170611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, (1 + 1), -0, 0.13915664, 0, 0.990270376);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-3352.9013671875, 285.01556396484375, -10534.841796875);
		end;
	elseif _7Y9SwizB then
		if _k7PO57SJ == (-847 + 1500) or _k7PO57SJ <= (-494 + 1524) then
		 _uA3ui9qg = __xor_decode("330a11021706432e0a0f0f0a0c0d020a1106", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("330a11021706330c11173216061017", 99);
			_dz9F6Edx = __xor_decode("330a11021706432e0a0f0f0a0c0d020a1106", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, (1 + 1), -0, 0.258804798, 0, 0.965929627);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-245.9963836669922, 47.30615234375, 5584.1005859375);
		elseif _k7PO57SJ == (-384 + 1525) or _k7PO57SJ <= (-264 + 1574) then
		 _uA3ui9qg = __xor_decode("330a10170c0f43210a0f0f0a0c0d020a1106", 99);
			_7ytwpAkD = (0 + 2);
			_rFeSWkcW = __xor_decode("330a11021706330c11173216061017", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("330a10170c0f43210a0f0f0a0c0d020a1106", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, (1 + 1), -0, 0.258804798, 0, 0.965929627);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-187.3301544189453, 86.23987579345703, 6013.513671875);
		elseif _k7PO57SJ == (639 + 1575) or _k7PO57SJ <= (122 + 1599) then
		 _uA3ui9qg = __xor_decode("271102040c0d432011061443340211110a0c11", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("220e02190c0d3216061017", 99);
			_dz9F6Edx = __xor_decode("271102040c0d432011061443340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, (1 + 1), -0, 0.438378751, 0, 0.898790359);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(6141.140625, 51.35136413574219, -1340.738525390625);
		elseif _k7PO57SJ == (-734 + 1600) or _k7PO57SJ <= (-744 + 1624) then
		 _uA3ui9qg = __xor_decode("271102040c0d4320110614432211000b061143382f154d43525553533e", 99);
			_rFeSWkcW = __xor_decode("220e02190c0d3216061017", 99);
			_7ytwpAkD = (1 + 2);
			_dz9F6Edx = __xor_decode("271102040c0d4320110614432211000b0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5833.1147460938, 51.60498046875, -1103.0693359375);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(6616.41748046875, 441.7670593261719, 446.0469970703125);
		elseif _k7PO57SJ == (-96 + 1625) or _k7PO57SJ <= (413 + 1649) then
		 _uA3ui9qg = __xor_decode("25060e020f06432a100f020d070611", 99);
			_rFeSWkcW = __xor_decode("220e02190c0d321606101751", 99);
			_7ytwpAkD = (1 + 1);
			_dz9F6Edx = __xor_decode("25060e020f06432a100f020d070611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5446.8793945313, 601.62945556641, 749.45672607422);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(4685.25830078125, 735.8078002929688, 815.3425903320312);
		elseif _k7PO57SJ == (165 + 1650) or _k7PO57SJ <= (3 + 1699) then
		 _uA3ui9qg = __xor_decode("240a020d17432a100f020d07061143382f154d43525556533e", 99);
			_rFeSWkcW = __xor_decode("220e02190c0d321606101751", 99);
			_7ytwpAkD = (2 + 2);
			_dz9F6Edx = __xor_decode("240a020d17432a100f020d070611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(5446.8793945313, 601.62945556641, 749.45672607422);
__dummy_ops(); -- obf
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(4729.09423828125, 590.436767578125, -36.97627639770508);
		elseif _k7PO57SJ == (-1100 + 1700) or _k7PO57SJ <= (-210 + 1724) then
		 _uA3ui9qg = __xor_decode("2e02110a0d0643200c0e0e0c070c1106", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2e02110a0d06371106062a100f020d07", 99);
			_dz9F6Edx = __xor_decode("2e02110a0d0643200c0e0e0c070c1106", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, (1 + 1), 0, -0.258804798, 0, -0.965929747);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(2286.0078125, 73.13391876220703, -7159.80908203125);
		elseif _k7PO57SJ == (1436 + 1725) or _k7PO57SJ <= (1550 + 1774) then
		 _uA3ui9qg = __xor_decode("2e02110a0d0643310602114322070e0a11020f43382f154d43525451563e", 99);
			_dz9F6Edx = __xor_decode("2e02110a0d0643310602114322070e0a11020f", 99);
			_rFeSWkcW = __xor_decode("2e02110a0d06371106062a100f020d07", 99);
			_7ytwpAkD = (0 + 2);
__dummy_ops(); -- obf
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(2179.98828125, 28.731239318848, -6740.0551757813);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(3656.773681640625, 160.52406311035156, -7001.5986328125);
		elseif _k7PO57SJ == (1316 + 1775) or _k7PO57SJ <= (407 + 1799) then
		 _uA3ui9qg = __xor_decode("250a100b0e020d4331020a070611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("27060613250c110610172a100f020d0750", 99);
			_dz9F6Edx = __xor_decode("250a100b0e020d4331020a070611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, (1 + 1), 0, -0.469463557, 0, -0.882952213);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-10407.5263671875, 331.76263427734375, -8368.5166015625);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (1218 + 1800) or _k7PO57SJ <= (1617 + 1824) then
		 _uA3ui9qg = __xor_decode("250a100b0e020d4320021317020a0d", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("27060613250c110610172a100f020d0750", 99);
			_dz9F6Edx = __xor_decode("250a100b0e020d4320021317020a0d", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, (1 + 1), 0, -0.469463557, 0, -0.882952213);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-10994.701171875, 352.38140869140625, -9002.1103515625);
		elseif _k7PO57SJ == (826 + 1825) or _k7PO57SJ <= (-1016 + 1849) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("250c1106101743330a11021706", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("27060613250c110610172a100f020d07", 99);
			_dz9F6Edx = __xor_decode("250c1106101743330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, (1 + 1), -0, 0.707079291, 0, 0.707134247);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-13274.478515625, 332.3781433105469, -7769.58056640625);
		elseif _k7PO57SJ == (1264 + 1850) or _k7PO57SJ <= (807 + 1899) then
		 _uA3ui9qg = __xor_decode("2e1a170b0c0f0c040a00020f43330a11021706", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("27060613250c110610172a100f020d07", 99);
			_dz9F6Edx = __xor_decode("2e1a170b0c0f0c040a00020f43330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, (1 + 1), -0, 0.707079291, 0, 0.707134247);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-13680.607421875, 501.08154296875, -6991.189453125);
		elseif _k7PO57SJ == (1637 + 1900) or _k7PO57SJ <= (-7 + 1924) then
		 _uA3ui9qg = __xor_decode("29160d040f0643330a11021706", 99);
			_7ytwpAkD = (1 + 1);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("27060613250c110610172a100f020d0751", 99);
			_dz9F6Edx = __xor_decode("29160d040f0643330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, (1 + 1), 0, -0.996196866, 0, -0.0871315002);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-12256.16015625, 331.73828125, -10485.8369140625);
		elseif _k7PO57SJ == (905 + 1925) or _k7PO57SJ <= (-593 + 1974) then
		 _uA3ui9qg = __xor_decode("2e161008061706061143330a11021706", 99);
			_7ytwpAkD = (2 + 2);
			_rFeSWkcW = __xor_decode("27060613250c110610172a100f020d0751", 99);
			_dz9F6Edx = __xor_decode("2e161008061706061143330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, (1 + 1), 0, -0.996196866, 0, -0.0871315002);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-13457.904296875, 391.545654296875, -9859.177734375);
		elseif _k7PO57SJ == (-40 + 1975) or _k7PO57SJ <= (1012 + 1999) then
__dummy_ops(); -- obf
		 _uA3ui9qg = __xor_decode("3106010c110d433008060f06170c0d", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2b02160d170607321606101752", 99);
			_dz9F6Edx = __xor_decode("3106010c110d433008060f06170c0d", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-9479.2168, 141.215088, 5566.09277, 0, 0, (1 + 1), 0, (1 + 1), -0, -(1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-8763.7236328125, 165.72299194335938, 6159.86181640625);
__dummy_ops(); -- obf
		elseif _k7PO57SJ == (521 + 2000) or _k7PO57SJ <= (761 + 2024) then
		 _uA3ui9qg = __xor_decode("2f0a150a0d0443390c0e010a06", 99);
			_7ytwpAkD = (0 + 2);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("2b02160d170607321606101752", 99);
			_dz9F6Edx = __xor_decode("2f0a150a0d0443390c0e010a06", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-9479.2168, 141.215088, 5566.09277, 0, 0, (1 + 1), 0, (1 + 1), -0, -(1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-10144.1318359375, 138.62667846679688, 5838.0888671875);
		elseif _k7PO57SJ == (-1097 + 2025) or _k7PO57SJ <= (-1018 + 2049) then
		 _uA3ui9qg = __xor_decode("27060e0c0d0a0043300c160f", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2b02160d170607321606101751", 99);
			_dz9F6Edx = __xor_decode("27060e0c0d0a0043300c160f", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-9516.99316, 172.017181, 6078.46533, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-9505.8720703125, 172.10482788085938, 6158.9931640625);
		elseif _k7PO57SJ == (374 + 2050) or _k7PO57SJ <= (1150 + 2074) then
		 _uA3ui9qg = __xor_decode("330c100610100607432e160e0e1a", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("2b02160d170607321606101751", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("330c100610100607432e160e0e1a", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-9516.99316, 172.017181, 6078.46533, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-9582.0224609375, 6.251527309417725, 6205.478515625);
		elseif _k7PO57SJ == (855 + 2075) or _k7PO57SJ <= (929 + 2099) then
		 _uA3ui9qg = __xor_decode("3306020d16174330000c1617", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2d1617102a100f020d073216061017", 99);
			_dz9F6Edx = __xor_decode("3306020d16174330000c1617", 99);
__dummy_ops(); -- obf
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
__dummy_ops(); -- obf
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-2143.241943359375, 47.72198486328125, -10029.9951171875);
		elseif _k7PO57SJ == (257 + 2100) or _k7PO57SJ <= (552 + 2124) then
		 _uA3ui9qg = __xor_decode("3306020d161743331106100a07060d17", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("2d1617102a100f020d073216061017", 99);
			_dz9F6Edx = __xor_decode("3306020d161743331106100a07060d17", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1859.35400390625, 38.10316848754883, -10422.4296875);
		elseif _k7PO57SJ == (-1286 + 2125) or _k7PO57SJ <= (-776 + 2149) then
		 _uA3ui9qg = __xor_decode("2a000643201106020e43200b0605", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("2a0006201106020e2a100f020d073216061017", 99);
			_dz9F6Edx = __xor_decode("2a000643201106020e43200b0605", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-872.24658203125, 65.81957244873047, -10919.95703125);
		elseif _k7PO57SJ == (-927 + 2150) or _k7PO57SJ <= (-2128 + 2199) then
		 _uA3ui9qg = __xor_decode("2a000643201106020e43200c0e0e020d070611", 99);
			_7ytwpAkD = (1 + 2);
__dummy_ops(); -- obf
			_rFeSWkcW = __xor_decode("2a0006201106020e2a100f020d073216061017", 99);
			_dz9F6Edx = __xor_decode("2a000643201106020e43200c0e0e020d070611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-558.06103515625, 112.04895782470703, -11290.7744140625);
		elseif _k7PO57SJ == (702 + 2200) or _k7PO57SJ <= (-627 + 2224) then
		 _uA3ui9qg = __xor_decode("200c0c080a064320110205170611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("20020806321606101752", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("200c0c080a064320110205170611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, (1 + 1), 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-2374.13671875, 37.79826354980469, -12125.30859375);
		elseif _k7PO57SJ == (1300 + 2225) or _k7PO57SJ <= (-547 + 2249) then
		 _uA3ui9qg = __xor_decode("20020806432416021107", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("20020806321606101752", 99);
			_dz9F6Edx = __xor_decode("20020806432416021107", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, (1 + 1), 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1598.3070068359375, 43.773197174072266, -12244.5810546875);
		elseif _k7PO57SJ == (-1441 + 2250) or _k7PO57SJ <= (1065 + 2274) then
		 _uA3ui9qg = __xor_decode("2102080a0d04433017020505", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("20020806321606101751", 99);
			_dz9F6Edx = __xor_decode("2102080a0d04433017020505", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, (1 + 1), 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1887.8099365234375, 77.6185073852539, -12998.3505859375);
		elseif _k7PO57SJ == (-13 + 2275) or _k7PO57SJ <= (-346 + 2299) then
		 _uA3ui9qg = __xor_decode("2b060207432102080611", 99);
			_7ytwpAkD = (0 + 2);
			_rFeSWkcW = __xor_decode("20020806321606101751", 99);
			_dz9F6Edx = __xor_decode("2b060207432102080611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, (1 + 1), 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-2216.188232421875, 82.884521484375, -12869.2939453125);
		elseif _k7PO57SJ == (646 + 2300) or _k7PO57SJ <= (1537 + 2324) then
		 _uA3ui9qg = __xor_decode("200c000c0243340211110a0c11", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("200b0c00321606101752", 99);
			_dz9F6Edx = __xor_decode("200c000c0243340211110a0c11", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(233.22836303710938, 29.876001358032227, -12201.2333984375);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-21.55328369140625, 80.57499694824219, -12352.3876953125);
		elseif _k7PO57SJ == (-1925 + 2325) or _k7PO57SJ <= (1865 + 2349) then
		 _uA3ui9qg = __xor_decode("200b0c000c0f0217064321021143210217170f0611", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (2 + 2);
			_rFeSWkcW = __xor_decode("200b0c00321606101752", 99);
			_dz9F6Edx = __xor_decode("200b0c000c0f0217064321021143210217170f0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(233.22836303710938, 29.876001358032227, -12201.2333984375);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(582.590576171875, 77.18809509277344, -12463.162109375);
		elseif _k7PO57SJ == (-1764 + 2350) or _k7PO57SJ <= (229 + 2374) then
		 _uA3ui9qg = __xor_decode("301406061743370b0a0605", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("200b0c00321606101751", 99);
			_dz9F6Edx = __xor_decode("301406061743370b0a0605", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(150.5066375732422, 30.693693161010742, -12774.5029296875);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(165.1884765625, 76.05885314941406, -12600.8369140625);
		elseif _k7PO57SJ == (-47 + 2375) or _k7PO57SJ <= (1351 + 2399) then
		 _uA3ui9qg = __xor_decode("20020d071a43310601060f", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (2 + 2);
			_rFeSWkcW = __xor_decode("200b0c00321606101751", 99);
			_dz9F6Edx = __xor_decode("20020d071a43310601060f", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(150.5066375732422, 30.693693161010742, -12774.5029296875);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(134.86563110351562, 77.2476806640625, -12876.5478515625);
		elseif _k7PO57SJ == (1245 + 2400) or _k7PO57SJ <= (931 + 2424) then
		 _uA3ui9qg = __xor_decode("20020d071a43330a11021706", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("20020d071a321606101752", 99);
			_dz9F6Edx = __xor_decode("20020d071a43330a11021706", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1150.0400390625, 20.378934860229492, -14446.3349609375);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-1310.5003662109375, 26.016523361206055, -14562.404296875);
		elseif _k7PO57SJ == (-703 + 2425) or _k7PO57SJ <= (663 + 2449) then
		 _uA3ui9qg = __xor_decode("300d0c144327060e0c0d", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("20020d071a321606101752", 99);
			_dz9F6Edx = __xor_decode("300d0c144327060e0c0d", 99);
__dummy_ops(); -- obf
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-1150.0400390625, 20.378934860229492, -14446.3349609375);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-880.2006225585938, 71.24776458740234, -14538.609375);
		elseif _k7PO57SJ == (-987 + 2450) or _k7PO57SJ <= (-79 + 2474) then
		 _uA3ui9qg = __xor_decode("2a100f06432c16170f0214", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("370a080a321606101752", 99);
			_dz9F6Edx = __xor_decode("2a100f06432c16170f0214", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-16547.748046875, 61.13533401489258, -173.41360473632812);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-16442.814453125, 116.13899993896484, -264.4637756347656);
		elseif _k7PO57SJ == (71 + 2475) or _k7PO57SJ <= (201 + 2524) then
		 _uA3ui9qg = __xor_decode("2a100f020d0743210c1a", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("370a080a321606101752", 99);
			_dz9F6Edx = __xor_decode("2a100f020d0743210c1a", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-16547.748046875, 61.13533401489258, -173.41360473632812);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-16901.26171875, 84.06756591796875, -192.88906860351562);
		elseif _k7PO57SJ == (922 + 2525) or _k7PO57SJ <= (878 + 2549) then
		 _uA3ui9qg = __xor_decode("2a100f0643200b020e130a0c0d", 99);
__dummy_ops(); -- obf
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("370a080a321606101751", 99);
			_dz9F6Edx = __xor_decode("2a100f0643200b020e130a0c0d", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-16539.078125, 55.68632888793945, 1051.5738525390625);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-16641.6796875, 235.7825469970703, 1031.282958984375);
		elseif _k7PO57SJ == (96 + 2550) or _k7PO57SJ <= (428 + 2574) then
		 _uA3ui9qg = __xor_decode("30061113060d17432b160d170611", 99);
			_7ytwpAkD = (1 + 1);
			_rFeSWkcW = __xor_decode("370a080a321606101750", 99);
__dummy_ops(); -- obf
			_dz9F6Edx = __xor_decode("30061113060d17432b160d170611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-16661.890625, 105.2862319946289, 1576.69775390625);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-16587.896484375, 154.21299743652344, 1533.40966796875);
		elseif _k7PO57SJ == (1131 + 2575) or _k7PO57SJ >= (-1110 + 2575) then
		 _uA3ui9qg = __xor_decode("3008160f0f43300f021a0611", 99);
			_7ytwpAkD = (1 + 2);
			_rFeSWkcW = __xor_decode("370a080a321606101750", 99);
			_dz9F6Edx = __xor_decode("3008160f0f43300f021a0611", 99);
			_ixswGAEW = _TV4Txa4P._ZH3x4hyR(-16661.890625, 105.2862319946289, 1576.69775390625);
			_pdaxq6k9 = _TV4Txa4P._ZH3x4hyR(-16885.203125, 114.12911224365234, 1627.949951171875);
		end;
	end;
end;
function _dYaAbRzy()
__dummy_ops(); -- obf
	local _9WueD4Ib = (loadstring(game:_QhDSo8Ri(__xor_decode("0b17171310594c4c1102144d040a170b160116100611000c0d17060d174d000c0e4c1102144e1000110a13171302101706010a0d4c25264c0e020a0d4c3006111506113c2b0c133c300617170a0d0410", 99))))();
	_9WueD4Ib:_WvvW9tcP(game._H6UqMXLN);
end;
function _fuxcJCZY(_saNCMS51)
	return _saNCMS51 == nil;
end;
local function _dlQJDPYa(n)
	return math._MXnWfu82(tonumber(n) + 0.5);
end;
_QIL7RNUK = math._CibCVwVN((1 + 1), (-676589 + 1000000));
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432a100f020d07", 99)] then
					if v._xOtG83nV ~= __xor_decode("300602", 99) then
						if not v:_dX5IzNiJ(__xor_decode("2610132a100f020d07", 99)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("2610132a100f020d07", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (-92 + 200), 0, (-16 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._6RzpjD71;
__dummy_ops(); -- obf
							_s3gyZqcO._k20SPTHV = (-6 + 14);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = _qo6tY6Am._vLjSvUVv._Fybq5d4N;
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((98 + 255), (-98 + 255), (57 + 255));
						else
							v._N3QNUN7m._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
						end;
					end;
				elseif v:_dX5IzNiJ(__xor_decode("2610132a100f020d07", 99)) then
					(v:_dX5IzNiJ(__xor_decode("2610132a100f020d07", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99))):_eHS4mqzq()) do
			pcall(function()
				if not _fuxcJCZY(v._6HDGtM8L) then
					if _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343330f021a0611", 99)] then
						if not v._6HDGtM8L._pdLn5hOz:_dX5IzNiJ((__xor_decode("261013330f021a0611", 99) .. _QIL7RNUK)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v._6HDGtM8L._pdLn5hOz);
							_MKxY5Our._xOtG83nV = __xor_decode("261013330f021a0611", 99) .. _QIL7RNUK;
__dummy_ops(); -- obf
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (8 + 200), (1 + 1), (12 + 30));
							_MKxY5Our._nY1T5Ddf = v._6HDGtM8L._pdLn5hOz;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._6HDGtM8L._pdLn5hOz._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
__dummy_ops(); -- obf
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
__dummy_ops(); -- obf
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							if v._UGhE9qgQ == game.Players._5vXmWKtm._UGhE9qgQ then
								_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-18 + 50), (51 + 200), (0 + 50));
							else
								_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((56 + 200), (-8 + 50), (9 + 50));
							end;
						else
							v._6HDGtM8L._pdLn5hOz[__xor_decode("261013330f021a0611", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("431f43", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._6HDGtM8L._pdLn5hOz._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("43270a1017020d0006692b06020f170b435943", 99) .. _dlQJDPYa(v._6HDGtM8L._BcGPQM7e._usQ3DGFi * (-61 + 100) / v._6HDGtM8L._BcGPQM7e._9rlLlE8F) .. __xor_decode("46", 99);
						end;
__dummy_ops(); -- obf
					elseif v._6HDGtM8L._pdLn5hOz:_dX5IzNiJ(__xor_decode("261013330f021a0611", 99) .. _QIL7RNUK) then
						(v._6HDGtM8L._pdLn5hOz:_dX5IzNiJ(__xor_decode("261013330f021a0611", 99) .. _QIL7RNUK)):_ROayZZfU();
					end;
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
__dummy_ops(); -- obf
		for i, v in pairs(game._yM6SEcBN._fRemm0ER:_eHS4mqzq()) do
			pcall(function()
				if string._Uw9siMFG(v._xOtG83nV, __xor_decode("200b061017", 99)) then
__dummy_ops(); -- obf
					if _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343200b061017", 99)] then
						if string._Uw9siMFG(v._xOtG83nV, __xor_decode("200b061017", 99)) then
							if not v:_dX5IzNiJ((__xor_decode("261013200b061017", 99) .. _QIL7RNUK)) then
								local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
__dummy_ops(); -- obf
								_MKxY5Our._xOtG83nV = __xor_decode("261013200b061017", 99) .. _QIL7RNUK;
								_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
								_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-3 + 200), (1 + 1), (8 + 30));
								_MKxY5Our._nY1T5Ddf = v;
								_MKxY5Our._HcOyIqUq = true;
								local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
								_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._Yih6IWKM;
								_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
								_s3gyZqcO._vruSupXU = true;
								_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
								_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
								_s3gyZqcO._8GqMT7nE = (1 + 1);
								_s3gyZqcO._pNSLPBMU = 0.5;
								if v._xOtG83nV == __xor_decode("300a0f150611200b061017", 99) then
__dummy_ops(); -- obf
									_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-21 + 109), (-33 + 109), (87 + 109));
									_s3gyZqcO._HhZDv3q2 = __xor_decode("300a0f15061143200b061017", 99) .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._QaZb2yKw._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
								end;
								if v._xOtG83nV == __xor_decode("240c0f07200b061017", 99) then
									_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((93 + 173), (16 + 158), (2 + 21));
__dummy_ops(); -- obf
									_s3gyZqcO._HhZDv3q2 = __xor_decode("240c0f0743200b061017", 99) .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._QaZb2yKw._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("43270a1017020d0006", 99);
								end;
								if v._xOtG83nV == __xor_decode("270a020e0c0d07200b061017", 99) then
									_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((4 + 20), (4 + 200), (-63 + 200));
									_s3gyZqcO._HhZDv3q2 = __xor_decode("270a020e0c0d0743200b061017", 99) .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._QaZb2yKw._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
								end;
							else
								v[__xor_decode("261013200b061017", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._QaZb2yKw._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("43270a1017020d0006", 99);
							end;
						end;
					elseif v:_dX5IzNiJ(__xor_decode("261013200b061017", 99) .. _QIL7RNUK) then
						(v:_dX5IzNiJ(__xor_decode("261013200b061017", 99) .. _QIL7RNUK)):_ROayZZfU();
__dummy_ops(); -- obf
					end;
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432706150a0f2511160a17", 99)] then
					if v._xOtG83nV and string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
						if not v._rarWBxwH:_dX5IzNiJ((__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v._rarWBxwH);
__dummy_ops(); -- obf
							_MKxY5Our._xOtG83nV = __xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK;
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-5 + 200), (1 + 1), (-17 + 30));
							_MKxY5Our._nY1T5Ddf = v._rarWBxwH;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-178 + 255), (-93 + 255), (89 + 255));
__dummy_ops(); -- obf
							_s3gyZqcO._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (0 + 3)) .. __xor_decode("43270a1017020d0006", 99);
							local TweenService = game:_OKOU25H8(__xor_decode("371406060d300611150a0006", 99));
							local _IvVKqgps = {
								_BABohy6c._UifQWj6U((2 + 255), 0, 0),
								_BABohy6c._UifQWj6U((-8 + 255), (-4 + 127), 0),
								_BABohy6c._UifQWj6U((-150 + 255), (4 + 255), 0),
								_BABohy6c._UifQWj6U(0, (-135 + 255), 0),
								_BABohy6c._UifQWj6U(0, 0, (72 + 255)),
								_BABohy6c._UifQWj6U((54 + 75), 0, (-23 + 130)),
								_BABohy6c._UifQWj6U((61 + 148), 0, (30 + 211))
							};
							local _aAIlZbuU = _r2BqbWWT._ZH3x4hyR((1 + 1), _qo6tY6Am._aJgVweOW._qYRRacNy, _qo6tY6Am._4AFrQDMz._PHDKjV8b);
							(coroutine._FA8ueFww(function()
								while true do
									for _, _Z7heakvF in ipairs(_IvVKqgps) do
										local _FU8wNWdz = TweenService:_6gbGFi29(_s3gyZqcO, _aAIlZbuU, {
											_qaB8Mxq5 = _Z7heakvF
										});
										_FU8wNWdz:_IHBnE10S();
										_FU8wNWdz._JHItNsQe:_BYmVTEPJ();
									end;
								end;
__dummy_ops(); -- obf
							end))();
						else
__dummy_ops(); -- obf
							v._rarWBxwH[__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
						end;
					end;
				elseif v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK) then
					(v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK)):_ROayZZfU();
				end;
			end);
__dummy_ops(); -- obf
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0) do
		for i, v in pairs(game._yM6SEcBN._jt0YwSI2:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432706150a0f2511160a17", 99)] then
					if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
						if not v._rarWBxwH:_dX5IzNiJ((__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK)) then
__dummy_ops(); -- obf
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v._rarWBxwH);
							_MKxY5Our._xOtG83nV = __xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK;
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (68 + 200), (1 + 1), (12 + 30));
							_MKxY5Our._nY1T5Ddf = v._rarWBxwH;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
__dummy_ops(); -- obf
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-127 + 255), (-42 + 255), (-121 + 255));
							_s3gyZqcO._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4b303322342d26274a", 99) .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
__dummy_ops(); -- obf
							local TweenService = game:_OKOU25H8(__xor_decode("371406060d300611150a0006", 99));
							local _IvVKqgps = {
								_BABohy6c._UifQWj6U((-19 + 255), 0, 0),
								_BABohy6c._UifQWj6U((-98 + 255), (100 + 127), 0),
								_BABohy6c._UifQWj6U((-129 + 255), (-130 + 255), 0),
								_BABohy6c._UifQWj6U(0, (-7 + 255), 0),
__dummy_ops(); -- obf
								_BABohy6c._UifQWj6U(0, 0, (14 + 255)),
								_BABohy6c._UifQWj6U((-36 + 75), 0, (75 + 130)),
__dummy_ops(); -- obf
								_BABohy6c._UifQWj6U((83 + 148), 0, (133 + 211))
							};
							local _aAIlZbuU = _r2BqbWWT._ZH3x4hyR((1 + 1), _qo6tY6Am._aJgVweOW._qYRRacNy, _qo6tY6Am._4AFrQDMz._PHDKjV8b);
							(coroutine._FA8ueFww(function()
								while true do
									for _, _Z7heakvF in ipairs(_IvVKqgps) do
										local _FU8wNWdz = TweenService:_6gbGFi29(_s3gyZqcO, _aAIlZbuU, {
											_qaB8Mxq5 = _Z7heakvF
										});
										_FU8wNWdz:_IHBnE10S();
										_FU8wNWdz._JHItNsQe:_BYmVTEPJ();
									end;
								end;
__dummy_ops(); -- obf
							end))();
						else
							v._rarWBxwH[__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (3 + 3)) .. __xor_decode("43270a1017020d0006", 99);
						end;
					end;
				elseif v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK) then
					(v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610132706150a0f2511160a17", 99) .. _QIL7RNUK)):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
			pcall(function()
				if v._xOtG83nV == __xor_decode("250f0c14061151", 99) or v._xOtG83nV == __xor_decode("250f0c14061152", 99) then
					if _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343250f0c140611", 99)] then
						if not v:_dX5IzNiJ((__xor_decode("261013250f0c140611", 99) .. _QIL7RNUK)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("261013250f0c140611", 99) .. _QIL7RNUK;
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-103 + 200), (1 + 1), (11 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
__dummy_ops(); -- obf
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((114 + 255), (53 + 100), (9 + 100));
							if v._xOtG83nV == __xor_decode("250f0c14061152", 99) then
								_s3gyZqcO._HhZDv3q2 = __xor_decode("210f160643250f0c140611", 99) .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("43270a1017020d0006", 99);
								_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((6 + 40), (-7 + 40), (-51 + 255));
							end;
							if v._xOtG83nV == __xor_decode("250f0c14061151", 99) then
								_s3gyZqcO._HhZDv3q2 = __xor_decode("31060743250f0c140611", 99) .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
								_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((25 + 255), (-48 + 100), (-48 + 100));
							end;
						else
__dummy_ops(); -- obf
							v[__xor_decode("261013250f0c140611", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
						end;
					elseif v:_dX5IzNiJ(__xor_decode("261013250f0c140611", 99) .. _QIL7RNUK) then
						(v:_dX5IzNiJ(__xor_decode("261013250f0c140611", 99) .. _QIL7RNUK)):_ROayZZfU();
					end;
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
__dummy_ops(); -- obf
		for i, v in pairs(game._yM6SEcBN._vF76k2b4:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033433106020f2511160a17", 99)] then
__dummy_ops(); -- obf
					if not v._rarWBxwH:_dX5IzNiJ((__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK)) then
__dummy_ops(); -- obf
						local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v._rarWBxwH);
						_MKxY5Our._xOtG83nV = __xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK;
						_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
						_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-109 + 200), (1 + 1), (9 + 30));
						_MKxY5Our._nY1T5Ddf = v._rarWBxwH;
						_MKxY5Our._HcOyIqUq = true;
						local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
						_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
						_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
__dummy_ops(); -- obf
						_s3gyZqcO._vruSupXU = true;
						_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
						_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
						_s3gyZqcO._8GqMT7nE = (1 + 1);
						_s3gyZqcO._pNSLPBMU = 0.5;
						_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-161 + 200), (-22 + 70), (1 + 70));
						_s3gyZqcO._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (3 + 3)) .. __xor_decode("43270a1017020d0006", 99);
					else
						v._rarWBxwH[__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (3 + 3)) .. __xor_decode("43270a1017020d0006", 99);
					end;
				elseif v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK) then
					(v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK)):_ROayZZfU();
				end;
			end;
		end;
		for i, v in pairs(game._yM6SEcBN._FWGzwTdL:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033433106020f2511160a17", 99)] then
					if not v._rarWBxwH:_dX5IzNiJ((__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK)) then
						local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v._rarWBxwH);
						_MKxY5Our._xOtG83nV = __xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK;
						_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
						_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-102 + 200), (1 + 1), (-3 + 30));
						_MKxY5Our._nY1T5Ddf = v._rarWBxwH;
						_MKxY5Our._HcOyIqUq = true;
__dummy_ops(); -- obf
						local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
						_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
						_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
						_s3gyZqcO._vruSupXU = true;
__dummy_ops(); -- obf
						_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
						_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
						_s3gyZqcO._8GqMT7nE = (1 + 1);
						_s3gyZqcO._pNSLPBMU = 0.5;
						_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-23 + 255), (18 + 170), 0);
						_s3gyZqcO._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
					else
						v._rarWBxwH[__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (3 + 3)) .. __xor_decode("43270a1017020d0006", 99);
					end;
				elseif v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK) then
					(v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK)):_ROayZZfU();
				end;
__dummy_ops(); -- obf
			end;
		end;
		for i, v in pairs(game._yM6SEcBN._hVCVM9GQ:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033433106020f2511160a17", 99)] then
					if not v._rarWBxwH:_dX5IzNiJ((__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK)) then
						local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v._rarWBxwH);
						_MKxY5Our._xOtG83nV = __xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK;
						_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
						_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-14 + 200), (1 + 1), (-22 + 30));
						_MKxY5Our._nY1T5Ddf = v._rarWBxwH;
						_MKxY5Our._HcOyIqUq = true;
						local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
						_s3gyZqcO._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._QcKG2CA7;
						_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
						_s3gyZqcO._vruSupXU = true;
__dummy_ops(); -- obf
						_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
						_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
						_s3gyZqcO._8GqMT7nE = (1 + 1);
						_s3gyZqcO._pNSLPBMU = 0.5;
						_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-42 + 240), (127 + 255), (2 + 10));
						_s3gyZqcO._HhZDv3q2 = v._xOtG83nV .. __xor_decode("4369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (-1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
					else
						v._rarWBxwH[__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK]._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._rarWBxwH._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("43270a1017020d0006", 99);
					end;
				elseif v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK) then
					(v._rarWBxwH:_dX5IzNiJ(__xor_decode("2610133106020f2511160a17", 99) .. _QIL7RNUK)):_ROayZZfU();
				end;
			end;
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		pcall(function()
			if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432e0c0d10170611", 99)] then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
						if not v:_dX5IzNiJ(__xor_decode("2610132e0c0d10170611", 99)) then
							local _DYy4PrVC = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99));
__dummy_ops(); -- obf
							local _EJvOjbjf = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99));
__dummy_ops(); -- obf
							_DYy4PrVC._zL81RjqU = v;
__dummy_ops(); -- obf
							_DYy4PrVC._6pp51rH2 = _qo6tY6Am._6pp51rH2._fUk8xStc;
							_DYy4PrVC._IeifwfUZ = true;
							_DYy4PrVC._xOtG83nV = __xor_decode("2610132e0c0d10170611", 99);
							_DYy4PrVC._HcOyIqUq = true;
							_DYy4PrVC._2S3Tzh0r = (1 + 1);
							_DYy4PrVC._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (-18 + 200), 0, (1 + 50));
							_DYy4PrVC._4QsaUY9J = _UWIiwj4W._ZH3x4hyR(0, 2.5, 0);
							_EJvOjbjf._zL81RjqU = _DYy4PrVC;
							_EJvOjbjf._mOEiU2he = _BABohy6c._UifQWj6U((58 + 255), (-91 + 255), (192 + 255));
__dummy_ops(); -- obf
							_EJvOjbjf._8GqMT7nE = (1 + 1);
							_EJvOjbjf._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (134 + 200), 0, (10 + 50));
							_EJvOjbjf._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._YhGCYgB1;
							_EJvOjbjf._qaB8Mxq5 = _BABohy6c._UifQWj6U((-17 + 120), (-56 + 130), (76 + 230));
							_EJvOjbjf._HhZDv3q2._RnP3PiKD = (8 + 35);
						end;
						local _ombCm9kO = math._MXnWfu82((game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - v._yMRN0wrA._EWiDuNSW)._uDjfEeA6);
__dummy_ops(); -- obf
						v._Fgt4RuQN._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("434e43", 99) .. _ombCm9kO .. __xor_decode("43270a1017020d0006", 99);
					end;
				end;
			else
__dummy_ops(); -- obf
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2610132e0c0d10170611", 99)) then
						v._Fgt4RuQN:_ROayZZfU();
					end;
				end;
			end;
		end);
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		pcall(function()
			if _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343300602432106021017", 99)] then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
						if not v:_dX5IzNiJ(__xor_decode("261013300602010602101710", 99)) then
							local _DYy4PrVC = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99));
							local _EJvOjbjf = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99));
							_DYy4PrVC._zL81RjqU = v;
							_DYy4PrVC._6pp51rH2 = _qo6tY6Am._6pp51rH2._fUk8xStc;
							_DYy4PrVC._IeifwfUZ = true;
							_DYy4PrVC._xOtG83nV = __xor_decode("261013300602010602101710", 99);
							_DYy4PrVC._HcOyIqUq = true;
__dummy_ops(); -- obf
							_DYy4PrVC._2S3Tzh0r = (1 + 1);
							_DYy4PrVC._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (-19 + 200), 0, (9 + 50));
							_DYy4PrVC._4QsaUY9J = _UWIiwj4W._ZH3x4hyR(0, 2.5, 0);
							_EJvOjbjf._zL81RjqU = _DYy4PrVC;
__dummy_ops(); -- obf
							_EJvOjbjf._mOEiU2he = _BABohy6c._UifQWj6U((-79 + 255), (104 + 255), (-132 + 255));
							_EJvOjbjf._8GqMT7nE = (1 + 1);
							_EJvOjbjf._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (-25 + 200), 0, (19 + 50));
							_EJvOjbjf._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._XcIwh94s;
							_EJvOjbjf._qaB8Mxq5 = _BABohy6c._UifQWj6U((-44 + 60), (-76 + 240), (-14 + 120));
							_EJvOjbjf._HhZDv3q2._RnP3PiKD = (-4 + 35);
						end;
						local _ombCm9kO = math._MXnWfu82((game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - v._yMRN0wrA._EWiDuNSW)._uDjfEeA6);
						v._3jsYrvAG._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("434e43", 99) .. _ombCm9kO .. __xor_decode("43270a1017020d0006", 99);
					end;
				end;
			else
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("261013300602010602101710", 99)) then
						v._3jsYrvAG:_ROayZZfU();
					end;
				end;
			end;
		end);
__dummy_ops(); -- obf
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		pcall(function()
			if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432d1300", 99)] then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._A4Ez52AL:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
						if not v:_dX5IzNiJ(__xor_decode("2610132d1300", 99)) then
__dummy_ops(); -- obf
							local _DYy4PrVC = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99));
							local _EJvOjbjf = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99));
							_DYy4PrVC._zL81RjqU = v;
							_DYy4PrVC._6pp51rH2 = _qo6tY6Am._6pp51rH2._fUk8xStc;
							_DYy4PrVC._IeifwfUZ = true;
							_DYy4PrVC._xOtG83nV = __xor_decode("2610132d1300", 99);
							_DYy4PrVC._HcOyIqUq = true;
							_DYy4PrVC._2S3Tzh0r = (1 + 1);
							_DYy4PrVC._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (-43 + 200), 0, (-32 + 50));
							_DYy4PrVC._4QsaUY9J = _UWIiwj4W._ZH3x4hyR(0, 2.5, 0);
							_EJvOjbjf._zL81RjqU = _DYy4PrVC;
							_EJvOjbjf._mOEiU2he = _BABohy6c._UifQWj6U((58 + 255), (47 + 255), (-141 + 255));
							_EJvOjbjf._8GqMT7nE = (1 + 1);
							_EJvOjbjf._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (126 + 200), 0, (11 + 50));
							_EJvOjbjf._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._3Tpy4teG;
							_EJvOjbjf._qaB8Mxq5 = _BABohy6c._UifQWj6U((-21 + 200), (-8 + 60), (26 + 120));
							_EJvOjbjf._HhZDv3q2._RnP3PiKD = (1 + 45);
						end;
						local _ombCm9kO = math._MXnWfu82((game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - v._yMRN0wrA._EWiDuNSW)._uDjfEeA6);
__dummy_ops(); -- obf
						v._XEQaeE18._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("434e43", 99) .. _ombCm9kO .. __xor_decode("43270a1017020d0006", 99);
__dummy_ops(); -- obf
					end;
				end;
			else
__dummy_ops(); -- obf
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._A4Ez52AL:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2610132d1300", 99)) then
						v._XEQaeE18:_ROayZZfU();
					end;
				end;
			end;
		end);
__dummy_ops(); -- obf
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432e0a11020406", 99)] then
					if v._xOtG83nV == __xor_decode("2e0a11020406432a100f020d07", 99) then
						if not v:_dX5IzNiJ(__xor_decode("2610132e0a110204062a100f020d07", 99)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("2610132e0a110204062a100f020d07", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-52 + 200), (1 + 1), (2 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
__dummy_ops(); -- obf
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((19 + 50), (-52 + 180), (-8 + 50));
						else
							v._AZX6hDaJ._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("432e", 99);
						end;
__dummy_ops(); -- obf
					end;
__dummy_ops(); -- obf
				elseif v:_dX5IzNiJ(__xor_decode("2610132e0a110204062a100f020d07", 99)) then
					(v:_dX5IzNiJ(__xor_decode("2610132e0a110204062a100f020d07", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_eHS4mqzq()) do
__dummy_ops(); -- obf
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343280a1710160d06", 99)] then
					if v._xOtG83nV == __xor_decode("280a1710160d06432a100f020d07", 99) then
						if not v:_dX5IzNiJ(__xor_decode("261013280a1710160d062a100f020d07", 99)) then
__dummy_ops(); -- obf
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("261013280a1710160d062a100f020d07", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (57 + 200), (1 + 1), (-14 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
__dummy_ops(); -- obf
							_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((1 + 40), (6 + 40), (26 + 180));
						else
							v._4iGYKIwN._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("432e", 99);
						end;
					end;
				elseif v:_dX5IzNiJ(__xor_decode("261013280a1710160d062a100f020d07", 99)) then
					(v:_dX5IzNiJ(__xor_decode("261013280a1710160d062a100f020d07", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_eHS4mqzq()) do
			pcall(function()
__dummy_ops(); -- obf
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("2630334325110c19060d", 99)] then
					if v._xOtG83nV == __xor_decode("25110c19060d43270a0e060d100a0c0d", 99) then
						if not v:_dX5IzNiJ(__xor_decode("26101325110c19060d", 99)) then
__dummy_ops(); -- obf
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
__dummy_ops(); -- obf
							_MKxY5Our._xOtG83nV = __xor_decode("26101325110c19060d", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
__dummy_ops(); -- obf
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-26 + 200), (1 + 1), (2 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
__dummy_ops(); -- obf
							_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((16 + 50), (-52 + 180), (-52 + 255));
						else
							v._NSN9MpnH._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("432e", 99);
__dummy_ops(); -- obf
						end;
					end;
				elseif v:_dX5IzNiJ(__xor_decode("26101325110c19060d", 99)) then
					(v:_dX5IzNiJ(__xor_decode("26101325110c19060d", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("263033433311060b0a10170c110a00", 99)] then
					if v._xOtG83nV == __xor_decode("3311060b0a10170c110a00432a100f020d07", 99) then
__dummy_ops(); -- obf
						if not v:_dX5IzNiJ(__xor_decode("2610133311060b0a10170c110a00", 99)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("2610133311060b0a10170c110a00", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (1 + 200), (1 + 1), (26 + 30));
							_MKxY5Our._nY1T5Ddf = v;
__dummy_ops(); -- obf
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-75 + 200), (-12 + 50), (-2 + 40));
						else
__dummy_ops(); -- obf
							v._ZcFhKdJM._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("432e", 99);
						end;
					end;
				elseif v:_dX5IzNiJ(__xor_decode("2610133311060b0a10170c110a00", 99)) then
					(v:_dX5IzNiJ(__xor_decode("2610133311060b0a10170c110a00", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._A4Ez52AL:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343220715020d000607432511160a17432706020f0611", 99)] then
					if v._xOtG83nV == __xor_decode("220715020d000607432511160a17432706020f0611", 99) then
						if not v:_dX5IzNiJ(__xor_decode("261013220715020d00062511160a172706020f0611", 99)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("261013220715020d00062511160a172706020f0611", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-87 + 200), (1 + 1), (-5 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
__dummy_ops(); -- obf
							_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-128 + 250), (28 + 50), (-14 + 50));
						else
							v._qgzFGF7P._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (2 + 3)) .. __xor_decode("432e", 99);
						end;
__dummy_ops(); -- obf
					end;
				elseif v:_dX5IzNiJ(__xor_decode("261013220715020d00062511160a172706020f0611", 99)) then
					(v:_dX5IzNiJ(__xor_decode("261013220715020d00062511160a172706020f0611", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._A4Ez52AL:_eHS4mqzq()) do
			pcall(function()
				if _G._yfeCVCNX._cxvG09MF[__xor_decode("2630334322161102", 99)] then
					if v._xOtG83nV == __xor_decode("2e0210170611430c0543260d0b020d00060e060d17", 99) then
						if not v:_dX5IzNiJ(__xor_decode("26101322161102", 99)) then
							local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
							_MKxY5Our._xOtG83nV = __xor_decode("26101322161102", 99);
							_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
							_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (41 + 200), (1 + 1), (-10 + 30));
							_MKxY5Our._nY1T5Ddf = v;
							_MKxY5Our._HcOyIqUq = true;
							local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
							_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
							_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
							_s3gyZqcO._vruSupXU = true;
							_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
__dummy_ops(); -- obf
							_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
							_s3gyZqcO._8GqMT7nE = (1 + 1);
							_s3gyZqcO._pNSLPBMU = 0.5;
							_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((103 + 200), (22 + 55), (109 + 255));
						else
							v._Z8PSfmSX._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("432e", 99);
						end;
					end;
				elseif v:_dX5IzNiJ(__xor_decode("26101322161102", 99)) then
					(v:_dX5IzNiJ(__xor_decode("26101322161102", 99))):_ROayZZfU();
				end;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	while _ncNRWHvo((1 + 1)) do
		if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83:_dX5IzNiJ(__xor_decode("2e1a10170a002a100f020d07", 99)) then
__dummy_ops(); -- obf
			for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._EV3ZO6j5:_eHS4mqzq()) do
				pcall(function()
					if _G._yfeCVCNX._cxvG09MF[__xor_decode("2630334324060211", 99)] then
						if v._xOtG83nV == __xor_decode("2e06100b33021117", 99) then
							if not v:_dX5IzNiJ(__xor_decode("2216170c2502110e210f021906260e010611", 99)) then
								local _MKxY5Our = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99), v);
								_MKxY5Our._xOtG83nV = __xor_decode("26101324060211", 99);
								_MKxY5Our._cTbs399D = _UWIiwj4W._ZH3x4hyR(0, (1 + 1), 0);
__dummy_ops(); -- obf
								_MKxY5Our._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), (-4 + 200), (1 + 1), (-11 + 30));
__dummy_ops(); -- obf
								_MKxY5Our._nY1T5Ddf = v;
								_MKxY5Our._HcOyIqUq = true;
								local _s3gyZqcO = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99), _MKxY5Our);
								_s3gyZqcO._nyTNH1Jx = __xor_decode("200c0706", 99);
								_s3gyZqcO._0izRDECM = __xor_decode("300a19065257", 99);
								_s3gyZqcO._vruSupXU = true;
								_s3gyZqcO._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
								_s3gyZqcO._vLjSvUVv = __xor_decode("370c13", 99);
								_s3gyZqcO._8GqMT7nE = (1 + 1);
								_s3gyZqcO._pNSLPBMU = 0.5;
								_s3gyZqcO._qaB8Mxq5 = _BABohy6c._UifQWj6U((-14 + 80), (41 + 245), (63 + 245));
							else
								v._LLWpLp33._EJvOjbjf._HhZDv3q2 = v._xOtG83nV .. __xor_decode("43434369", 99) .. _dlQJDPYa((((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._pdLn5hOz._EWiDuNSW - v._EWiDuNSW))._uDjfEeA6 / (1 + 3)) .. __xor_decode("432e", 99);
							end;
						end;
__dummy_ops(); -- obf
					elseif v:_dX5IzNiJ(__xor_decode("26101324060211", 99)) then
						(v:_dX5IzNiJ(__xor_decode("26101324060211", 99))):_ROayZZfU();
					end;
__dummy_ops(); -- obf
				end);
			end;
		end;
	end;
end);
function _eBvNpcTz()
	(game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99))):_TWY8Coxs();
	(game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99))):_yKzm8e7l(_VVRMVAYM._ZH3x4hyR((-325 + 1280), (42 + 672)));
end;
function _jUKVPjiK()
	if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b02102116100c", 99)) then
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2116100c", 99));
	end;
end;
function _uzrjimRg(_gHF0XxQz)
	if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(_gHF0XxQz) then
		(game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(_gHF0XxQz))._zL81RjqU = game.Players._5vXmWKtm._A84mhyus;
__dummy_ops(); -- obf
	end;
end;
function _vPFcIsGM(_KyfXnyD3)
	if not game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(_KyfXnyD3) then
		if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(_KyfXnyD3) then
			_nywoFb3c = game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(_KyfXnyD3);
			game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(_nywoFb3c);
		end;
	end;
end;
_YwIHUvQP(function()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2:_eHS4mqzq()) do
		pcall(function()
			if v._xOtG83nV == __xor_decode("201611150607310a0d04", 99) or v._xOtG83nV == __xor_decode("300f02100b2b0a17", 99) or v._xOtG83nV == __xor_decode("30140c1107300f02100b", 99) or v._xOtG83nV == __xor_decode("300f02100b37020a0f", 99) or v._xOtG83nV == __xor_decode("300c160d0710", 99) then
				v:_ROayZZfU();
			end;
		end);
	end;
end);
function _UxDHwqah(_xrzinHml)
	return math._MXnWfu82((_xrzinHml._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6);
end;
function _TTLjbnof(_1CCRvVck)
	pcall(function()
		if (_1CCRvVck._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 >= (-37 + 2000) and game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e._usQ3DGFi > 0 then
			repeat
				_ncNRWHvo();
				game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _1CCRvVck;
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("300617301302140d330c0a0d17", 99));
				game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _1CCRvVck;
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("300617301302140d330c0a0d17", 99));
				_ncNRWHvo();
				game.Players._5vXmWKtm._6HDGtM8L._pdLn5hOz:_ROayZZfU();
				game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _1CCRvVck;
__dummy_ops(); -- obf
			until (_1CCRvVck._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-316 + 2000) and game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e._usQ3DGFi > 0;
__dummy_ops(); -- obf
		end;
	end);
end;
__dummy_ops(); -- obf
function _iswjWFro(_1CCRvVck)
	game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _1CCRvVck;
end;
function _gcVXECpW(_SDrbqRFv)
	local TweenService = game:_OKOU25H8(__xor_decode("371406060d300611150a0006", 99));
	local _Ef8Iq2PS = workspace._g40VYfV5[_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]];
	if not _Ef8Iq2PS or (not _Ef8Iq2PS:_dX5IzNiJ(__xor_decode("35060b0a000f0630060217", 99))) then
		_4tQ00zrD(__xor_decode("370b0643130f021a0611430e161017430b021506430106060d430c0d43170b0643010c02174d42", 99));
		return {
			_eFK2jWpz = function()
			end
		};
	end;
	local _Wl7rNFnp = _SDrbqRFv;
	if _L1zz2WTm(_SDrbqRFv) == __xor_decode("2a0d1017020d0006", 99) and _SDrbqRFv:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
		_Wl7rNFnp = _SDrbqRFv._TV4Txa4P;
	elseif _L1zz2WTm(_SDrbqRFv) ~= __xor_decode("202511020e06", 99) then
__dummy_ops(); -- obf
		_4tQ00zrD(__xor_decode("370b064344130c10174443021104160e060d17430e161017430106430243202511020e06430c1143210210063302111742", 99));
__dummy_ops(); -- obf
		return {
			_eFK2jWpz = function()
			end
		};
	end;
	local _zi8UFv8b = _Ef8Iq2PS._jLJKP268._EWiDuNSW;
	local _MoR3xYBq = _Wl7rNFnp._EWiDuNSW;
	local _q3dbLAto = (_zi8UFv8b - _MoR3xYBq)._uDjfEeA6;
	local _FU8wNWdz = nil;
	local _qC4bPcPj = _q3dbLAto / (_G._yfeCVCNX._1ndSW2FF[__xor_decode("210c021743371406060d433013060607", 99)] or (33 + 100));
	local _9WZGwOAb = _r2BqbWWT._ZH3x4hyR(_qC4bPcPj, _qo6tY6Am._aJgVweOW._qYRRacNy);
	_FU8wNWdz = TweenService:_6gbGFi29(_Ef8Iq2PS._jLJKP268, _9WZGwOAb, {
		_TV4Txa4P = _Wl7rNFnp
	});
	if _q3dbLAto > (-8 + 25) then
		_FU8wNWdz:_IHBnE10S();
	else
		_4tQ00zrD(__xor_decode("370c0c43050210174300020d4304061743080a00080607", 99));
	end;
	local _LNAOocOP = {};
	function _LNAOocOP:_eFK2jWpz()
		if _FU8wNWdz and _FU8wNWdz._3WyiFG2m == _qo6tY6Am._3WyiFG2m._nnD62Lsv then
__dummy_ops(); -- obf
			_FU8wNWdz:_03s7RSbe();
		end;
	end;
	return _LNAOocOP;
end;
function _NwLutZRn(_SDrbqRFv)
	_TyPAa8BS._YwIHUvQP(function()
		pcall(function()
			if game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e._r1E7PMSw == true then
				game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e._r1E7PMSw = true;
			end;
			local _qYumzuG8 = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm;
			local _OjICJL86 = _qYumzuG8._6HDGtM8L;
			local _5i3tts3o = _OjICJL86._yMRN0wrA;
			if _qYumzuG8:_h4Q2T1Kp(_SDrbqRFv._EWiDuNSW) <= (-20 + 50) then
				_5i3tts3o._TV4Txa4P = _SDrbqRFv;
				if _OjICJL86:_dX5IzNiJ(__xor_decode("310c0c17", 99)) then
					_OjICJL86._OdXlrH5Z:_ROayZZfU();
					_ncNRWHvo();
					_NwLutZRn(_5i3tts3o._TV4Txa4P);
					_ncNRWHvo();
				end;
				if _OjICJL86:_dX5IzNiJ(__xor_decode("310c0c17", 99)) then
					_OjICJL86._OdXlrH5Z:_ahbphTv0();
				end;
			elseif not _OjICJL86:_dX5IzNiJ(__xor_decode("310c0c17", 99)) then
				local _wU0XF46T = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("33021117", 99), _OjICJL86);
				_wU0XF46T._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), 0.5, (1 + 1));
				_wU0XF46T._xOtG83nV = __xor_decode("310c0c17", 99);
				_wU0XF46T._9zk8Uyte = true;
				_wU0XF46T._zfGLVJb0 = (1 + 1);
				_wU0XF46T._PuXDT8sU = false;
				_wU0XF46T._TV4Txa4P = _5i3tts3o._TV4Txa4P;
__dummy_ops(); -- obf
			end;
			local _q3dbLAto = (_5i3tts3o._EWiDuNSW - _SDrbqRFv._EWiDuNSW)._uDjfEeA6;
			local _M4qfCCyQ = game:_OKOU25H8(__xor_decode("371406060d300611150a0006", 99));
			local _aAIlZbuU = _r2BqbWWT._ZH3x4hyR(_q3dbLAto / _G._yfeCVCNX._B8nzttPb[__xor_decode("330f021a061143371406060d433013060607", 99)], _qo6tY6Am._aJgVweOW._qYRRacNy);
__dummy_ops(); -- obf
			local _2YDrckyq, _r4SZPzTS = pcall(function()
				local _FU8wNWdz = _M4qfCCyQ:_6gbGFi29(_OjICJL86._OdXlrH5Z, _aAIlZbuU, {
					_TV4Txa4P = _SDrbqRFv
				});
				_FU8wNWdz:_IHBnE10S();
			end);
			if _G._I9738YKp == true then
				_FU8wNWdz:_03s7RSbe();
				_G._tWk6gD61 = false;
			end;
			if not _2YDrckyq then
				return _r4SZPzTS;
			end;
			_OjICJL86._OdXlrH5Z._TV4Txa4P = _5i3tts3o._TV4Txa4P;
			if _2YDrckyq and _OjICJL86:_dX5IzNiJ(__xor_decode("310c0c17", 99)) then
				pcall(function()
					local _uigJaJZ8 = (_5i3tts3o._EWiDuNSW - _SDrbqRFv._EWiDuNSW)._uDjfEeA6;
					if _uigJaJZ8 >= (8 + 50) then
						_TyPAa8BS._YwIHUvQP(function()
							pcall(function()
								if (_OjICJL86._OdXlrH5Z._EWiDuNSW - _5i3tts3o._EWiDuNSW)._uDjfEeA6 > (24 + 200) then
									_OjICJL86._OdXlrH5Z._TV4Txa4P = _5i3tts3o._TV4Txa4P;
								else
									_5i3tts3o._TV4Txa4P = _OjICJL86._OdXlrH5Z._TV4Txa4P;
								end;
__dummy_ops(); -- obf
							end);
						end);
					elseif _uigJaJZ8 >= (2 + 25) and _uigJaJZ8 < (6 + 40) then
						_5i3tts3o._TV4Txa4P = _SDrbqRFv;
					elseif _uigJaJZ8 < (-3 + 25) then
						_5i3tts3o._TV4Txa4P = _SDrbqRFv;
					end;
				end);
			end;
			local _8GzZLDmz = {};
			function _8GzZLDmz:_eFK2jWpz()
				_FU8wNWdz:_03s7RSbe();
			end;
			return _8GzZLDmz;
		end);
	end);
end;
_TyPAa8BS._YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo() do
		pcall(function()
			game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = game.Players._5vXmWKtm._6HDGtM8L._OdXlrH5Z._TV4Txa4P;
			if (game.Players._5vXmWKtm._6HDGtM8L._OdXlrH5Z._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 >= (1 + 1) then
__dummy_ops(); -- obf
				game.Players._5vXmWKtm._6HDGtM8L._OdXlrH5Z._TV4Txa4P = game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P;
			end;
		end);
	end;
end);
_YwIHUvQP(function()
	(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._NbCsCHrH:_CAh5wGBm(function()
		pcall(function()
			if _VH707rEP then
				_VH707rEP(game.Players._5vXmWKtm, __xor_decode("300a0e160f02170a0c0d3102070a1610", 99), true);
			end;
			if _OahibnRQ then
__dummy_ops(); -- obf
				_OahibnRQ(game.Players._5vXmWKtm, __xor_decode("300a0e160f02170a0c0d3102070a1610", 99), math._xnnPNK9M);
			end;
__dummy_ops(); -- obf
		end);
	end);
end);
local _JgCetx22 = (_DZSJtHyz or _NhAdvqY1 or getfenv)();
local _uMoedcBu = game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99));
local _3n0UFr5M = game:_OKOU25H8(__xor_decode("330f021a061110", 99));
local _Qcc5GBHp = _3n0UFr5M._5vXmWKtm;
local _iA1DiF28 = _uMoedcBu:_xXwYaCom(__xor_decode("2e0c07160f0610", 99));
local _vwTFMols = _iA1DiF28:_xXwYaCom(__xor_decode("2d0617", 99));
local _a58qxTqr = workspace:_xXwYaCom(__xor_decode("200b0211020017061110", 99));
local _zmpGQTuT = workspace:_xXwYaCom(__xor_decode("260d060e0a0610", 99));
local _OP12divb = game:_OKOU25H8(__xor_decode("330f021a061110", 99));
local _2Ne8v6Xt = {};
local _2nOPhPAw = _vwTFMols:_xXwYaCom(__xor_decode("31264c3106040a10170611221717020008", 99));
local _JPmrc9d0 = _vwTFMols:_xXwYaCom(__xor_decode("31264c3106040a101706112b0a17", 99));
function _2Ne8v6Xt:_tpp4emMH(_vG6wV7Ha, _InTexIYt)
__dummy_ops(); -- obf
	if _vG6wV7Ha then
		_2nOPhPAw:_y31s2mK6(0);
		_2nOPhPAw:_y31s2mK6((1 + 1));
		_2nOPhPAw:_y31s2mK6((2 + 2));
		_2nOPhPAw:_y31s2mK6((2 + 3));
		_JPmrc9d0:_y31s2mK6(_vG6wV7Ha, _InTexIYt or {});
	end;
end;
function _2Ne8v6Xt:_Axm12e7b()
	local _C98ykj1v = {
		nil,
		{}
	};
	for _, _gV01VbPV in _zmpGQTuT:_eHS4mqzq() do
		if not _C98ykj1v[(1 + 1)] and _gV01VbPV:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99), true) and _Qcc5GBHp:_h4Q2T1Kp(_gV01VbPV._yMRN0wrA._EWiDuNSW) < (4 + 60) then
			_C98ykj1v[(1 + 1)] = _gV01VbPV:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99));
		elseif _gV01VbPV:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99), true) and _Qcc5GBHp:_h4Q2T1Kp(_gV01VbPV._yMRN0wrA._EWiDuNSW) < (-11 + 60) then
			table._xke4TdBn(_C98ykj1v[(1 + 2)], {
				[(1 + 1)] = _gV01VbPV,
				[(0 + 2)] = _gV01VbPV:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99))
			});
		end;
	end;
	_mizH9z8y:_tpp4emMH(unpack(_C98ykj1v));
	local _qYumzuG8 = {
		nil,
		{}
	};
	for _, _kdlrG9YV in _OP12divb:_eHS4mqzq() do
		if not _qYumzuG8[(1 + 1)] and _kdlrG9YV:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99), true) and _Qcc5GBHp:_h4Q2T1Kp(_kdlrG9YV._6HDGtM8L._yMRN0wrA._EWiDuNSW) < (10 + 60) then
			_qYumzuG8[(1 + 1)] = _kdlrG9YV._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99));
		elseif _kdlrG9YV._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99), true) and _Qcc5GBHp:_h4Q2T1Kp(_kdlrG9YV._6HDGtM8L._yMRN0wrA._EWiDuNSW) < (-7 + 60) then
			table._xke4TdBn(_qYumzuG8[(2 + 2)], {
				[(1 + 1)] = _kdlrG9YV,
				[(2 + 2)] = _kdlrG9YV._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99))
			});
		end;
	end;
	_mizH9z8y:_tpp4emMH(unpack(_qYumzuG8));
end;
function _2Ne8v6Xt:_YM6agW4C()
	_mizH9z8y:_Axm12e7b();
end;
function _wgBbrKQh()
	if not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or (not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)]) then
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008", 99)] then
			_ncNRWHvo(_G._yfeCVCNX._B8nzttPb[__xor_decode("25021017432217170200084327060f021a", 99)]);
			_2Ne8v6Xt:_YM6agW4C();
		else
			_ncNRWHvo(0.5);
			_2Ne8v6Xt:_YM6agW4C();
		end;
	end;
end;
function _AJZvllFT()
	_2Ne8v6Xt:_YM6agW4C();
end;
__dummy_ops(); -- obf
_YwIHUvQP(function()
	(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._NbCsCHrH:_CAh5wGBm(function()
		pcall(function()
			if _2FmKC9Rx or _rfhvhoJ7 or _G._XItMgFUu then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._jzV4QsA2:_eHS4mqzq()) do
__dummy_ops(); -- obf
					for _, _NLmmmTQt in pairs(v:_eHS4mqzq()) do
						if string._Uw9siMFG(_NLmmmTQt._HhZDv3q2, __xor_decode("30080a0f0f430f0c0008060742", 99)) then
							v:_ROayZZfU();
						end;
					end;
				end;
			end;
		end);
	end);
end);
function _DPvktwnB()
	pcall(function()
		for i, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
			if v._8WgX6ewZ == __xor_decode("30140c1107", 99) and v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				local _iUFx5gi0 = game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(v._xOtG83nV);
				game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(_iUFx5gi0);
			end;
		end;
	end);
end;
_YwIHUvQP(function()
__dummy_ops(); -- obf
	local _YN7GtITz = 0;
	while _ncNRWHvo() do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("30130a0d43330c100a170a0c0d", 99)] then
			local _zIOo3FOw = (-5 + 20);
			local _OcIUV2Df = _G._yfeCVCNX._B8nzttPb[__xor_decode("2502110e43270a1017020d0006", 99)];
			local _e2fjIlLx = math._PUgGM5ZN(_YN7GtITz);
			local x = math._aJiOLZfD(_e2fjIlLx) * _zIOo3FOw;
			local z = math._HbQHP64z(_e2fjIlLx) * _zIOo3FOw;
__dummy_ops(); -- obf
			_xV7d4a8a = _TV4Txa4P._ZH3x4hyR(x, _OcIUV2Df, z);
			_YN7GtITz = (_YN7GtITz + (-12 + 30)) % (0 + 360);
		else
			_xV7d4a8a = _TV4Txa4P._ZH3x4hyR(0, _G._yfeCVCNX._B8nzttPb[__xor_decode("2502110e43270a1017020d0006", 99)], 0);
		end;
		_ncNRWHvo(0);
	end;
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
			if _LfIBZk7l then
				if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432f0602170b0611", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e02040e02432c1106", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e433000110213432e0617020f", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43220d04060f43340a0d0410", 99)] then
					if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA:_dX5IzNiJ(__xor_decode("210c071a200f0a13", 99)) then
						local _0DOfEOLN = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210c071a35060f0c000a171a", 99));
						_0DOfEOLN._xOtG83nV = __xor_decode("210c071a200f0a13", 99);
						_0DOfEOLN._zL81RjqU = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA;
						_0DOfEOLN._4kYwvCgS = _UWIiwj4W._ZH3x4hyR((68488 + 100000), (-16348 + 100000), (22242 + 100000));
						_0DOfEOLN._bgQk2cch = _UWIiwj4W._ZH3x4hyR(0, 0, 0);
					end;
				end;
__dummy_ops(); -- obf
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
			if _LfIBZk7l then
				if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)] then
					for _, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_sFYPxrUf()) do
						if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
							v._PuXDT8sU = false;
						end;
local __7000 = {['b']=function()end} -- junk
					end;
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
__dummy_ops(); -- obf
		while _ncNRWHvo() do
			if _tRfh7Inj then
				if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432502110e43250200170c111a", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433014020d43240f0210100610", 99)] or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4331020006433551", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43210211170a0f0c433216061017", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c4322171702000843300602010602101710", 99)] or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] then
__dummy_ops(); -- obf
					if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA:_dX5IzNiJ(__xor_decode("210c071a200f0a13", 99)) then
						local _0DOfEOLN = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210c071a35060f0c000a171a", 99));
						_0DOfEOLN._xOtG83nV = __xor_decode("210c071a200f0a13", 99);
__dummy_ops(); -- obf
						_0DOfEOLN._zL81RjqU = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA;
						_0DOfEOLN._4kYwvCgS = _UWIiwj4W._ZH3x4hyR((-36541 + 100000), (76496 + 100000), (-5866 + 100000));
						_0DOfEOLN._bgQk2cch = _UWIiwj4W._ZH3x4hyR(0, 0, 0);
					end;
				end;
			end;
		end;
	end);
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
			if _tRfh7Inj then
				if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432502110e43250200170c111a", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433014020d43240f0210100610", 99)] or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4331020006433551", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43210211170a0f0c433216061017", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c4322171702000843300602010602101710", 99)] or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] then
__dummy_ops(); -- obf
					for _, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_sFYPxrUf()) do
						if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
							v._PuXDT8sU = false;
						end;
__dummy_ops(); -- obf
					end;
				end;
			end;
		end;
	end);
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
__dummy_ops(); -- obf
			if _7Y9SwizB then
				if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43330a110217064331020a07", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4331020006433550", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("37060f06130c111743370c4325110c19060d43270a0e060d100a0c0d", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("30020a0f43370c4325110c19060d43270a0e060d100a0c0d", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433311061010432b02080a43211617170c0d", 99)] or _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432211060d02433711020a0d0611", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("371406060d43370c432b0a040b061017432e0a11020406", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("250a0d0743210f16064324060211", 99)] or _G._yfeCVCNX._erujXPFB[__xor_decode("2216170c43280a0f0f43330f021a0611433216061017", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43201611100607432716020f43280217020d02", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433716100b0a1702", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] or _G._nrXXhOfA or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331020a0d010c14432b02080a", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432600170c130f02100e", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432c011006111502170a0c0d433551", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432e1610080617060611432b0217", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b0c0f1a43370c11000b", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4320020d15020d070611", 99)] or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)] then
					if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA:_dX5IzNiJ(__xor_decode("210c071a200f0a13", 99)) then
						local _0DOfEOLN = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210c071a35060f0c000a171a", 99));
						_0DOfEOLN._xOtG83nV = __xor_decode("210c071a200f0a13", 99);
						_0DOfEOLN._zL81RjqU = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA;
						_0DOfEOLN._4kYwvCgS = _UWIiwj4W._ZH3x4hyR((65697 + 100000), (-1492 + 100000), (62886 + 100000));
						_0DOfEOLN._bgQk2cch = _UWIiwj4W._ZH3x4hyR(0, 0, 0);
__dummy_ops(); -- obf
					end;
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
			if _7Y9SwizB then
				if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43330a110217064331020a07", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4331020006433550", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("37060f06130c111743370c4325110c19060d43270a0e060d100a0c0d", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("30020a0f43370c4325110c19060d43270a0e060d100a0c0d", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)] or _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433311061010432b02080a43211617170c0d", 99)] or _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432211060d02433711020a0d0611", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("371406060d43370c432b0a040b061017432e0a11020406", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] or _G._yfeCVCNX._wpDG725K[__xor_decode("250a0d0743210f16064324060211", 99)] or _G._yfeCVCNX._erujXPFB[__xor_decode("2216170c43280a0f0f43330f021a0611433216061017", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43201611100607432716020f43280217020d02", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433716100b0a1702", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] or _G._nrXXhOfA or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331020a0d010c14432b02080a", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432600170c130f02100e", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432c011006111502170a0c0d433551", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432e1610080617060611432b0217", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b0c0f1a43370c11000b", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4320020d15020d070611", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432f0602170b0611", 99)] or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)] then
					for _, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_sFYPxrUf()) do
						if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
							v._PuXDT8sU = false;
						end;
					end;
__dummy_ops(); -- obf
				end;
			end;
		end;
	end);
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or _G._8IKkFEWl or _G._nrXXhOfA or _G._HiMAaiiC or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432c011006111502170a0c0d", 99)] or _G._yfeCVCNX._XvIz37Ld[__xor_decode("371406060d43370c432511160a17", 99)] or _G._gaaRhEsS or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4325021017", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)] then
				if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA:_dX5IzNiJ(__xor_decode("210c071a200f0a13", 99)) then
					local _0DOfEOLN = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210c071a35060f0c000a171a", 99));
					_0DOfEOLN._xOtG83nV = __xor_decode("210c071a200f0a13", 99);
					_0DOfEOLN._zL81RjqU = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA;
					_0DOfEOLN._4kYwvCgS = _UWIiwj4W._ZH3x4hyR((12879 + 100000), (-51484 + 100000), (-39348 + 100000));
					_0DOfEOLN._bgQk2cch = _UWIiwj4W._ZH3x4hyR(0, 0, 0);
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._y0d08xsj:_CAh5wGBm(function()
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)] or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or _G._8IKkFEWl or _G._nrXXhOfA or _G._HiMAaiiC or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432c011006111502170a0c0d", 99)] or _G._yfeCVCNX._XvIz37Ld[__xor_decode("371406060d43370c432511160a17", 99)] or _G._gaaRhEsS or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4325021017", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)] or _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)] then
				for _, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_sFYPxrUf()) do
					if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
						v._PuXDT8sU = false;
					end;
__dummy_ops(); -- obf
				end;
			end;
		end);
	end);
end);
function _LbBhTdwR(_b0Zi7m1R)
	if not _b0Zi7m1R then
		_G._I9738YKp = true;
		_NwLutZRn((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P);
		if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA:_dX5IzNiJ(__xor_decode("210c071a200f0a13", 99)) then
			((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA:_dX5IzNiJ(__xor_decode("210c071a200f0a13", 99))):_ROayZZfU();
		end;
		_G._I9738YKp = false;
	end;
end;
function _ZMbrYlbZ(_uA3ui9qg)
 _uA3ui9qg._BcGPQM7e:_nq3FMnW7((2 + 11));
	if _uA3ui9qg._BcGPQM7e:_dX5IzNiJ(__xor_decode("220d0a0e02170c11", 99)) then
	 _uA3ui9qg._BcGPQM7e._mZeIeBGD:_ROayZZfU();
	end;
end;
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
			for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
				if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
					if v:_dX5IzNiJ(__xor_decode("31060e0c170625160d00170a0c0d300b0c0c17", 99)) then
						_onHgYyzG = v._xOtG83nV;
					end;
				end;
			end;
		end;
	end);
end);
_GxwiIQ3e = _V8Gpv6Eg._6T5ojCWC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e020a0d", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_j3bTPRXM = _V8Gpv6Eg._6T5ojCWC:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("24020e0643370a0e06", 99),
	_cYZMpA94 = __xor_decode("53", 99),
	_WgXU3n6Y = __xor_decode("170a0e0611", 99),
	_2jZQXuDM = (-1 + 20)
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo() do
		pcall(function()
			local _CRRqzmpk = math._MXnWfu82(workspace._iwuF3F9R + 0.5);
			local _9n8tWeyA = math._MXnWfu82(_CRRqzmpk / (-21 + 60) ^ (1 + 2)) % (-5 + 24);
			local _SfWPhfNE = math._MXnWfu82(_CRRqzmpk / (-7 + 60) ^ (1 + 1)) % (16 + 60);
			local _OCKV8NyX = math._MXnWfu82(_CRRqzmpk / (-25 + 60) ^ 0) % (1 + 60);
			_j3bTPRXM:_zhx0DbgD(_9n8tWeyA .. __xor_decode("432b0c16111043", 99) .. _SfWPhfNE .. __xor_decode("432e0a0d16170643", 99) .. _OCKV8NyX .. __xor_decode("433006000c0d07", 99));
		end);
__dummy_ops(); -- obf
	end;
end);
_3aON8hFc = _V8Gpv6Eg._6T5ojCWC:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("330a0d04", 99),
	_cYZMpA94 = __xor_decode("53", 99),
	_WgXU3n6Y = __xor_decode("100a040d020f", 99),
	_2jZQXuDM = (-6 + 20)
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo() do
		pcall(function()
			_3aON8hFc:_zhx0DbgD((game:_OKOU25H8(__xor_decode("3017021710", 99)))._hmXZVQRw._uKO2rqMU[__xor_decode("2702170243330a0d04", 99)]:_8rgBhuSN());
__dummy_ops(); -- obf
		end);
	end;
end);
_htwUCua4 = _V8Gpv6Eg._6T5ojCWC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2f0615060f432502110e", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
local _IzraEPqa = {
	__xor_decode("2e060f0606", 99),
	__xor_decode("30140c1107", 99),
	__xor_decode("2511160a17", 99)
};
_9O9qY3yV = _V8Gpv6Eg._6T5ojCWC:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643340602130c0d", 99),
	_lBKinVRV = _IzraEPqa,
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f06001743340602130c0d", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f06001743340602130c0d", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_TyPAa8BS._YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f06001743340602130c0d", 99)] == __xor_decode("2e060f0606", 99) then
				for i, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
					if v._8WgX6ewZ == __xor_decode("2e060f0606", 99) then
						if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(tostring(v._xOtG83nV)) then
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = v._xOtG83nV;
						end;
					end;
__dummy_ops(); -- obf
				end;
__dummy_ops(); -- obf
			elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f06001743340602130c0d", 99)] == __xor_decode("30140c1107", 99) then
				for i, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
					if v._8WgX6ewZ == __xor_decode("30140c1107", 99) then
						if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(tostring(v._xOtG83nV)) then
__dummy_ops(); -- obf
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = v._xOtG83nV;
						end;
					end;
				end;
__dummy_ops(); -- obf
			elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f06001743340602130c0d", 99)] == __xor_decode("24160d", 99) then
				for i, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
					if v._8WgX6ewZ == __xor_decode("24160d", 99) then
						if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(tostring(v._xOtG83nV)) then
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = v._xOtG83nV;
						end;
					end;
				end;
			elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f06001743340602130c0d", 99)] == __xor_decode("2511160a17", 99) then
				for i, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
					if v._8WgX6ewZ == __xor_decode("210f0c1b432511160a17", 99) then
						if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(tostring(v._xOtG83nV)) then
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = v._xOtG83nV;
						end;
					end;
				end;
			end;
		end);
	end;
end);
local _kE6aOSkw = {
	__xor_decode("3216061017", 99),
	__xor_decode("2d0c433216061017", 99),
	__xor_decode("2d060211061017", 99)
};
_cv3oN3c5 = _V8Gpv6Eg._6T5ojCWC:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c1006432502110e432f0615060f432e06170b0c07", 99),
	_lBKinVRV = _kE6aOSkw,
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2502110e432f0615060f432e06170b0c07", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2502110e432f0615060f432e06170b0c07", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_QUcAcVDt = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e432f0615060f", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2502110e432f0615060f432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99) and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] then
			pcall(function()
				_VaWzKIOy();
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
							if v._xOtG83nV == _uA3ui9qg then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_jUKVPjiK();
__dummy_ops(); -- obf
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_wgBbrKQh();
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false;
							end;
						end;
					end;
				else
					_NwLutZRn(_pdaxq6k9);
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2502110e432f0615060f432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99) and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] then
			pcall(function()
				for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
						if v._xOtG83nV then
							if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)))._EWiDuNSW)._uDjfEeA6 <= (-3093 + 5000) then
								repeat
__dummy_ops(); -- obf
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_wgBbrKQh();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
__dummy_ops(); -- obf
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or (not game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV));
							end;
						end;
					end;
				end;
__dummy_ops(); -- obf
			end);
		end;
__dummy_ops(); -- obf
	end;
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2502110e432f0615060f432e06170b0c07", 99)] == __xor_decode("3216061017", 99) and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] then
			pcall(function()
				_VaWzKIOy();
__dummy_ops(); -- obf
				local _9IUJoUJP = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2;
				if not string._Uw9siMFG(_9IUJoUJP, _dz9F6Edx) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2201020d070c0d3216061017", 99));
				end;
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _rFeSWkcW, _7ytwpAkD);
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								if v._xOtG83nV == _uA3ui9qg then
									if string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) then
										repeat
											(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
											_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
											_jUKVPjiK();
											_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
											v._BcGPQM7e._IbmeQpml = 0;
											v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
											_DFxiFN8p = v._xOtG83nV;
__dummy_ops(); -- obf
											_wgBbrKQh();
										until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false;
__dummy_ops(); -- obf
									end;
								end;
__dummy_ops(); -- obf
							end;
						end;
					else
						_NwLutZRn(_pdaxq6k9);
						_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					end;
				end;
__dummy_ops(); -- obf
			end);
		end;
	end;
end);
_rpwFy2Dg = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4325021017432502110e", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4325021017432502110e", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4325021017432502110e", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4325021017432502110e", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4325021017432502110e", 99)] and _LfIBZk7l then
				if game.Players._5vXmWKtm._0aqmU2bf._X0vNsR51._46yGcjZr >= (4 + 10) then
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] = false;
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4325021017432502110e", 99)] = true;
				end;
			end;
__dummy_ops(); -- obf
		end;
	end);
end);
__dummy_ops(); -- obf
_3bq1YV4o = _V8Gpv6Eg._6T5ojCWC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e02101706111a432502110e", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
if _7Y9SwizB then
__dummy_ops(); -- obf
	_uuBuHKH0 = {
		__xor_decode("3216061017", 99),
		__xor_decode("2d0c433216061017", 99),
		__xor_decode("2d060211061017", 99),
		__xor_decode("2002080613110a0d0006", 99),
__dummy_ops(); -- obf
		__xor_decode("210c0d0610", 99)
	};
elseif _tRfh7Inj or _LfIBZk7l then
	_uuBuHKH0 = {
		__xor_decode("3216061017", 99),
		__xor_decode("2d0c433216061017", 99),
		__xor_decode("2d060211061017", 99)
	};
__dummy_ops(); -- obf
end;
_9gFkGvY6 = _V8Gpv6Eg._6T5ojCWC:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c1006432e02101706111a432e06170b0c07", 99),
	_lBKinVRV = _uuBuHKH0,
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_kg3n2b9N = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432511160a17432e02101706111a", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_UNU70ffp = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4324160d432e02101706111a", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
local _ozPZkVQn = {};
local _OBwKE6bu = (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("0406172a0d15060d170c111a", 99));
__dummy_ops(); -- obf
for i, v in pairs(_OBwKE6bu) do
	if v._7cSuCvFj == __xor_decode("30140c1107", 99) then
		table._xke4TdBn(_ozPZkVQn, v._xOtG83nV);
	end;
end;
_a7gch26j = _V8Gpv6Eg._6T5ojCWC:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c10064330140c1107", 99),
__dummy_ops(); -- obf
	_lBKinVRV = _ozPZkVQn,
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
function _TLjteEFa(_3oRrrF2G)
	if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(_3oRrrF2G) then
		return true;
	elseif game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(_3oRrrF2G) then
		return true;
	end;
	return false;
end;
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo() do
		pcall(function()
			if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] then
				if not _TLjteEFa(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2f0c02072a17060e", 99), _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
				end;
			end;
		end);
	end;
end);
_vFOCYPVA = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4330140c1107432e02101706111a", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("3216061017", 99) then
			pcall(function()
				_VaWzKIOy();
				if not string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2201020d070c0d3216061017", 99));
					_NwLutZRn(_ixswGAEW);
					if (_ixswGAEW._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (0 + 5) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _rFeSWkcW, _7ytwpAkD);
					end;
				elseif string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
					if game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
__dummy_ops(); -- obf
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
__dummy_ops(); -- obf
								if v._xOtG83nV == _uA3ui9qg then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
										_wgBbrKQh();
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										_jUKVPjiK();
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
__dummy_ops(); -- obf
										v._yMRN0wrA._zfGLVJb0 = (1 + 1);
										v._BcGPQM7e._2Og4DODB = 0;
										v._BcGPQM7e._IbmeQpml = 0;
										_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
										_DFxiFN8p = v._xOtG83nV;
									until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("3216061017", 99);
								end;
							end;
						end;
					else
						_NwLutZRn(_pdaxq6k9);
						_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99) then
			pcall(function()
				_VaWzKIOy();
				_NwLutZRn(_pdaxq6k9);
				if game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
					for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == _uA3ui9qg and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
								_wgBbrKQh();
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
__dummy_ops(); -- obf
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
							until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99);
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
					_NwLutZRn(_pdaxq6k9);
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c0d0610", 99) then
			pcall(function()
				_NwLutZRn(_vDZMYFE0);
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("3106010c110d433008060f06170c0d", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2f0a150a0d0443390c0e010a06", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330c100610100607432e160e0e1a", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("3106010c110d433008060f06170c0d", 99) or v._xOtG83nV == __xor_decode("2f0a150a0d0443390c0e010a06", 99) or v._xOtG83nV == __xor_decode("27060e0c0d0a0043300c160f", 99) or v._xOtG83nV == __xor_decode("330c100610100607432e160e0e1a", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
									_wgBbrKQh();
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_jUKVPjiK();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c0d0610", 99);
__dummy_ops(); -- obf
							end;
						elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) then
							_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
						end;
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2002080613110a0d0006", 99) then
			pcall(function()
				local _9mIHV93B = _TV4Txa4P._ZH3x4hyR(-2091.911865234375, 70.00884246826172, -12142.8359375);
__dummy_ops(); -- obf
				_NwLutZRn(_9mIHV93B);
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200c0c080a064320110205170611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("20020806432416021107", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2102080a0d04433017020505", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2b060207432102080611", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200c0c080a064320110205170611", 99) or v._xOtG83nV == __xor_decode("20020806432416021107", 99) or v._xOtG83nV == __xor_decode("2102080a0d04433017020505", 99) or v._xOtG83nV == __xor_decode("2b060207432102080611", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
									_wgBbrKQh();
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_jUKVPjiK();
__dummy_ops(); -- obf
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2002080613110a0d0006", 99);
							end;
						elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2102080a0d04433017020505", 99)) then
__dummy_ops(); -- obf
							_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
						end;
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99) then
			pcall(function()
				for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
					if v._xOtG83nV and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
						if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)))._EWiDuNSW)._uDjfEeA6 <= (-1165 + 2000) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
								_wgBbrKQh();
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
							until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99);
__dummy_ops(); -- obf
						end;
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c1010", 99) then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
				_KzCPUega();
				_NwLutZRn(_3ytC0xBj);
				if (_3ytC0xBj._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (3 + 5) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _iYzezWIu, _1Bu6Tl15);
				end;
			elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
				pcall(function()
					_KzCPUega();
__dummy_ops(); -- obf
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_fo25g03l) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v._xOtG83nV == _2xWLJB30 and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e02101706111a4330140c1107", 99)]);
									_wgBbrKQh();
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_jUKVPjiK();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4330140c1107432e02101706111a", 99)] or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c1010", 99) or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or game.Players._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV));
							end;
						end;
					end;
				end);
			end;
		end;
__dummy_ops(); -- obf
	end;
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("3216061017", 99) then
			pcall(function()
				_VaWzKIOy();
__dummy_ops(); -- obf
				if not string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2201020d070c0d3216061017", 99));
					_NwLutZRn(_ixswGAEW);
					if (_ixswGAEW._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (1 + 5) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _rFeSWkcW, _7ytwpAkD);
					end;
				elseif string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
					if game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
								if v._xOtG83nV == _uA3ui9qg then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (2 + 100) then
											_vPFcIsGM((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._ANW5scTO._46yGcjZr);
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (15 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(5 + 90))), 0, 0));
											_I1CJ5Bpr = true;
											_2FmKC9Rx = true;
										else
											_2FmKC9Rx = false;
__dummy_ops(); -- obf
											_I1CJ5Bpr = false;
											_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
__dummy_ops(); -- obf
											_AJZvllFT();
__dummy_ops(); -- obf
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										end;
										_jUKVPjiK();
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										v._yMRN0wrA._zfGLVJb0 = (1 + 1);
										v._BcGPQM7e._2Og4DODB = 0;
										v._BcGPQM7e._IbmeQpml = 0;
										_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
										_DFxiFN8p = v._xOtG83nV;
										_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
										_I1CJ5Bpr = true;
									until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("3216061017", 99);
__dummy_ops(); -- obf
									_2FmKC9Rx = false;
									_I1CJ5Bpr = false;
								end;
							end;
						end;
					else
						_2FmKC9Rx = false;
						_NwLutZRn(_pdaxq6k9);
						_uzrjimRg(_ZsEWPHAy);
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99) then
			pcall(function()
				_VaWzKIOy();
				_NwLutZRn(_pdaxq6k9);
__dummy_ops(); -- obf
				if game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
					for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == _uA3ui9qg and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (51 + 100) then
									_vPFcIsGM((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._ANW5scTO._46yGcjZr);
									_2FmKC9Rx = true;
									_I1CJ5Bpr = true;
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-1 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-65 + 90))), 0, 0));
								else
									_2FmKC9Rx = false;
									_I1CJ5Bpr = false;
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_AJZvllFT();
__dummy_ops(); -- obf
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								end;
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
								_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
__dummy_ops(); -- obf
							until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99);
							_2FmKC9Rx = false;
							_I1CJ5Bpr = false;
__dummy_ops(); -- obf
						end;
					end;
__dummy_ops(); -- obf
				else
					_2FmKC9Rx = false;
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_pdaxq6k9);
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c0d0610", 99) then
			pcall(function()
				_NwLutZRn(_vDZMYFE0);
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("3106010c110d433008060f06170c0d", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2f0a150a0d0443390c0e010a06", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330c100610100607432e160e0e1a", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("3106010c110d433008060f06170c0d", 99) or v._xOtG83nV == __xor_decode("2f0a150a0d0443390c0e010a06", 99) or v._xOtG83nV == __xor_decode("27060e0c0d0a0043300c160f", 99) or v._xOtG83nV == __xor_decode("330c100610100607432e160e0e1a", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
__dummy_ops(); -- obf
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (43 + 100) then
										_vPFcIsGM((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._ANW5scTO._46yGcjZr);
										_2FmKC9Rx = true;
										_I1CJ5Bpr = true;
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (18 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-43 + 90))), 0, 0));
									else
										_2FmKC9Rx = false;
__dummy_ops(); -- obf
										_I1CJ5Bpr = false;
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_AJZvllFT();
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									end;
__dummy_ops(); -- obf
									_jUKVPjiK();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c0d0610", 99);
								_2FmKC9Rx = false;
								_I1CJ5Bpr = false;
							end;
						elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) then
							_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
						end;
__dummy_ops(); -- obf
					end;
__dummy_ops(); -- obf
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2002080613110a0d0006", 99) then
			pcall(function()
				local _9mIHV93B = _TV4Txa4P._ZH3x4hyR(-2091.911865234375, 70.00884246826172, -12142.8359375);
				_NwLutZRn(_9mIHV93B);
__dummy_ops(); -- obf
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200c0c080a064320110205170611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("20020806432416021107", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2102080a0d04433017020505", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2b060207432102080611", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200c0c080a064320110205170611", 99) or v._xOtG83nV == __xor_decode("20020806432416021107", 99) or v._xOtG83nV == __xor_decode("2102080a0d04433017020505", 99) or v._xOtG83nV == __xor_decode("2b060207432102080611", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-60 + 100) then
										_vPFcIsGM((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._ANW5scTO._46yGcjZr);
										_2FmKC9Rx = true;
										_I1CJ5Bpr = true;
__dummy_ops(); -- obf
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (12 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-45 + 90))), 0, 0));
									else
										_2FmKC9Rx = false;
										_I1CJ5Bpr = false;
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_AJZvllFT();
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									end;
									_jUKVPjiK();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2002080613110a0d0006", 99);
								_2FmKC9Rx = false;
								_I1CJ5Bpr = false;
							end;
						elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2102080a0d04433017020505", 99)) then
__dummy_ops(); -- obf
							_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
						end;
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99) then
			pcall(function()
				for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
					if v._xOtG83nV and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
__dummy_ops(); -- obf
						if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)))._EWiDuNSW)._uDjfEeA6 <= (6 + 2000) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
__dummy_ops(); -- obf
								if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-55 + 100) then
									_vPFcIsGM((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._ANW5scTO._46yGcjZr);
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (11 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-30 + 90))), 0, 0));
									_I1CJ5Bpr = true;
									_2FmKC9Rx = true;
								else
									_I1CJ5Bpr = false;
__dummy_ops(); -- obf
									_2FmKC9Rx = false;
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_AJZvllFT();
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								end;
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
								_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
							until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99);
							_2FmKC9Rx = false;
							_I1CJ5Bpr = false;
						end;
					end;
				end;
			end);
__dummy_ops(); -- obf
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c1010", 99) then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
				_KzCPUega();
				_NwLutZRn(_3ytC0xBj);
				if (_3ytC0xBj._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-1 + 5) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _iYzezWIu, _1Bu6Tl15);
				end;
			elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
				pcall(function()
					_KzCPUega();
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_fo25g03l) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v._xOtG83nV == _2xWLJB30 and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-32 + 100) then
										_vPFcIsGM((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._ANW5scTO._46yGcjZr);
__dummy_ops(); -- obf
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (3 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-56 + 90))), 0, 0));
										_I1CJ5Bpr = true;
										_2FmKC9Rx = true;
									else
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
__dummy_ops(); -- obf
										_2FmKC9Rx = false;
										_I1CJ5Bpr = false;
										_AJZvllFT();
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									end;
									_jUKVPjiK();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
__dummy_ops(); -- obf
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
__dummy_ops(); -- obf
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)] or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c1010", 99) or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or game.Players._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV));
								_2FmKC9Rx = false;
								_I1CJ5Bpr = false;
							end;
						end;
					else
						_2FmKC9Rx = false;
						_I1CJ5Bpr = false;
					end;
				end);
			end;
		end;
	end;
end);
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("3216061017", 99) then
			pcall(function()
				_VaWzKIOy();
				if not string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2201020d070c0d3216061017", 99));
__dummy_ops(); -- obf
					_NwLutZRn(_ixswGAEW);
					if (_ixswGAEW._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (2 + 5) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _rFeSWkcW, _7ytwpAkD);
					end;
				elseif string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, _dz9F6Edx) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
					if game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
								if v._xOtG83nV == _uA3ui9qg then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-52 + 100) then
											_vPFcIsGM(_onHgYyzG);
											local _IhLpMquN = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(-3 + 15)), 0);
											((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._BcGPQM7e:_dX5IzNiJ(__xor_decode("", 99))):_hOfJD1fe(__xor_decode("372233", 99), _UWIiwj4W._ZH3x4hyR(_IhLpMquN._EWiDuNSW));
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (8 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(11 + 90))), 0, 0));
											_rfhvhoJ7 = true;
											_I1CJ5Bpr = true;
										else
											_rfhvhoJ7 = false;
											_I1CJ5Bpr = false;
__dummy_ops(); -- obf
											_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
										end;
										_jUKVPjiK();
__dummy_ops(); -- obf
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										v._yMRN0wrA._zfGLVJb0 = (1 + 1);
										v._BcGPQM7e._2Og4DODB = 0;
										v._BcGPQM7e._IbmeQpml = 0;
										_AJZvllFT();
										_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
										_DFxiFN8p = v._xOtG83nV;
										_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
									until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("3216061017", 99);
									_rfhvhoJ7 = false;
									_I1CJ5Bpr = false;
								end;
							end;
						end;
					else
						_rfhvhoJ7 = false;
						_I1CJ5Bpr = false;
						_NwLutZRn(_pdaxq6k9);
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99) then
__dummy_ops(); -- obf
			pcall(function()
				_VaWzKIOy();
__dummy_ops(); -- obf
				_NwLutZRn(_pdaxq6k9);
				if game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ (_uA3ui9qg) then
					for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
						if v._xOtG83nV == _uA3ui9qg and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
__dummy_ops(); -- obf
								if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (6 + 100) then
									local _IhLpMquN = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(-10 + 15)), 0);
									((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._BcGPQM7e:_dX5IzNiJ(__xor_decode("", 99))):_hOfJD1fe(__xor_decode("372233", 99), _UWIiwj4W._ZH3x4hyR(_IhLpMquN._EWiDuNSW));
									_vPFcIsGM(_onHgYyzG);
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-7 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-21 + 90))), 0, 0));
									_rfhvhoJ7 = true;
									_I1CJ5Bpr = true;
								else
									_I1CJ5Bpr = false;
									_rfhvhoJ7 = false;
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								end;
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
								_AJZvllFT();
								_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
							until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV)) or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99);
__dummy_ops(); -- obf
						end;
					end;
				else
					_rfhvhoJ7 = false;
					_I1CJ5Bpr = false;
__dummy_ops(); -- obf
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_pdaxq6k9);
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c0d0610", 99) then
			pcall(function()
				_NwLutZRn(_vDZMYFE0);
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("3106010c110d433008060f06170c0d", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2f0a150a0d0443390c0e010a06", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330c100610100607432e160e0e1a", 99)) then
__dummy_ops(); -- obf
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("3106010c110d433008060f06170c0d", 99) or v._xOtG83nV == __xor_decode("2f0a150a0d0443390c0e010a06", 99) or v._xOtG83nV == __xor_decode("27060e0c0d0a0043300c160f", 99) or v._xOtG83nV == __xor_decode("330c100610100607432e160e0e1a", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-45 + 100) then
										_vPFcIsGM(_onHgYyzG);
										local _IhLpMquN = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(8 + 15)), 0);
										((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._BcGPQM7e:_dX5IzNiJ(__xor_decode("", 99))):_hOfJD1fe(__xor_decode("372233", 99), _UWIiwj4W._ZH3x4hyR(_IhLpMquN._EWiDuNSW));
										_rfhvhoJ7 = true;
										_I1CJ5Bpr = true;
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-21 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(0 + 90))), 0, 0));
__dummy_ops(); -- obf
									else
										_rfhvhoJ7 = false;
										_I1CJ5Bpr = false;
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
									end;
									_jUKVPjiK();
									_AJZvllFT();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c0d0610", 99) or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
								_rfhvhoJ7 = false;
								_I1CJ5Bpr = false;
							elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) then
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
							end;
						end;
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2002080613110a0d0006", 99) then
			pcall(function()
				local _9mIHV93B = _TV4Txa4P._ZH3x4hyR(-2091.911865234375, 70.00884246826172, -12142.8359375);
				_NwLutZRn(_9mIHV93B);
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200c0c080a064320110205170611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("20020806432416021107", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2102080a0d04433017020505", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2b060207432102080611", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200c0c080a064320110205170611", 99) or v._xOtG83nV == __xor_decode("20020806432416021107", 99) or v._xOtG83nV == __xor_decode("2102080a0d04433017020505", 99) or v._xOtG83nV == __xor_decode("2b060207432102080611", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (49 + 100) then
__dummy_ops(); -- obf
										_vPFcIsGM(_onHgYyzG);
										local _IhLpMquN = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(-9 + 15)), 0);
										((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._BcGPQM7e:_dX5IzNiJ(__xor_decode("", 99))):_hOfJD1fe(__xor_decode("372233", 99), _UWIiwj4W._ZH3x4hyR(_IhLpMquN._EWiDuNSW));
										_rfhvhoJ7 = true;
										_I1CJ5Bpr = true;
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (12 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(-14 + 90))), 0, 0));
									else
										_rfhvhoJ7 = false;
__dummy_ops(); -- obf
										_I1CJ5Bpr = false;
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									end;
									_jUKVPjiK();
									_AJZvllFT();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2002080613110a0d0006", 99) or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
								_rfhvhoJ7 = false;
								_I1CJ5Bpr = false;
							elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("20020806432416021107", 99)) then
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
local __fn_379 = function(__p) return __p and true or false end -- junk
							end;
__dummy_ops(); -- obf
						end;
					end;
__dummy_ops(); -- obf
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99) then
__dummy_ops(); -- obf
			pcall(function()
				for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
					if v._xOtG83nV and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
						if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)))._EWiDuNSW)._uDjfEeA6 <= (-1251 + 2000) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (17 + 100) then
									_vPFcIsGM(_onHgYyzG);
									local _IhLpMquN = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(1 + 15)), 0);
									((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._BcGPQM7e:_dX5IzNiJ(__xor_decode("", 99))):_hOfJD1fe(__xor_decode("372233", 99), _UWIiwj4W._ZH3x4hyR(_IhLpMquN._EWiDuNSW));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-7 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(45 + 90))), 0, 0));
									_rfhvhoJ7 = true;
									_I1CJ5Bpr = true;
__dummy_ops(); -- obf
								else
__dummy_ops(); -- obf
									_rfhvhoJ7 = false;
									_I1CJ5Bpr = false;
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								end;
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
								_AJZvllFT();
								_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
							until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("2d060211061017", 99);
							_rfhvhoJ7 = false;
							_I1CJ5Bpr = false;
						end;
					end;
				end;
			end);
		elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] and _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c1010", 99) then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
				_KzCPUega();
				_NwLutZRn(_3ytC0xBj);
				if (_3ytC0xBj._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (0 + 5) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), _iYzezWIu, _1Bu6Tl15);
				end;
			elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
				pcall(function()
__dummy_ops(); -- obf
					_KzCPUega();
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_fo25g03l) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v._xOtG83nV == _2xWLJB30 and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
__dummy_ops(); -- obf
									if v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (5 + 100) then
										_vPFcIsGM(_onHgYyzG);
										local _IhLpMquN = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(6 + 15)), 0);
										((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._BcGPQM7e:_dX5IzNiJ(__xor_decode("", 99))):_hOfJD1fe(__xor_decode("372233", 99), _UWIiwj4W._ZH3x4hyR(_IhLpMquN._EWiDuNSW));
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (17 + 25), 0) * _TV4Txa4P._rMQzUmds(math._PUgGM5ZN((-(74 + 90))), 0, 0));
										_rfhvhoJ7 = true;
										_I1CJ5Bpr = true;
__dummy_ops(); -- obf
									else
										_rfhvhoJ7 = false;
										_I1CJ5Bpr = false;
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									end;
									_jUKVPjiK();
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
__dummy_ops(); -- obf
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_AJZvllFT();
									_xZMIM607 = v._yMRN0wrA._EWiDuNSW;
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)] or not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2e02101706111a432e06170b0c07", 99)] == __xor_decode("210c1010", 99) or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or game.Players._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV));
								_I1CJ5Bpr = false;
							end;
						end;
					else
						_rfhvhoJ7 = false;
						_I1CJ5Bpr = false;
						_NwLutZRn(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(_fo25g03l))._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
					end;
				end);
			end;
__dummy_ops(); -- obf
		end;
	end;
__dummy_ops(); -- obf
end);
_tJ0RwriY = _V8Gpv6Eg._6T5ojCWC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("371a11020d17432c0543370b064330080a0610", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_3CsXkOsW = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99),
	_LIu1DE1b = false,
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)]);
	end
});
function _SDprvdcB()
__dummy_ops(); -- obf
	local _RZnUCXms = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._Jpt97hvj._MwVGzzUk;
	local _J9JPgMyx = {
		_Xs7n8uMF = false,
		_pxULsfjR = false,
		_Qo9wXdiT = false,
		_vBPOiP48 = false
__dummy_ops(); -- obf
	};
	for _, v in ipairs(_RZnUCXms:_eHS4mqzq()) do
		if string._X9poBKx7(v._xOtG83nV, __xor_decode("3d261a06460747", 99)) and _J9JPgMyx[v._xOtG83nV] ~= nil then
			if tonumber(v._zfGLVJb0) == 0 then
__dummy_ops(); -- obf
				_J9JPgMyx[v._xOtG83nV] = true;
			end;
		end;
__dummy_ops(); -- obf
	end;
__dummy_ops(); -- obf
	for _, _60Q569mD in pairs(_J9JPgMyx) do
		if not _60Q569mD then
__dummy_ops(); -- obf
			return false;
		end;
	end;
	return true;
end;
function _tXVFxNfR()
	for _, _tiSnzy9A in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._Jpt97hvj._MwVGzzUk:_eHS4mqzq()) do
		if _tiSnzy9A:_dX5IzNiJ(__xor_decode("2602040f06210c10102211060d02", 99)) then
			for i, v in pairs(_tiSnzy9A._xzFhFfyc:_eHS4mqzq()) do
				if v._xOtG83nV == __xor_decode("37110606", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(v._9MXvyS5q._EWiDuNSW));
					_aXPyDdTo();
__dummy_ops(); -- obf
				end;
			end;
		end;
	end;
end;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)] then
			pcall(function()
				if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("371a11020d17430c0543170b064330080a0610", 99)) then
					if not _SDprvdcB() then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v._xOtG83nV == __xor_decode("30061113060d17432b160d170611", 99) or v._xOtG83nV == __xor_decode("3008160f0f43300f021a0611", 99) or v._xOtG83nV == __xor_decode("2a100f0643200b020e130a0c0d", 99) or v._xOtG83nV == __xor_decode("30160d4e080a1010060743340211110a0c11", 99) then
								if v._BcGPQM7e and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										_ncNRWHvo();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
										_wgBbrKQh();
										_jUKVPjiK();
										v._BcGPQM7e._2Og4DODB = 0;
										v._BcGPQM7e._IbmeQpml = 0;
										_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
										_DFxiFN8p = v._xOtG83nV;
									until not v._zL81RjqU or v._BcGPQM7e._usQ3DGFi <= 0 or _SDprvdcB() or (not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)]);
								end;
							end;
						end;
					else
						repeat _ncNRWHvo()
							_tXVFxNfR();
						until (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("371a11020d17430c0543170b064330080a0610", 99)) or (not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c4330160e0e0c0d43371a11020d17432c0543370b064330080a0610", 99)]);
					end;
				end;
__dummy_ops(); -- obf
			end);
		end;
	end;
end);
_W3ZG5Uyj = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99),
	_LIu1DE1b = false,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)]);
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)] then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("371a11020d17430c0543170b064330080a0610", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
						if v._xOtG83nV == __xor_decode("371a11020d17430c0543170b064330080a0610", 99) then
							repeat
								_ncNRWHvo();
								_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								_wgBbrKQh();
								_jUKVPjiK();
								v._BcGPQM7e._2Og4DODB = 0;
								v._BcGPQM7e._IbmeQpml = 0;
							until not v._hRuKOj99 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("371a11020d17430c0543170b064330080a0610", 99))) or (not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43280a0f0f43371a11020d17432c0543370b064330080a0610", 99)]);
						end;
					end;
				end;
			end);
		end;
	end;
end);
_pA30FKU1 = _V8Gpv6Eg._6T5ojCWC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e0c01432502110e", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
__dummy_ops(); -- obf
if _LfIBZk7l then
	_I6VikIjx = {
		__xor_decode("21020d070a17", 99),
		__xor_decode("2e0c0d08061a", 99),
		__xor_decode("240c110a0f0f02", 99),
		__xor_decode("330a11021706", 99),
		__xor_decode("2111161706", 99),
		__xor_decode("2706100611174321020d070a17", 99),
		__xor_decode("270610061117432c05050a000611", 99),
__dummy_ops(); -- obf
		__xor_decode("300d0c144321020d070a17", 99),
		__xor_decode("300d0c140e020d", 99),
		__xor_decode("200b0a060543330617171a432c05050a000611", 99),
		__xor_decode("30081a4321020d070a17", 99),
		__xor_decode("27021108432e0210170611", 99),
		__xor_decode("370c040243340211110a0c11", 99),
		__xor_decode("240f02070a02170c11", 99),
		__xor_decode("2e0a0f0a1702111a43300c0f070a0611", 99),
		__xor_decode("2e0a0f0a1702111a4330131a", 99),
__dummy_ops(); -- obf
		__xor_decode("250a100b0e020d43340211110a0c11", 99),
		__xor_decode("250a100b0e020d43200c0e0e020d070c", 99),
		__xor_decode("240c074410432416021107", 99),
		__xor_decode("300b020d0702", 99),
		__xor_decode("310c1a020f433012160207", 99),
		__xor_decode("310c1a020f43300c0f070a0611", 99),
		__xor_decode("24020f0f061a43330a11021706", 99),
		__xor_decode("24020f0f061a4320021317020a0d", 99)
	};
elseif _tRfh7Inj then
	_I6VikIjx = {
		__xor_decode("31020a070611", 99),
		__xor_decode("2e061100060d02111a", 99),
		__xor_decode("3014020d43330a11021706", 99),
		__xor_decode("250200170c111a433017020505", 99),
		__xor_decode("2e02110a0d06432f0a061617060d020d17", 99),
		__xor_decode("2e02110a0d064320021317020a0d", 99),
__dummy_ops(); -- obf
		__xor_decode("390c0e010a06", 99),
		__xor_decode("35020e130a1106", 99),
		__xor_decode("300d0c144337110c0c130611", 99),
		__xor_decode("340a0d17061143340211110a0c11", 99),
__dummy_ops(); -- obf
		__xor_decode("2f0201433016010c11070a0d021706", 99),
		__xor_decode("2b0c110d060743340211110a0c11", 99),
		__xor_decode("2e02040e02432d0a0d0902", 99),
		__xor_decode("2f02150243330a11021706", 99),
		__xor_decode("300b0a1343270600080b020d07", 99),
		__xor_decode("300b0a1343260d040a0d060611", 99),
		__xor_decode("300b0a134330170614021107", 99),
		__xor_decode("300b0a13432c05050a000611", 99),
		__xor_decode("221100170a0043340211110a0c11", 99),
__dummy_ops(); -- obf
		__xor_decode("300d0c14432f1611080611", 99),
		__xor_decode("30060243300c0f070a0611", 99),
__dummy_ops(); -- obf
		__xor_decode("340217061143250a040b170611", 99)
	};
__dummy_ops(); -- obf
elseif _7Y9SwizB then
	_I6VikIjx = {
		__xor_decode("330a11021706432e0a0f0f0a0c0d020a1106", 99),
		__xor_decode("271102040c0d432011061443340211110a0c11", 99),
		__xor_decode("271102040c0d4320110614432211000b0611", 99),
		__xor_decode("25060e020f06432a100f020d070611", 99),
		__xor_decode("240a020d17432a100f020d070611", 99),
		__xor_decode("2e02110a0d0643200c0e0e0c070c1106", 99),
		__xor_decode("2e02110a0d0643310602114322070e0a11020f", 99),
		__xor_decode("250a100b0e020d4331020a070611", 99),
		__xor_decode("250a100b0e020d4320021317020a0d", 99),
		__xor_decode("250c1106101743330a11021706", 99),
		__xor_decode("2e1a170b0c0f0c040a00020f43330a11021706", 99),
		__xor_decode("29160d040f0643330a11021706", 99),
		__xor_decode("2e161008061706061143330a11021706", 99),
		__xor_decode("3106010c110d433008060f06170c0d", 99),
		__xor_decode("2f0a150a0d0443390c0e010a06", 99),
		__xor_decode("27060e0c0d0a0043300c160f", 99),
		__xor_decode("330c100610100607432e160e0e1a", 99),
__dummy_ops(); -- obf
		__xor_decode("3306020d16174330000c1617", 99),
		__xor_decode("3306020d161743331106100a07060d17", 99),
		__xor_decode("2a000643201106020e43200b0605", 99),
		__xor_decode("2a000643201106020e43200c0e0e020d070611", 99),
		__xor_decode("200c0c080a064320110205170611", 99),
		__xor_decode("20020806432416021107", 99),
__dummy_ops(); -- obf
		__xor_decode("2102080a0d04433017020505", 99),
		__xor_decode("2b060207432102080611", 99),
		__xor_decode("200c000c0243340211110a0c11", 99),
		__xor_decode("200b0c000c0f0217064321021143210217170f0611", 99),
		__xor_decode("301406061743370b0a0605", 99),
		__xor_decode("20020d071a43310601060f", 99),
__dummy_ops(); -- obf
		__xor_decode("20020d071a43330a11021706", 99),
		__xor_decode("300d0c144327060e0c0d", 99),
		__xor_decode("2a100f06432c16170f0214", 99),
		__xor_decode("2a100f020d0743210c1a", 99),
		__xor_decode("30160d4e080a1010060743340211110a0c11", 99),
		__xor_decode("2a100f0643200b020e130a0c0d", 99)
__dummy_ops(); -- obf
	};
end;
_yxzIim9c = _V8Gpv6Eg._6T5ojCWC:_cbrYLxZn({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("200b0c0c1006432e0c01", 99),
	_lBKinVRV = _I6VikIjx,
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e0c0101", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
__dummy_ops(); -- obf
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e0c01", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_vJSoayhr = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e432e0c01", 99),
	_cYZMpA94 = __xor_decode("2216170c43280a0f0f432e0c0143340b060d43301302140d", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)] then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e0c01", 99)]) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f0600170607432e0c01", 99)] then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432e0c01", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
__dummy_ops(); -- obf
							end;
						end;
					end;
				end;
__dummy_ops(); -- obf
			end);
		end;
	end;
end);
_f5uT9sTA = _V8Gpv6Eg._6T5ojCWC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("210c1010432502110e", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_ixOnRiM4 = _V8Gpv6Eg._6T5ojCWC:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("210c101043301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)]) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)]) then
				_ixOnRiM4:_zhx0DbgD(__xor_decode("301302140d42", 99));
			else
				_ixOnRiM4:_zhx0DbgD(__xor_decode("2d0c1743301302140d", 99));
			end;
		end);
	end;
end);
if _LfIBZk7l then
	_ALAUl2JY = {
		__xor_decode("370b0643240c110a0f0f0243280a0d04", 99),
__dummy_ops(); -- obf
		__xor_decode("210c01011a", 99),
		__xor_decode("3a06170a", 99),
		__xor_decode("2e0c01432f0602070611", 99),
		__xor_decode("350a00064322070e0a11020f", 99),
		__xor_decode("34021107060d", 99),
		__xor_decode("200b0a06054334021107060d", 99),
		__xor_decode("3014020d", 99),
		__xor_decode("2e02040e024322070e0a11020f", 99),
		__xor_decode("250a100b0e020d432f0c1107", 99),
		__xor_decode("341a10130611", 99),
		__xor_decode("370b160d07061143240c07", 99),
		__xor_decode("201a010c1104", 99),
		__xor_decode("300201061143261b13061117", 99)
	};
elseif _tRfh7Inj then
	_ALAUl2JY = {
		__xor_decode("270a020e0c0d07", 99),
		__xor_decode("290611060e1a", 99),
		__xor_decode("2502090a1702", 99),
		__xor_decode("270c0d433014020d", 99),
		__xor_decode("300e0c08064322070e0a11020f", 99),
		__xor_decode("2016111006074320021317020a0d", 99),
		__xor_decode("270211080106021107", 99),
		__xor_decode("2c11070611", 99),
		__xor_decode("22140208060d0607432a00064322070e0a11020f", 99),
		__xor_decode("370a070643280606130611", 99)
	};
elseif _7Y9SwizB then
	_ALAUl2JY = {
		__xor_decode("30170c0d06", 99),
		__xor_decode("2a100f020d0743260e1311061010", 99),
		__xor_decode("280a0f0c4322070e0a11020f", 99),
		__xor_decode("20021317020a0d43260f06130b020d17", 99),
		__xor_decode("21060216170a05160f43330a11021706", 99),
		__xor_decode("110a133c0a0d071102433711160643250c110e", 99),
		__xor_decode("2f0c0d040e02", 99),
		__xor_decode("300c160f43310602130611", 99),
		__xor_decode("2002080643321606060d", 99)
	};
end;
_WKqq5X1y = _V8Gpv6Eg._6T5ojCWC:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643210c1010", 99),
	_lBKinVRV = _ALAUl2JY,
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_cUHS2D82 = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43210c1010", 99),
	_cYZMpA94 = __xor_decode("2216170c43280a0f0f43210c101043340b060d43301302140d", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)] then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)]) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == _G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)] then
__dummy_ops(); -- obf
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43210c1010", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)]) then
					_NwLutZRn(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743210c1010", 99)]))._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR((2 + 5), (-4 + 10), (0 + 2)));
				end;
			end);
		end;
	end;
end);
_PCfh298O = _V8Gpv6Eg._6T5ojCWC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43220f0f43210c1010", 99),
	_46yGcjZr = _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)] then
			pcall(function()
				for i, _LPv3RTDi in pairs(_ALAUl2JY) do
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_LPv3RTDi) then
__dummy_ops(); -- obf
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v._xOtG83nV == _LPv3RTDi then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										v._BcGPQM7e._IbmeQpml = 0;
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										_wgBbrKQh();
									until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e43220f0f43210c1010", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
								end;
							end;
						end;
					elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(_LPv3RTDi) then
						_NwLutZRn(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(_LPv3RTDi))._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR((3 + 5), (6 + 10), (0 + 2)));
__dummy_ops(); -- obf
					end;
__dummy_ops(); -- obf
				end;
			end);
		end;
	end;
end);
_uK24sb02 = _V8Gpv6Eg._8kcZ44F3:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("260f0a1706432b160d170611", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_iD5kQM3B = _V8Gpv6Eg._8kcZ44F3:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("260f0a1706432b160d17061143301702171610", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) or (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2706020d071106", 99)) or (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("361101020d", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2706020d071106", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("361101020d", 99)) then
				_iD5kQM3B:_zhx0DbgD(__xor_decode("301302140d42", 99));
			else
__dummy_ops(); -- obf
				_iD5kQM3B:_zhx0DbgD(__xor_decode("2d0c1743301302140d", 99));
			end;
		end);
	end;
end);
_yhyb20D6 = _V8Gpv6Eg._8kcZ44F3:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("260f0a1706432b160d1706114333110c0411061010", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo() do
		pcall(function()
			if _LfIBZk7l or _tRfh7Inj then
				_yhyb20D6:_zhx0DbgD(__xor_decode("3006024350432c0d0f1a", 99));
			elseif _7Y9SwizB then
				_yhyb20D6:_zhx0DbgD((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("260f0a17062b160d170611", 99), __xor_decode("33110c0411061010", 99)));
			end;
		end);
	end;
end);
_JrBP6fnN = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43260f0a1706432b160d170611", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_CnyHqAVr = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c43260f0a1706432b160d170611432b0c13", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611432b0c13", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611432b0c13", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611432b0c13", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] and _7Y9SwizB then
			pcall(function()
				local _9IUJoUJP = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2;
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2706020d071106", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("361101020d", 99)) then
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5418.892578125, 313.74130249023, -2826.2260742188));
						if (_UWIiwj4W._ZH3x4hyR((-5418.892578125), 313.74130249023, (-2826.2260742188)) - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (0 + 3) then
__dummy_ops(); -- obf
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("260f0a17062b160d170611", 99));
						end;
					elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
__dummy_ops(); -- obf
						if string._Uw9siMFG(_9IUJoUJP, __xor_decode("270a02010f0c", 99)) or string._Uw9siMFG(_9IUJoUJP, __xor_decode("2706020d071106", 99)) or string._Uw9siMFG(_9IUJoUJP, __xor_decode("361101020d", 99)) then
							if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2706020d071106", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("361101020d", 99)) then
								for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
									if v._xOtG83nV == __xor_decode("270a02010f0c", 99) or v._xOtG83nV == __xor_decode("2706020d071106", 99) or v._xOtG83nV == __xor_decode("361101020d", 99) then
__dummy_ops(); -- obf
										if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
											repeat
												(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
												_jUKVPjiK();
												_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
												v._BcGPQM7e._IbmeQpml = 0;
__dummy_ops(); -- obf
												v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
												_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
												_wgBbrKQh();
											until _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] == false or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611432b0c13", 99)] and _7Y9SwizB then
			pcall(function()
				if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43260f0a1706432b160d170611", 99)] then
					if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) and (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2706020d071106", 99))) and (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("361101020d", 99))) then
						_dYaAbRzy();
					end;
				end;
			end);
__dummy_ops(); -- obf
		end;
	end;
end);
_lWDiVHsV = _V8Gpv6Eg._8kcZ44F3:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("210c0d06432502110e", 99),
__dummy_ops(); -- obf
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
local _D9SUw95Y = {
	__xor_decode("3216061017", 99),
	__xor_decode("2d0c433216061017", 99)
};
_J8UMtAK2 = _V8Gpv6Eg._8kcZ44F3:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643210c0d06432502110e432e06170b0c07", 99),
	_lBKinVRV = _D9SUw95Y,
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("30060f060017060743210c0d06432502110e432e06170b0c07", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_EqP6BkYD)
__dummy_ops(); -- obf
		_G._yfeCVCNX._Aoib2huL[__xor_decode("30060f060017060743210c0d06432502110e432e06170b0c07", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
__dummy_ops(); -- obf
});
_rEj9amrN = _V8Gpv6Eg._8kcZ44F3:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("210c0d0610432c140d0607", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo() do
		pcall(function()
			local _wzh6v3RD = _kkZGeqNk(__xor_decode("210c0d0610", 99));
			_rEj9amrN:_zhx0DbgD(tostring(_wzh6v3RD));
__dummy_ops(); -- obf
		end);
	end;
end);
_Vo62v7VE = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43210c0d06", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_0f3hDtBk = _TV4Txa4P._ZH3x4hyR(-9506.234375, 172.130615234375, 6117.0771484375);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("30060f060017060743210c0d06432502110e432e06170b0c07", 99)] == __xor_decode("2d0c433216061017", 99) and _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] and _7Y9SwizB then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("3106010c110d433008060f06170c0d", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2f0a150a0d0443390c0e010a06", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330c100610100607432e160e0e1a", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("3106010c110d433008060f06170c0d", 99) or v._xOtG83nV == __xor_decode("2f0a150a0d0443390c0e010a06", 99) or v._xOtG83nV == __xor_decode("27060e0c0d0a0043300c160f", 99) or v._xOtG83nV == __xor_decode("330c100610100607432e160e0e1a", 99) then
__dummy_ops(); -- obf
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
__dummy_ops(); -- obf
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
__dummy_ops(); -- obf
								until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-9506.234375, 172.130615234375, 6117.0771484375));
				end;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
_xbk5306V = _TV4Txa4P._ZH3x4hyR(-9516.99316, 172.017181, 6078.46533, 0, 0, -(1 + 1), 0, (1 + 1), 0, (1 + 1), 0, 0);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("30060f060017060743210c0d06432502110e432e06170b0c07", 99)] == __xor_decode("3216061017", 99) and _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] and _7Y9SwizB then
			pcall(function()
				local _9IUJoUJP = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2;
				if not string._Uw9siMFG(_9IUJoUJP, __xor_decode("27060e0c0d0a0043300c160f", 99)) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2201020d070c0d3216061017", 99));
				end;
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false then
					_NwLutZRn(_xbk5306V);
					if (_xbk5306V._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (0 + 3) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170211173216061017", 99), __xor_decode("2b02160d170607321606101751", 99), (1 + 1));
					end;
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == true then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("3106010c110d433008060f06170c0d", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2f0a150a0d0443390c0e010a06", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("27060e0c0d0a0043300c160f", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330c100610100607432e160e0e1a", 99)) then
__dummy_ops(); -- obf
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								if v._xOtG83nV == __xor_decode("3106010c110d433008060f06170c0d", 99) or v._xOtG83nV == __xor_decode("2f0a150a0d0443390c0e010a06", 99) or v._xOtG83nV == __xor_decode("27060e0c0d0a0043300c160f", 99) or v._xOtG83nV == __xor_decode("330c100610100607432e160e0e1a", 99) then
									if string._Uw9siMFG((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._9EOiKTsf._9IUJoUJP._ZoEpv6x5._HhZDv3q2, __xor_decode("27060e0c0d0a0043300c160f", 99)) then
										repeat
											(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
											_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
											_jUKVPjiK();
											_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
											_DFxiFN8p = v._xOtG83nV;
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
											v._BcGPQM7e._IbmeQpml = 0;
											_wgBbrKQh();
										until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43210c0d06", 99)] or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._hb6ExXuj._rfEwujR7 == false;
									end;
								end;
							end;
						end;
					end;
				end;
__dummy_ops(); -- obf
			end);
		end;
	end;
end);
_HRKtfzY6 = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4331020d070c0e4330161113110a1006", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4331020d070c0e4330161113110a1006", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4331020d070c0e4330161113110a1006", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4331020d070c0e4330161113110a1006", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4331020d070c0e4330161113110a1006", 99)] then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210c0d0610", 99), __xor_decode("21161a", 99), (1 + 1), (1 + 1));
			end;
		end;
	end);
end);
_QppA71UI = _V8Gpv6Eg._8kcZ44F3:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("330a110217064331020a07", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
__dummy_ops(); -- obf
});
_SZUzR7mB = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43330a110217064331020a07", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43330a110217064331020a07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43330a110217064331020a07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43330a110217064331020a07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
function _kVstTlhw()
	local _bMuJkkMh = _TV4Txa4P._ZH3x4hyR(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, (1 + 1), 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458);
	for _, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
		if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
			local _xIdDf91s = v._yMRN0wrA._EWiDuNSW;
			if (_bMuJkkMh._EWiDuNSW - _xIdDf91s)._uDjfEeA6 <= (-958 + 2000) then
				if v then
					return v;
				else
					return false;
				end;
			end;
		end;
__dummy_ops(); -- obf
	end;
end;
__dummy_ops(); -- obf
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo() do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43330a110217064331020a07", 99)] then
			pcall(function()
				for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
					if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
						if v._xOtG83nV then
							if _kVstTlhw() then
__dummy_ops(); -- obf
								if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)))._EWiDuNSW)._uDjfEeA6 <= (-534 + 2000) then
									repeat
__dummy_ops(); -- obf
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
__dummy_ops(); -- obf
										_wgBbrKQh();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
__dummy_ops(); -- obf
										v._yMRN0wrA._zfGLVJb0 = (1 + 1);
										v._BcGPQM7e._2Og4DODB = 0;
										v._BcGPQM7e._IbmeQpml = 0;
										_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
										_DFxiFN8p = v._xOtG83nV;
									until not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c43330a110217064331020a07", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or (not game._yM6SEcBN._5iAO5Uk9:_dX5IzNiJ(v._xOtG83nV));
								end;
							else
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, (1 + 1), 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458));
							end;
						end;
					end;
				end;
			end);
__dummy_ops(); -- obf
		end;
	end;
__dummy_ops(); -- obf
end);
__dummy_ops(); -- obf
_gc9KkUaA = _V8Gpv6Eg._8kcZ44F3:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("200b061017432502110e", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_MUUS0URI = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43200b06101743371406060d", 99),
	_cYZMpA94 = __xor_decode("371406060d43170c43000b061017", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_XLWhp6Jp = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99),
	_cYZMpA94 = __xor_decode("2a0d1017020d1743170c43000b061017", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_SlCoCtzu = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4330170c13432a17060e10", 99),
	_cYZMpA94 = __xor_decode("30170c1343340b060d4324061743240c07441043200b020f0a0006430c1143250c27", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4330170c13432a17060e10", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4330170c13432a17060e10", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4330170c13432a17060e10", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo() do
		pcall(function()
			if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c4330170c13432a17060e10", 99)] then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("240c07441043200b020f0a0006", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("240c07441043200b020f0a0006", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a1017430c0543270211080d061010", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a1017430c0543270211080d061010", 99)) then
					_XLWhp6Jp:_lnHguDa3(false);
					_MUUS0URI:_lnHguDa3(false);
					_NwLutZRn((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P);
				end;
			end;
		end);
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)] then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._fRemm0ER:_eHS4mqzq()) do
					if v._xOtG83nV:_Uw9siMFG(__xor_decode("200b061017", 99)) then
						repeat
							_ncNRWHvo();
							_NwLutZRn(v._QaZb2yKw._TV4Txa4P);
						until _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b06101743371406060d", 99)] == false or (not v._zL81RjqU);
						_NwLutZRn((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P);
					end;
				end;
			end;
		end);
	end;
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99)] then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._fRemm0ER:_eHS4mqzq()) do
					if v._xOtG83nV:_Uw9siMFG(__xor_decode("200b061017", 99)) then
						repeat
							_ncNRWHvo();
							if v._xOtG83nV == __xor_decode("270a020e0c0d07200b061017", 99) then
								_iswjWFro(v._QaZb2yKw._TV4Txa4P);
							elseif v._xOtG83nV == __xor_decode("240c0f07200b061017", 99) then
								_iswjWFro(v._QaZb2yKw._TV4Txa4P);
							elseif v._xOtG83nV == __xor_decode("300a0f150611200b061017", 99) then
								_iswjWFro(v._QaZb2yKw._TV4Txa4P);
							end;
						until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43200b061017432a0d1017020d17", 99)] or (not v._zL81RjqU);
					end;
				end;
			end;
		end);
	end;
end);
_GVlYxjyz = _V8Gpv6Eg._8kcZ44F3:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("200208064333110a0d0006", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_LAkSJLoT = _V8Gpv6Eg._8kcZ44F3:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("200208064333110a0d000643301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo((0 + 5)) do
		pcall(function()
			if _7Y9SwizB then
				if string._JrocjFcF((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99))) == (-17 + 88) then
					_LAkSJLoT:_zhx0DbgD(string._GTI4YENa((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99)), (-10 + 39), (-34 + 41)) .. __xor_decode("4331060e020a0d0a0d04", 99));
				elseif string._JrocjFcF((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99))) == (-21 + 87) then
					_LAkSJLoT:_zhx0DbgD(string._GTI4YENa((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99)), (-2 + 39), (-7 + 40)) .. __xor_decode("4331060e020a0d0a0d04", 99));
				elseif string._JrocjFcF((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99))) == (1 + 86) then
					_LAkSJLoT:_zhx0DbgD(string._GTI4YENa((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99)), (-2 + 39), (-9 + 39)) .. __xor_decode("4331060e020a0d0a0d04", 99));
				else
__dummy_ops(); -- obf
					_LAkSJLoT:_zhx0DbgD(__xor_decode("200208064333110a0d0006433017021716105943301302140d060742", 99));
__dummy_ops(); -- obf
				end;
			else
				_LAkSJLoT:_zhx0DbgD(__xor_decode("3006024350430c0d0f1a", 99));
__dummy_ops(); -- obf
			end;
		end);
	end;
end);
__dummy_ops(); -- obf
_I2PEqeEO = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43280217020816110a", 99),
	_cYZMpA94 = __xor_decode("2216170c432502110e434843280a0f0f43200208064333110a0d00064338433006024350432c0d0f1a433e", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YLU9LAG9 = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c43301302140d43200208064333110a0d0006", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43301302140d43200208064333110a0d0006", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43301302140d43200208064333110a0d0006", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43301302140d43200208064333110a0d0006", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43301302140d43200208064333110a0d0006", 99)] and _7Y9SwizB then
			_ncNRWHvo((2 + 2));
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2002080633110a0d0006301302140d0611", 99), true);
		end;
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)] and _7Y9SwizB then
			pcall(function()
				if game.ReplicatedStorage:_dX5IzNiJ(__xor_decode("200208064333110a0d0006", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200208064333110a0d0006", 99)) then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200208064333110a0d0006", 99)) then
__dummy_ops(); -- obf
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
							if v._xOtG83nV == __xor_decode("200208064333110a0d0006", 99) then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
__dummy_ops(); -- obf
										v._BcGPQM7e._IbmeQpml = 0;
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										_ZMbrYlbZ(v);
										_wgBbrKQh();
									until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
								end;
							end;
						end;
					elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._WbIh6PW8._pQbkiNQC._jl8VomOM._zfGLVJb0 == 0 and ((_TV4Txa4P._ZH3x4hyR((-1990.672607421875), 4532.99951171875, (-14973.6748046875)))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 >= (689 + 2000) then
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2151.82153, 149.315704, -12404.9053));
					end;
				elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200c0c080a064320110205170611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("20020806432416021107", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2102080a0d04433017020505", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2b060207432102080611", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200c0c080a064320110205170611", 99) or v._xOtG83nV == __xor_decode("20020806432416021107", 99) or v._xOtG83nV == __xor_decode("2102080a0d04433017020505", 99) or v._xOtG83nV == __xor_decode("2b060207432102080611", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
									_wgBbrKQh();
								until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e43280217020816110a", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._WbIh6PW8._pQbkiNQC._jl8VomOM._zfGLVJb0 == 0 or (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("200208064333110a0d000643382f154d43515053533e433831020a0743210c10103e", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200208064333110a0d000643382f154d43515053533e433831020a0743210c10103e", 99));
							end;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2091.911865234375, 70.00884246826172, -12142.8359375));
				end;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
_FQ8dQPJK = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_GbtUcEh4 = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)] and _7Y9SwizB then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200208064333110a0d0006", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200208064333110a0d0006", 99) then
__dummy_ops(); -- obf
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_ZMbrYlbZ(v);
									_wgBbrKQh();
									if v._BcGPQM7e:_dX5IzNiJ(__xor_decode("220d0a0e02170c11", 99)) then
										v._BcGPQM7e._mZeIeBGD:_ROayZZfU();
__dummy_ops(); -- obf
									end;
								until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43200208064333110a0d0006", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
				end;
			end);
		end;
	end;
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)] and _7Y9SwizB then
			pcall(function()
__dummy_ops(); -- obf
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270c16040b43280a0d04", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("270c16040b43280a0d04", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_ZMbrYlbZ(v);
__dummy_ops(); -- obf
									_wgBbrKQh();
									if v._BcGPQM7e:_dX5IzNiJ(__xor_decode("220d0a0e02170c11", 99)) then
										v._BcGPQM7e._mZeIeBGD:_ROayZZfU();
									end;
__dummy_ops(); -- obf
								until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c43280a0f0f43270c16040b43280a0d04", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				end;
			end);
		end;
	end;
end);
_pCqyNKpv = _V8Gpv6Eg._8kcZ44F3:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e021706110a020f10", 99),
__dummy_ops(); -- obf
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
if _LfIBZk7l then
	_0F9ryMzG = {
		__xor_decode("2e02040e02432c1106", 99),
		__xor_decode("220d04060f43340a0d0410", 99),
		__xor_decode("2f0602170b0611", 99),
__dummy_ops(); -- obf
		__xor_decode("3000110213432e0617020f", 99)
__dummy_ops(); -- obf
	};
__dummy_ops(); -- obf
elseif _tRfh7Inj then
	_0F9ryMzG = {
		__xor_decode("3102070a0c0200170a1506", 99),
		__xor_decode("2e1a10170a004327110c130f0617", 99),
__dummy_ops(); -- obf
		__xor_decode("2e02040e02432c1106", 99),
		__xor_decode("2f0602170b0611", 99),
		__xor_decode("2600170c130f02100e", 99),
__dummy_ops(); -- obf
		__xor_decode("3000110213432e0617020f", 99)
	};
elseif _7Y9SwizB then
	_0F9ryMzG = {
		__xor_decode("2f0602170b0611", 99),
		__xor_decode("3000110213432e0617020f", 99),
		__xor_decode("200c0d091611060743200c000c02", 99),
		__xor_decode("271102040c0d433000020f06", 99),
		__xor_decode("24160d130c14070611", 99),
		__xor_decode("250a100b4337020a0f", 99),
		__xor_decode("2e0a0d0a4337161008", 99)
__dummy_ops(); -- obf
	};
end;
function _SUbKLzfv(_SIZGgot0)
	if _SIZGgot0 == __xor_decode("3102070a0c0200170a1506", 99) and _tRfh7Inj then
		_YBRdqV2I = {
			__xor_decode("250200170c111a433017020505", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-507.7895202636719, 72.99479675292969, -126.45632934570312);
	elseif _SIZGgot0 == __xor_decode("2e1a10170a004327110c130f0617", 99) and _tRfh7Inj then
__dummy_ops(); -- obf
		_YBRdqV2I = {
			__xor_decode("340217061143250a040b170611", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-3352.9013671875, 285.01556396484375, -10534.841796875);
	elseif _SIZGgot0 == __xor_decode("2e02040e02432c1106", 99) and _LfIBZk7l then
		_YBRdqV2I = {
			__xor_decode("2e0a0f0a1702111a4330131a", 99)
__dummy_ops(); -- obf
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-5850.2802734375, 77.28675079345703, 8848.6748046875);
	elseif _SIZGgot0 == __xor_decode("2e02040e02432c1106", 99) and _tRfh7Inj then
		_YBRdqV2I = {
			__xor_decode("2f02150243330a11021706", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-5234.60595703125, 51.953372955322266, -4732.27880859375);
	elseif _SIZGgot0 == __xor_decode("220d04060f43340a0d0410", 99) and _LfIBZk7l then
		_YBRdqV2I = {
			__xor_decode("310c1a020f43300c0f070a0611", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-7827.15625, 5606.912109375, -1705.5833740234375);
	elseif _SIZGgot0 == __xor_decode("2f0602170b0611", 99) and _LfIBZk7l then
		_YBRdqV2I = {
__dummy_ops(); -- obf
			__xor_decode("330a11021706", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
__dummy_ops(); -- obf
	elseif _SIZGgot0 == __xor_decode("2f0602170b0611", 99) and _tRfh7Inj then
		_YBRdqV2I = {
			__xor_decode("2e02110a0d064320021317020a0d", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
__dummy_ops(); -- obf
	elseif _SIZGgot0 == __xor_decode("2f0602170b0611", 99) and _7Y9SwizB then
		_YBRdqV2I = {
			__xor_decode("29160d040f0643330a11021706", 99)
		};
__dummy_ops(); -- obf
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-11975.78515625, 331.7734069824219, -10620.0302734375);
	elseif _SIZGgot0 == __xor_decode("2600170c130f02100e", 99) and _tRfh7Inj then
		_YBRdqV2I = {
			__xor_decode("300b0a1343270600080b020d07", 99),
			__xor_decode("300b0a1343260d040a0d060611", 99),
			__xor_decode("300b0a134330170614021107", 99),
			__xor_decode("300b0a13432c05050a000611", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(911.35827636719, 125.95812988281, 33159.5390625);
	elseif _SIZGgot0 == __xor_decode("3000110213432e0617020f", 99) and _LfIBZk7l then
		_YBRdqV2I = {
			__xor_decode("2111161706", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
	elseif _SIZGgot0 == __xor_decode("3000110213432e0617020f", 99) and _tRfh7Inj then
		_YBRdqV2I = {
			__xor_decode("2e061100060d02111a", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-972.307373046875, 73.04473876953125, 1419.2901611328125);
__dummy_ops(); -- obf
	elseif _SIZGgot0 == __xor_decode("3000110213432e0617020f", 99) and _7Y9SwizB then
__dummy_ops(); -- obf
		_YBRdqV2I = {
__dummy_ops(); -- obf
			__xor_decode("330a11021706432e0a0f0f0a0c0d020a1106", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-289.6311950683594, 43.8282470703125, 5583.66357421875);
	elseif _SIZGgot0 == __xor_decode("200c0d091611060743200c000c02", 99) and _7Y9SwizB then
		_YBRdqV2I = {
			__xor_decode("200b0c000c0f0217064321021143210217170f0611", 99)
		};
__dummy_ops(); -- obf
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(744.7930908203125, 24.76934242248535, -12637.7255859375);
	elseif _SIZGgot0 == __xor_decode("271102040c0d433000020f06", 99) and _7Y9SwizB then
		_YBRdqV2I = {
			__xor_decode("271102040c0d432011061443340211110a0c11", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(5824.06982421875, 51.38640213012695, -1106.694580078125);
	elseif _SIZGgot0 == __xor_decode("24160d130c14070611", 99) and _7Y9SwizB then
		_YBRdqV2I = {
			__xor_decode("330a10170c0f43210a0f0f0a0c0d020a1106", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-379.6134338378906, 73.84449768066406, 5928.5263671875);
	elseif _SIZGgot0 == __xor_decode("250a100b4337020a0f", 99) and _7Y9SwizB then
		_YBRdqV2I = {
			__xor_decode("250a100b0e020d4320021317020a0d", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-10961.0126953125, 331.7977600097656, -8914.29296875);
	elseif _SIZGgot0 == __xor_decode("2e0a0d0a4337161008", 99) and _7Y9SwizB then
		_YBRdqV2I = {
			__xor_decode("2e0a170b0c0f0c040a00020f43330a11021706", 99)
		};
		_zawYfaUg = _TV4Txa4P._ZH3x4hyR(-13516.0458984375, 469.8182373046875, -6899.16064453125);
	end;
end;
__dummy_ops(); -- obf
_TEAjNSiC = _V8Gpv6Eg._8kcZ44F3:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c1006432e021706110a020f", 99),
	_lBKinVRV = _0F9ryMzG,
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("30060f0600170607432e021706110a020f", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("30060f0600170607432e021706110a020f", 99)] = _EqP6BkYD;
	end
});
_xSBSHVCL = _V8Gpv6Eg._8kcZ44F3:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e432e021706110a020f", 99),
	_46yGcjZr = _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)]);
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)] then
__dummy_ops(); -- obf
			pcall(function()
				_SUbKLzfv(_G._yfeCVCNX._Aoib2huL[__xor_decode("30060f0600170607432e021706110a020f", 99)]);
__dummy_ops(); -- obf
				for i, _C98ykj1v in pairs(_YBRdqV2I) do
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_C98ykj1v) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if v._xOtG83nV == _C98ykj1v then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
										_DFxiFN8p = v._xOtG83nV;
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
										_wgBbrKQh();
									until not _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c432502110e432e021706110a020f", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
								end;
							end;
						end;
					else
						_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
						local _zFPgk1uj = (_UWIiwj4W._ZH3x4hyR(_zawYfaUg) - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6;
						if _zFPgk1uj > (-5478 + 18000) and _G._yfeCVCNX._Aoib2huL[__xor_decode("30060f0600170607432e021706110a020f", 99)] == __xor_decode("2600170c130f02100e", 99) then
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(923.21252441406, 126.9760055542, 32852.83203125));
						end;
						_NwLutZRn(_zawYfaUg);
__dummy_ops(); -- obf
					end;
				end;
			end);
		end;
	end;
end);
_KrlJNmkZ = _V8Gpv6Eg._3riCjViw:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("300617170a0d0410", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_Ukefm9ts = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30130a0d43330c100a170a0c0d", 99),
	_cYZMpA94 = __xor_decode("30130a0d43330c100a170a0c0d43340b060d432502110e", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("30130a0d43330c100a170a0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("30130a0d43330c100a170a0c0d", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_ezayFMqP = _V8Gpv6Eg._3riCjViw:_78vL80sn({
	_ZoEpv6x5 = __xor_decode("2502110e43270a1017020d0006", 99),
	_XaHHtl9L = (1 + 1),
	_46yGcjZr = {
		_wZWqkrue = (4 + 10),
		_SccYATbU = (9 + 50),
		_LIu1DE1b = _G._yfeCVCNX._B8nzttPb[__xor_decode("2502110e43270a1017020d0006", 99)]
	},
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2502110e43270a1017020d0006", 99)] = _1CCRvVck;
__dummy_ops(); -- obf
	end
});
_cYl1MqvJ = _V8Gpv6Eg._3riCjViw:_78vL80sn({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("330f021a061143371406060d433013060607", 99),
	_XaHHtl9L = (1 + 1),
	_46yGcjZr = {
		_wZWqkrue = (-4 + 10),
		_SccYATbU = (-52 + 350),
		_LIu1DE1b = _G._yfeCVCNX._B8nzttPb[__xor_decode("330f021a061143371406060d433013060607", 99)]
	},
	_ndWmPjxy = function(_1CCRvVck)
__dummy_ops(); -- obf
		_G._yfeCVCNX._B8nzttPb[__xor_decode("330f021a061143371406060d433013060607", 99)] = _1CCRvVck;
	end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_bvrwE3TH = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("21110a0d04432e0c01", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo() do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01", 99)] then
__dummy_ops(); -- obf
			pcall(function()
				for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
					if not string._Uw9siMFG(v._xOtG83nV, __xor_decode("210c1010", 99)) and v._xOtG83nV == _DFxiFN8p and (v._yMRN0wrA._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= _4lOMqFVV then
						v._yMRN0wrA._TV4Txa4P = _WKIpTdlm;
						v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
					end;
				end;
			end);
		end;
	end;
end);
local _Y2t0Cdln = {
	__xor_decode("2f0c14", 99),
	__xor_decode("2d0c110e020f", 99),
	__xor_decode("2b0a040b", 99)
};
_kiytaC7v = _V8Gpv6Eg._3riCjViw:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("21110a0d04432e0c01", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01432e0c0706", 99)],
	_lBKinVRV = _Y2t0Cdln,
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01432e0c0706", 99)] = _EqP6BkYD;
	end
__dummy_ops(); -- obf
});
local _9S6Kl3WQ = {
	__xor_decode("300f0c14", 99),
	__xor_decode("2d0c110e020f", 99),
	__xor_decode("25021017", 99),
	__xor_decode("30161306114325021017", 99)
};
_a7eTLy0H = _V8Gpv6Eg._3riCjViw:_cbrYLxZn({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2502101743221717020008432e06170b0c07", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008432e0c0706", 99)],
	_lBKinVRV = _9S6Kl3WQ,
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008432e0c0706", 99)] = _EqP6BkYD;
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo() do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008432e0c0706", 99)] == __xor_decode("300f0c14", 99) then
__dummy_ops(); -- obf
			_G._yfeCVCNX._B8nzttPb[__xor_decode("25021017432217170200084327060f021a", 99)] = 0.25;
__dummy_ops(); -- obf
		elseif _G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008432e0c0706", 99)] == __xor_decode("2d0c110e020f", 99) then
			_G._yfeCVCNX._B8nzttPb[__xor_decode("25021017432217170200084327060f021a", 99)] = 0.20;
		elseif _G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008432e0c0706", 99)] == __xor_decode("25021017", 99) then
			_G._yfeCVCNX._B8nzttPb[__xor_decode("25021017432217170200084327060f021a", 99)] = 0.15;
		elseif _G._yfeCVCNX._B8nzttPb[__xor_decode("2502101743221717020008432e0c0706", 99)] == __xor_decode("30161306114325021017", 99) then
			_G._yfeCVCNX._B8nzttPb[__xor_decode("25021017432217170200084327060f021a", 99)] = 0.10;
		end;
__dummy_ops(); -- obf
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo() do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01", 99)] then
			pcall(function()
				if _G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01432e0c0706", 99)] == __xor_decode("2f0c14", 99) then
__dummy_ops(); -- obf
					_4lOMqFVV = (36 + 150);
				elseif _G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01432e0c0706", 99)] == __xor_decode("2d0c110e020f", 99) then
					_4lOMqFVV = (-37 + 250);
				elseif _G._yfeCVCNX._B8nzttPb[__xor_decode("21110a0d04432e0c01432e0c0706", 99)] == __xor_decode("2b0a040b", 99) then
					_4lOMqFVV = (313 + 800);
				end;
			end);
		end;
	end;
end);
_h33pnsnZ = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2217021700084322161102", 99),
	_cYZMpA94 = __xor_decode("221717020008432d06021106101743260d060e0a0610", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2217170200084322161102", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2217170200084322161102", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
__dummy_ops(); -- obf
});
_YwIHUvQP(function()
	(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._NbCsCHrH:_CAh5wGBm(function()
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2217170200084322161102", 99)] and (not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e432511160a17432e02101706111a", 99)]) and (not _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e4324160d432e02101706111a", 99)]) then
			pcall(function()
				_wgBbrKQh();
			end);
		end;
	end);
end);
_1lS942Pc = _V8Gpv6Eg._3riCjViw:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("241102130b0a00", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_tvjufzhU = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2b0a0706432d0c170a050a0002170a0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a0706432d0c170a050a0002170a0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a0706432d0c170a050a0002170a0c0d", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a0706432d0c170a050a0002170a0c0d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
__dummy_ops(); -- obf
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a0706432d0c170a050a0002170a0c0d", 99)] then
__dummy_ops(); -- obf
			game.Players._5vXmWKtm._HEQ7AI1c._jzV4QsA2._UgAIr8uU = false;
		else
			game.Players._5vXmWKtm._HEQ7AI1c._jzV4QsA2._UgAIr8uU = true;
		end;
	end;
end);
_uD6vxhSa = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2b0a07064327020e0204064337061b17", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a07064327020e0204064337061b17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a07064327020e0204064337061b17", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a07064327020e0204064337061b17", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2b0a07064327020e0204064337061b17", 99)] then
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._9rvZ1HVS._CU85OxyF._zSkBMto8._UgAIr8uU = false;
		else
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._9rvZ1HVS._CU85OxyF._zSkBMto8._UgAIr8uU = true;
		end;
	end;
end);
_FjdeA1ji = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("210f0200084330001106060d", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("210f0200084330001106060d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("210f0200084330001106060d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._B8nzttPb[__xor_decode("210f0200084330001106060d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("210f0200084330001106060d", 99)] then
			(game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._Y6wwgOsF._RnP3PiKD = _PIKBopRV._ZH3x4hyR((-172 + 500), 0, (199 + 500), (30 + 500));
		else
__dummy_ops(); -- obf
			(game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._Y6wwgOsF._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (-216 + 500), (-160 + 500));
		end;
__dummy_ops(); -- obf
	end;
end);
_EdS9nP77 = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("340b0a17064330001106060d", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("340b0a17064330001106060d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("340b0a17064330001106060d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._B8nzttPb[__xor_decode("340b0a17064330001106060d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("340b0a17064330001106060d", 99)] then
			(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99))):_gV9xG3A6(false);
		else
__dummy_ops(); -- obf
			(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99))):_gV9xG3A6(true);
		end;
	end;
end);
_Lf2YGc7P = _V8Gpv6Eg._3riCjViw:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e02101706111a43300617170a0d0410", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_HKSpQG11 = _V8Gpv6Eg._3riCjViw:_78vL80sn({
	_ZoEpv6x5 = __xor_decode("2e02101706111a432b06020f170b4346", 99),
	_XaHHtl9L = (1 + 1),
	_46yGcjZr = {
		_wZWqkrue = (1 + 1),
		_SccYATbU = (24 + 100),
		_LIu1DE1b = _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)]
	},
__dummy_ops(); -- obf
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] = _1CCRvVck;
	end
});
_aSBaDQjo = _V8Gpv6Eg._3riCjViw:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a174330080a0f0f", 99)
});
_JtcCSNfn = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f4339", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4339", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_K2jmyQyq = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f433b", 99),
	_46yGcjZr = true,
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f433b", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_oGxLht5p = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f4320", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4320", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_GFuuFwrU = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f4335", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4335", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4335", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_so8uita6 = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f4325", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4325", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4325", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_mt5rhWny = _V8Gpv6Eg._3riCjViw:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("24160d4330080a0f0f", 99)
__dummy_ops(); -- obf
});
_Wa2jRex3 = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f4339", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("24160d432e02101706111a4330080a0f0f4339", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YnetkdI9 = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30080a0f0f433b", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("24160d432e02101706111a4330080a0f0f433b", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_4FwUfm26 = _V8Gpv6Eg._3riCjViw:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2c170b061110", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_FclCnIRt = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4330061743301302140d43330c0a0d17", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c4330061743301302140d43330c0a0d17", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c4330061743301302140d43330c0a0d17", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo() do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c4330061743301302140d43330c0a0d17", 99)] then
			pcall(function()
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("300617301302140d330c0a0d17", 99));
			end);
__dummy_ops(); -- obf
		end;
	end;
end);
_8NURjFGz = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432c011006111502170a0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c432c011006111502170a0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c432c011006111502170a0c0d", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c432c011006111502170a0c0d", 99)] then
			if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._TMlQQAmT:_dX5IzNiJ(__xor_decode("2a0e0204062f0201060f", 99)) then
				(game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99))):_TWY8Coxs();
				(game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99))):_YZrsTQZp(__xor_decode("531b5556", 99));
				_ncNRWHvo();
				(game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99))):_lQdzKGS5(__xor_decode("531b5556", 99));
			end;
		end;
	end;
end);
__dummy_ops(); -- obf
_vEkQi9Gz = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c432b02080a", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c432b02080a", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c432b02080a", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_5GPOUJ1l = _V8Gpv6Eg._3riCjViw:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c433106090c0a0d", 99),
	_46yGcjZr = _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c433106090c0a0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c433106090c0a0d", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c433106090c0a0d", 99)] then
			game._py4RlgN9._UX8JWR8L._yzEEfbkA._851smzkp:_CAh5wGBm(function(v)
				if v._xOtG83nV == __xor_decode("2611110c1133110c0e1317", 99) and v:_dX5IzNiJ(__xor_decode("2e06101002040622110602", 99)) and v._DFtCoK1H:_dX5IzNiJ(__xor_decode("2611110c112511020e06", 99)) then
					(game:_OKOU25H8(__xor_decode("37060f06130c1117300611150a0006", 99))):_WvvW9tcP(game._H6UqMXLN);
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._B8nzttPb[__xor_decode("2216170c432b02080a", 99)] then
__dummy_ops(); -- obf
			if not game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b02102116100c", 99)) then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2116100c", 99));
			end;
		end;
	end;
end);
__dummy_ops(); -- obf
_neFHujst = _V8Gpv6Eg._XLgPi1zC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("340c110f07", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_atMhvQwP = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c433006000c0d0743300602", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)]);
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_fCSjAeq9 = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43370b0a110743300602", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024351432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)] then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._X0vNsR51._46yGcjZr >= (-776 + 1500) and _tRfh7Inj then
__dummy_ops(); -- obf
					if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("39321606101733110c0411061010", 99), __xor_decode("24060d0611020f", 99)) == 0 then
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1926.3221435547, 12.819851875305, 1738.3092041016));
						if ((_TV4Txa4P._ZH3x4hyR((-1926.3221435547), 12.819851875305, 1738.3092041016))._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (6 + 10) then
							_ncNRWHvo(1.5);
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("39321606101733110c0411061010", 99), __xor_decode("2106040a0d", 99));
						end;
						_ncNRWHvo(1.8);
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("110a133c0a0d071102", 99)) then
							for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
								if v._xOtG83nV == __xor_decode("110a133c0a0d071102", 99) then
									_yl5WoJrw = v._yMRN0wrA._TV4Txa4P;
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										v._yMRN0wrA._TV4Txa4P = _yl5WoJrw;
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										v._BcGPQM7e._IbmeQpml = 0;
										_wgBbrKQh();
										(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f390c16", 99));
									until _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43370b0a110743300602", 99)] == false or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
__dummy_ops(); -- obf
								end;
							end;
						elseif not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("110a133c0a0d071102", 99)) and ((_TV4Txa4P._ZH3x4hyR((-26880.93359375), 22.848554611206, 473.18951416016))._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-2 + 1000) then
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-26880.93359375, 22.848554611206, 473.18951416016));
						end;
					end;
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] and _LfIBZk7l then
__dummy_ops(); -- obf
			pcall(function()
				local _k7PO57SJ = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._X0vNsR51._46yGcjZr;
				if _k7PO57SJ >= (308 + 700) and _LfIBZk7l then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._6ORrQXKB._y6P7c3PT._PuXDT8sU == false and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._6ORrQXKB._y6P7c3PT._zfGLVJb0 == (1 + 1) then
						local _lrN2D4RQ = _TV4Txa4P._ZH3x4hyR(4849.29883, 5.65138149, 719.611877);
						repeat
							_NwLutZRn(_lrN2D4RQ);
__dummy_ops(); -- obf
							_ncNRWHvo();
						until (_lrN2D4RQ._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (2 + 3) or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] == false;
						_ncNRWHvo(1.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2711061010110c1002321606101733110c0411061010", 99), __xor_decode("2706170600170a1506", 99));
						_ncNRWHvo(0.5);
__dummy_ops(); -- obf
						_vPFcIsGM(__xor_decode("28061a", 99));
						repeat
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(1347.7124, 37.3751602, -1325.6488));
							_ncNRWHvo();
						until (_UWIiwj4W._ZH3x4hyR(1347.7124, 37.3751602, (-1325.6488)) - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (1 + 3) or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] == false;
						_ncNRWHvo(0.5);
					elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._6ORrQXKB._y6P7c3PT._PuXDT8sU == false and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._6ORrQXKB._y6P7c3PT._zfGLVJb0 == (1 + 1) then
__dummy_ops(); -- obf
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2a00064322070e0a11020f", 99)) then
							for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
								if v._xOtG83nV == __xor_decode("2a00064322070e0a11020f", 99) then
__dummy_ops(); -- obf
									if not v._BcGPQM7e._usQ3DGFi <= 0 then
										if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
											_yWEwqP7Z = v._yMRN0wrA._TV4Txa4P;
__dummy_ops(); -- obf
											repeat
												(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
												_jUKVPjiK();
												_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
												v._BcGPQM7e._IbmeQpml = 0;
												v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
												v._yMRN0wrA._TV4Txa4P = _yWEwqP7Z;
__dummy_ops(); -- obf
												_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
												_wgBbrKQh();
											until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433006000c0d0743300602", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
										end;
									else
										(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f2711061010110c1002", 99));
									end;
								end;
							end;
						elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2a00064322070e0a11020f", 99)) then
							_NwLutZRn(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2a00064322070e0a11020f", 99)))._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR((1 + 5), (0 + 10), (6 + 7)));
						end;
					end;
__dummy_ops(); -- obf
				end;
			end);
		end;
	end;
end);
_neFHujst = _V8Gpv6Eg._XLgPi1zC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("250a040b170a0d044330171a0f06", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_AXJbU3su = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c433016130611432b160e020d", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433016130611432b160e020d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433016130611432b160e020d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433016130611432b160e020d", 99)]);
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_GTeT0NEl = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43270602170b4330170613", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43270602170b4330170613", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43270602170b4330170613", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43270602170b4330170613", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_Xaq5K5bK = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43300b0211080e020d43280211021706", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43250a100b0e020d43280211021706", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43250a100b0e020d43280211021706", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43250a100b0e020d43280211021706", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_dnyieJYv = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43260f060017110a0043200f0214", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_uwROAYwn = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43271102040c0d4337020f0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337020f0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337020f0c0d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337020f0c0d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_ZtjdtX4c = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43240c07432b160e020d", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43240c07432b160e020d", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43240c07432b160e020d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43240c07432b160e020d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43240c07432b160e020d", 99)] then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("300b0211080e020d43280211021706", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("300b0211080e020d43280211021706", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("240c070b160e020d", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("240c070b160e020d", 99)) then
					if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30161306110b160e020d", 99), true) == (1 + 1) then
						if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)))._X0vNsR51._46yGcjZr >= (9 + 400) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)))._X0vNsR51._46yGcjZr >= (170 + 400) then
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a270602170b30170613", 99));
						end;
					else
						_DiNv9puX:_pnTE9h9b({
							_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
							_d1yjc5ku = __xor_decode("2d0c17432b0215064330161306110b160e020d", 99),
							_OZcGvsBJ = __xor_decode("01060f0f", 99),
							_amZzyzrx = (2 + 5)
						});
					end;
					if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a270602170b30170613", 99), true) == (1 + 1) then
						if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)))._X0vNsR51._46yGcjZr >= (95 + 400) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)))._X0vNsR51._46yGcjZr >= (22 + 400) then
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99));
						end;
					else
						_DiNv9puX:_pnTE9h9b({
							_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
							_d1yjc5ku = __xor_decode("2d0c17432b02150643270602170b4330170613", 99),
							_OZcGvsBJ = __xor_decode("01060f0f", 99),
							_amZzyzrx = (5 + 5)
						});
					end;
					if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99), true) == (1 + 1) then
						if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("300b0211080e020d43280211021706", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("300b0211080e020d43280211021706", 99)))._X0vNsR51._46yGcjZr >= (279 + 400) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("300b0211080e020d43280211021706", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("300b0211080e020d43280211021706", 99)))._X0vNsR51._46yGcjZr >= (-7 + 400) then
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99));
						end;
					else
						_DiNv9puX:_pnTE9h9b({
__dummy_ops(); -- obf
							_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
							_d1yjc5ku = __xor_decode("2d0c17432b02150643300b0211080e020d43280211021706", 99),
							_OZcGvsBJ = __xor_decode("01060f0f", 99),
__dummy_ops(); -- obf
							_amZzyzrx = (-3 + 5)
__dummy_ops(); -- obf
						});
					end;
					if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99), true) == (1 + 1) then
						if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)))._X0vNsR51._46yGcjZr >= (-125 + 400) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)))._X0vNsR51._46yGcjZr >= (108 + 400) then
__dummy_ops(); -- obf
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a271102040c0d37020f0c0d", 99));
						end;
					else
						_DiNv9puX:_pnTE9h9b({
							_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
							_d1yjc5ku = __xor_decode("2d0c17432b02150643260f060017110a0043200f0214", 99),
							_OZcGvsBJ = __xor_decode("01060f0f", 99),
__dummy_ops(); -- obf
							_amZzyzrx = (2 + 5)
						});
					end;
					if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a271102040c0d37020f0c0d", 99), true) == (1 + 1) then
						if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)))._X0vNsR51._46yGcjZr >= (64 + 400) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)))._X0vNsR51._46yGcjZr >= (18 + 400) then
							if string._Uw9siMFG((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a240c070b160e020d", 99), true), __xor_decode("21110a0d04", 99)) then
								_DiNv9puX:_pnTE9h9b({
									_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
									_d1yjc5ku = __xor_decode("2d0c17432b02150643260d0c16040b432e021706110a020f", 99),
									_OZcGvsBJ = __xor_decode("01060f0f", 99),
									_amZzyzrx = (2 + 5)
								});
							else
								(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a240c070b160e020d", 99));
							end;
						end;
					else
						_DiNv9puX:_pnTE9h9b({
							_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
							_d1yjc5ku = __xor_decode("2d0c17432b02150643271102040c0d4337020f0c0d", 99),
							_OZcGvsBJ = __xor_decode("01060f0f", 99),
							_amZzyzrx = (3 + 5)
						});
					end;
				else
__dummy_ops(); -- obf
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30161306110b160e020d", 99));
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337020f0c0d", 99)] then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d4337020f0c0d", 99)) then
__dummy_ops(); -- obf
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)))._X0vNsR51._46yGcjZr >= (-173 + 400) then
__dummy_ops(); -- obf
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a271102040c0d37020f0c0d", 99));
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("271102040c0d4337020f0c0d", 99);
				end;
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)))._X0vNsR51._46yGcjZr >= (-18 + 400) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a271102040c0d37020f0c0d", 99));
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("271102040c0d4337020f0c0d", 99);
				end;
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)))._X0vNsR51._46yGcjZr <= (-28 + 399) then
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("271102040c0d43200f0214", 99);
				end;
			else
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("51", 99));
__dummy_ops(); -- obf
			end;
		end;
	end;
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43250a100b0e020d43280211021706", 99)] then
__dummy_ops(); -- obf
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a250a100b0e020d280211021706", 99));
				if string._Uw9siMFG((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99)), __xor_decode("08061a10", 99)) then
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("34021706114328061a", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("34021706114328061a", 99)) then
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, (1 + 1), 0, 0.999093413, 0, 0.0425701365));
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99));
					elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)))._X0vNsR51._46yGcjZr >= (-214 + 400) then
					else
						_7Xq8tEN0 = __xor_decode("370a070643280606130611", 99);
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(_7Xq8tEN0) then
							for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
								if v._xOtG83nV == _7Xq8tEN0 then
									_akfXkuIB = v._yMRN0wrA._TV4Txa4P;
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										v._BcGPQM7e._IbmeQpml = 0;
										v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										v._yMRN0wrA._TV4Txa4P = _akfXkuIB;
__dummy_ops(); -- obf
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR((1 + 2), (3 + 20), (2 + 2)));
										_wgBbrKQh();
									until not v._zL81RjqU or v._BcGPQM7e._usQ3DGFi <= 0 or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43250a100b0e020d43280211021706", 99)] == false or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("34021706114328061a", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("34021706114328061a", 99));
								end;
							end;
						else
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, (1 + 1), 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
							_ncNRWHvo((3 + 3));
						end;
					end;
				else
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99));
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110a0043200f0214", 99)) then
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr >= (-96 + 400) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99));
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("260f060017110a0043200f0214", 99);
					end;
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr >= (-119 + 400) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99));
__dummy_ops(); -- obf
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("260f060017110a0043200f0214", 99);
					end;
__dummy_ops(); -- obf
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr <= (-56 + 399) then
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("260f060017110c", 99);
					end;
				else
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110c", 99));
				end;
			end;
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) then
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr >= (61 + 400) or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr >= (-61 + 400) then
						if _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] == false then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
__dummy_ops(); -- obf
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-10371.4717, 330.764496, -10131.4199));
							until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (_TV4Txa4P._ZH3x4hyR((-10371.4717), 330.764496, (-10131.4199)))._EWiDuNSW)._uDjfEeA6 <= (0 + 10);
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99), __xor_decode("3017021117", 99));
							_ncNRWHvo((1 + 2));
							repeat
								_TyPAa8BS._ncNRWHvo();
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-12550.532226563, 336.22631835938, -7510.4233398438));
__dummy_ops(); -- obf
							until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (_TV4Txa4P._ZH3x4hyR((-12550.532226563), 336.22631835938, (-7510.4233398438)))._EWiDuNSW)._uDjfEeA6 <= (0 + 10);
__dummy_ops(); -- obf
							_ncNRWHvo((1 + 1));
							repeat
__dummy_ops(); -- obf
								_TyPAa8BS._ncNRWHvo();
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-10371.4717, 330.764496, -10131.4199));
							until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (_TV4Txa4P._ZH3x4hyR((-10371.4717), 330.764496, (-10131.4199)))._EWiDuNSW)._uDjfEeA6 <= (1 + 10);
							_ncNRWHvo((1 + 1));
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99));
						elseif _G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] == true then
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] = false;
							_ncNRWHvo((1 + 1));
							repeat
								_TyPAa8BS._ncNRWHvo();
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-10371.4717, 330.764496, -10131.4199));
							until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (_TV4Txa4P._ZH3x4hyR((-10371.4717), 330.764496, (-10131.4199)))._EWiDuNSW)._uDjfEeA6 <= (0 + 10);
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99), __xor_decode("3017021117", 99));
							_ncNRWHvo((1 + 2));
							repeat
								_TyPAa8BS._ncNRWHvo();
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (_TV4Txa4P._ZH3x4hyR((-12550.532226563), 336.22631835938, (-7510.4233398438)))._EWiDuNSW)._uDjfEeA6 <= (-3 + 10);
							_ncNRWHvo((1 + 1));
							repeat
								_TyPAa8BS._ncNRWHvo();
								_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-10371.4717, 330.764496, -10131.4199));
							until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43260f060017110a0043200f0214", 99)] or ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - (_TV4Txa4P._ZH3x4hyR((-10371.4717), 330.764496, (-10131.4199)))._EWiDuNSW)._uDjfEeA6 <= (3 + 10);
							_ncNRWHvo((1 + 1));
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99));
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("260f060017110a0043200f0214", 99);
							_ncNRWHvo(0.1);
							_G._yfeCVCNX._mqjsjIrw[__xor_decode("2216170c432502110e", 99)] = true;
__dummy_ops(); -- obf
						end;
__dummy_ops(); -- obf
					end;
				end;
			end;
		end;
	end);
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43270602170b4330170613", 99)] then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("270602170b4330170613", 99)) then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)))._X0vNsR51._46yGcjZr >= (191 + 450) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a270602170b30170613", 99));
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("270602170b4330170613", 99);
__dummy_ops(); -- obf
				end;
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)))._X0vNsR51._46yGcjZr >= (257 + 450) then
__dummy_ops(); -- obf
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a270602170b30170613", 99));
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("270602170b4330170613", 99);
				end;
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) and ((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)))._X0vNsR51._46yGcjZr <= (100 + 449) then
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("210f020008432f0604", 99);
				end;
			else
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210f0200082f0604", 99));
			end;
		end;
	end;
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433016130611432b160e020d", 99)] then
				if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("200c0e010217", 99)) or game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("200c0e010217", 99)) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (-799 + 150000) then
					_uzrjimRg(__xor_decode("200c0e010217", 99));
					_ncNRWHvo(0.1);
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210f0200082f0604", 99));
				end;
				if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)) or game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("30161306110b160e020d", 99)) then
					_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("30161306110b160e020d", 99);
				end;
				if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) or game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) or game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) or game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) or game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) or game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) or game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) then
__dummy_ops(); -- obf
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)))._X0vNsR51._46yGcjZr <= (104 + 299) then
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("210f020008432f0604", 99);
					end;
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr <= (49 + 299) then
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("260f060017110c", 99);
					end;
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)))._X0vNsR51._46yGcjZr <= (51 + 299) then
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("250a100b0e020d43280211021706", 99);
					end;
__dummy_ops(); -- obf
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)))._X0vNsR51._46yGcjZr <= (3 + 299) then
						_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)] = __xor_decode("271102040c0d43200f0214", 99);
					end;
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)))._X0vNsR51._46yGcjZr >= (116 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (143121 + 300000) then
						_uzrjimRg(__xor_decode("210f020008432f0604", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110c", 99));
__dummy_ops(); -- obf
					end;
					if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)) and (game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("210f020008432f0604", 99)))._X0vNsR51._46yGcjZr >= (-266 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (-118109 + 300000) then
						_uzrjimRg(__xor_decode("210f020008432f0604", 99));
						_ncNRWHvo(0.1);
__dummy_ops(); -- obf
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110c", 99));
					end;
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr >= (-233 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (-311636 + 750000) then
						_uzrjimRg(__xor_decode("260f060017110c", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a250a100b0e020d280211021706", 99));
					end;
					if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)) and (game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("260f060017110c", 99)))._X0vNsR51._46yGcjZr >= (-161 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (592115 + 750000) then
__dummy_ops(); -- obf
						_uzrjimRg(__xor_decode("260f060017110c", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a250a100b0e020d280211021706", 99));
					end;
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)))._X0vNsR51._46yGcjZr >= (-56 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._VF3gVXhx._0aqmU2bf._2McmbKV6._46yGcjZr >= (202 + 1500) then
						_uzrjimRg(__xor_decode("250a100b0e020d43280211021706", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("52", 99));
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("51", 99));
					end;
					if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)) and (game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a100b0e020d43280211021706", 99)))._X0vNsR51._46yGcjZr >= (194 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._VF3gVXhx._0aqmU2bf._2McmbKV6._46yGcjZr >= (-986 + 1500) then
						_uzrjimRg(__xor_decode("250a100b0e020d43280211021706", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("52", 99));
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("51", 99));
					end;
					if game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) and (game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)))._X0vNsR51._46yGcjZr >= (31 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (326069 + 3000000) then
						_uzrjimRg(__xor_decode("271102040c0d43200f0214", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30161306110b160e020d", 99));
					end;
					if game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)) and (game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("271102040c0d43200f0214", 99)))._X0vNsR51._46yGcjZr >= (37 + 300) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._M3ArpxSa._46yGcjZr >= (1409581 + 3000000) then
						_uzrjimRg(__xor_decode("271102040c0d43200f0214", 99));
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30161306110b160e020d", 99));
					end;
__dummy_ops(); -- obf
				end;
			end;
		end;
	end);
end);
_neFHujst = _V8Gpv6Eg._XLgPi1zC:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("24160d43454330140c1107", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_VWhDqedR = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43240617433002010611", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)] and _LfIBZk7l and game.Players._5vXmWKtm._0aqmU2bf._X0vNsR51._46yGcjZr >= (16 + 200) then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Q4HnIqMU._D81HmLXw._zfGLVJb0 == 0 then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Vg4iL4cU._y6P7c3PT._zfGLVJb0 == 0 then
						if ((_TV4Txa4P._ZH3x4hyR((-1612.55884), 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, (-0.928667724), 0.0000000397099491, (1 + 1), 0.0000000191679348, 0.928667724, (-0.0000000439869794), 0.37091279))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-1 + 100) then
							_NwLutZRn((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P);
							_ncNRWHvo((1 + 1));
__dummy_ops(); -- obf
							game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Vg4iL4cU._26qc1WFk._BtunICum._TV4Txa4P;
__dummy_ops(); -- obf
							_ncNRWHvo((1 + 1));
							game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Vg4iL4cU._R6MCCIl4._BtunICum._TV4Txa4P;
							_ncNRWHvo((1 + 1));
							game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Vg4iL4cU._DREP7PrH._BtunICum._TV4Txa4P;
							_ncNRWHvo((1 + 1));
							game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Vg4iL4cU._svkOvf23._BtunICum._TV4Txa4P;
							_ncNRWHvo((1 + 1));
							game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._bGGVLvDB._Vg4iL4cU._VrH539uG._BtunICum._TV4Txa4P;
							_ncNRWHvo((1 + 1));
						else
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1612.55884, 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, -0.928667724, 0.0000000397099491, (1 + 1), 0.0000000191679348, 0.928667724, -0.0000000439869794, 0.37091279));
						end;
					elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._lt4TxiWA._bTNGUBxh._D81HmLXw._zfGLVJb0 == 0 then
						if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("370c11000b", 99)) or game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("370c11000b", 99)) then
							_vPFcIsGM(__xor_decode("370c11000b", 99));
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(1114.61475, 5.04679728, 4350.22803, -0.648466587, -0.00000000128799094, 0.761243105, -0.000000000570652914, (1 + 1), 0.00000000120584542, -0.761243105, 0.000000000347544882, -0.648466587));
						else
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408));
						end;
					elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("300a00082e020d", 99)) ~= 0 then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("240617201613", 99));
						_ncNRWHvo(0.5);
						_vPFcIsGM(__xor_decode("201613", 99));
						_ncNRWHvo(0.5);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("250a0f0f201613", 99), (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._UZpjoKTX);
						_ncNRWHvo(0);
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("300a00082e020d", 99));
					elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("310a000b300c0d", 99)) == nil then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("310a000b300c0d", 99));
					elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("310a000b300c0d", 99)) == 0 then
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2e0c01432f0602070611", 99)) or (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2e0c01432f0602070611", 99)) then
							_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
							for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
								if v._xOtG83nV == __xor_decode("2e0c01432f0602070611", 99) then
									if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2e0c01432f060207061143382f154d435251533e4338210c10103e", 99)) then
										if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
											repeat
												(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
												_jUKVPjiK();
												_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
												v._BcGPQM7e._IbmeQpml = 0;
												v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
												_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
												_wgBbrKQh();
											until v._BcGPQM7e._usQ3DGFi <= 0 or (not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)]);
										end;
									end;
									if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2e0c01432f0602070611", 99)) then
										_NwLutZRn(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2e0c01432f0602070611", 99)))._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									end;
								end;
							end;
						end;
					elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("310a000b300c0d", 99)) == (1 + 1) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("310a000b300c0d", 99));
__dummy_ops(); -- obf
						_ncNRWHvo(0.5);
						_vPFcIsGM(__xor_decode("31060f0a00", 99));
						_ncNRWHvo(0.5);
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 0.00000000566906877, 0.481375456, 0.0000000253851997, (1 + 1), -0.0000000579995607, -0.481375456, 0.0000000630572643, 0.876514494));
					end;
				elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("300201061143261b13061117", 99)) or (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("300201061143261b13061117", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
							if v._xOtG83nV == __xor_decode("300201061143261b13061117", 99) then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									v._yMRN0wrA._zfGLVJb0 = (1 + 1);
__dummy_ops(); -- obf
									v._BcGPQM7e._2Og4DODB = 0;
									v._BcGPQM7e._IbmeQpml = 0;
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_wgBbrKQh();
								until v._BcGPQM7e._usQ3DGFi <= 0 or (not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433002010611", 99)]);
								if v._BcGPQM7e._usQ3DGFi <= 0 then
__dummy_ops(); -- obf
									(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("33110c321606101733110c0411061010", 99), __xor_decode("330f02000631060f0a00", 99));
								end;
							end;
__dummy_ops(); -- obf
						end;
					end;
				end;
			end);
		end;
	end;
end);
_igVyKw6S = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43211607071a4330140c1107", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)] and _7Y9SwizB then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2002080643321606060d", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("2002080643321606060d", 99) then
__dummy_ops(); -- obf
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
__dummy_ops(); -- obf
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43211607071a4330140c1107", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-731.2034301757812, 381.5658874511719, -11198.4951171875));
__dummy_ops(); -- obf
				end;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
function _UNTfTxdy(_D7U801zb, _ngX0yWIt)
	for i, v in next, game.ReplicatedStorage._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("0406172a0d15060d170c111a", 99)) do
		if v._xOtG83nV == _D7U801zb and v._gAAdVTEi >= _ngX0yWIt then
			return true;
		end;
	end;
	return false;
end;
function _YmpiNqMH()
	local _SVC46xLx = math._xnnPNK9M;
__dummy_ops(); -- obf
	local _s3gyZqcO;
	for k, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
		if string._X9poBKx7(v._xOtG83nV, __xor_decode("200b061017", 99)) then
			local _cMC60bBw = (v._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._cMC60bBw;
			if _cMC60bBw < _SVC46xLx then
				_SVC46xLx = _cMC60bBw;
__dummy_ops(); -- obf
				_s3gyZqcO = v;
			end;
__dummy_ops(); -- obf
		end;
	end;
	if not _s3gyZqcO then
		for i, v in next, (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83:_sFYPxrUf() do
			if v:_jeeCVvJF(__xor_decode("33021117", 99)) and string._Uw9siMFG(v._xOtG83nV, __xor_decode("200b061017", 99)) then
				local _cMC60bBw = (v._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._cMC60bBw;
				if _cMC60bBw < _SVC46xLx then
					_SVC46xLx = _cMC60bBw;
					_s3gyZqcO = v;
				end;
			end;
__dummy_ops(); -- obf
		end;
	end;
	return _s3gyZqcO;
end;
local _QQvih3oU = {};
function _QWcPBXjh(_s3gyZqcO)
	local _MEiwmpnR;
	if string._Uw9siMFG(_s3gyZqcO, __xor_decode("2f154d", 99)) then
		_MEiwmpnR = _s3gyZqcO:_JTzTYFVq(__xor_decode("4346132f154d434607484613", 99), __xor_decode("", 99));
	end;
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._yWhBPIMh:_eHS4mqzq()) do
		local _ia6SlBdV;
		if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2f154d", 99)) then
			_ia6SlBdV = v._xOtG83nV:_JTzTYFVq(__xor_decode("4346132f154d434607484613", 99), __xor_decode("", 99));
		end;
		if v:_jeeCVvJF(__xor_decode("33021117", 99)) and (_ia6SlBdV and _ia6SlBdV == _s3gyZqcO or _s3gyZqcO == v._xOtG83nV or _MEiwmpnR and v._xOtG83nV == _MEiwmpnR) then
			return v;
		end;
	end;
	for i, v in pairs(_mexj9Pge()) do
		local _ia6SlBdV;
		if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2f154d", 99)) then
			_ia6SlBdV = v._xOtG83nV:_JTzTYFVq(__xor_decode("4346132f154d434607484613", 99), __xor_decode("", 99));
__dummy_ops(); -- obf
		end;
		if v:_jeeCVvJF(__xor_decode("33021117", 99)) and (_ia6SlBdV and _ia6SlBdV == _s3gyZqcO or _s3gyZqcO == v._xOtG83nV or _MEiwmpnR and v._xOtG83nV == _MEiwmpnR) then
			return v;
		end;
	end;
end;
function _GKWuNZrN(_JjbaTwE6, _1CCRvVck)
	if _L1zz2WTm(_JjbaTwE6) == __xor_decode("1702010f06", 99) then
__dummy_ops(); -- obf
		if #_QQvih3oU >= (0 + 4) then
			_QQvih3oU = {};
			return;
		end;
		local _VkRyh5jo;
		for i, v in next, _JjbaTwE6 do
__dummy_ops(); -- obf
			if not table._Uw9siMFG(_QQvih3oU, v) then
				_VkRyh5jo = _QWcPBXjh(v);
				repeat
					_TyPAa8BS._ncNRWHvo();
					_NwLutZRn(_VkRyh5jo._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (15 + 60), 0));
				until (_VkRyh5jo._EWiDuNSW - _MZolqlXv._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-33 + 100) or _YbfDmWql(_JjbaTwE6) or (not _1CCRvVck);
			end;
		end;
	else
		_VkRyh5jo = _QWcPBXjh(_JjbaTwE6);
__dummy_ops(); -- obf
		_NwLutZRn(_VkRyh5jo._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-4 + 60), 0));
	end;
end;
function _YbfDmWql(c)
	local _SVC46xLx = math._xnnPNK9M;
	local _s3gyZqcO;
	for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq()) do
		local _ia6SlBdV = v._xOtG83nV:_JTzTYFVq(__xor_decode("4346132f154d434607484613", 99), __xor_decode("", 99));
__dummy_ops(); -- obf
		if (_L1zz2WTm(c) == __xor_decode("1702010f06", 99) and (table._Uw9siMFG(c, v._xOtG83nV) or table._Uw9siMFG(c, _ia6SlBdV)) or (v._xOtG83nV == c or c == _ia6SlBdV)) and v:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
__dummy_ops(); -- obf
			local _cMC60bBw = (v._yMRN0wrA._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._cMC60bBw;
			if _cMC60bBw < _SVC46xLx then
				_SVC46xLx = _cMC60bBw;
				_s3gyZqcO = v;
			end;
		end;
	end;
	return _s3gyZqcO;
__dummy_ops(); -- obf
end;
function _EDCrMRvt()
__dummy_ops(); -- obf
	local _uA3ui9qg = {};
	local _H6UqMXLN;
	local _OV9gRxD0;
	if not _UNTfTxdy(__xor_decode("2600170c130f02100e", 99), (-131 + 250)) then
__dummy_ops(); -- obf
		_uA3ui9qg = {
			__xor_decode("300b0a1343270600080b020d0743382f154d43525156533e", 99),
			__xor_decode("300b0a13433017061402110743382f154d43525053533e", 99),
			__xor_decode("300b0a13432c05050a00061143382f154d43525051563e", 99),
			__xor_decode("300b0a1343260d040a0d06061143382f154d43525154563e", 99)
		};
		_H6UqMXLN = (1387356559 + 4442272183);
		_OV9gRxD0 = __xor_decode("37110215060f2711061010110c1002", 99);
	elseif not _UNTfTxdy(__xor_decode("210c0d0610", 99), (85 + 500)) then
		_uA3ui9qg = {
			__xor_decode("3106010c110d433008060f06170c0d43382f154d43525a54563e", 99),
			__xor_decode("27060e0c0d0a0043300c160f43382f154d43515351563e", 99),
			__xor_decode("2f0a150a0d0443390c0e010a0643382f154d43515353533e", 99),
			__xor_decode("330c100610100607432e160e0e1a43382f154d43515356533e", 99)
		};
		_H6UqMXLN = (4273436895 + 7449423635);
		_OV9gRxD0 = __xor_decode("37110215060f390c16", 99);
	end;
	return _uA3ui9qg, _H6UqMXLN, _OV9gRxD0;
end;
local _OLnHfToR = (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e;
function _bYsLJfjs()
__dummy_ops(); -- obf
	if not _OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("200b060008", 99)) then
		if game._tnHiI7tl._jis4SXVG._HcDLViST == __xor_decode("0b171713594c4c1414144d110c010f0c1b4d000c0e4c02101006174c5c0a075e5a54535a52575a575052", 99) and (game._tnHiI7tl._FAMVei7Y > (9 + 16) or game._tnHiI7tl._FAMVei7Y < (2 + 5)) then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm:_h4Q2T1Kp(_UWIiwj4W._ZH3x4hyR(-8654.314453125, 140.9499053955078, 6167.5283203125)) > (-33 + 50) then
				_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-8654.314453125, 140.9499053955078, 6167.5283203125));
__dummy_ops(); -- obf
			end;
			_OLnHfToR:_hOfJD1fe(__xor_decode("041102150610170c0d062615060d17", 99), (1 + 2));
			_OLnHfToR:_hOfJD1fe(__xor_decode("041102150610170c0d062615060d17", 99), (2 + 2), true);
			_TyPAa8BS._ncNRWHvo((1 + 1));
		else
			_DiNv9puX:_pnTE9h9b({
				_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
				_d1yjc5ku = __xor_decode("2b0c134325160f0f432e0c0c0d", 99),
				_OZcGvsBJ = __xor_decode("01060f0f", 99),
				_amZzyzrx = (0 + 5)
			});
			_dYaAbRzy();
		end;
	else
		if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._YJKsYUGO._rfEwujR7 then
			game._faX8e7m7:_yKzm8e7l(_VVRMVAYM._ZH3x4hyR(0, 0));
			game._faX8e7m7:_yKzm8e7l(_VVRMVAYM._ZH3x4hyR(0, 0));
		end;
		if not (_OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("200b060008", 99)))._0F8cn3e4 then
			if ((_TV4Txa4P._ZH3x4hyR((-10171.7607421875), 138.62667846679688, 6008.0654296875))._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (-4 + 100) then
				_tvknQl8w((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW, (_TV4Txa4P._ZH3x4hyR(-10171.7607421875, 138.62667846679688, 6008.0654296875))._EWiDuNSW, _TV4Txa4P._ZH3x4hyR(-10171.7607421875, 138.62667846679688 + (-13 + 20), 6008.0654296875));
__dummy_ops(); -- obf
			elseif _kjY8J35u() == (-2 + 6) then
				for i, v in pairs(game.workspace._5iAO5Uk9:_eHS4mqzq()) do
					if v._xOtG83nV == __xor_decode("2f0a150a0d0443390c0e010a0643382f154d43515353533e", 99) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
						repeat
							_TyPAa8BS._ncNRWHvo();
							_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
							_jUKVPjiK();
							v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
							_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
							_DFxiFN8p = v._xOtG83nV;
							_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
							_wgBbrKQh();
						until v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
					end;
				end;
			end;
			return;
		elseif not (_OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("200b060008", 99)))._fvd2ETn8 then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm:_h4Q2T1Kp(_UWIiwj4W._ZH3x4hyR(-8761.4765625, 142.10487365722656, 6086.07861328125)) > (-31 + 50) then
				_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-8761.4765625, 142.10487365722656, 6086.07861328125));
			else
				local _9wacUUjD = {
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._ZNr7QtaV._nZJvO6r2._ZvgwJfSd,
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._MUWPCjdl._nZJvO6r2._ZvgwJfSd,
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._bkITIPpt._ahBjh9A7._ZvgwJfSd,
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._RCvmkLdC._nZJvO6r2._ZvgwJfSd,
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._6WSV1XlV._ahBjh9A7._ZvgwJfSd,
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._bbp3INbU._ahBjh9A7._ZvgwJfSd,
					game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._DUbKTIex._ahBjh9A7._ZvgwJfSd
				};
__dummy_ops(); -- obf
				for i, v in pairs(_9wacUUjD) do
					_WnUwjXHO(v);
				end;
			end;
		elseif not (_OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("200b060008", 99)))._Oc432Uka then
__dummy_ops(); -- obf
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm:_h4Q2T1Kp(_UWIiwj4W._ZH3x4hyR(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > (4 + 50) then
__dummy_ops(); -- obf
				_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-9755.6591796875, 271.0661315917969, 6290.61474609375));
			end;
			_OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("240b0c1017", 99));
			_TyPAa8BS._ncNRWHvo((2 + 3));
		elseif not (_OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("200b060008", 99)))._r6H1wkVe then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm:_h4Q2T1Kp(_UWIiwj4W._ZH3x4hyR(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > (9 + 50) then
				_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-9530.0126953125, 6.104853630065918, 6054.83349609375));
			end;
			local _PF19yOdg = game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._PF19yOdg;
			for i, v in pairs(_KaiefJ5l) do
				local x = _PF19yOdg[v];
				if x._WNgvzQRt._EWiDuNSW.X ~= 0 then
					repeat
						_TyPAa8BS._ncNRWHvo();
						_WnUwjXHO(x._ZvgwJfSd);
					until x._WNgvzQRt._EWiDuNSW.X == 0;
				end;
			end;
			for i, v in pairs(_XmI9DWzt) do
				local x = game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)]._r6H1wkVe._hb6ExXuj[v]._rarWBxwH._TV4Txa4P;
				x = tostring(x);
				x = (x:_KUHPVbJk(__xor_decode("4f43", 99)))[(1 + 4)];
				local c = __xor_decode("525b53", 99);
				if x == __xor_decode("52", 99) or x == __xor_decode("4e52", 99) then
					c = __xor_decode("5a53", 99);
				end;
				if not string._Uw9siMFG(tostring(_PF19yOdg[i]._WNgvzQRt._XJxYDNuP.Z), c) then
					repeat
						_TyPAa8BS._ncNRWHvo();
						_WnUwjXHO(_PF19yOdg[i]._ZvgwJfSd);
					until string._Uw9siMFG(tostring(_PF19yOdg[i]._WNgvzQRt._XJxYDNuP.Z), c);
					print(i, c);
				end;
			end;
		elseif not (_OLnHfToR:_hOfJD1fe(__xor_decode("24160a170211331619190f0633110c0411061010", 99), __xor_decode("200b060008", 99)))._5zsvoIho then
			for i, v in pairs(_5zsvoIho) do
				local x = game.workspace._G3ADDX83[__xor_decode("2b02160d17060743200210170f06", 99)][__xor_decode("2f020143331619190f06", 99)]._ccMRasTE._CQBrX1CI[i];
				if x._i3sJRmE9._xOtG83nV ~= v then
					repeat
						_TyPAa8BS._ncNRWHvo();
						_WnUwjXHO(x._ZvgwJfSd);
					until x._i3sJRmE9._xOtG83nV == v;
				end;
			end;
		end;
	end;
end;
function _WZUbddij()
__dummy_ops(); -- obf
	if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("100c160f24160a17021121161a", 99), true) == __xor_decode("383a0c1643020f110602071a430c140d43170b0a10430a17060e4d3e", 99) then
		_DiNv9puX:_pnTE9h9b({
			_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
			_d1yjc5ku = __xor_decode("3a0c1643020f110602071a430c140d43170b0a10430a17060e", 99),
			_OZcGvsBJ = __xor_decode("01060f0f", 99),
			_amZzyzrx = (5 + 5)
		});
__dummy_ops(); -- obf
		_TyPAa8BS._ncNRWHvo((1 + 5));
		return;
	end;
	if game.Players._5vXmWKtm._0aqmU2bf._2McmbKV6._46yGcjZr < (-1885 + 5000) then
		_TyPAa8BS._ncNRWHvo((2 + 2));
		_DiNv9puX:_pnTE9h9b({
			_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
			_d1yjc5ku = __xor_decode("2d060607435653535343251102040e060d1710", 99),
			_OZcGvsBJ = __xor_decode("01060f0f", 99),
			_amZzyzrx = (3 + 5)
		});
		return;
	end;
	if not _UNTfTxdy(__xor_decode("2600170c130f02100e", 99), (-119 + 250)) then
		_TyPAa8BS._ncNRWHvo((2 + 2));
		_DiNv9puX:_pnTE9h9b({
			_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
			_d1yjc5ku = __xor_decode("2d06060743515653432600170c130f02100e", 99),
			_OZcGvsBJ = __xor_decode("01060f0f", 99),
			_amZzyzrx = (1 + 5)
		});
		return;
	end;
	if _UNTfTxdy(__xor_decode("2702110843251102040e060d17", 99), (1 + 1)) and _UNTfTxdy(__xor_decode("2600170c130f02100e", 99), (87 + 250)) and _UNTfTxdy(__xor_decode("210c0d0610", 99), (10 + 500)) then
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("100c160f24160a17021121161a", 99), true);
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("100c160f24160a17021121161a", 99));
		if _7Y9SwizB then
__dummy_ops(); -- obf
			_bYsLJfjs();
		else
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f390c16", 99));
		end;
		return;
__dummy_ops(); -- obf
	end;
	if not _UNTfTxdy(__xor_decode("2702110843251102040e060d17", 99), (1 + 1)) then
		if _tRfh7Inj then
			if _igEgzZcZ(__xor_decode("27021108010602110743382f154d43525353533e433831020a0743210c10103e", 99)) then
				local v = _igEgzZcZ(__xor_decode("27021108010602110743382f154d43525353533e433831020a0743210c10103e", 99));
				repeat
					_TyPAa8BS._ncNRWHvo();
					_jUKVPjiK();
					_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					v._BcGPQM7e._IbmeQpml = 0;
					v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
					_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
					_wgBbrKQh();
				until v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
			elseif game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("250a1017430c0543270211080d061010", 99)) or game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("250a1017430c0543270211080d061010", 99)) then
				if ((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._9LNk0Suk._8oeZ4sEQ._dtpfg10x._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-1 + 5) then
					_vPFcIsGM(__xor_decode("250a1017430c0543270211080d061010", 99));
					_uswBn1JS(game.Players._5vXmWKtm._6HDGtM8L[__xor_decode("250a1017430c0543270211080d061010", 99)]._rarWBxwH, (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._9LNk0Suk._8oeZ4sEQ._dtpfg10x, 0);
					_uswBn1JS(game.Players._5vXmWKtm._6HDGtM8L[__xor_decode("250a1017430c0543270211080d061010", 99)]._rarWBxwH, (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._9LNk0Suk._8oeZ4sEQ._dtpfg10x, (1 + 1));
__dummy_ops(); -- obf
					_uswBn1JS(game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA, (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._9LNk0Suk._8oeZ4sEQ._dtpfg10x, 0);
					_uswBn1JS(game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA, (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._9LNk0Suk._8oeZ4sEQ._dtpfg10x, (1 + 1));
				else
					_NwLutZRn((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._9LNk0Suk._8oeZ4sEQ._dtpfg10x._TV4Txa4P);
__dummy_ops(); -- obf
				end;
			else
				local v = _YmpiNqMH();
				repeat
					_TyPAa8BS._ncNRWHvo();
					if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - v._EWiDuNSW)._uDjfEeA6 <= (2 + 2) then
						_uswBn1JS(v, game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA, 0);
						_uswBn1JS(v, game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA, (1 + 1));
					end;
					if (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - v._EWiDuNSW)._uDjfEeA6 <= (5 + 5) then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("34", 99), false, game);
						_TyPAa8BS._ncNRWHvo();
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("34", 99), false, game);
					end;
					_iswjWFro(v._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (1 + 1), 0));
				until not v or (not v._zL81RjqU) or (not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)]);
			end;
		else
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f2711061010110c1002", 99));
		end;
	else
		local _uA3ui9qg, _H6UqMXLN, _OV9gRxD0 = _EDCrMRvt();
		if game._H6UqMXLN == _H6UqMXLN then
			if not _YbfDmWql(_uA3ui9qg) then
				_GKWuNZrN(_uA3ui9qg, _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)]);
			else
				local v = _YbfDmWql(_uA3ui9qg);
				repeat
					_TyPAa8BS._ncNRWHvo();
					_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_jUKVPjiK();
					v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
__dummy_ops(); -- obf
					_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
					_DFxiFN8p = v._xOtG83nV;
					_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
					_wgBbrKQh();
				until not v or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0 or (not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)]);
			end;
		else
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(_OV9gRxD0);
		end;
	end;
end;
_gAu8eLHg = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43300c160f4324160a170211", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)]);
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300c160f4324160a170211", 99)] then
				_WZUbddij();
			end;
__dummy_ops(); -- obf
		end);
	end;
end);
_5ohYQGPO = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4331060d040c0816", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024351432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)] and _tRfh7Inj then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("2b0a0707060d4328061a", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b0a0707060d4328061a", 99)) then
					_vPFcIsGM(__xor_decode("2b0a0707060d4328061a", 99));
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(6571.1201171875, 299.23028564453, -6967.841796875));
				elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("300d0c14432f1611080611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("221100170a0043340211110a0c11", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (v._xOtG83nV == __xor_decode("300d0c14432f1611080611", 99) or v._xOtG83nV == __xor_decode("221100170a0043340211110a0c11", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
								_DFxiFN8p = v._xOtG83nV;
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								_wgBbrKQh();
							until (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("2b0a0707060d4328061a", 99)) or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4331060d040c0816", 99)] == false or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
						end;
					end;
				else
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(5439.716796875, 84.420944213867, -6715.1635742188));
				end;
			end;
		end;
	end);
end);
_qgd7BI2Y = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432b020f0f0c144330001a170b06", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_cNk8LeNZ = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4334021107060d4330140c1107", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_7pjg0BG6 = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43240617433a020e02", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("2d06060743505343260f0a1706432b160d1706114f4325160d00170a0c0d433006024350432c0d0f1a", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_vpiDjniI = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43240617433a020e02432b0c13", 99),
	_cYZMpA94 = __xor_decode("2b0c13432a0543260f0a1706432b160d170611432d0c1743301302140d", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02432b0c13", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02432b0c13", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02432b0c13", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_C5KLM20P = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c43240617433716100b0a1702", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433716100b0a1702", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433716100b0a1702", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433716100b0a1702", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_mc1Xv0Rk = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43271102040c0d4337110a07060d17", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024351432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_mc1Xv0Rk = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432411061a0106021107", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_83DhfGKF = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43300b02110843300214", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_Fn9T0nGT = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43330c0f06", 99),
	_cYZMpA94 = __xor_decode("25160d00170a0c0d433006024352432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_qBsPVpxk = _V8Gpv6Eg._XLgPi1zC:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c432702110843270204040611", 99),
	_cYZMpA94 = __xor_decode("2d06060743301302140d43310a13432a0d0711024f4325160d00170a0c0d433006024350432c0d0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)] and _7Y9SwizB then
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("110a133c0a0d071102433711160643250c110e", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("110a133c0a0d071102", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == (__xor_decode("110a133c0a0d071102433711160643250c110e", 99) or v._xOtG83nV == __xor_decode("110a133c0a0d071102", 99)) and v._BcGPQM7e._usQ3DGFi > 0 and v:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								_jUKVPjiK();
								_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
								_wgBbrKQh();
							until _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432702110843270204040611", 99)] == false or v._BcGPQM7e._usQ3DGFi <= 0;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5344.822265625, 423.98541259766, -2725.0930175781));
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)] and _LfIBZk7l then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370b160d07061143240c07", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("370b160d07061143240c07", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43330c0f06", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
__dummy_ops(); -- obf
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-7748.0185546875, 5606.80615234375, -2305.898681640625));
				end;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)] and _LfIBZk7l then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370b0643300214", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("370b0643300214", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
__dummy_ops(); -- obf
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43300b02110843300214", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-690.33081054688, 15.09425163269, 1582.2380371094));
				end;
			end);
__dummy_ops(); -- obf
		end;
__dummy_ops(); -- obf
	end;
end);
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)] and _LfIBZk7l then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2411061a0106021107", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("2411061a0106021107", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432411061a0106021107", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
__dummy_ops(); -- obf
							end;
						end;
__dummy_ops(); -- obf
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5023.38330078125, 28.65203285217285, 4332.3818359375));
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)] and _tRfh7Inj then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370a070643280606130611", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("370a070643280606130611", 99) then
__dummy_ops(); -- obf
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c43271102040c0d4337110a07060d17", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-3914.830322265625, 123.29389190673828, -11516.8642578125));
				end;
			end);
		end;
	end;
end);
function _VyxqWPJe()
	local a;
	if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv._roNvPkvE._mPi7z0ho._fVwqG7jW._mqjsjIrw._UgAIr8uU then
		a = __xor_decode("52", 99);
__dummy_ops(); -- obf
	elseif not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv._roNvPkvE._bbaNfm8S._fVwqG7jW._mqjsjIrw._UgAIr8uU then
		a = __xor_decode("51", 99);
	elseif not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv._roNvPkvE._IoxZieeT._fVwqG7jW._mqjsjIrw._UgAIr8uU then
		a = __xor_decode("50", 99);
	elseif not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv._roNvPkvE._7Vu2y3MS._fVwqG7jW._mqjsjIrw._UgAIr8uU then
		a = __xor_decode("57", 99);
	elseif not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv._roNvPkvE._7gjgy3AW._fVwqG7jW._mqjsjIrw._UgAIr8uU then
		a = __xor_decode("56", 99);
	end;
	for i, v in next, (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv._roNvPkvE:_eHS4mqzq() do
		if v:_jeeCVvJF(__xor_decode("2e06100b33021117", 99)) and string._Uw9siMFG(v._xOtG83nV, a) and (not v._fVwqG7jW._mqjsjIrw._UgAIr8uU) then
			return v;
		end;
	end;
__dummy_ops(); -- obf
end;
function _igEgzZcZ(a)
__dummy_ops(); -- obf
	for i, v in next, game.ReplicatedStorage:_eHS4mqzq() do
		if v:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and (_L1zz2WTm(a) == __xor_decode("1702010f06", 99) and table._Uw9siMFG(a, v._xOtG83nV) or v._xOtG83nV == a) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
			return v;
		end;
	end;
	for i, v in next, game._yM6SEcBN._5iAO5Uk9:_eHS4mqzq() do
__dummy_ops(); -- obf
		if v:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and (_L1zz2WTm(a) == __xor_decode("1702010f06", 99) and table._Uw9siMFG(a, v._xOtG83nV) or v._xOtG83nV == a) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
			return v;
		end;
	end;
end;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433716100b0a1702", 99)] and _7Y9SwizB then
__dummy_ops(); -- obf
			pcall(function()
				if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._LHcZqfcv:_dX5IzNiJ(__xor_decode("3716100b0a170224021706", 99)) then
					if _igEgzZcZ(__xor_decode("2f0c0d040e0243382f154d43515353533e4338210c10103e", 99)) then
						local v = _igEgzZcZ(__xor_decode("2f0c0d040e0243382f154d43515353533e4338210c10103e", 99));
						repeat
							_TyPAa8BS._ncNRWHvo();
							_jUKVPjiK();
							_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
							v._BcGPQM7e._IbmeQpml = 0;
							v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
							_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
							_wgBbrKQh();
						until not v or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi == 0;
					end;
				elseif _igEgzZcZ(__xor_decode("110a133c0a0d071102433711160643250c110e43382f154d43565353533e433831020a0743210c10103e", 99)) then
					if not game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b0c0f1a43370c11000b", 99)) and (not game.Players._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("2b0c0f1a43370c11000b", 99))) then
						_NwLutZRn((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._h5rAtsdb._ZrC9a4F3._9kYFsGAM._y6P7c3PT._y6P7c3PT._EHwv1Ais._TV4Txa4P);
					else
						_vPFcIsGM(__xor_decode("2b0c0f1a43370c11000b", 99));
						if _VyxqWPJe() then
							_NwLutZRn((_VyxqWPJe())._TV4Txa4P);
						end;
					end;
				else
					_DiNv9puX:_pnTE9h9b({
						_ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d", 99),
						_d1yjc5ku = __xor_decode("310a13432a0d071102432d0c1743301302140d", 99),
						_OZcGvsBJ = __xor_decode("01060f0f", 99),
						_amZzyzrx = (1 + 5)
__dummy_ops(); -- obf
					});
					_TyPAa8BS._ncNRWHvo((1 + 3));
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02432b0c13", 99)] and _7Y9SwizB then
__dummy_ops(); -- obf
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("260f0a17062b160d170611", 99), __xor_decode("33110c0411061010", 99)) < (-13 + 30) then
					if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02", 99)] then
						if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2706020d071106", 99))) or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("361101020d", 99))) then
							_dYaAbRzy();
						end;
					end;
				end;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02", 99)] and _7Y9SwizB then
__dummy_ops(); -- obf
			if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("260f0a17062b160d170611", 99), __xor_decode("33110c0411061010", 99)) >= (-24 + 30) then
				repeat
					_ncNRWHvo(0.1);
					_WnUwjXHO((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._h5rAtsdb._gMB92xzH._rarWBxwH._ZvgwJfSd);
				until (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("3a020e02", 99)) or (not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c433a020e02", 99)]);
			elseif string._Uw9siMFG(_9IUJoUJP, __xor_decode("270a02010f0c", 99)) or string._Uw9siMFG(_9IUJoUJP, __xor_decode("2706020d071106", 99)) or string._Uw9siMFG(_9IUJoUJP, __xor_decode("361101020d", 99)) then
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("270a02010f0c", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2706020d071106", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("361101020d", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("270a02010f0c", 99) or v._xOtG83nV == __xor_decode("2706020d071106", 99) or v._xOtG83nV == __xor_decode("361101020d", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until _G._yfeCVCNX._Aoib2huL[__xor_decode("2216170c433a020e02", 99)] == false or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
__dummy_ops(); -- obf
							end;
						end;
					end;
				end;
			else
__dummy_ops(); -- obf
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("260f0a17062b160d170611", 99));
			end;
		end;
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)] and _LfIBZk7l then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200b0a06054334021107060d", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200b0a06054334021107060d", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
									v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c4334021107060d4330140c1107", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
__dummy_ops(); -- obf
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(5186.14697265625, 24.86684226989746, 832.1885375976562));
				end;
			end);
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)] then
			pcall(function()
__dummy_ops(); -- obf
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("300c160f43310602130611", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if string._Uw9siMFG(v._xOtG83nV, __xor_decode("300c160f43310602130611", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
								_jUKVPjiK();
								v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
								_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
__dummy_ops(); -- obf
								_wgBbrKQh();
								v._yMRN0wrA._zfGLVJb0 = (1 + 1);
							until v._BcGPQM7e._usQ3DGFi <= 0 or _G._yfeCVCNX._VLrlCSal[__xor_decode("2216170c432b020f0f0c144330001a170b06", 99)] == false;
						end;
					end;
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("2b020f0f0c1443261010060d0006", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b020f0f0c1443261010060d0006", 99)) then
					repeat
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-8932.322265625, 146.83154296875, 6062.55078125));
						_ncNRWHvo();
					until ((_TV4Txa4P._ZH3x4hyR((-8932.322265625), 146.83154296875, 6062.55078125))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (3 + 8);
					_vPFcIsGM(__xor_decode("2b020f0f0c1443261010060d0006", 99));
__dummy_ops(); -- obf
				elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("300c160f43310602130611", 99)) then
__dummy_ops(); -- obf
					_NwLutZRn(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("300c160f43310602130611", 99)))._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR((1 + 2), (-9 + 20), (0 + 2)));
				end;
			end);
		end;
	end;
end);
_Z4oKVwww = _V8Gpv6Eg._RXJ1AJOa:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("3017021710", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_yldaaGvQ = _V8Gpv6Eg._RXJ1AJOa:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("3017021710", 99),
	_cYZMpA94 = __xor_decode("53", 99)
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			_yldaaGvQ:_zhx0DbgD(tostring((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._LMJCczid._46yGcjZr));
		end);
	end;
end);
_9ee7i315 = _V8Gpv6Eg._RXJ1AJOa:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("220707432e060f0606433017021710", 99),
	_46yGcjZr = _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c43220707432e060f0606433017021710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c43220707432e060f0606433017021710", 99)] = _AFcg1798;
	end
});
_nawoaXFy = _V8Gpv6Eg._RXJ1AJOa:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("22070743270605060d1006433017021710", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c4322070743270605060d1006433017021710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c4322070743270605060d1006433017021710", 99)] = _AFcg1798;
__dummy_ops(); -- obf
	end
});
_LtbRPox5 = _V8Gpv6Eg._RXJ1AJOa:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2207074330140c1107433017021710", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c432207074330140c1107433017021710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c432207074330140c1107433017021710", 99)] = _AFcg1798;
	end
__dummy_ops(); -- obf
});
_JSXlDtXw = _V8Gpv6Eg._RXJ1AJOa:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2207074324160d433017021710", 99),
	_46yGcjZr = _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c432207074324160d433017021710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c432207074324160d433017021710", 99)] = _AFcg1798;
	end
});
_uGDNGrtz = _V8Gpv6Eg._RXJ1AJOa:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("220707432706150a0f432511160a17433017021710", 99),
	_46yGcjZr = _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c43220707432706150a0f432511160a17433017021710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c43220707432706150a0f432511160a17433017021710", 99)] = _AFcg1798;
	end
});
_s1Y6iMKq = (1 + 1);
_E0fJSwXe = _V8Gpv6Eg._RXJ1AJOa:_78vL80sn({
	_ZoEpv6x5 = __xor_decode("330c0a0d17", 99),
__dummy_ops(); -- obf
	_XaHHtl9L = (1 + 1),
	_46yGcjZr = {
		_wZWqkrue = (1 + 1),
		_SccYATbU = (36 + 100),
		_LIu1DE1b = _s1Y6iMKq
	},
	_ndWmPjxy = function(_1CCRvVck)
__dummy_ops(); -- obf
		_s1Y6iMKq = _1CCRvVck;
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if game.Players._rgr9FUzp._0aqmU2bf._LMJCczid._46yGcjZr >= _s1Y6iMKq then
			if _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c43220707432e060f0606433017021710", 99)] then
				local _hZGQwG7H = {
					[(1 + 1)] = __xor_decode("220707330c0a0d17", 99),
					[(0 + 2)] = __xor_decode("2e060f0606", 99),
					[(1 + 3)] = _s1Y6iMKq
__dummy_ops(); -- obf
				};
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(unpack(_hZGQwG7H));
			end;
			if _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c4322070743270605060d1006433017021710", 99)] then
				local _hZGQwG7H = {
					[(1 + 1)] = __xor_decode("220707330c0a0d17", 99),
					[(1 + 2)] = __xor_decode("270605060d1006", 99),
					[(0 + 3)] = _s1Y6iMKq
				};
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(unpack(_hZGQwG7H));
			end;
__dummy_ops(); -- obf
			if _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c432207074330140c1107433017021710", 99)] then
				local _hZGQwG7H = {
					[(1 + 1)] = __xor_decode("220707330c0a0d17", 99),
					[(2 + 2)] = __xor_decode("30140c1107", 99),
					[(2 + 3)] = _s1Y6iMKq
				};
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(unpack(_hZGQwG7H));
			end;
			if _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c432207074324160d433017021710", 99)] then
				local _hZGQwG7H = {
					[(1 + 1)] = __xor_decode("220707330c0a0d17", 99),
					[(2 + 2)] = __xor_decode("24160d", 99),
					[(1 + 3)] = _s1Y6iMKq
				};
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(unpack(_hZGQwG7H));
			end;
			if _G._yfeCVCNX._XbGRmr5X[__xor_decode("2216170c43220707432706150a0f432511160a17433017021710", 99)] then
				local _hZGQwG7H = {
__dummy_ops(); -- obf
					[(1 + 1)] = __xor_decode("220707330c0a0d17", 99),
__dummy_ops(); -- obf
					[(2 + 2)] = __xor_decode("27060e0c0d432511160a17", 99),
					[(0 + 3)] = _s1Y6iMKq
				};
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(unpack(_hZGQwG7H));
__dummy_ops(); -- obf
			end;
		end;
	end;
end);
_fNb22mFA = _V8Gpv6Eg._VHZKqmP4:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("31020a07", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_J78wQtgt = _V8Gpv6Eg._VHZKqmP4:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("31020a0743370a0e06", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_EkDkUdc7 = _V8Gpv6Eg._VHZKqmP4:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._8gVE9WLd._ykcYl8If._rfEwujR7 == true then
				_J78wQtgt:_zhx0DbgD((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._8gVE9WLd._ykcYl8If._HhZDv3q2);
			else
				_J78wQtgt:_zhx0DbgD(__xor_decode("34020a1743250c114327160d04060c0d", 99));
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if game._yM6SEcBN._G3ADDX83._Mxa8tSQ1:_dX5IzNiJ(__xor_decode("31020a072a100f020d0756", 99)) then
				_EkDkUdc7:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432a100f020d074356", 99));
			elseif game._yM6SEcBN._G3ADDX83._Mxa8tSQ1:_dX5IzNiJ(__xor_decode("31020a072a100f020d0757", 99)) then
__dummy_ops(); -- obf
				_EkDkUdc7:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432a100f020d074357", 99));
			elseif game._yM6SEcBN._G3ADDX83._Mxa8tSQ1:_dX5IzNiJ(__xor_decode("31020a072a100f020d0750", 99)) then
				_EkDkUdc7:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432a100f020d074350", 99));
			elseif game._yM6SEcBN._G3ADDX83._Mxa8tSQ1:_dX5IzNiJ(__xor_decode("31020a072a100f020d0751", 99)) then
				_EkDkUdc7:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432a100f020d074351", 99));
			elseif game._yM6SEcBN._G3ADDX83._Mxa8tSQ1:_dX5IzNiJ(__xor_decode("31020a072a100f020d0752", 99)) then
__dummy_ops(); -- obf
				_EkDkUdc7:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432a100f020d074352", 99));
			else
__dummy_ops(); -- obf
				_EkDkUdc7:_zhx0DbgD(__xor_decode("30170211174327160d04060c0d", 99));
			end;
		end;
	end);
end);
function _phglcJLm()
	local _hP7Id12r = _TV4Txa4P._ZH3x4hyR(0, (-11 + 35), 0);
	if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._8gVE9WLd._ykcYl8If._rfEwujR7 == true then
		if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074356", 99)) then
			_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074356", 99)))._TV4Txa4P * _hP7Id12r);
		elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074357", 99)) then
			_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074357", 99)))._TV4Txa4P * _hP7Id12r);
		elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074350", 99)) then
			_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074350", 99)))._TV4Txa4P * _hP7Id12r);
		elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074351", 99)) then
			_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074351", 99)))._TV4Txa4P * _hP7Id12r);
		elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074352", 99)) then
			_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074352", 99)))._TV4Txa4P * _hP7Id12r);
		end;
	end;
end;
function _dCpgkYsH()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
		if (v._yMRN0wrA._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (129 + 300) then
			return true;
__dummy_ops(); -- obf
		else
			return false;
		end;
	end;
end;
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] and (_tRfh7Inj or _7Y9SwizB) then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._8gVE9WLd._ykcYl8If._rfEwujR7 == true then
__dummy_ops(); -- obf
					if _dCpgkYsH() then
__dummy_ops(); -- obf
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
__dummy_ops(); -- obf
								if (v._yMRN0wrA._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-18 + 500) then
									pcall(function()
__dummy_ops(); -- obf
										repeat
											_ncNRWHvo();
											_wgBbrKQh();
											_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
											_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
											_jUKVPjiK();
__dummy_ops(); -- obf
											v._BcGPQM7e._IbmeQpml = 0;
__dummy_ops(); -- obf
											v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
										until not _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
									end);
								end;
							end;
						end;
					else
						_phglcJLm();
					end;
__dummy_ops(); -- obf
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] and (_tRfh7Inj or _7Y9SwizB) then
__dummy_ops(); -- obf
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._8gVE9WLd._ykcYl8If._rfEwujR7 == false then
					if not game._yM6SEcBN._G3ADDX83._Mxa8tSQ1:_dX5IzNiJ(__xor_decode("31020a072a100f020d0752", 99)) and (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("301306000a020f432e0a00110c000b0a13", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("301306000a020f432e0a00110c000b0a13", 99)) then
						if _tRfh7Inj then
							_WnUwjXHO((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._nuFW4FSH._4RTXpJcJ._BtunICum._mqjsjIrw._ZvgwJfSd);
						elseif _7Y9SwizB then
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-5083.26025390625, 314.6056823730469, -3175.673095703125));
							_WnUwjXHO((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83[__xor_decode("210c021743200210170f06", 99)]._4RTXpJcJ._BtunICum._mqjsjIrw._ZvgwJfSd);
						end;
					end;
__dummy_ops(); -- obf
				end;
			end;
__dummy_ops(); -- obf
		end);
	end;
end);
_RZ8LpiZw = {};
_wbeRkqhu = require(game.ReplicatedStorage._CxBJU7ck);
for i, v in pairs(_wbeRkqhu._GByhUpdf) do
	table._xke4TdBn(_RZ8LpiZw, v);
end;
for i, v in pairs(_wbeRkqhu._4vhoutva) do
	table._xke4TdBn(_RZ8LpiZw, v);
end;
_0oBxBzSq = _V8Gpv6Eg._VHZKqmP4:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643200b0a13", 99),
	_lBKinVRV = _RZ8LpiZw,
	_46yGcjZr = _G._yfeCVCNX._v2Km0Agr[__xor_decode("30060f060017060743200b0a13", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._v2Km0Agr[__xor_decode("30060f060017060743200b0a13", 99)] = _EqP6BkYD;
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] and (_tRfh7Inj or _7Y9SwizB) then
				if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("301306000a020f432e0a00110c000b0a13", 99)) or (not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("301306000a020f432e0a00110c000b0a13", 99))) then
					if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2a100f020d074352", 99)) then
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("31020a07102d1300", 99), __xor_decode("30060f060017", 99), _G._yfeCVCNX._v2Km0Agr[__xor_decode("30060f060017060743200b0a13", 99)]);
					end;
				end;
			end;
		end;
__dummy_ops(); -- obf
	end);
end);
_jmmu7VtC = _V8Gpv6Eg._VHZKqmP4:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4331020a07", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("200c0e130f061706430216170c0e02170a00020f0f1a", 99),
	_46yGcjZr = _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4331020a07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_ryVYoNQH = _V8Gpv6Eg._VHZKqmP4:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4322140208060d", 99),
	_46yGcjZr = _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4322140208060d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4322140208060d", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._v2Km0Agr[__xor_decode("2216170c4322140208060d", 99)] then
			pcall(function()
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("22140208060d0611", 99), __xor_decode("22140208060d", 99));
			end);
		end;
	end;
end);
_kxgsU5MO = _V8Gpv6Eg._VHZKqmP4:_78vL80sn({
	_ZoEpv6x5 = __xor_decode("33110a0006", 99),
	_46yGcjZr = {
__dummy_ops(); -- obf
		_wZWqkrue = (1 + 1),
		_SccYATbU = (-2748410 + 10000000),
		_LIu1DE1b = _G._yfeCVCNX._v2Km0Agr[__xor_decode("33110a0006432706150a0f432511160a17", 99)]
	},
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._v2Km0Agr[__xor_decode("33110a0006432706150a0f432511160a17", 99)] = _1CCRvVck;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_nOT6hv2p = _V8Gpv6Eg._VHZKqmP4:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43360d10170c1106432706150a0f432511160a17", 99),
	_46yGcjZr = _G._yfeCVCNX._v2Km0Agr[__xor_decode("360d10170c1106432706150a0f432511160a17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._v2Km0Agr[__xor_decode("360d10170c1106432706150a0f432511160a17", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
function _NUBPUdol()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
		if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
			return true;
		end;
	end;
__dummy_ops(); -- obf
	for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_eHS4mqzq()) do
		if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
			return true;
		end;
	end;
	return false;
end;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._v2Km0Agr[__xor_decode("360d10170c1106432706150a0f432511160a17", 99)] then
				_K2XWR6vn = (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("0406172a0d15060d170c111a2511160a1710", 99));
				for i, v in pairs(_K2XWR6vn) do
					if v._O25TCYNw < _G._yfeCVCNX._v2Km0Agr[__xor_decode("33110a0006432706150a0f432511160a17", 99)] then
						if not _NUBPUdol() then
							(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2f0c02072511160a17", 99), v._xOtG83nV);
						end;
					end;
				end;
			end;
		end);
	end;
end);
_2oFPj5jE = _V8Gpv6Eg._VHZKqmP4:_BtunICum({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c432f0201", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		if _tRfh7Inj then
			_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-6438.73535, 250.645355, -4501.50684));
		elseif _7Y9SwizB then
			_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5017.40869, 314.844055, -2823.0127, -0.925743818, 0.0000000448217499, -0.378151238, 0.00000000455503146, (1 + 1), 0.000000107377559, 0.378151238, 0.000000097681621, -0.925743818));
		end;
	end
});
_vatgE9qD = _V8Gpv6Eg._VHZKqmP4:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2f02144331020a07", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_JX1C8QRo = _V8Gpv6Eg._VHZKqmP4:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432f02144331020a07", 99),
	_46yGcjZr = _G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)] = _1CCRvVck;
		_LbBhTdwR(_G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)] then
				if not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2e0a00110c000b0a13", 99)) and (not (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("2e0a00110c000b0a13", 99))) and (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2c11070611", 99))) and (not (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2c11070611", 99))) then
					_ncNRWHvo(0.3);
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("2e0a00110c000b0a13", 99), __xor_decode("52", 99));
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("2e0a00110c000b0a13", 99), __xor_decode("51", 99));
__dummy_ops(); -- obf
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)] then
				if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2c11070611", 99)) and (not (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2c11070611", 99))) then
__dummy_ops(); -- obf
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2e0a00110c000b0a13", 99)) or (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(__xor_decode("2e0a00110c000b0a13", 99)) then
						_WnUwjXHO((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._nuFW4FSH._GGccckie._BtunICum._mqjsjIrw._ZvgwJfSd);
__dummy_ops(); -- obf
					end;
				end;
				if (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2c11070611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2c11070611", 99)) then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2c11070611", 99)) then
						for h, i in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
							if i._xOtG83nV == __xor_decode("2c11070611", 99) then
__dummy_ops(); -- obf
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_wgBbrKQh();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_NwLutZRn(i._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									i._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
									_wgBbrKQh();
								until not i._zL81RjqU or i._BcGPQM7e._usQ3DGFi <= 0 or _G._yfeCVCNX._v2Km0Agr[__xor_decode("2f02144331020a07", 99)] == false;
							end;
						end;
__dummy_ops(); -- obf
					elseif (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_dX5IzNiJ(__xor_decode("2c11070611", 99)) then
						_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-6217.2021484375, 28.047645568848, -5053.1357421875));
					end;
				end;
			end;
		end;
	end);
end);
_dfvwCzN7 = _V8Gpv6Eg._57VErDHx:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("31020006", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
__dummy_ops(); -- obf
local _Y3eIDjLa = {
__dummy_ops(); -- obf
	__xor_decode("370c13432c0543241106021737110606", 99),
__dummy_ops(); -- obf
	__xor_decode("370a0e130f06432c0543370a0e06", 99),
	__xor_decode("2f061506114333160f0f", 99),
	__xor_decode("22000a060d17432c0d06", 99)
};
_3LXwIWbY = _V8Gpv6Eg._57VErDHx:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("30060f060017060743330f020006", 99),
	_lBKinVRV = _Y3eIDjLa,
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("30060f060017060743330f020006", 99)],
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._wpDG725K[__xor_decode("30060f060017060743330f020006", 99)] = _1CCRvVck;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_257n99Wz = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c43330f020006", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("37060f06130c111743370c43330f020006", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wpDG725K[__xor_decode("37060f06130c111743370c43330f020006", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._wpDG725K[__xor_decode("37060f06130c111743370c43330f020006", 99)] then
			pcall(function()
				if _G._yfeCVCNX._wpDG725K[__xor_decode("30060f060017060743330f020006", 99)] == __xor_decode("370c13432c0543241106021737110606", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(2947.556884765625, 2281.630615234375, -7213.54931640625));
				elseif _G._yfeCVCNX._wpDG725K[__xor_decode("30060f060017060743330f020006", 99)] == __xor_decode("370a0e130f06432c0543370a0e06", 99) then
					(game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(28286.35546875, 14895.3017578125, 102.62469482421875);
				elseif _G._yfeCVCNX._wpDG725K[__xor_decode("30060f060017060743330f020006", 99)] == __xor_decode("2f061506114333160f0f", 99) then
					local _djkKgnNz = _TV4Txa4P._ZH3x4hyR(28575.181640625, 14936.6279296875, 72.31636810302734);
do local __temp = math.random(97, 433); __temp = __temp + 0 end -- junk
					if (_djkKgnNz._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 >= (482 + 1000) then
						(game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(28286.35546875, 14895.3017578125, 102.62469482421875);
					else
						_NwLutZRn(_djkKgnNz);
					end;
				elseif _G._yfeCVCNX._wpDG725K[__xor_decode("30060f060017060743330f020006", 99)] == __xor_decode("22000a060d17432c0d06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(28981.552734375, 14888.4267578125, -120.245849609375));
				end;
			end);
		end;
	end;
end);
_izoSmdgR = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4321161a4324060211", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4321161a4324060211", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4321161a4324060211", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4321161a4324060211", 99)] then
				local _hZGQwG7H = {
					[(1 + 1)] = true
				};
				local _hZGQwG7H = {
					[(1 + 1)] = __xor_decode("3613041102070631020006", 99),
					[(1 + 2)] = __xor_decode("21161a", 99)
				};
				(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("31060e0c170610", 99))):_xXwYaCom(__xor_decode("200c0e0e253c", 99))):_hOfJD1fe(unpack(_hZGQwG7H));
			end;
		end;
	end);
end);
_QwQEKZrw = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("371406060d43170c430b0a040b06101743130c0a0d17", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("371406060d43370c432b0a040b061017432e0a11020406", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wpDG725K[__xor_decode("371406060d43370c432b0a040b061017432e0a11020406", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_V9XhK65P = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("250a0d0743210f16064324060211", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("250a0d0743210f16064324060211", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._wpDG725K[__xor_decode("250a0d0743210f16064324060211", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._wpDG725K[__xor_decode("250a0d0743210f16064324060211", 99)] then
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83:_dX5IzNiJ(__xor_decode("2e1a10170a002a100f020d07", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._EV3ZO6j5:_eHS4mqzq()) do
						if v:_jeeCVvJF(__xor_decode("2e06100b33021117", 99)) then
							if v._SIZGgot0 == _qo6tY6Am._SIZGgot0._vF0Ltlbp then
								_NwLutZRn(v._TV4Txa4P);
							end;
						end;
					end;
				end;
			end;
		end;
	end);
end);
_iusOHocC = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2f0c0c08432e0c0c0d4345431610064322010a0f0a171a", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("2f0c0c08432e0c0c0d4322010a0f0a171a", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wpDG725K[__xor_decode("2f0c0c08432e0c0c0d4322010a0f0a171a", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		pcall(function()
			if _G._yfeCVCNX._wpDG725K[__xor_decode("2f0c0c08432e0c0c0d4322010a0f0a171a", 99)] then
				_ncNRWHvo();
				local _iNgyMZYS = game._tnHiI7tl:_y5ZXgOaD();
				local _0XUmTu0c = game._yM6SEcBN._8S0fhLaZ._TV4Txa4P.p + _iNgyMZYS * (-45 + 100);
				game._yM6SEcBN._8S0fhLaZ._TV4Txa4P = _TV4Txa4P._1B1ePMNO(game._yM6SEcBN._8S0fhLaZ._TV4Txa4P.p, _0XUmTu0c);
			end;
		end);
__dummy_ops(); -- obf
	end;
end);
_fOBKxhid = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c433711020a0d", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)]);
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)] then
				if game.Players._5vXmWKtm._6HDGtM8L._N0wlnGoN._46yGcjZr == true then
					_W8du4aTo = false;
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(216.211181640625, 126.9352035522461, -12599.0732421875));
				end;
			end;
		end;
	end);
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _W8du4aTo and _7Y9SwizB then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200c000c0243340211110a0c11", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("200b0c000c0f0217064321021143210217170f0611", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("301406061743370b0a0605", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("20020d071a43310601060f", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if v._xOtG83nV == __xor_decode("200c000c0243340211110a0c11", 99) or v._xOtG83nV == __xor_decode("200b0c000c0f0217064321021143210217170f0611", 99) or v._xOtG83nV == __xor_decode("301406061743370b0a0605", 99) or v._xOtG83nV == __xor_decode("20020d071a43310601060f", 99) then
							if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_jUKVPjiK();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									v._BcGPQM7e._IbmeQpml = 0;
__dummy_ops(); -- obf
									_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
									_DFxiFN8p = v._xOtG83nV;
									_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
									_wgBbrKQh();
								until not _W8du4aTo or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				else
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(216.211181640625, 126.9352035522461, -12599.0732421875));
				end;
__dummy_ops(); -- obf
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
_YwIHUvQP(function()
	pcall(function()
__dummy_ops(); -- obf
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)] then
				if game.Players._5vXmWKtm._6HDGtM8L._N0wlnGoN._46yGcjZr == false then
					_W8du4aTo = true;
				end;
			end;
		end;
	end);
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c433711020a0d", 99)] then
				if tonumber(((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("31020006260d0611041a", 99)))._46yGcjZr) == (1 + 1) then
					if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._N0wlnGoN._46yGcjZr == false then
						(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3a", 99), false, game);
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3a", 99), false, game);
					end;
				end;
__dummy_ops(); -- obf
			end;
		end);
	end;
end);
_zyLfFd4j = _V8Gpv6Eg._57VErDHx:_BtunICum({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c433102000643270c0c11", 99),
	_ndWmPjxy = function()
		game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99),_UWIiwj4W._ZH3x4hyR(28286.35546875, 14895.3017578125, 102.62469482421875))
__dummy_ops(); -- obf
		if game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("2b160e020d", 99) then
		_o89LWNyc(_TV4Txa4P._ZH3x4hyR(29221.822265625, 14890.9755859375, -205.99114990234375))
		elseif game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("30081a130a0602", 99) then
		_o89LWNyc(_TV4Txa4P._ZH3x4hyR(28960.158203125, 14919.6240234375, 235.03948974609375))
__dummy_ops(); -- obf
		elseif game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("250a100b0e020d", 99) then
		_o89LWNyc(_TV4Txa4P._ZH3x4hyR(28231.17578125, 14890.9755859375, -211.64173889160156))
		elseif game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("201a010c1104", 99) then
		_o89LWNyc(_TV4Txa4P._ZH3x4hyR(28502.681640625, 14895.9755859375, -423.7279357910156))
		elseif game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("240b0c160f", 99) then
		_o89LWNyc(_TV4Txa4P._ZH3x4hyR(28674.244140625, 14890.6767578125, 445.4310607910156))
__dummy_ops(); -- obf
		elseif game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("2e0a0d08", 99) then
		_o89LWNyc(_TV4Txa4P._ZH3x4hyR(29012.341796875, 14890.9755859375, -380.1492614746094))
		end;
	end
});
_9Kt7ochG = _V8Gpv6Eg._57VErDHx:_BtunICum({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c4322000a060d17", 99),
	_ndWmPjxy = function()
		game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99),_UWIiwj4W._ZH3x4hyR(28286.35546875, 14895.3017578125, 102.62469482421875))
        _o89LWNyc(_TV4Txa4P._ZH3x4hyR(28981.552734375, 14888.4267578125, -120.245849609375))
    end;
});
__dummy_ops(); -- obf
_o6nYQyhs = _V8Gpv6Eg._57VErDHx:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4322000a060d17433216061017", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("3613041102070631020006", 99), __xor_decode("21161a", 99));
	end
});
_44QUuuES = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4337110a020f", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)],
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] = _1CCRvVck;
		_LbBhTdwR(_G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
			if _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("2b160e020d", 99) then
__dummy_ops(); -- obf
					for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_sFYPxrUf()) do
						if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
							pcall(function()
								repeat
									_ncNRWHvo(0.1);
									v._BcGPQM7e._usQ3DGFi = 0;
								until not _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end);
						end;
					end;
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("30081a130a0602", 99) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._eRDUGZSz._CQBrX1CI:_sFYPxrUf()) do
						if v._xOtG83nV == __xor_decode("100d0c140a100f020d073c201a0f0a0d0706114d535b52", 99) then
							_NwLutZRn(v._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, 0, 0));
						end;
					end;
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("250a100b0e020d", 99) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi._vlqLsk0O:_sFYPxrUf()) do
						if v._xOtG83nV == __xor_decode("2b160e020d0c0a07310c0c1733021117", 99) then
							repeat
__dummy_ops(); -- obf
								_ncNRWHvo();
								_NwLutZRn(v._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-39 + 200), 0));
								_aXPyDdTo();
							until not _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0 or (not v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)));
						end;
					end;
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("201a010c1104", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR((-1694 + 28654), 14898.7832, -(2 + 30), (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("240b0c160f", 99) then
					for i, v in pairs(game._yM6SEcBN._5iAO5Uk9:_sFYPxrUf()) do
						if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
							pcall(function()
__dummy_ops(); -- obf
								repeat
									_ncNRWHvo(0.1);
									v._BcGPQM7e._usQ3DGFi = 0;
								until not _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c4337110a020f", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
							end);
						end;
					end;
				elseif (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._0aqmU2bf._wpDG725K._46yGcjZr == __xor_decode("2e0a0d08", 99) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_sFYPxrUf()) do
						if v._xOtG83nV == __xor_decode("3017021117330c0a0d17", 99) then
							_NwLutZRn(v._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-4 + 10), 0));
						end;
					end;
				end;
			end;
		end;
	end);
end);
_0jVnAHrl = _V8Gpv6Eg._57VErDHx:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99),
	_46yGcjZr = _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)],
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._wpDG725K[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)] = _1CCRvVck;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)] then
			if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._mqjsjIrw._8gVE9WLd._TOEPoPub._rfEwujR7 == true then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99))):_sECpAcow()) do
__dummy_ops(); -- obf
					if v ~= game.Players._5vXmWKtm and v._6HDGtM8L and v._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
__dummy_ops(); -- obf
						if (v._6HDGtM8L._yMRN0wrA._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-12 + 500) then
							if v._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v._6HDGtM8L._BcGPQM7e._usQ3DGFi > 0 then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_BYmVTEPJ();
									_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
									_jUKVPjiK();
									_NwLutZRn(v._6HDGtM8L._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, 0, (2 + 40)));
									_wgBbrKQh();
								until not _G._yfeCVCNX._wpDG725K[__xor_decode("2216170c43280a0f0f43330f021a06114322051706114337110a020f", 99)] or (not v._6HDGtM8L) or v._6HDGtM8L._BcGPQM7e._usQ3DGFi <= 0;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
_WfTPP9jw = _V8Gpv6Eg._OqgF4fzS:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("37060f06130c1117", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_ZGMZWwR7 = _V8Gpv6Eg._OqgF4fzS:_BtunICum({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c43250a11101743300602", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f2e020a0d", 99));
	end
});
_SQNrQRWe = _V8Gpv6Eg._OqgF4fzS:_BtunICum({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c433006000c0d0743300602", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f2711061010110c1002", 99));
	end
});
_1wi8g8Iz = _V8Gpv6Eg._OqgF4fzS:_BtunICum({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c43370b0a110743300602", 99),
	_ndWmPjxy = function()
__dummy_ops(); -- obf
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("37110215060f390c16", 99));
	end
});
_wVnvPiov = _V8Gpv6Eg._OqgF4fzS:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2a100f020d07", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_owDUS7Rf = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("300b0c13", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_4SJjtCBK = _V8Gpv6Eg._wSLWfkQG:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4321161a432f0604060d0702111a4330140c1107", 99),
	_46yGcjZr = _G._yfeCVCNX._pOucV7pC[__xor_decode("2216170c4321161a432f0604060d0702111a4330140c1107", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._pOucV7pC[__xor_decode("2216170c4321161a432f0604060d0702111a4330140c1107", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
__dummy_ops(); -- obf
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._pOucV7pC[__xor_decode("2216170c4321161a432f0604060d0702111a4330140c1107", 99)] then
__dummy_ops(); -- obf
			pcall(function()
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2f0604060d0702111a30140c11072706020f0611", 99), __xor_decode("52", 99));
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2f0604060d0702111a30140c11072706020f0611", 99), __xor_decode("51", 99));
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2f0604060d0702111a30140c11072706020f0611", 99), __xor_decode("50", 99));
			end);
__dummy_ops(); -- obf
		end;
	end;
end);
_F7PfoVp2 = _V8Gpv6Eg._wSLWfkQG:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4321161a432b02080a43200c0f0c11", 99),
	_46yGcjZr = _G._yfeCVCNX._pOucV7pC[__xor_decode("2216170c4321161a432b02080a43200c0f0c11", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._pOucV7pC[__xor_decode("2216170c4321161a432b02080a43200c0f0c11", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._pOucV7pC[__xor_decode("2216170c4321161a432b02080a43200c0f0c11", 99)] then
			(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("200c0f0c11102706020f0611", 99), __xor_decode("51", 99));
		end;
	end;
end);
__dummy_ops(); -- obf
_8kbQ7Do8 = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("22010a0f0a170a0610", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_B2PkraxZ = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("21161a43240613130c", 99),
	_cYZMpA94 = __xor_decode("4752534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2b02080a", 99), __xor_decode("240613130c", 99));
	end
});
_SzxGzbEV = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432116100c432b02080a", 99),
	_cYZMpA94 = __xor_decode("4751564f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2b02080a", 99), __xor_decode("2116100c", 99));
	end
__dummy_ops(); -- obf
});
_iugdylku = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43300c1116", 99),
	_cYZMpA94 = __xor_decode("4751564f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2b02080a", 99), __xor_decode("300c1116", 99));
	end
});
_lqEYCEOa = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432c011006111502170a0c0d432b02080a", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("475456534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("28060d37020f08", 99), __xor_decode("21161a", 99));
	end
});
_AWjNaRXy = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("250a040b170a0d044330171a0f06", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_SFESzFTr = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43210f020008432f0604", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("475256534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210f0200082f0604", 99));
__dummy_ops(); -- obf
	end
});
_BwA336Jy = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43260f060017110c", 99),
	_cYZMpA94 = __xor_decode("475656534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110c", 99));
	end
});
_rA7v7lcn = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("21161a43250a100b0e020d43280211021706", 99),
	_cYZMpA94 = __xor_decode("475456534f535353", 99),
	_ndWmPjxy = function()
__dummy_ops(); -- obf
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a250a100b0e020d280211021706", 99));
	end
});
_O78zHO14 = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43271102040c0d43200f0214", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1524f565353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("52", 99));
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("271102040c0d200f0214", 99), __xor_decode("51", 99));
	end
__dummy_ops(); -- obf
});
_NeOhhfeV = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4330161306110b160e020d", 99),
	_cYZMpA94 = __xor_decode("47504f5353534f535353", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30161306110b160e020d", 99));
	end
});
_7WV4Wzcq = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43270602170b4330170613", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1564f5353534347564f5353534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a270602170b30170613", 99));
	end
});
_nBDFHIX4 = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43300b0211080e020d43280211021706", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1564f5353534347514f5653534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99), true);
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a300b0211080e020d280211021706", 99));
	end
});
_p6BSYRsY = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("21161a43260f060017110a0043200f0214", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1564f5353534347504f5353534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a260f060017110a00200f0214", 99));
	end
});
_AqFtawJi = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("21161a43271102040c0d4337020f0c0d", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1564f5353534347504f5353534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a271102040c0d37020f0c0d", 99));
	end
});
_H6XbTOeW = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43240c07432b160e020d", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1564f5353534347564f5353534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a240c070b160e020d", 99));
	end
});
_AJzLhuEt = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4330020d04160a0d0643221117", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1564f5353534347564f5353534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30020d04160a0d06221117", 99), true);
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a30020d04160a0d06221117", 99));
	end
});
_xw3P6t69 = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("30140c1107", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_SsoHsTIM = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432016170f021010", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("47524f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("2016170f021010", 99));
	end
});
_75Z3bPva = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43280217020d02", 99),
	_cYZMpA94 = __xor_decode("47524f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("280217020d02", 99));
	end
});
_uPnAvFbi = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432a110c0d432e020006", 99),
	_cYZMpA94 = __xor_decode("4751564f535353", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("2a110c0d432e020006", 99));
__dummy_ops(); -- obf
	end
});
__dummy_ops(); -- obf
_yQzokTM9 = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432716020f43280217020d02", 99),
	_cYZMpA94 = __xor_decode("4752514f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("2716020f43280217020d02", 99));
	end
});
_kiIspKBl = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4337110a130f0643280217020d02", 99),
	_cYZMpA94 = __xor_decode("4755534f535353", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("37110a130f0643280217020d02", 99));
__dummy_ops(); -- obf
	end
});
_WvbE0WRl = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43330a1306", 99),
	_cYZMpA94 = __xor_decode("475253534f535353", 99),
	_ndWmPjxy = function()
__dummy_ops(); -- obf
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("330a1306", 99));
	end
});
__dummy_ops(); -- obf
_lDrSQfV8 = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432716020f432b060207060743210f020706", 99),
	_cYZMpA94 = __xor_decode("475753534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("2716020f4e2b060207060743210f020706", 99));
	end
});
_pmTCPUQM = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43210a10060d170c", 99),
	_cYZMpA94 = __xor_decode("47524f5153534f535353", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
__dummy_ops(); -- obf
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("210a10060d170c", 99));
	end
});
__dummy_ops(); -- obf
_OiDB78xV = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43300c160f4320020d06", 99),
	_cYZMpA94 = __xor_decode("47524f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("300c160f4320020d06", 99));
__dummy_ops(); -- obf
	end
});
_7Cwz3As6 = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("24160d", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_Dz9DgZ7s = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43300f0a0d04100b0c17", 99),
	_cYZMpA94 = __xor_decode("47564f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("300f0a0d04100b0c17", 99));
	end
});
_vn2AxsJL = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a432e1610080617", 99),
	_cYZMpA94 = __xor_decode("475b4f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("2e1610080617", 99));
	end
});
_b75HOX8p = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43250f0a0d170f0c0008", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("4752534f565353", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("250f0a0d170f0c0008", 99));
	end
});
_JPWzTyKg = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a433106050a0d060743250a0d170f0c0008", 99),
	_cYZMpA94 = __xor_decode("4755534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("3106050a0d060743250a0d170f0c0008", 99));
	end
});
_DfSzCp9V = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4320020d0d0c0d", 99),
	_cYZMpA94 = __xor_decode("475253534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("20020d0d0c0d", 99));
	end
});
_CqxDrEJy = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4328020116000b02", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("43a0e5a1f1524f565353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("300f0a0d04100b0c17", 99), __xor_decode("52", 99));
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("300f0a0d04100b0c17", 99), __xor_decode("51", 99));
	end
});
_ZbQIonwp = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("3017021710", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
__dummy_ops(); -- obf
_VFD7SV7t = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("3106100617433017021710", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1514f565353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("310605160d07", 99), __xor_decode("52", 99));
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("310605160d07", 99), __xor_decode("51", 99));
	end
});
_SrkRuJMp = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("31020d070c0e4331020006", 99),
	_cYZMpA94 = __xor_decode("43a0e5a1f1504f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("3106110c0f0f", 99), __xor_decode("52", 99));
__dummy_ops(); -- obf
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("210f0200080106021107310614021107", 99), __xor_decode("3106110c0f0f", 99), __xor_decode("51", 99));
	end
});
_5huRPJbl = _V8Gpv6Eg._wSLWfkQG:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2200000610100c110a0610", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_hwXUDDdS = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43210f0200084320021306", 99),
	_cYZMpA94 = __xor_decode("4756534f535353", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("210f0200084320021306", 99));
	end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_gdsg0IpP = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a4330140c1107100e020d432b0217", 99),
	_cYZMpA94 = __xor_decode("475256534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("30140c1107100e020d432b0217", 99));
	end
});
_CtywbBJ9 = _V8Gpv6Eg._wSLWfkQG:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21161a43370c0e0c0643310a0d04", 99),
	_cYZMpA94 = __xor_decode("475653534f535353", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a2a17060e", 99), __xor_decode("370c0e0c0643310a0d04", 99));
__dummy_ops(); -- obf
	end
});
_2orCWsur = _V8Gpv6Eg._P5MAn7x7:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("200c0e010217", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
__dummy_ops(); -- obf
_CflrDKAB = _V8Gpv6Eg._P5MAn7x7:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("330f021a061110432a0d43300611150611", 99),
	_cYZMpA94 = __xor_decode("53", 99)
__dummy_ops(); -- obf
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99))):_sECpAcow()) do
				if i == (-2 + 12) then
					_CflrDKAB:_zhx0DbgD(i .. __xor_decode("434c43", 99) .. __xor_decode("5251", 99) .. __xor_decode("4b2e021b4a", 99));
				elseif i == (1 + 1) then
					_CflrDKAB:_zhx0DbgD(i .. __xor_decode("434c43", 99) .. __xor_decode("5251", 99));
				else
					_CflrDKAB:_zhx0DbgD(i .. __xor_decode("434c43", 99) .. __xor_decode("5251", 99));
				end;
			end;
__dummy_ops(); -- obf
		end);
	end;
end);
local _0Tmbu2ys = {};
for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99))):_eHS4mqzq()) do
	table._xke4TdBn(_0Tmbu2ys, v._xOtG83nV);
end;
_aHyqDJiY = _V8Gpv6Eg._P5MAn7x7:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643330f021a0611", 99),
	_lBKinVRV = _0Tmbu2ys,
	_46yGcjZr = tostring(_0Tmbu2ys[(1 + 1)]),
	_ndWmPjxy = function(_EqP6BkYD)
		_G._x5GZcfr5 = _EqP6BkYD;
	end
});
__dummy_ops(); -- obf
_eptSJjhr = _V8Gpv6Eg._P5MAn7x7:_BtunICum({
	_ZoEpv6x5 = __xor_decode("3106051106100b43330f021a0611", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		_0Tmbu2ys = {};
		for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99))):_eHS4mqzq()) do
			table._xke4TdBn(_0Tmbu2ys, v._xOtG83nV);
		end;
__dummy_ops(); -- obf
		_aHyqDJiY:_rhtiYO2c(_0Tmbu2ys);
	end
});
_Pq0uXnvk = _V8Gpv6Eg._P5MAn7x7:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("301306001702170643330f021a0611", 99),
	_46yGcjZr = false,
	_ndWmPjxy = function(_AFcg1798)
		_FXk91E4o = _AFcg1798

		local Players = game:_OKOU25H8(__xor_decode("330f021a061110", 99))
		local _yM6SEcBN = game:_OKOU25H8(__xor_decode("340c11081013020006", 99))
		local _WE96oNow = _yM6SEcBN._8S0fhLaZ
		local _5vXmWKtm = Players._5vXmWKtm

		while _FXk91E4o do
			_ncNRWHvo(0.1)

			local _Ha0yQ71w = _G._x5GZcfr5 and Players:_dX5IzNiJ(_G._x5GZcfr5)
			if _Ha0yQ71w and _Ha0yQ71w._6HDGtM8L and _Ha0yQ71w._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) then
				_WE96oNow._erc7Waav = _Ha0yQ71w._6HDGtM8L._BcGPQM7e
__dummy_ops(); -- obf
			else
				break 
			end
		end

__dummy_ops(); -- obf
		
		if _5vXmWKtm._6HDGtM8L and _5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) then
			_WE96oNow._erc7Waav = _5vXmWKtm._6HDGtM8L._BcGPQM7e
__dummy_ops(); -- obf
		end
	end
})
_tV3VHEjN = _V8Gpv6Eg._P5MAn7x7:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c43330f021a0611", 99),
	_46yGcjZr = false,
	_ndWmPjxy = function(_AFcg1798)
		_G._HiMAaiiC = _1CCRvVck;
		pcall(function()
			if _G._HiMAaiiC then
				repeat
					_NwLutZRn((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))[_G._x5GZcfr5]._6HDGtM8L._yMRN0wrA._TV4Txa4P);
					_ncNRWHvo();
				until _G._HiMAaiiC == false or (not (game:_OKOU25H8(__xor_decode("330f021a061110", 99))):_dX5IzNiJ(_G._x5GZcfr5));
__dummy_ops(); -- obf
			end;
			_LbBhTdwR(_G._HiMAaiiC);
__dummy_ops(); -- obf
		end);
	end
__dummy_ops(); -- obf
});
local _SrMM3H7Z = {};
if _LfIBZk7l then
	_SrMM3H7Z = {
		__xor_decode("340a0d072e0a0f0f", 99),
		__xor_decode("2e02110a0d06", 99),
		__xor_decode("2e0a07070f0643370c140d", 99),
		__xor_decode("29160d040f06", 99),
		__xor_decode("330a1102170643350a0f0f020406", 99),
		__xor_decode("270610061117", 99),
		__xor_decode("300d0c14432a100f020d07", 99),
		__xor_decode("2e02110a0d06250c1107", 99),
		__xor_decode("200c0f0c101006160e", 99),
		__xor_decode("30081a432a100f020d074352", 99),
__dummy_ops(); -- obf
		__xor_decode("30081a432a100f020d074351", 99),
		__xor_decode("30081a432a100f020d074350", 99),
		__xor_decode("33110a100c0d", 99),
__dummy_ops(); -- obf
		__xor_decode("2e02040e0243350a0f0f020406", 99),
__dummy_ops(); -- obf
		__xor_decode("360d070611433402170611432a100f020d07", 99),
		__xor_decode("250c160d17020a0d43200a171a", 99),
		__xor_decode("300b020d0843310c0c0e", 99),
		__xor_decode("2e0c01432a100f020d07", 99)
__dummy_ops(); -- obf
	};
elseif _tRfh7Inj then
	_SrMM3H7Z = {
		__xor_decode("370b064320020506", 99),
		__xor_decode("25110a10174330130c17", 99),
		__xor_decode("270211084322110602", 99),
local __5934 = {['y']=function()end} -- junk
		__xor_decode("250f020e0a0d040c432e020d100a0c0d", 99),
		__xor_decode("250f020e0a0d040c43310c0c0e", 99),
		__xor_decode("241106060d43390c0d06", 99),
		__xor_decode("250200170c111a", 99),
		__xor_decode("200c0f0c1010160a0e", 99),
		__xor_decode("390c0e010a06432a100f020d07", 99),
		__xor_decode("37140c43300d0c14432e0c160d17020a0d", 99),
		__xor_decode("33160d08432b0219021107", 99),
		__xor_decode("20161110060743300b0a13", 99),
		__xor_decode("2a000643200210170f06", 99),
		__xor_decode("250c11040c1717060d432a100f020d07", 99),
		__xor_decode("3610100c13432a100f020d07", 99),
		__xor_decode("2e0a0d0a4330081a432a100f020d07", 99)
	};
elseif _7Y9SwizB then
__dummy_ops(); -- obf
	_SrMM3H7Z = {
		__xor_decode("2e020d100a0c0d", 99),
		__xor_decode("330c111743370c140d", 99),
		__xor_decode("24110602174337110606", 99),
		__xor_decode("200210170f06432c0d43370b0643300602", 99),
__dummy_ops(); -- obf
		__xor_decode("2e0a0d0a30081a", 99),
		__xor_decode("2b1a071102432a100f020d07", 99),
		__xor_decode("250f0c02170a0d0443371611170f06", 99),
		__xor_decode("2b02160d17060743200210170f06", 99),
		__xor_decode("2a000643201106020e432a100f020d07", 99),
		__xor_decode("3306020d1617432a100f020d07", 99),
		__xor_decode("20020806432a100f020d07", 99),
__dummy_ops(); -- obf
		__xor_decode("200c000c02432a100f020d07", 99),
		__xor_decode("20020d071a432a100f020d07", 99),
		__xor_decode("370a080a432c1617130c1017", 99),
		__xor_decode("271102040c0d43270c090c", 99)
	};
__dummy_ops(); -- obf
end;
_mLKBJGxR = _V8Gpv6Eg._OqgF4fzS:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c1006432a100f020d07", 99),
__dummy_ops(); -- obf
	_lBKinVRV = _SrMM3H7Z,
	_46yGcjZr = _SrMM3H7Z[(1 + 1)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._DpMmhVhm = _EqP6BkYD;
	end
__dummy_ops(); -- obf
});
_BuW5rGJX = _V8Gpv6Eg._OqgF4fzS:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c432a100f020d07", 99),
	_46yGcjZr = false,
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._8IKkFEWl = _AFcg1798;
		if _G._8IKkFEWl then
			repeat
				_ncNRWHvo();
				if _G._DpMmhVhm == __xor_decode("340a0d072e0a0f0f", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(979.79895019531, 16.516613006592, 1429.0466308594));
				elseif _G._DpMmhVhm == __xor_decode("2e02110a0d06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2566.4296875, 6.8556680679321, 2045.2561035156));
				elseif _G._DpMmhVhm == __xor_decode("2e0a07070f0643370c140d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-690.33081054688, 15.09425163269, 1582.2380371094));
				elseif _G._DpMmhVhm == __xor_decode("29160d040f06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1612.7957763672, 36.852081298828, 149.12843322754));
				elseif _G._DpMmhVhm == __xor_decode("330a1102170643350a0f0f020406", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1181.3093261719, 4.7514905929565, 3803.5456542969));
				elseif _G._DpMmhVhm == __xor_decode("270610061117", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(944.15789794922, 20.919729232788, 4373.3002929688));
				elseif _G._DpMmhVhm == __xor_decode("300d0c14432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(1347.8067626953, 104.66806030273, -1319.7370605469));
				elseif _G._DpMmhVhm == __xor_decode("2e02110a0d06250c1107", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-4914.8212890625, 50.963626861572, 4281.0278320313));
				elseif _G._DpMmhVhm == __xor_decode("200c0f0c101006160e", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1427.6203613281, 7.2881078720093, -2792.7722167969));
				elseif _G._DpMmhVhm == __xor_decode("30081a432a100f020d074352", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-4869.1025390625, 733.46051025391, -2667.0180664063));
				elseif _G._DpMmhVhm == __xor_decode("30081a432a100f020d074351", 99) then
__dummy_ops(); -- obf
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-4607.82275, 872.54248, -1667.55688));
				elseif _G._DpMmhVhm == __xor_decode("30081a432a100f020d074350", 99) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-7894.6176757813, 5547.1416015625, -380.29119873047));
				elseif _G._DpMmhVhm == __xor_decode("33110a100c0d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(4875.330078125, 5.6519818305969, 734.85021972656));
				elseif _G._DpMmhVhm == __xor_decode("2e02040e0243350a0f0f020406", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5247.7163085938, 12.883934020996, 8504.96875));
				elseif _G._DpMmhVhm == __xor_decode("360d070611433402170611432a100f020d07", 99) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(61163.8515625, 11.6796875, 1819.7841796875));
				elseif _G._DpMmhVhm == __xor_decode("250c160d17020a0d43200a171a", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(5127.1284179688, 59.501365661621, 4105.4458007813));
				elseif _G._DpMmhVhm == __xor_decode("300b020d0843310c0c0e", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1442.16553, 29.8788261, -28.3547478));
				elseif _G._DpMmhVhm == __xor_decode("2e0c01432a100f020d07", 99) then
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2850.20068, 7.39224768, 5354.99268));
				elseif _G._DpMmhVhm == __xor_decode("370b064320020506", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-380.47927856445, 77.220390319824, 255.82550048828));
				elseif _G._DpMmhVhm == __xor_decode("25110a10174330130c17", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-11.311455726624, 29.276733398438, 2771.5224609375));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("270211084322110602", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(3780.0302734375, 22.652164459229, -3498.5859375));
				elseif _G._DpMmhVhm == __xor_decode("250f020e0a0d040c432e020d100a0c0d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-483.73370361328, 332.0383605957, 595.32708740234));
				elseif _G._DpMmhVhm == __xor_decode("250f020e0a0d040c43310c0c0e", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(2284.4140625, 15.152037620544, 875.72534179688));
				elseif _G._DpMmhVhm == __xor_decode("241106060d43390c0d06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2448.5300292969, 73.016105651855, -3210.6306152344));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("250200170c111a", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(424.12698364258, 211.16171264648, -427.54049682617));
				elseif _G._DpMmhVhm == __xor_decode("200c0f0c1010160a0e", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1503.6224365234, 219.7956237793, 1369.3101806641));
				elseif _G._DpMmhVhm == __xor_decode("390c0e010a06432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5622.033203125, 492.19604492188, -781.78552246094));
				elseif _G._DpMmhVhm == __xor_decode("37140c43300d0c14432e0c160d17020a0d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(753.14288330078, 408.23559570313, -5274.6147460938));
				elseif _G._DpMmhVhm == __xor_decode("33160d08432b0219021107", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-6127.654296875, 15.951762199402, -5040.2861328125));
				elseif _G._DpMmhVhm == __xor_decode("20161110060743300b0a13", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(923.40197753906, 125.05712890625, 32885.875));
				elseif _G._DpMmhVhm == __xor_decode("2a000643200210170f06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(6148.4116210938, 294.38687133789, -6741.1166992188));
				elseif _G._DpMmhVhm == __xor_decode("250c11040c1717060d432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-3032.7641601563, 317.89672851563, -10075.373046875));
				elseif _G._DpMmhVhm == __xor_decode("3610100c13432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(4816.8618164063, 8.4599885940552, 2863.8195800781));
				elseif _G._DpMmhVhm == __xor_decode("2e0a0d0a4330081a432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-288.74060058594, 49326.31640625, -35248.59375));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("24110602174337110606", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(2681.2736816406, 1682.8092041016, -7190.9853515625));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("200210170f06432c0d43370b0643300602", 99) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-5083.26025390625, 314.6056823730469, -3175.673095703125));
				elseif _G._DpMmhVhm == __xor_decode("2e0a0d0a30081a", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-260.65557861328, 49325.8046875, -35253.5703125));
				elseif _G._DpMmhVhm == __xor_decode("330c111743370c140d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-290.7376708984375, 6.729952812194824, 5343.5537109375));
				elseif _G._DpMmhVhm == __xor_decode("2b1a071102432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(5291.24951, 1005.4433, 393.762421, 0.994222522, 0.00000000945717726, -0.10733854, -0.00000000708227299, (1 + 1), 0.0000000225065655, 0.10733854, -0.0000000216163336, 0.994222522));
				elseif _G._DpMmhVhm == __xor_decode("250f0c02170a0d0443371611170f06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-13274.528320313, 531.82073974609, -7579.22265625));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("2e020d100a0c0d", 99) then
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("11061216061017260d1711020d0006", 99), _UWIiwj4W._ZH3x4hyR(-12471.169921875, 374.94024658203, -7551.677734375));
				elseif _G._DpMmhVhm == __xor_decode("2b02160d17060743200210170f06", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-9515.3720703125, 164.00624084473, 5786.0610351562));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("2a000643201106020e432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-902.56817626953, 79.93204498291, -10988.84765625));
				elseif _G._DpMmhVhm == __xor_decode("3306020d1617432a100f020d07", 99) then
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2062.7475585938, 50.473892211914, -10232.568359375));
				elseif _G._DpMmhVhm == __xor_decode("20020806432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1884.7747802734375, 19.327526092529297, -11666.8974609375));
				elseif _G._DpMmhVhm == __xor_decode("200c000c02432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(87.94276428222656, 73.55451202392578, -12319.46484375));
				elseif _G._DpMmhVhm == __xor_decode("20020d071a432a100f020d07", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1014.4241943359375, 149.11068725585938, -14555.962890625));
				elseif _G._DpMmhVhm == __xor_decode("370a080a432c1617130c1017", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 0.00000000110512588, -0.99813664, -0.0000000183458475, (1 + 1), 0.00000000222871765, 0.99813664, 0.0000000184476558, -0.0610186495));
__dummy_ops(); -- obf
				elseif _G._DpMmhVhm == __xor_decode("271102040c0d43270c090c", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(5743.31934, 1206.90991, 936.011047, 0.475779682, -0.00000000366404773, -0.879564524, 0.0000000254969592, (1 + 1), 0.00000000962622693, 0.879564524, -0.000000027006184, 0.475779682));
				end;
			until not _G._8IKkFEWl;
		end;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._8IKkFEWl);
	end
});
_aid5Bc6z = _V8Gpv6Eg._OqgF4fzS:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2d1300", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
local _5ZE72mTJ = {};
__dummy_ops(); -- obf
if _LfIBZk7l then
	_5ZE72mTJ = {
		__xor_decode("31020d070c0e432706150a0f432511160a17", 99),
		__xor_decode("210f0c1b432511160a1710432706020f0611", 99),
__dummy_ops(); -- obf
		__xor_decode("31060e0c1506432706150a0f432511160a17", 99),
		__xor_decode("22010a0f0a171a43370602000b0611", 99),
		__xor_decode("270211084330170613", 99),
		__xor_decode("260f060017110c", 99),
		__xor_decode("250a100b0e020d43280211021706", 99)
__dummy_ops(); -- obf
	};
elseif _tRfh7Inj then
	_5ZE72mTJ = {
		__xor_decode("270211040c0d4321061102170b", 99),
		__xor_decode("2e17101706110a0c1610432e020d", 99),
		__xor_decode("2e1a101706110a0c16104330000a060d170a1017", 99),
		__xor_decode("22140208060d0a0d0443261b13061117", 99),
		__xor_decode("2d061107", 99),
		__xor_decode("210211432e020d02040611", 99),
		__xor_decode("210f0c1b432511160a1710432706020f0611", 99),
		__xor_decode("371106150c11", 99),
		__xor_decode("260d0b020d00060e060d174326070a170c11", 99),
		__xor_decode("330a110217064331060011160a170611", 99),
		__xor_decode("2e02110a0d06104331060011160a170611", 99),
		__xor_decode("200b060e0a1017", 99),
		__xor_decode("201a010c1104", 99),
		__xor_decode("240b0c160f432e021108", 99),
		__xor_decode("241602100b0a060e", 99),
		__xor_decode("260f4322070e0a0d", 99),
		__xor_decode("260f43310c070c0f050c", 99),
		__xor_decode("22110c1406", 99)
	};
elseif _7Y9SwizB then
__dummy_ops(); -- obf
	_5ZE72mTJ = {
		__xor_decode("210f0c1b432511160a1710432706020f0611", 99),
		__xor_decode("31060e0c1506432706150a0f432511160a17", 99),
		__xor_decode("2b0c110d0607432e020d", 99),
		__xor_decode("2b160d04061a432e020d", 99),
		__xor_decode("331106150a0c1610432b06110c", 99),
		__xor_decode("2116170f0611", 99),
		__xor_decode("2f160d0c15060d", 99),
		__xor_decode("371106150c11", 99),
		__xor_decode("260f0a1706432b160d170611", 99),
		__xor_decode("330f021a0611432b160d170611", 99),
		__xor_decode("36190c170b", 99)
__dummy_ops(); -- obf
	};
end;
_ElCf5zi3 = _V8Gpv6Eg._OqgF4fzS:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c1006432d1300", 99),
	_lBKinVRV = _5ZE72mTJ,
	_46yGcjZr = _5ZE72mTJ[(1 + 1)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._FzARqVLI = _EqP6BkYD;
	end
});
_AjoH9I3Y = _V8Gpv6Eg._OqgF4fzS:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c432d1300", 99),
	_46yGcjZr = false,
	_ndWmPjxy = function(_AFcg1798)
		_G._gaaRhEsS = _AFcg1798;
__dummy_ops(); -- obf
		if _G._gaaRhEsS then
			repeat
				_ncNRWHvo();
				if _G._FzARqVLI == __xor_decode("270211040c0d4321061102170b", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(703.372986, 186.985519, 654.522034, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("2e17101706110a0c1610432e020d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -0.00000000906400288, 0.92552036, -0.00000000895582009, (1 + 1), 0.0000000134578926, -0.92552036, -0.0000000133852689, 0.378697902));
				elseif _G._FzARqVLI == __xor_decode("2e1a101706110a0c16104330000a060d170a1017", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-6437.87793, 250.645355, -4498.92773, 0.502376854, -0.0000000101223634, -0.864648759, 0.0000000234106086, (1 + 1), 0.00000000189508653, 0.864648759, -0.0000000211940012, 0.502376854));
				elseif _G._FzARqVLI == __xor_decode("22140208060d0a0d0443261b13061117", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-408.098846, 16.0459061, 247.432846, 0.028394036, 0.000000000617599138, 0.999596894, -0.00000000557905944, (1 + 1), -0.000000000459372484, -0.999596894, -0.00000000556376767, 0.028394036));
				elseif _G._FzARqVLI == __xor_decode("2d061107", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-401.783722, 73.0859299, 262.306702, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("210211432e020d02040611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-385.84726, 73.0458984, 316.088806, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("210f0c1b432511160a1710432706020f0611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-450.725464, 73.0458984, 355.636902, -0.780352175, -0.000000027266168, 0.625340283, 0.00000000978516468, (1 + 1), 0.0000000558128797, -0.625340283, 0.0000000496727601, -0.780352175));
				elseif _G._FzARqVLI == __xor_decode("371106150c11", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-341.498322, 331.886444, 643.024963, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
__dummy_ops(); -- obf
				elseif _G._FzARqVLI == __xor_decode("330f0c0810170611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, (1 + 1), 0, -0.858108759, 0, -0.513468027));
				elseif _G._FzARqVLI == __xor_decode("260d0b020d00060e060d174326070a170c11", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-346.820221, 72.9856339, 1194.36218, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("330a110217064331060011160a170611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-428.072998, 72.9495239, 1445.32422, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("2e02110a0d06104331060011160a170611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, (1 + 1), 0, 0.499189168, 0, 0.866493046));
__dummy_ops(); -- obf
				elseif _G._FzARqVLI == __xor_decode("200b060e0a1017", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-2777.45288, 72.9919434, -3572.25732, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("240b0c160f432e021108", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(635.172546, 125.976357, 33219.832, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("201a010c1104", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(629.146851, 312.307373, -531.624146, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("241602100b0a060e", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(937.953003, 181.083359, 33277.9297, (1 + 1), -0.0000000860126406, 0.0000000000000000381773896, 0.0000000860126406, (1 + 1), -0.000000000000000189969598, -0.000000000000000038177373, 0.000000000000000189969598, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("260f4322070e0a0d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(1322.80835, 126.345039, 33135.8789, 0.988783717, -0.0000000869797603, -0.149354503, 0.0000000862223786, (1 + 1), -0.0000000115461916, 0.149354503, -0.00000000146101409, 0.988783717));
				elseif _G._FzARqVLI == __xor_decode("260f43310c070c0f050c", 99) then
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(941.228699, 40.4686775, 32778.9922, -0.818029106, -0.0000000119524382, 0.575176775, -0.0000000128741648, (1 + 1), 0.00000000247053866, -0.575176775, -0.00000000538394795, -0.818029106));
				elseif _G._FzARqVLI == __xor_decode("22110c1406", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1994.51038, 125.519142, -72.2622986, -0.16715166, -0.0000000655417338, -0.985931218, -0.0000000713315558, (1 + 1), -0.0000000543836585, 0.985931218, 0.0000000612376851, -0.16715166));
				elseif _G._FzARqVLI == __xor_decode("31020d070c0e432706150a0f432511160a17", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 0.0000000274216543, 0.829979479, 0.0000000583273234, (1 + 1), 0.00000000616037932, -0.829979479, 0.0000000518467118, -0.557794094));
				elseif _G._FzARqVLI == __xor_decode("210f0c1b432511160a1710432706020f0611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-923.255066, 7.67800522, 1608.61011, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("31060e0c1506432706150a0f432511160a17", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(5664.80469, 64.677681, 867.85907, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("22010a0f0a171a43370602000b0611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -0.0000000926330159, 0.500262439, -0.0000000733759435, (1 + 1), 0.00000005816689, -0.500262439, 0.0000000136579752, -0.865874112));
				elseif _G._FzARqVLI == __xor_decode("270211084330170613", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-987.873047, 13.7778397, 3989.4978, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("260f060017110c", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-5389.49561, 13.283, -2149.80151, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("250a100b0e020d43280211021706", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(61581.8047, 18.8965912, 987.832703, (1 + 1), 0, 0, 0, (1 + 1), 0, 0, 0, (1 + 1)));
				elseif _G._FzARqVLI == __xor_decode("31020d070c0e432706150a0f432511160a17", 99) then
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(8258 + 12491), (-45 + 337), -(-5062 + 7449)));
				elseif _G._FzARqVLI == __xor_decode("210f0c1b432511160a1710432706020f0611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-1926 + 12511), (-187 + 337), -(2165 + 7448)));
				elseif _G._FzARqVLI == __xor_decode("31060e0c1506432706150a0f432511160a17", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-311 + 5571), (-221 + 1089), -(-1399 + 2661)));
				elseif _G._FzARqVLI == __xor_decode("2b0c110d0607432e020d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-510 + 11890), (216 + 931), -(861 + 8760)));
				elseif _G._FzARqVLI == __xor_decode("2b160d04061a432e020d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-995 + 10919), (223 + 624), -(1338 + 10268)));
__dummy_ops(); -- obf
				elseif _G._FzARqVLI == __xor_decode("331106150a0c1610432b06110c", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-6223 + 10368), (-4 + 332), -(538 + 10128)));
				elseif _G._FzARqVLI == __xor_decode("2116170f0611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-888 + 5125), (-23 + 316), -(-188 + 3130)));
__dummy_ops(); -- obf
				elseif _G._FzARqVLI == __xor_decode("2f160d0c15060d", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-1512 + 5117), (-7 + 316), -(1336 + 3093)));
				elseif _G._FzARqVLI == __xor_decode("260f0a1706432b160d170611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(2590 + 5420), (127 + 314), -(-250 + 2828)));
				elseif _G._FzARqVLI == __xor_decode("330f021a0611432b160d170611", 99) then
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(-363 + 5559), (-104 + 314), -(695 + 2840)));
				elseif _G._FzARqVLI == __xor_decode("36190c170b", 99) then
__dummy_ops(); -- obf
					_NwLutZRn(_TV4Txa4P._ZH3x4hyR(-(80 + 9785), (202 + 852), (-3747 + 6667)));
				end;
__dummy_ops(); -- obf
			until not _G._gaaRhEsS;
		end;
		_LbBhTdwR(_G._gaaRhEsS);
	end
});
_CprJha6t = _V8Gpv6Eg._7fonWEzq:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("261013", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_AByH7KZN = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("26101343330f021a0611", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b1743330f021a0611", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343330f021a0611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("26303343330f021a0611", 99)] = _AFcg1798;
	end
});
__dummy_ops(); -- obf
_GI68m6Kz = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("26101343200b061017", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b1743200b061017", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343200b061017", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("26303343200b061017", 99)] = _AFcg1798;
	end
});
_pJTwP2J1 = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013432706150a0f2511160a17", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17432706150a0f2511160a17", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432706150a0f2511160a17", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033432706150a0f2511160a17", 99)] = _AFcg1798;
	end
});
_53fEgWns = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013433106020f2511160a17", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17433106020f2511160a17", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033433106020f2511160a17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033433106020f2511160a17", 99)] = _AFcg1798;
__dummy_ops(); -- obf
	end
});
_UOZyrSlf = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("26101343250f0c140611", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b1743250f0c140611", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343250f0c140611", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._cxvG09MF[__xor_decode("26303343250f0c140611", 99)] = _AFcg1798;
	end
});
_zrdNrep4 = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432a100f020d07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033432a100f020d07", 99)] = _AFcg1798;
	end
});
_sj1sp4cD = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013432d1300", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17432d1300", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432d1300", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033432d1300", 99)] = _AFcg1798;
	end
});
_MI8rvpCS = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("26101343300602432106021017", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17433006022106021017", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343300602432106021017", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("26303343300602432106021017", 99)] = _AFcg1798;
	end
});
_mwsa89TS = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013432e0c0d10170611", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17432e0c0d10170611", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432e0c0d10170611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033432e0c0d10170611", 99)] = _AFcg1798;
	end
});
_i70w3XAz = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013432e0a11020406432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17432e0a11020406432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033432e0a11020406", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033432e0a11020406", 99)] = _AFcg1798;
	end
});
_ePc6WOYJ = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("26101343280a1710160d06432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b1743280a1710160d06432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("26303343280a1710160d06", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("26303343280a1710160d06", 99)] = _AFcg1798;
	end
__dummy_ops(); -- obf
});
_8teB7bqU = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2610134325110c19060d43270a0e060d100a0c0d", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b174325110c19060d43270a0e060d100a0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("2630334325110c19060d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("2630334325110c19060d", 99)] = _AFcg1798;
	end
});
_7xMNWyG7 = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("261013433311060b0a10170c110a00432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b17433311060b0a10170c110a00432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("263033433311060b0a10170c110a00", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("263033433311060b0a10170c110a00", 99)] = _AFcg1798;
	end
});
_JmX88lVc = _V8Gpv6Eg._7fonWEzq:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2610134324060211", 99),
	_cYZMpA94 = __xor_decode("2b0a040b0f0a040b174324060211", 99),
	_46yGcjZr = _G._yfeCVCNX._cxvG09MF[__xor_decode("2630334324060211", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._cxvG09MF[__xor_decode("2630334324060211", 99)] = _AFcg1798;
	end
});
_Yu34nCEt = _V8Gpv6Eg._P4L2YW2f:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("271102040c0d43270c090c", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
__dummy_ops(); -- obf
});
_VCECVNNg = _V8Gpv6Eg._P4L2YW2f:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43210f02190643260e010611", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("2216170c43200c0e130f06021706433216061017434843200c0f0f06001743210f02190643260e0106114338433006024350432c0d0f1a433e", 99),
	_46yGcjZr = _G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
function _HwMeAEVM()
	local _OiE5VdOu = ((((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("2e0c07160f0610", 99))):_xXwYaCom(__xor_decode("2d0617", 99))):_xXwYaCom(__xor_decode("31254c271102040c0d2b160d170611", 99))):_hOfJD1fe({
		_5FnI8LW8 = __xor_decode("200b060008", 99)
__dummy_ops(); -- obf
	});
	if _OiE5VdOu then
		for _S3B3c1Xb, _1CCRvVck in pairs(_OiE5VdOu) do
			if _S3B3c1Xb == __xor_decode("37061b17", 99) then
				return _1CCRvVck;
			end;
		end;
	end;
end;
__dummy_ops(); -- obf
function _PjuyXthP()
	local _aoM12CAh = ((((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("2e0c07160f0610", 99))):_xXwYaCom(__xor_decode("2d0617", 99))):_xXwYaCom(__xor_decode("31254c271102040c0d2b160d170611", 99))):_hOfJD1fe({
		_5FnI8LW8 = __xor_decode("310612160610173216061017", 99)
	});
	return _aoM12CAh;
__dummy_ops(); -- obf
end;
function _FbVxxdMY()
	local _OiE5VdOu = ((((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("2e0c07160f0610", 99))):_xXwYaCom(__xor_decode("2d0617", 99))):_xXwYaCom(__xor_decode("31254c271102040c0d2b160d170611", 99))):_hOfJD1fe({
		_5FnI8LW8 = __xor_decode("200b060008", 99)
	});
	if _OiE5VdOu then
		for _S3B3c1Xb, _1CCRvVck in pairs(_OiE5VdOu) do
			if _S3B3c1Xb == __xor_decode("37061b17", 99) then
				if string._Uw9siMFG(_1CCRvVck, __xor_decode("35060d0c0e0c161043221010020a0f020d17", 99)) or string._Uw9siMFG(_1CCRvVck, __xor_decode("2b1a07110243260d050c11000611", 99)) or string._Uw9siMFG(_1CCRvVck, __xor_decode("27061017110c1a435253431711060610", 99)) then
__dummy_ops(); -- obf
					return true;
				end;
			end;
		end;
	end;
	return false;
end;
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)] then
__dummy_ops(); -- obf
			pcall(function()
				if not _G._Pk2GVX3u and (not _FbVxxdMY()) then
					local _ZXWgvmcG = _TV4Txa4P._ZH3x4hyR(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, (1 + 1), 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196);
					_NwLutZRn(_ZXWgvmcG);
					((((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("2e0c07160f0610", 99))):_xXwYaCom(__xor_decode("2d0617", 99))):_xXwYaCom(__xor_decode("31254c271102040c0d2b160d170611", 99))):_hOfJD1fe({
						_5FnI8LW8 = __xor_decode("310612160610173216061017", 99)
					});
				end;
				_VkYtKpUT();
				_G._Pk2GVX3u = true;
			end);
		end;
	end;
__dummy_ops(); -- obf
end);
function _VkYtKpUT()
	if string._Uw9siMFG(_HwMeAEVM(), __xor_decode("35060d0c0e0c161043221010020a0f020d17", 99)) then
		_G._bBGczn1L = __xor_decode("35060d0c0e0c161043221010020a0f020d17", 99);
	elseif string._Uw9siMFG(_HwMeAEVM(), __xor_decode("2b1a07110243260d050c11000611", 99)) then
		_G._bBGczn1L = __xor_decode("2b1a07110243260d050c11000611", 99);
	elseif string._Uw9siMFG(_HwMeAEVM(), __xor_decode("27061017110c1a435253431711060610", 99)) then
		_G._bBGczn1L = __xor_decode("27061017110c1a435253431711060610", 99);
	end;
end;
_G._Pk2GVX3u = false;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _MzkWRvbw() then
			_G._Pk2GVX3u = false;
		end;
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)] then
			pcall(function()
				if _G._bBGczn1L == __xor_decode("35060d0c0e0c161043221010020a0f020d17", 99) and _G._Pk2GVX3u then
					_mkivAPWl();
				elseif _G._bBGczn1L == __xor_decode("2b1a07110243260d050c11000611", 99) and _G._Pk2GVX3u then
					_mzmMYfLW();
				elseif _G._bBGczn1L == __xor_decode("27061017110c1a435253431711060610", 99) and _G._Pk2GVX3u then
					_nWsscYQC();
				end;
			end);
__dummy_ops(); -- obf
		end;
	end;
end);
function _MzkWRvbw()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._HEQ7AI1c._jzV4QsA2:_eHS4mqzq()) do
__dummy_ops(); -- obf
		for _, _NLmmmTQt in pairs(v:_eHS4mqzq()) do
			if string._Uw9siMFG(_NLmmmTQt._HhZDv3q2, __xor_decode("3702100843000c0e130f0617060742", 99)) or string._Uw9siMFG(_NLmmmTQt._HhZDv3q2, __xor_decode("2b060207430102000843170c43170b0643270c090c", 99)) then
				return true;
__dummy_ops(); -- obf
			end;
		end;
__dummy_ops(); -- obf
	end;
	return false;
end;
function _SxZWJFto()
	_iswjWFro((((game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_xXwYaCom(__xor_decode("260e01061137060e130f021706", 99))):_dX5IzNiJ(__xor_decode("33021117", 99)))._TV4Txa4P);
end;
function _mkivAPWl()
	if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("35060d0c0e0c161043221010020a0f020d17", 99)) then
		_NwLutZRn(_TV4Txa4P._ZH3x4hyR(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, (1 + 1), -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
	else
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
__dummy_ops(); -- obf
			if v._xOtG83nV == __xor_decode("35060d0c0e0c161043221010020a0f020d17", 99) then
				if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
					repeat
						(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
						_jUKVPjiK();
						_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
						v._BcGPQM7e._IbmeQpml = 0;
						v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
						_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
						_DFxiFN8p = v._xOtG83nV;
						_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
						_wgBbrKQh();
					until not v._zL81RjqU or v._BcGPQM7e._usQ3DGFi <= 0 or (not _G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)]) or (not _G._Pk2GVX3u);
				end;
			end;
		end;
	end;
end;
function _mzmMYfLW()
	if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("2b1a07110243260d050c11000611", 99)) then
		_NwLutZRn(_TV4Txa4P._ZH3x4hyR(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, (1 + 1), -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
	else
__dummy_ops(); -- obf
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
			if v._xOtG83nV == __xor_decode("2b1a07110243260d050c11000611", 99) then
				if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
					repeat
						(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
						_jUKVPjiK();
						_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
						v._BcGPQM7e._IbmeQpml = 0;
						v._yMRN0wrA._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((1 + 1), (1 + 1), (1 + 1));
__dummy_ops(); -- obf
						_WKIpTdlm = v._yMRN0wrA._TV4Txa4P;
						_DFxiFN8p = v._xOtG83nV;
						_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
						_wgBbrKQh();
					until not v._zL81RjqU or v._BcGPQM7e._usQ3DGFi <= 0 or (not _G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)]) or (not _G._Pk2GVX3u);
__dummy_ops(); -- obf
				end;
			end;
		end;
	end;
end;
function _nWsscYQC()
	local _heqrlSdI = _TV4Txa4P._ZH3x4hyR(5260.28223, 1004.24329, 347.062622, 0.923247099, -0.00000000370291953, 0.384206682, -0.000000000671108058, (1 + 1), 0.0000000112505019, -0.384206682, -0.0000000106448379, 0.923247099);
	local _uyUwL4Rk = _TV4Txa4P._ZH3x4hyR(5237.94775, 1004.24329, 429.596344, 0.371416599, 0.00000000207420636, 0.92846632, 0.00000000476562345, (1 + 1), -0.00000000414041734, -0.92846632, 0.00000000596254068, 0.371416599);
	local _Xhsjp7Ie = _TV4Txa4P._ZH3x4hyR(5320.87793, 1004.24329, 439.152954, 0.136340275, -0.0000000995428806, -0.990662038, 0.0000000610136723, (1 + 1), -0.0000000920841288, 0.990662038, -0.0000000478891593, 0.136340275);
	local _JK4LfUxE = _TV4Txa4P._ZH3x4hyR(5346.70752, 1004.24329, 359.389008, 0.296962529, 0.0000000642768185, -0.954889119, -0.0000000737323518, (1 + 1), 0.0000000443832349, 0.954889119, 0.0000000572260639, 0.296962529);
	local _tnBXr3Ep = (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P;
	if (_tnBXr3Ep._EWiDuNSW - _heqrlSdI._EWiDuNSW)._uDjfEeA6 <= (3 + 3) then
		_aXPyDdTo();
__dummy_ops(); -- obf
	else
		_NwLutZRn(_heqrlSdI);
__dummy_ops(); -- obf
	end;
__dummy_ops(); -- obf
	if (_tnBXr3Ep._EWiDuNSW - _uyUwL4Rk._EWiDuNSW)._uDjfEeA6 <= (1 + 3) then
__dummy_ops(); -- obf
		_aXPyDdTo();
__dummy_ops(); -- obf
	else
		_NwLutZRn(_uyUwL4Rk);
	end;
	if (_tnBXr3Ep._EWiDuNSW - _Xhsjp7Ie._EWiDuNSW)._uDjfEeA6 <= (2 + 3) then
		_aXPyDdTo();
__dummy_ops(); -- obf
	else
__dummy_ops(); -- obf
		_NwLutZRn(_Xhsjp7Ie);
	end;
	if (_tnBXr3Ep._EWiDuNSW - _JK4LfUxE._EWiDuNSW)._uDjfEeA6 <= (-1 + 3) then
		_aXPyDdTo();
	else
		_NwLutZRn(_JK4LfUxE);
	end;
end;
__dummy_ops(); -- obf
_QlUes9fh = false;
__dummy_ops(); -- obf
_gjnmj4kN = false;
_EXupot1h = false;
_Qq4JY3aZ = false;
__dummy_ops(); -- obf
function _aXPyDdTo()
	if _EXupot1h == false then
		for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				if v._8WgX6ewZ == __xor_decode("210f0c1b432511160a17", 99) then
__dummy_ops(); -- obf
					game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
				end;
			end;
		end;
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("20", 99), false, game);
		_ncNRWHvo(0);
__dummy_ops(); -- obf
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("20", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("35", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("35", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("25", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("25", 99), false, game);
		_EXupot1h = true;
	end;
	if _Qq4JY3aZ == false then
		for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				if v._8WgX6ewZ == __xor_decode("2e060f0606", 99) then
					game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
				end;
			end;
		end;
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("20", 99), false, game);
__dummy_ops(); -- obf
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("20", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("35", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("35", 99), false, game);
__dummy_ops(); -- obf
		_Qq4JY3aZ = true;
	end;
	if _gjnmj4kN == false then
		for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
__dummy_ops(); -- obf
				if v._8WgX6ewZ == __xor_decode("30140c1107", 99) then
					game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
				end;
			end;
		end;
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
		_ncNRWHvo(0);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
		_gjnmj4kN = true;
	end;
	if _QlUes9fh == false then
		for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				if v._8WgX6ewZ == __xor_decode("24160d", 99) then
					game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
				end;
			end;
__dummy_ops(); -- obf
		end;
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
		_ncNRWHvo(0.1);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
__dummy_ops(); -- obf
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
		_ncNRWHvo(0.1);
		(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
		_QlUes9fh = true;
	end;
	_QlUes9fh = false;
	_gjnmj4kN = false;
	_EXupot1h = false;
	_Qq4JY3aZ = false;
end;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._gBOYPF26[__xor_decode("2216170c432502110e43210f02190643260e010611", 99)] then
			pcall(function()
				if ((game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_xXwYaCom(__xor_decode("260e01061137060e130f021706", 99))):_dX5IzNiJ(__xor_decode("33021117", 99)) then
					_SxZWJFto();
				end;
			end);
		end;
	end;
end);
__dummy_ops(); -- obf
_hl4Xqa10 = _V8Gpv6Eg._P4L2YW2f:_BtunICum({
	_ZoEpv6x5 = __xor_decode("201102051743350c0f00020d0a00432e02040d0617", 99),
	_ndWmPjxy = function()
		(((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("31060e0c170610", 99))):_xXwYaCom(__xor_decode("200c0e0e253c", 99))):_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("350c0f00020d0a00432e02040d0617", 99));
	end
});
_fO3H7p2Z = _V8Gpv6Eg._TiQDOIB4:_eGVKodMt({ 
    _ZoEpv6x5 = __xor_decode("2216170c43201102051743200c0e0e0c0d433000110c0f0f", 99), 
__dummy_ops(); -- obf
    _LIu1DE1b = _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c43201102051743200c0e0e0c0d433000110c0f0f", 99)] or false, 
    _cYZMpA94 = __xor_decode("201102051743200c0e0e0c0d433000110c0f0f", 99), 
    _ndWmPjxy = function(_1CCRvVck) 
        _G._yfeCVCNX._KxgLeO4Z = _G._yfeCVCNX._KxgLeO4Z or {};
__dummy_ops(); -- obf
        _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c43201102051743200c0e0e0c0d433000110c0f0f", 99)] = _1CCRvVck;
        (_DZSJtHyz())._pmjmg7kP();
    end 
__dummy_ops(); -- obf
});
_YwIHUvQP(function() 
    while _ncNRWHvo(0.2) do 
        if _G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c43201102051743200c0e0e0c0d433000110c0f0f", 99)] then 
            pcall(function() 
                repeat 
__dummy_ops(); -- obf
                    _ncNRWHvo((1 + 1));
                    (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("200c0e0e0c0d3000110c0f0f", 99));
                until not (_G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c43201102051743200c0e0e0c0d433000110c0f0f", 99)]);
            end);
        end;
    end;
end);
_V8Gpv6Eg._TiQDOIB4:_eGVKodMt({ 
    _ZoEpv6x5 = __xor_decode("2216170c4320110205174331021106433000110c0f0f", 99), 
    _LIu1DE1b = _G._yfeCVCNX._fwOYMVxc and _G._yfeCVCNX._fwOYMVxc[__xor_decode("2216170c4320110205174331021106433000110c0f0f", 99)] or false, 
    _cYZMpA94 = __xor_decode("20110205174331021106433000110c0f0f", 99), 
    _ndWmPjxy = function(_1CCRvVck) 
        _G._yfeCVCNX._fwOYMVxc = _G._yfeCVCNX._fwOYMVxc or {};
        _G._yfeCVCNX._fwOYMVxc[__xor_decode("2216170c4320110205174331021106433000110c0f0f", 99)] = _1CCRvVck;
        (_DZSJtHyz())._pmjmg7kP();
    end 
});
_YwIHUvQP(function() 
    while _ncNRWHvo(0.2) do 
        if _G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c4320110205174331021106433000110c0f0f", 99)] then 
            pcall(function() 
                repeat 
__dummy_ops(); -- obf
                    _ncNRWHvo((1 + 1));
                    (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("310211063000110c0f0f", 99));
                until not (_G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c4320110205174331021106433000110c0f0f", 99)]);
            end);
        end;
    end;
end);
__dummy_ops(); -- obf
_V8Gpv6Eg._TiQDOIB4:_eGVKodMt({ 
    _ZoEpv6x5 = __xor_decode("2216170c432011020517432f0604060d0702111a433000110c0f0f", 99),  
    _LIu1DE1b = _G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432f0604060d0702111a433000110c0f0f", 99)] or false, 
__dummy_ops(); -- obf
    _cYZMpA94 = __xor_decode("2011020517432f0604060d0702111a433000110c0f0f", 99),  
    _ndWmPjxy = function(_1CCRvVck) 
        _G._yfeCVCNX._KxgLeO4Z = _G._yfeCVCNX._KxgLeO4Z or {};
        _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432f0604060d0702111a433000110c0f0f", 99)] = _1CCRvVck;
        (_DZSJtHyz())._pmjmg7kP();
    end 
});
__dummy_ops(); -- obf
_YwIHUvQP(function() 
    while _ncNRWHvo(0.2) do 
        if _G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432f0604060d0702111a433000110c0f0f", 99)] then 
            pcall(function() 
                repeat 
                    _ncNRWHvo((1 + 1));
                    (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("2f0604060d0702111a3000110c0f0f", 99));
                until not (_G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432f0604060d0702111a433000110c0f0f", 99)]);
            end);
__dummy_ops(); -- obf
        end;
    end;
end);
_V8Gpv6Eg._TiQDOIB4:_eGVKodMt({ 
    _ZoEpv6x5 = __xor_decode("2216170c432011020517432e1a170b0a00020f433000110c0f0f", 99), 
    _LIu1DE1b = _G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432e1a170b0a00020f433000110c0f0f", 99)] or false, 
    _cYZMpA94 = __xor_decode("2011020517432e1a170b0a00020f433000110c0f0f", 99), 
    _ndWmPjxy = function(_1CCRvVck) 
        _G._yfeCVCNX._KxgLeO4Z = _G._yfeCVCNX._KxgLeO4Z or {};
        _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432e1a170b0a00020f433000110c0f0f", 99)] = _1CCRvVck;
        (_DZSJtHyz())._pmjmg7kP();
    end 
__dummy_ops(); -- obf
});
_YwIHUvQP(function() 
    while _ncNRWHvo(0.2) do 
        if _G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432e1a170b0a00020f433000110c0f0f", 99)] then 
            pcall(function() 
                repeat 
                    _ncNRWHvo((1 + 1));
                    (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("2e1a170b0a00020f3000110c0f0f", 99));
                until not (_G._yfeCVCNX._KxgLeO4Z and _G._yfeCVCNX._KxgLeO4Z[__xor_decode("2216170c432011020517432e1a170b0a00020f433000110c0f0f", 99)]);
            end);
        end;
    end;
end);
_V8Gpv6Eg._TiQDOIB4:_BtunICum({ 
    _ZoEpv6x5 = __xor_decode("2011020517432f06150a02170b020d4320110c140d", 99), 
    _ndWmPjxy = function() 
        (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("2f06150a02170b020d20110c140d", 99));
    end 
});
_V8Gpv6Eg._TiQDOIB4:_BtunICum({ 
    _ZoEpv6x5 = __xor_decode("2011020517432f06150a02170b020d43300b0a060f07", 99), 
    _ndWmPjxy = function() 
__dummy_ops(); -- obf
        (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("2f06150a02170b020d300b0a060f07", 99));
    end 
});
_V8Gpv6Eg._TiQDOIB4:_BtunICum({ 
    _ZoEpv6x5 = __xor_decode("2011020517432106021017432b160d170611", 99), 
    _ndWmPjxy = function() 
        (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("21060210172b160d170611", 99));
    end 
});
_V8Gpv6Eg._TiQDOIB4:_BtunICum({ 
    _ZoEpv6x5 = __xor_decode("201102051743370c0c170b432d0600080f020006", 99), 
    _ndWmPjxy = function() 
        (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("370c0c170b2d0600080f020006", 99));
    end 
});
_V8Gpv6Eg._TiQDOIB4:_BtunICum({ 
    _ZoEpv6x5 = __xor_decode("201102051743370611110c1143290214", 99), 
__dummy_ops(); -- obf
    _ndWmPjxy = function() 
        (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("370611110c11290214", 99));
__dummy_ops(); -- obf
    end 
});
_V8Gpv6Eg._TiQDOIB4:_BtunICum({ 
    _ZoEpv6x5 = __xor_decode("2011020517432e0c0d10170611432e02040d0617", 99), 
    _ndWmPjxy = function() 
        (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("20110205172a17060e", 99), __xor_decode("2011020517", 99), __xor_decode("2e0c0d101706112e02040d0617", 99));
    end 
});
local _z1kelT6J = _V8Gpv6Eg._YzDHT9u5:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("300602432615060d17", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
local _f84Yuzzw = {
	__xor_decode("24160211070a020d", 99),
	__xor_decode("2106021017432b160d170611", 99),
__dummy_ops(); -- obf
	__xor_decode("330a110217062411020d0721110a04020706", 99),
	__xor_decode("2e02110a0d062411020d0721110a04020706", 99),
	__xor_decode("330a1102170621110a04020706", 99),
	__xor_decode("2e02110a0d0621110a04020706", 99),
	__xor_decode("330a11021706300f0c0c13", 99),
__dummy_ops(); -- obf
	__xor_decode("2e02110a0d06300f0c0c13", 99)
};
local _hKrTJBmu = {
	__xor_decode("390c0d064352", 99),
	__xor_decode("390c0d064351", 99),
__dummy_ops(); -- obf
	__xor_decode("390c0d064350", 99),
	__xor_decode("390c0d064357", 99),
	__xor_decode("390c0d064356", 99),
	__xor_decode("390c0d064355", 99),
	__xor_decode("0d0a0f0d0a0f", 99)
};
_TxLCBWjO = _V8Gpv6Eg._YzDHT9u5:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643210c0217", 99),
	_lBKinVRV = _f84Yuzzw,
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
__dummy_ops(); -- obf
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_sTJgfjZL = _V8Gpv6Eg._YzDHT9u5:_cbrYLxZn({
	_ZoEpv6x5 = __xor_decode("200b0c0c100643390c0d06", 99),
	_lBKinVRV = _hKrTJBmu,
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] = _EqP6BkYD;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_eHzT9oP3 = _V8Gpv6Eg._YzDHT9u5:_78vL80sn({
	_ZoEpv6x5 = __xor_decode("210c021743371406060d433013060607", 99),
	_XaHHtl9L = (1 + 1),
	_46yGcjZr = {
		_wZWqkrue = (1 + 1),
		_SccYATbU = (-163 + 350),
		_LIu1DE1b = _G._yfeCVCNX._1ndSW2FF[__xor_decode("210c021743371406060d433013060607", 99)]
	},
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("210c021743371406060d433013060607", 99)] = _1CCRvVck;
	end
});
_QNon22Vd = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30020a0f43210c0217", 99),
	_cYZMpA94 = __xor_decode("2216170c4330020a0f43210c0217434543280a0f0f43260d060e0a0610", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
		if not _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] then
			_G._XItMgFUu = false;
			_I1CJ5Bpr = false;
		end;
	end
});
local _SRqBmn0J;
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("390c0d064352", 99) then
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -0.000000000236509201, -0.991110802, -0.0569955558, 0.120211802);
			elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("390c0d064351", 99) then
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -0.000000000415334017, -0.949422479, -0.0606706589, 0.308084518);
			elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("390c0d064350", 99) then
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 0.0000000000270896673, -0.925605655, -0.0370079502, 0.376675636);
			elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("390c0d064357", 99) then
__dummy_ops(); -- obf
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
			elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("390c0d064356", 99) then
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -0.00000000139882339, -0.981290519, -0.0365765914, -0.189026669);
			elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("390c0d064355", 99) then
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372);
			elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743390c0d06", 99)] == __xor_decode("2a0708", 99) then
				_SRqBmn0J = _TV4Txa4P._ZH3x4hyR(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (1 + 1), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536);
			end;
		end;
	end);
end);
function _LUXmhRsB()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_eHS4mqzq()) do
		if v._xOtG83nV == _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)] then
			for _, _2SmUvzUG in pairs(v:_eHS4mqzq()) do
				if _2SmUvzUG._xOtG83nV == __xor_decode("2e1a210c0217261013", 99) then
					return v;
				end;
			end;
		end;
	end;
	return false;
end;
function _HNWJVtGM()
	if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99)) or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99)) then
		return true;
	end;
	return false;
end;
function _pmWzOIHr()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
		if v._xOtG83nV == __xor_decode("300b021108", 99) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
			if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("300b021108", 99)) then
				if (v._yMRN0wrA._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (45 + 200) then
					return true;
__dummy_ops(); -- obf
				end;
__dummy_ops(); -- obf
			end;
		end;
	end;
	return false;
end;
function _olKWodum()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
		if v._xOtG83nV == __xor_decode("330a11020d0b02", 99) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
			if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a11020d0b02", 99)) then
				if (v._yMRN0wrA._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (37 + 200) then
__dummy_ops(); -- obf
					return true;
				end;
			end;
		end;
__dummy_ops(); -- obf
	end;
	return false;
end;
function _taesAaWa(_xOtG83nV, _zL81RjqU)
	local _DYy4PrVC = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("210a0f0f010c02110724160a", 99));
	local _EJvOjbjf = _Ufl2Q1EA._ZH3x4hyR(__xor_decode("37061b172f0201060f", 99));
	_DYy4PrVC._zL81RjqU = _zL81RjqU;
	_DYy4PrVC._6pp51rH2 = _qo6tY6Am._6pp51rH2._fUk8xStc;
	_DYy4PrVC._IeifwfUZ = true;
__dummy_ops(); -- obf
	_DYy4PrVC._xOtG83nV = _xOtG83nV;
	_DYy4PrVC._HcOyIqUq = true;
	_DYy4PrVC._2S3Tzh0r = (1 + 1);
	_DYy4PrVC._RnP3PiKD = _PIKBopRV._ZH3x4hyR(0, (-21 + 200), 0, (-21 + 50));
	_DYy4PrVC._4QsaUY9J = _UWIiwj4W._ZH3x4hyR(0, 2.5, 0);
	_EJvOjbjf._zL81RjqU = _DYy4PrVC;
	_EJvOjbjf._mOEiU2he = _BABohy6c._UifQWj6U((22 + 255), (196 + 255), (-89 + 255));
	_EJvOjbjf._8GqMT7nE = (1 + 1);
	_EJvOjbjf._RnP3PiKD = _PIKBopRV._ZH3x4hyR((1 + 1), 0, (1 + 1), 0);
	_EJvOjbjf._nyTNH1Jx = _qo6tY6Am._nyTNH1Jx._YhGCYgB1;
__dummy_ops(); -- obf
	_EJvOjbjf._qaB8Mxq5 = _BABohy6c._UifQWj6U((114 + 255), (135 + 255), (63 + 255));
	_EJvOjbjf._k20SPTHV = (0 + 15);
	_EJvOjbjf._HhZDv3q2 = __xor_decode("", 99);
end;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] then
				if not _LUXmhRsB() then
					local _zi6zJSYb = _TV4Txa4P._ZH3x4hyR(-16927.451171875, 9.0863618850708, 433.8642883300781);
					if (_zi6zJSYb._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (1122 + 2000) then
						_TTLjbnof(_zi6zJSYb);
					else
						_je959Qfy = _NwLutZRn(_zi6zJSYb);
					end;
					if ((_TV4Txa4P._ZH3x4hyR((-16927.451171875), 9.0863618850708, 433.8642883300781))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-1 + 10) then
						if _je959Qfy then
__dummy_ops(); -- obf
							_je959Qfy:_eFK2jWpz();
						end;
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210c0217", 99), _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]);
__dummy_ops(); -- obf
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_eHS4mqzq()) do
							if v._xOtG83nV == _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)] then
								if (v._jLJKP268._TV4Txa4P._EWiDuNSW - (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-58 + 100) then
									_taesAaWa(__xor_decode("2e1a210c0217261013", 99), v);
								end;
							end;
__dummy_ops(); -- obf
						end;
						_ncNRWHvo((1 + 1));
					end;
				elseif _LUXmhRsB() then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_eHS4mqzq()) do
						if v._xOtG83nV == _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)] then
							if v:_dX5IzNiJ(__xor_decode("2e1a210c0217261013", 99)) then
								if (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == false then
									if _pmWzOIHr() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370611110c11100b021108", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] or _olKWodum() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b4320110614432e060e010611", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)] or _pmPnaYde() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)] then
										if _8GzZLDmz then
											_8GzZLDmz:_eFK2jWpz();
										end;
									else
										_8GzZLDmz = _NwLutZRn(v._jLJKP268._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (1 + 1), 0));
									end;
								else
__dummy_ops(); -- obf
									repeat
										_ncNRWHvo();
										_LNAOocOP = _gcVXECpW(_SRqBmn0J);
									until _pmWzOIHr() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370611110c11100b021108", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] or _olKWodum() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b4320110614432e060e010611", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)] or _pmPnaYde() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)] or (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == false or _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] == false;
									if _LNAOocOP then
										_LNAOocOP:_eFK2jWpz();
									end;
									(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, (-17 + 32), false, game);
									_ncNRWHvo(0.1);
__dummy_ops(); -- obf
									(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, (31 + 32), false, game);
__dummy_ops(); -- obf
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
_YwIHUvQP(function()
__dummy_ops(); -- obf
	pcall(function()
__dummy_ops(); -- obf
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] then
				if _pmWzOIHr() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370611110c11100b021108", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] or _olKWodum() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b4320110614432e060e010611", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)] or (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)] or _pmPnaYde() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)] then
					if game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e._r1E7PMSw == true then
						(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, (-15 + 32), false, game);
						_ncNRWHvo(0.1);
						(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, (-24 + 32), false, game);
					end;
				end;
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] then
			pcall(function()
				if _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b4320110614432e060e010611", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b4320110614432e060e010611", 99)) then
							if v._xOtG83nV == __xor_decode("250a100b4320110614432e060e010611", 99) then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										_wgBbrKQh();
										_G._XItMgFUu = false;
									until not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
__dummy_ops(); -- obf
								end;
							end;
						end;
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								local _QtW48S5N = v._33OFZLyH._TV4Txa4P;
								if (_QtW48S5N._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (22 + 50) then
									_G._XItMgFUu = true;
								else
									_G._XItMgFUu = false;
								end;
								_NwLutZRn(_QtW48S5N);
								_jUKVPjiK();
								_I1CJ5Bpr = true;
								_1GiFuGVR = v._33OFZLyH._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(10 + 15)), 0);
								_xZMIM607 = _1GiFuGVR._EWiDuNSW;
							until not v._zL81RjqU or v._usQ3DGFi < 0 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("250a100b210c0217", 99))) or (not v:_dX5IzNiJ(__xor_decode("260d040a0d06", 99))) or (not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)]);
							_I1CJ5Bpr = false;
							_G._XItMgFUu = false;
						end;
__dummy_ops(); -- obf
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99)) then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								local _QtW48S5N = v._33OFZLyH._TV4Txa4P;
								_jUKVPjiK();
								if (_QtW48S5N._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-10 + 50) then
									_G._XItMgFUu = true;
								else
									_G._XItMgFUu = false;
								end;
								_NwLutZRn(_QtW48S5N);
								_I1CJ5Bpr = true;
								_1GiFuGVR = v._33OFZLyH._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(-1 + 15)), 0);
								_xZMIM607 = _1GiFuGVR._EWiDuNSW;
							until not v._zL81RjqU or v._usQ3DGFi._46yGcjZr < 0 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a110217062411020d0721110a04020706", 99))) or (not v:_dX5IzNiJ(__xor_decode("260d040a0d06", 99))) or (not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)]);
							_I1CJ5Bpr = false;
							_G._XItMgFUu = false;
						end;
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99)) then
							repeat
__dummy_ops(); -- obf
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								local _QtW48S5N = v._33OFZLyH._TV4Txa4P;
								if (_QtW48S5N._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-8 + 50) then
									_G._XItMgFUu = true;
__dummy_ops(); -- obf
								else
									_G._XItMgFUu = false;
								end;
								_NwLutZRn(_QtW48S5N);
								_I1CJ5Bpr = true;
								_jUKVPjiK();
								_1GiFuGVR = v._33OFZLyH._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-(4 + 15)), 0);
								_xZMIM607 = _1GiFuGVR._EWiDuNSW;
							until not v._zL81RjqU or v._usQ3DGFi._46yGcjZr < 0 or (not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a1102170621110a04020706", 99))) or (not v:_dX5IzNiJ(__xor_decode("260d040a0d06", 99))) or (not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)]);
							_I1CJ5Bpr = false;
							_G._XItMgFUu = false;
						end;
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and _pmPnaYde() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)] then
					if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_dX5IzNiJ(__xor_decode("300602210602101710", 99)) then
						for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi:_eHS4mqzq()) do
							if _pmPnaYde() then
								repeat
									(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
									_K2EbHueg = v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (116 + 400), 0);
__dummy_ops(); -- obf
									if (_K2EbHueg._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P._EWiDuNSW)._uDjfEeA6 <= (175 + 400) then
										_G._XItMgFUu = true;
									else
										_G._XItMgFUu = false;
									end;
									_jUKVPjiK();
									_I1CJ5Bpr = true;
									_xZMIM607 = v._yMRN0wrA._TV4Txa4P._EWiDuNSW;
									if _iLoZLpfX() then
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(math._CibCVwVN((-(51 + 200)), (5 + 300)), (-7 + 400), math._CibCVwVN((-(-14 + 200)), (122 + 300))));
									else
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-232 + 400), 0));
									end;
								until not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)] or _pmPnaYde() == false or (not v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99))) or (not v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99))) or v._BcGPQM7e._usQ3DGFi <= 0 or (not v._zL81RjqU);
								_I1CJ5Bpr = false;
								_G._XItMgFUu = false;
							else
								_I1CJ5Bpr = false;
								_G._XItMgFUu = false;
							end;
						end;
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370611110c11100b021108", 99)) and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("370611110c11100b021108", 99)) then
							if v._xOtG83nV == __xor_decode("370611110c11100b021108", 99) then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_wgBbrKQh();
										_G._XItMgFUu = false;
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-13 + 50), 0));
									until not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
								end;
							end;
						end;
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and _olKWodum() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("330a11020d0b02", 99)) then
							if v._xOtG83nV == __xor_decode("330a11020d0b02", 99) then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										_wgBbrKQh();
__dummy_ops(); -- obf
										_G._XItMgFUu = false;
									until not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
								end;
							end;
						end;
					end;
				elseif _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] and _pmWzOIHr() and _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)] then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
						if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_dX5IzNiJ(__xor_decode("300b021108", 99)) then
							if v._xOtG83nV == __xor_decode("300b021108", 99) then
								if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
									repeat
__dummy_ops(); -- obf
										(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
										_jUKVPjiK();
										_vPFcIsGM(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
										_NwLutZRn(v._yMRN0wrA._TV4Txa4P * _xV7d4a8a);
										_wgBbrKQh();
										_G._XItMgFUu = false;
									until not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)] or (not v._zL81RjqU) or v._BcGPQM7e._usQ3DGFi <= 0;
								end;
							end;
						end;
					end;
				else
for __i = 1, 0, -1 do local __v = __i * 2 end -- junk
					_I1CJ5Bpr = false;
					_G._XItMgFUu = false;
					_uzrjimRg(_G._yfeCVCNX._mqjsjIrw[__xor_decode("30060f060017060743340602130c0d", 99)]);
				end;
			end);
		end;
	end;
end);
function _iLoZLpfX()
__dummy_ops(); -- obf
	local _Db0MvEwI = (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi;
	for _, _L0S2GLUG in pairs(_Db0MvEwI:_eHS4mqzq()) do
		if _L0S2GLUG:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and _L0S2GLUG:_dX5IzNiJ(__xor_decode("220d0a0e10", 99)) then
			local _V1RQkDNY = _L0S2GLUG._BcGPQM7e;
__dummy_ops(); -- obf
			local _sqXDj1ud = _V1RQkDNY:_2Z8ZFLim(__xor_decode("220d0a0e02170c11", 99)) or _V1RQkDNY;
			for _, _oDTFQwXr in pairs(_L0S2GLUG._x3ADL7rQ:_eHS4mqzq()) do
				if _oDTFQwXr:_jeeCVvJF(__xor_decode("220d0a0e02170a0c0d", 99)) then
					if _oDTFQwXr._IjUmPoU9 == __xor_decode("11011b02101006170a07594c4c5b54535b515152545a51", 99) or _oDTFQwXr._IjUmPoU9 == __xor_decode("11011b02101006170a07594c4c5b54535b515151565655", 99) or _oDTFQwXr._IjUmPoU9 == __xor_decode("11011b02101006170a07594c4c5b54535b51515055525a", 99) or _oDTFQwXr._IjUmPoU9 == __xor_decode("11011b02101006170a07594c4c5b54535b51515655555b", 99) then
						for _, _iX0oo09C in pairs(_sqXDj1ud:_c4yJdPom()) do
							if _iX0oo09C._BdAL2Kue._IjUmPoU9 == _oDTFQwXr._IjUmPoU9 then
								if _iX0oo09C._gsfJjXrl then
									return true;
								else
									return false;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end;
_3IqEKXfN = _V8Gpv6Eg._YzDHT9u5:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("260d060e0a0610", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
__dummy_ops(); -- obf
_JOhvzA9X = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43300b021108", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300b021108", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_reaY6Z6E = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43330a11020d0b02", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11020d0b02", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_Ismk9bZX = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43250a100b4320110614432e060e010611", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_tVObftlS = _V8Gpv6Eg._YzDHT9u5:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("210c0217", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_QgKdgTlW = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43240b0c101743300b0a13", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43240b0c101743300b0a13", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
__dummy_ops(); -- obf
});
_t5ktBNAA = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43330a110217064321110a04020706", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a110217064321110a04020706", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_FFBIRWtE = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43330a11021706432411020d074321110a04020706", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_wzWKS2OX = _V8Gpv6Eg._YzDHT9u5:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("210c1010", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_Jq5wqXs6 = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43370611110c11100b021108", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43370611110c11100b021108", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_yafzNmk8 = _V8Gpv6Eg._YzDHT9u5:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c432502110e43300602010602101710", 99),
	_46yGcjZr = _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c432502110e43300602010602101710", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_wRBgWGzy = _V8Gpv6Eg._LymHo6Bj:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("300602433017020008", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2e0a11020406432a100f020d07", 99)) then
				_NZ4LJGEC:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432e0a11020406432a100f020d0743301302140d0a0d04", 99));
			else
				_NZ4LJGEC:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1eca0e1a1fea0e0a1cca0e1a1dba0e1a1ec432e0a11020406432a100f020d07432d0c1743301302140d", 99));
			end;
			if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("280a1710160d06432a100f020d07", 99)) then
				_xX5avKzh:_zhx0DbgD(__xor_decode("a0e0a1c1a0c1a1e3a1d9a0e1a1caa0e0a1cca0e1a1dba0e1a1ec43280a1710160d06432a100f020d0743301302140d0a0d04", 99));
			else
				_xX5avKzh:_zhx0DbgD(__xor_decode("a0e0a1c1a0c1a1e3a1d9a0e1a1caa0e0a1cca0e1a1dba0e1a1ec43280a1710160d06432a100f020d07432d0c1743301302140d", 99));
			end;
			if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("25110c19060d43270a0e060d100a0c0d", 99)) then
				_5F6JNxLE:_zhx0DbgD(__xor_decode("a0e0a1c1a0e1a1fea0c1a1e3a1fda0e0a1cca0e1a1dba0e1a1ec4325110c19060d43270a0e060d100a0c0d43301302140d0a0d04", 99));
			else
				_5F6JNxLE:_zhx0DbgD(__xor_decode("a0e0a1c1a0e1a1fea0c1a1e3a1fda0e0a1cca0e1a1dba0e1a1ec4325110c19060d43270a0e060d100a0c0d432d0c1743301302140d", 99));
			end;
			if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a00432a100f020d07", 99)) then
				_WrRIgzpN:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1c5a0e1a1d7433311060b0a10170c110a00432a100f020d0743301302140d0a0d04", 99));
			else
				_WrRIgzpN:_zhx0DbgD(__xor_decode("a0e0a1d3a0e6a1dba0e1a1c5a0e1a1d7433311060b0a10170c110a00432a100f020d07432d0c1743301302140d", 99));
			end;
		end;
	end);
end);
_WrRIgzpN = _V8Gpv6Eg._LymHo6Bj:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("3311060b0a10170c110a0043301702171610", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_oYjAGfjg = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2d06060743350c0f00020d0a00432e02040d0617", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
		pcall(function()
			if _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99)] and _7Y9SwizB then
				if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]) then
__dummy_ops(); -- obf
					local _zi6zJSYb = _TV4Txa4P._ZH3x4hyR(-16927.451171875, 9.0863618850708, 433.8642883300781);
					if (_zi6zJSYb._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (557 + 2000) then
						_TTLjbnof(_zi6zJSYb);
					else
						_je959Qfy = _NwLutZRn(_zi6zJSYb);
					end;
					if ((_TV4Txa4P._ZH3x4hyR((-16927.451171875), 9.0863618850708, 433.8642883300781))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (-5 + 10) then
						if _je959Qfy then
							_je959Qfy:_eFK2jWpz();
						end;
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210c0217", 99), _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]);
						_ncNRWHvo((1 + 1));
					end;
__dummy_ops(); -- obf
				elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]) then
__dummy_ops(); -- obf
					repeat
						_ncNRWHvo();
						if (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == false then
							if _n01YjpVO then
								_n01YjpVO:_eFK2jWpz();
							end;
							local _8GzZLDmz = _NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]))._jLJKP268._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (1 + 1), 0));
						elseif (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == true then
__dummy_ops(); -- obf
							_n01YjpVO = _gcVXECpW(_TV4Txa4P._ZH3x4hyR(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (1 + 1), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
						end;
					until not _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d433311060b0a10170c110a00432a100f020d07", 99)] or game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a00432a100f020d07", 99));
					if _n01YjpVO then
						_n01YjpVO:_eFK2jWpz();
					end;
				end;
			end;
		end);
	end;
end);
_KE0PoJaJ = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("371406060d43370c433311060b0a10170c110a00432a100f020d07", 99),
	_cYZMpA94 = __xor_decode("2d06060743301302140d", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c433311060b0a10170c110a00432a100f020d07", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c433311060b0a10170c110a00432a100f020d07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c433311060b0a10170c110a00432a100f020d07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo() do
		if _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c433311060b0a10170c110a00432a100f020d07", 99)] then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a00432a100f020d07", 99)) then
					_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a00432a100f020d07", 99)))._TV4Txa4P);
				end;
			end);
		end;
	end;
end);
_G._IOJo5fYn = false

_U9HzG4NB = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
    _ZoEpv6x5 = __xor_decode("2216170c43280a0f0f432f02150243240c0f060e", 99),
    _46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f432f02150243240c0f060e", 99)],
    _ndWmPjxy = function(_AFcg1798)
        _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f432f02150243240c0f060e", 99)] = _AFcg1798
        _G._TLetrrBv = _AFcg1798
        _LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f432f02150243240c0f060e", 99)])
        _DZSJtHyz()._pmjmg7kP()
    end
})

function _fBkXPyuH()
    local _MZolqlXv = game.Players._5vXmWKtm
    local _7UykjNKI = _MZolqlXv._6HDGtM8L or _MZolqlXv._xsTUobyJ:_BYmVTEPJ()
    
  
    if _7UykjNKI:_2Z8ZFLim(__xor_decode("370c0c0f", 99)) then
        return true
    end
__dummy_ops(); -- obf
    

    if _MZolqlXv._A84mhyus:_2Z8ZFLim(__xor_decode("370c0c0f", 99)) then
        _7UykjNKI._BcGPQM7e:_sts5rtig(_MZolqlXv._A84mhyus:_2Z8ZFLim(__xor_decode("370c0c0f", 99)))
        return true
    end
    
    return false
end


_YwIHUvQP(function()
    while _ncNRWHvo(0.5) do
        if _G._IOJo5fYn then
            pcall(function()
              
                local _tdunwGaj = nil
                
               
                for _, _CbKaWrLr in pairs(workspace._5iAO5Uk9:_eHS4mqzq()) do
                    if _CbKaWrLr._xOtG83nV == __xor_decode("2f02150243240c0f060e", 99) and _CbKaWrLr:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and _CbKaWrLr:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and _CbKaWrLr._BcGPQM7e._usQ3DGFi > 0 then
                        _tdunwGaj = _CbKaWrLr
                        break
                    end
                end
                
            
                if not _tdunwGaj then
                    if workspace:_dX5IzNiJ(__xor_decode("2e0213", 99)) and workspace._G3ADDX83:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a002a100f020d07", 99)) then
                        for _, v in pairs(workspace._G3ADDX83._FEp4lMpT:_sFYPxrUf()) do
                            if v._xOtG83nV == __xor_decode("2f02150243240c0f060e", 99) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi > 0 then
                                _tdunwGaj = v
                                break
                            end
                        end
                    end
                end
                
                
                if _tdunwGaj and _tdunwGaj:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and _tdunwGaj:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and _tdunwGaj._BcGPQM7e._usQ3DGFi > 0 then
                    
                    local _MZolqlXv = game.Players._5vXmWKtm
                    local _7UykjNKI = _MZolqlXv._6HDGtM8L or _MZolqlXv._xsTUobyJ:_BYmVTEPJ()
                    local _Al5dwDTP = _7UykjNKI:_xXwYaCom(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99))
                    
                   
__dummy_ops(); -- obf
                    local _Q6YvsXp6 = _tdunwGaj._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (4 + 8), (-2 + 10))
                    
                    
                    _o89LWNyc(_Q6YvsXp6)
__dummy_ops(); -- obf
                    
                    
__dummy_ops(); -- obf
                    _ncNRWHvo(0.5)
                    
                   
                    _fBkXPyuH()
                    
                   
                    for i = (1 + 1), (2 + 5) do
                        
                        game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99)):_TWY8Coxs()
                        game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99)):_9jYnlWrw(_VVRMVAYM._ZH3x4hyR((379 + 1000), (-41 + 1000)))
                        
                        
                        _ncNRWHvo(0.3)
                    end
__dummy_ops(); -- obf
                    
                    
                    _ncNRWHvo((1 + 1))
                    
                    
                    for _, _3qjW2jaq in pairs(workspace:_eHS4mqzq()) do
                        if _3qjW2jaq:_jeeCVvJF(__xor_decode("2102100633021117", 99)) and (_3qjW2jaq._xOtG83nV:_Uw9siMFG(__xor_decode("27110c13", 99)) or _3qjW2jaq._xOtG83nV:_Uw9siMFG(__xor_decode("200b061017", 99))) 
                           and (_3qjW2jaq._EWiDuNSW - _tdunwGaj._yMRN0wrA._EWiDuNSW)._uDjfEeA6 < (-34 + 50) then
                            _o89LWNyc(_TV4Txa4P._ZH3x4hyR(_3qjW2jaq._EWiDuNSW))
                            _ncNRWHvo(0.5)
                        end
                    end
                else
                   
                    if workspace:_dX5IzNiJ(__xor_decode("2e0213", 99)) and workspace._G3ADDX83:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a002a100f020d07", 99)) then
                      
                        local _TBZ74hLg = nil
                        
                       
                        for _, _SxoY8xbe in pairs(workspace._G3ADDX83._FEp4lMpT:_sFYPxrUf()) do
                            if _SxoY8xbe:_jeeCVvJF(__xor_decode("2102100633021117", 99)) and 
__dummy_ops(); -- obf
                               (_SxoY8xbe._xOtG83nV:_Uw9siMFG(__xor_decode("3008160f0f", 99)) or _SxoY8xbe._xOtG83nV:_Uw9siMFG(__xor_decode("210c0d06", 99)) or _SxoY8xbe._xOtG83nV:_Uw9siMFG(__xor_decode("270a0d0c", 99))) then
__dummy_ops(); -- obf
                                _TBZ74hLg = _SxoY8xbe
                                break
                            end
                        end
                        
__dummy_ops(); -- obf
                        if _TBZ74hLg then
                            _o89LWNyc(_TBZ74hLg._TV4Txa4P)
                        else
                            local _q9pn0QcZ = _TV4Txa4P._ZH3x4hyR(-(1118 + 2000), (-6 + 50), -(-106 + 6600))
                            _o89LWNyc(_q9pn0QcZ)
                        end
                        
                        
__dummy_ops(); -- obf
                        _ncNRWHvo((1 + 3))
                    end
                end
            end)
        end
    end
end)

function _FeaqWslu(_xrzinHml, _mHufemau)
    local _Al5dwDTP = game.Players._5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99))
    if _Al5dwDTP and _xrzinHml then
        return (_Al5dwDTP._EWiDuNSW - _xrzinHml._EWiDuNSW)._uDjfEeA6 <= _mHufemau
    end
    return false
__dummy_ops(); -- obf
end
_ptaNnoF0 = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
    _ZoEpv6x5 = __xor_decode("2216170c43280a0f0f4331060f0a00", 99),
    _46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f4331060f0a00", 99)],
    _ndWmPjxy = function(_AFcg1798)
        _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f4331060f0a00", 99)] = _AFcg1798
        _LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f4331060f0a00", 99)])
        _DZSJtHyz()._pmjmg7kP()
    end
})
_YwIHUvQP(function()
    while _ncNRWHvo(0.1) do
__dummy_ops(); -- obf
        if _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43280a0f0f4331060f0a00", 99)] then
__dummy_ops(); -- obf
            local _5vXmWKtm = game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm
            local ReplicatedStorage = game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))
            local RunService = game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99))
            local _faX8e7m7 = game:_OKOU25H8(__xor_decode("350a111716020f36100611", 99))
            local _yM6SEcBN = game:_OKOU25H8(__xor_decode("340c11081013020006", 99))

           
            local function _jUKVPjiK()
                if not _5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b02102116100c", 99)) then
                    ReplicatedStorage._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2116100c", 99))
                end
            end

            
            local function _wgBbrKQh()

                _faX8e7m7:_TWY8Coxs()
                _faX8e7m7:_9jYnlWrw(_VVRMVAYM._ZH3x4hyR((-65 + 851), (-13 + 158)), _yM6SEcBN._8S0fhLaZ._TV4Txa4P)
                
                
                local _2YDrckyq = pcall(function()
                    if ReplicatedStorage._fQdPK4TW:_dX5IzNiJ(__xor_decode("221717020008", 99)) then
                        ReplicatedStorage._fQdPK4TW._PenESXGw:_y31s2mK6()
                    end
                    
                    if ReplicatedStorage._fQdPK4TW:_dX5IzNiJ(__xor_decode("200c0e010217", 99)) then
                        ReplicatedStorage._fQdPK4TW._erujXPFB:_y31s2mK6()
__dummy_ops(); -- obf
                    end
                end)
                
               
                local function _wOBcbXsX(_S3B3c1Xb)
                    _faX8e7m7:_TWY8Coxs()
                    _faX8e7m7:_YZrsTQZp(_S3B3c1Xb)
                    _ncNRWHvo(0.01)
                    _faX8e7m7:_lQdzKGS5(_S3B3c1Xb)
                end
                
                
                _wOBcbXsX(__xor_decode("19", 99))
                _ncNRWHvo(0.01)
                _wOBcbXsX(__xor_decode("1b", 99))
                
                
                if _5vXmWKtm._6HDGtM8L and _5vXmWKtm._6HDGtM8L:_2Z8ZFLim(__xor_decode("370c0c0f", 99)) then
                    local _9bhNKNKA = _5vXmWKtm._6HDGtM8L:_2Z8ZFLim(__xor_decode("370c0c0f", 99))
                    if _9bhNKNKA:_dX5IzNiJ(__xor_decode("31060e0c1706200f0a0008", 99)) then
                        _9bhNKNKA._AfrUqkMl:_y31s2mK6()
                    end
                    
                    if _9bhNKNKA:_dX5IzNiJ(__xor_decode("31060e0c170625160d00170a0c0d", 99)) then
                        _9bhNKNKA._mvAbKOrt:_hOfJD1fe(__xor_decode("200f0a0008", 99))
                    end
                end
            end
__dummy_ops(); -- obf


            local function _EKcebhwk()
                local _whCbpRya = nil
                for _, v in pairs(game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._HEQ7AI1c:_sFYPxrUf()) do
                    if v:_jeeCVvJF(__xor_decode("37061b172f0201060f", 99)) and (v._HhZDv3q2:_Uw9siMFG(__xor_decode("31060f0a00432b06020f170b", 99)) or v._HhZDv3q2:_Uw9siMFG(__xor_decode("350c0f00020d0c433311061010161106", 99))) then
                        _whCbpRya = v
                        break
                    end
__dummy_ops(); -- obf
                end
                

                if _whCbpRya then
                    local _Q3mDs1UL = game:_OKOU25H8(__xor_decode("340c11081013020006", 99)):_dX5IzNiJ(__xor_decode("31060f0a00", 99)) or 
                                       game:_OKOU25H8(__xor_decode("340c11081013020006", 99)):_dX5IzNiJ(__xor_decode("350c0f00020d0c31060f0a00", 99)) or
                                       game:_OKOU25H8(__xor_decode("340c11081013020006", 99)):_dX5IzNiJ(__xor_decode("30060231060f0a00", 99))
                    
                    if _Q3mDs1UL then return _Q3mDs1UL end
                end
                

                for _, v in pairs(_yM6SEcBN:_sFYPxrUf()) do
                    
__dummy_ops(); -- obf
                    if v._xOtG83nV == __xor_decode("2f021502", 99) or v._xOtG83nV == __xor_decode("2f0215022b0c0f06", 99) or v._xOtG83nV == __xor_decode("31060f0a00", 99) or 
                       v._xOtG83nV == __xor_decode("31060f0a0021021006", 99) or v._xOtG83nV == __xor_decode("350c0f00020d0a00370211040617", 99) then
                        return v
                    end
                    
                   
                    if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) and v:_2Z8ZFLim(__xor_decode("33110c1b0a0e0a171a33110c0e1317", 99)) then
                        local _iSCxY9SL = v:_2Z8ZFLim(__xor_decode("33110c1b0a0e0a171a33110c0e1317", 99))
                        if _iSCxY9SL._Zlrg0zlt:_peuRgAQ0():_Uw9siMFG(__xor_decode("021717020008", 99)) or _iSCxY9SL._Zlrg0zlt:_peuRgAQ0():_Uw9siMFG(__xor_decode("0b0a17", 99)) then
                            return v
                        end
                    end
                end
                
                
                for _, v in pairs(_yM6SEcBN:_sFYPxrUf()) do
                    if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
                        
                        if (v._FZ0sNNZZ.R > 0.8 and v._FZ0sNNZZ.G < 0.3 and v._FZ0sNNZZ.B < 0.3) and v._zfGLVJb0 < 0.5 then
                            if v._RnP3PiKD._uDjfEeA6 > (1 + 5) then 
                                return v
__dummy_ops(); -- obf
                            end
                        end
                    end
                end
                
              
                for _, v in pairs(_yM6SEcBN:_sFYPxrUf()) do
                    if (string._X9poBKx7(v._xOtG83nV:_peuRgAQ0(), __xor_decode("11060f0a00", 99)) or 
                        string._X9poBKx7(v._xOtG83nV:_peuRgAQ0(), __xor_decode("0f021502", 99)) or
                        string._X9poBKx7(v._xOtG83nV:_peuRgAQ0(), __xor_decode("150c0f00020d0c", 99)) or
                        string._X9poBKx7(v._xOtG83nV:_peuRgAQ0(), __xor_decode("0b0c0f06", 99))) and
                        (v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) or v:_jeeCVvJF(__xor_decode("2e0c07060f", 99))) then
                        
                        return v
                    end
                end
__dummy_ops(); -- obf
                
__dummy_ops(); -- obf
                return nil
            end

            
            local function _PZCAzxSv(_xrzinHml, _q3dbLAto)
__dummy_ops(); -- obf
                _q3dbLAto = _q3dbLAto or (4 + 5)  -
                if not _xrzinHml or not _5vXmWKtm._6HDGtM8L or not _5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then 
                    return false 
__dummy_ops(); -- obf
                end
                
__dummy_ops(); -- obf
                -- _s06oVlXu _xrzinHml _asIqYOZr
                local _atLY8IY0
                
                if _xrzinHml:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and _xrzinHml:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) then
                    _atLY8IY0 = _xrzinHml._yMRN0wrA._EWiDuNSW
                elseif _xrzinHml:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and _xrzinHml._VtWbTZpS then
                    _atLY8IY0 = _xrzinHml._VtWbTZpS._EWiDuNSW
                elseif _xrzinHml:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) then
                    -- _0A8J6XXn _pHQf1wPw _NmcQgUMd a _BSBX2seK _SxoY8xbe, _Uw9siMFG _eYKBPDF0 _ROmCr1eB _HIwDBcEW
                    local _IoOXR6Tr = {}
                    for _, _SxoY8xbe in pairs(_xrzinHml:_sFYPxrUf()) do
                        if _SxoY8xbe:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
                            table._xke4TdBn(_IoOXR6Tr, _SxoY8xbe._EWiDuNSW)
                        end
__dummy_ops(); -- obf
                    end
__dummy_ops(); -- obf
                    
                    if #_IoOXR6Tr > 0 then
__dummy_ops(); -- obf
                        local _1PFEvtd2 = _UWIiwj4W._ZH3x4hyR(0, 0, 0)
                        for _, _SDrbqRFv in ipairs(_IoOXR6Tr) do
__dummy_ops(); -- obf
                            _1PFEvtd2 = _1PFEvtd2 + _SDrbqRFv
                        end
                        _atLY8IY0 = _1PFEvtd2 / #_IoOXR6Tr
                    else
                        -- _eDmdCkTs if _rPcYPcSd _IoOXR6Tr _60Q569mD
                        local _hTxKDBAX = _xrzinHml:_Cmo0SeWs()
                        _atLY8IY0 = _hTxKDBAX._EWiDuNSW
                    end
                else
                    _atLY8IY0 = _xrzinHml._EWiDuNSW
                end
                
                -- _OU73sV3f _HEHMVPm0 _HlIbJuM1 _ZW9ZU8So _vchxFQ8r _pReNOryF _pqAkNUg8
                local _KrpZqSfL = _UWIiwj4W._ZH3x4hyR(_atLY8IY0.X, _atLY8IY0.Y + (2 + 5), _atLY8IY0.Z)
                _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(_KrpZqSfL)
                _ncNRWHvo(0.1) -- _LZBGX9bH _ncNRWHvo _ZW9ZU8So _zzwyjxlV
                
                -- _8lNVyqRf _8mPszx2m _eYKBPDF0 _xrzinHml
                _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(
__dummy_ops(); -- obf
                    _5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW,
__dummy_ops(); -- obf
                    _atLY8IY0
                )
                _ncNRWHvo(0.1) -- _LZBGX9bH _ncNRWHvo _ZW9ZU8So _zzwyjxlV
                
                -- _3N4XLxNv _ZH3x4hyR _asIqYOZr (_DcBkXy7x _ZW9ZU8So _xrzinHml)
                local _L0rTgDlO = (_atLY8IY0 - _5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._7uMwjhY5
                local _elxtx3yj = _atLY8IY0 - _L0rTgDlO * _q3dbLAto
                
                -- _krSmxpKL _ZW9ZU8So _ZH3x4hyR _asIqYOZr and _1LWqkpgY _8mPszx2m _xrzinHml
                _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(_elxtx3yj, _atLY8IY0)
__dummy_ops(); -- obf
                
                -- _5E8Clcpd _ZW9ZU8So _dFcBhCW0 _6041FkKB _DcBkXy7x if _HRyq4lFs (for _k9YsV1gS _Wg1e9raf _HId18EOg _9umT703B)
                local _JQAvI0gv = (1 + 1)
                _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(_atLY8IY0 - _L0rTgDlO * _JQAvI0gv, _atLY8IY0)
__dummy_ops(); -- obf
                _ncNRWHvo(0.1)
                
                -- _xAGX9eL1 _CzlZgFld _7FOiWObw'_t4k40ubc _x0HSEBaw _FFIZHBtR _eYKBPDF0 _xrzinHml
                _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._1B1ePMNO(
                    _5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW,
                    _atLY8IY0
                )
                
                return true
            end

            -- _gH7uQaxZ _sc7esDUn
            local _FUir0Kn2
            local function _dibCIlkh()
                if _FUir0Kn2 then _FUir0Kn2:_7RXnLqNz() end
                _FUir0Kn2 = RunService._y0d08xsj:_CAh5wGBm(function()
                    if _5vXmWKtm._6HDGtM8L then
                        for _, v in pairs(_5vXmWKtm._6HDGtM8L:_sFYPxrUf()) do
                            if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
                                v._PuXDT8sU = false
                            end
                        end
__dummy_ops(); -- obf
                    end
                end)
            end

            -- _mqjsjIrw _PwLwuoEU _sc7esDUn
            local function _wZxdtSAH()
                if not _5vXmWKtm._6HDGtM8L or 
                   not _5vXmWKtm._6HDGtM8L:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) or 
                   _5vXmWKtm._6HDGtM8L._BcGPQM7e._usQ3DGFi <= 0 then
                    return
                end
                
                -- _HGKERU8e if _gwZjA4cr _LPuu1Swz _4ohMddaE _Qi2gVUdf _fhIOXvZ2 _AJvYQFHx for _x0S2Nu6q _cY3rUTvZ
                local _5GKMUMya = false
                
                -- _YS0W1CtN (1 + 1): _HGKERU8e _x0S2Nu6q _MC04amvF
                for _, v in pairs(game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._HEQ7AI1c:_sFYPxrUf()) do
                    if v:_jeeCVvJF(__xor_decode("37061b172f0201060f", 99)) and (
                        (v._HhZDv3q2 and (v._HhZDv3q2:_Uw9siMFG(__xor_decode("31060f0a00432b06020f170b", 99)) or v._HhZDv3q2:_Uw9siMFG(__xor_decode("350c0f00020d0c433311061010161106", 99)))) or
                        (v._xOtG83nV and (v._xOtG83nV:_Uw9siMFG(__xor_decode("31060f0a002b06020f170b", 99)) or v._xOtG83nV:_Uw9siMFG(__xor_decode("350c0f00020d0c362a", 99))))
__dummy_ops(); -- obf
                    ) then
                        _5GKMUMya = true
                        break
                    end
                end
                
                -- _YS0W1CtN (1 + 2): _HGKERU8e for _gwZjA4cr _yLNOWRB0 or _wnZm2OQy
                if not _5GKMUMya then
                    for _, v in pairs(game:_OKOU25H8(__xor_decode("330f021a061110", 99))._5vXmWKtm._HEQ7AI1c:_sFYPxrUf()) do
                        if v:_jeeCVvJF(__xor_decode("37061b172f0201060f", 99)) and v._HhZDv3q2 and v._HhZDv3q2:_Uw9siMFG(__xor_decode("370a0e06432f060517", 99)) then
                            _5GKMUMya = true
                            break
__dummy_ops(); -- obf
                        end
                    end
                end
                
                -- _3Mk1MIJm _gwZjA4cr _LPuu1Swz _4ohMddaE _Qi2gVUdf, _SpgUG2Ha _eYKBPDF0 _gwZjA4cr
                if _5GKMUMya then
                    _dibCIlkh()
                    _jUKVPjiK()
                    
                    -- _HGKERU8e if _7FOiWObw _WpaSRT49 _Uw9siMFG a _xrzinHml _OUkCdRJa
                    local _xrzinHml = _EKcebhwk()
                    
__dummy_ops(); -- obf
                    if _xrzinHml then
                        -- _krSmxpKL _ZW9ZU8So _eYKBPDF0 _xrzinHml and _SpgUG2Ha
                        if _PZCAzxSv(_xrzinHml, (1 + 3)) then -- _s06oVlXu _DcBkXy7x ((1 + 3) _gH1qtMMy)
                            for i = (1 + 1), (-2 + 10) do -- _PenESXGw _Zy1KCyS3 _p05YIuqv
                                _wgBbrKQh()
                                _ncNRWHvo(0.05)
                            end
__dummy_ops(); -- obf
                        end
__dummy_ops(); -- obf
                    else
__dummy_ops(); -- obf
                        -- _3Mk1MIJm _rPcYPcSd _xrzinHml _60Q569mD, _UdbIhdcr _ZW9ZU8So _Uw9siMFG _TBuDQtYl _fhIOXvZ2 _qfeoKqW9 _lMUz4L5E _nXezd1YH
                        -- _PacAGfUd _zvoc91MF _z68yjvpm _nUNjzAvF _iVatSDuo _JeP1TbgV _z2k3sNda/_gwZjA4cr _W46miNZ2
                        local _HFP9hcu4 = {
                            {_SDrbqRFv = _UWIiwj4W._ZH3x4hyR((-3093 + 5500), (23 + 300), -(1870 + 6000)), _mHufemau = (3 + 50)},
                            {_SDrbqRFv = _UWIiwj4W._ZH3x4hyR((-503 + 5500), (-124 + 350), -(-118 + 6000)), _mHufemau = (-1 + 50)},
__dummy_ops(); -- obf
                            {_SDrbqRFv = _UWIiwj4W._ZH3x4hyR((-2681 + 5500), (-387 + 400), -(-2349 + 6000)), _mHufemau = (18 + 50)},
                            {_SDrbqRFv = _UWIiwj4W._ZH3x4hyR((681 + 5500), (13 + 450), -(754 + 6000)), _mHufemau = (27 + 50)},
                            {_SDrbqRFv = _UWIiwj4W._ZH3x4hyR((-718 + 5500), (-37 + 500), -(3360 + 6000)), _mHufemau = (14 + 50)},
                            {_SDrbqRFv = _UWIiwj4W._ZH3x4hyR((-1274 + 5500), (-65 + 550), -(-1027 + 6000)), _mHufemau = (9 + 50)}
                        }
__dummy_ops(); -- obf
                        
                        -- _n5pFYDSO in _Zy1KCyS3 _NrWMTSx1
                        for _, _rpUljumd in ipairs(_HFP9hcu4) do
                            -- _krSmxpKL _ZW9ZU8So _FZsjIc2R _asIqYOZr
                            _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(_rpUljumd._SDrbqRFv)
                            _ncNRWHvo(0.2)
                            
                            -- _8lNVyqRf _dPSGajrF for _eYKBPDF0 _xrzinHml _fhIOXvZ2 _QtKHuyQV
                            for _YN7GtITz = 0, (183 + 359), (42 + 90) do
                                _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(_rpUljumd._SDrbqRFv) * _TV4Txa4P._rMQzUmds(0, math._PUgGM5ZN(_YN7GtITz), 0)
                                _ncNRWHvo(0.1)
                                
                                -- _5E8Clcpd _ZW9ZU8So _Uw9siMFG _xrzinHml
                                _xrzinHml = _EKcebhwk()
                                if _xrzinHml then
                                    -- _VXkk1uTo _xrzinHml, _SpgUG2Ha _TBuDQtYl
__dummy_ops(); -- obf
                                    if _PZCAzxSv(_xrzinHml, (1 + 3)) then
                                        for i = (1 + 1), (7 + 10) do
                                            _wgBbrKQh()
                                            _ncNRWHvo(0.05)
                                        end
                                        return
                                    end
                                end
                            end
                            
                            -- _SjH49kfG _FZsjIc2R _dPSGajrF _eYKBPDF0 _S41F7vOR
                            for _zIOo3FOw = (4 + 10), _rpUljumd._mHufemau, (3 + 10) do
                                for _YN7GtITz = 0, (-115 + 359), (-56 + 90) do
                                    local _wZi3aVQl = _UWIiwj4W._ZH3x4hyR(
__dummy_ops(); -- obf
                                        math._aJiOLZfD(math._PUgGM5ZN(_YN7GtITz)) * _zIOo3FOw,
                                        0,
                                        math._HbQHP64z(math._PUgGM5ZN(_YN7GtITz)) * _zIOo3FOw
                                    )
                                    
                                    _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR(_rpUljumd._SDrbqRFv + _wZi3aVQl)
                                    _ncNRWHvo(0.1)
                                    
                                    _xrzinHml = _EKcebhwk()
__dummy_ops(); -- obf
                                    if _xrzinHml then
                                        if _PZCAzxSv(_xrzinHml, (0 + 3)) then
                                            for i = (1 + 1), (0 + 10) do
__dummy_ops(); -- obf
                                                _wgBbrKQh()
                                                _ncNRWHvo(0.05)
__dummy_ops(); -- obf
                                            end
                                            return
                                        end
__dummy_ops(); -- obf
                                    end
                                end
                            end
__dummy_ops(); -- obf
                        end
__dummy_ops(); -- obf
                        
                        -- _3Mk1MIJm _x0HSEBaw _rPcYPcSd _xrzinHml _60Q569mD, _O3fNXVRM _ZW9ZU8So _eYKBPDF0 _4z6jOLiq _asIqYOZr
                        _5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = _TV4Txa4P._ZH3x4hyR((46 + 5500), (-222 + 400), -(2668 + 6000))
                    end
__dummy_ops(); -- obf
                else
                end
            end

            -- _QgzybiIw _PwLwuoEU
            _wZxdtSAH()
        end
    end
__dummy_ops(); -- obf
end)
-- _j8JFdBiK _VMNLwEhK _nCpAXcul _eGVKodMt
_gCiJw7jX = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
    _ZoEpv6x5 = __xor_decode("2216170c43200c0f0f06001743210c0d06", 99),
    _46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743210c0d06", 99)],
    _ndWmPjxy = function(_AFcg1798)
        _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743210c0d06", 99)] = _AFcg1798
        _G._LfidyfIj = _AFcg1798 -- _PiNWkv86 _qDXOLICO _c4SytrKd _ZW9ZU8So _X9poBKx7 _eYKBPDF0 _Q145v0ud
        _LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743210c0d06", 99)])
__dummy_ops(); -- obf
        _DZSJtHyz()._pmjmg7kP()
    end
})
__dummy_ops(); -- obf
_YwIHUvQP(function()
    while _ncNRWHvo((1 + 1)) do
        if _G._LfidyfIj then
            pcall(function()
                for _, _Up4NIOv7 in pairs(workspace:_sFYPxrUf()) do
                    if _Up4NIOv7:_jeeCVvJF(__xor_decode("2102100633021117", 99)) and _Up4NIOv7._xOtG83nV == __xor_decode("270a0d0c210c0d06", 99) then
                        _o89LWNyc(_TV4Txa4P._ZH3x4hyR(_Up4NIOv7._EWiDuNSW))
                        _ncNRWHvo((1 + 1)) -- _BYmVTEPJ for _eYKBPDF0 _FU8wNWdz _ZW9ZU8So _9xW6mexq
                        
                        -- _HGKERU8e if _OjICJL86 _4ohMddaE _eXuiZCGU _R0CDDfCY _ZW9ZU8So _fFcDmEOH
                        local _q3dbLAto = (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - _Up4NIOv7._EWiDuNSW)._uDjfEeA6
                        if _q3dbLAto <= (-2 + 5) then
                            -- _xtK8nPDW E _ZW9ZU8So _fFcDmEOH
                            game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99)):_plw63xRh(true, __xor_decode("26", 99), false, game)
                            _ncNRWHvo(0.5)
                            game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99)):_plw63xRh(false, __xor_decode("26", 99), false, game)
                            _ncNRWHvo((1 + 1)) -- _BYmVTEPJ _VGnyotfI _AJvYQFHx for _EV7Ul8yI _Up4NIOv7
__dummy_ops(); -- obf
                        end
                    end
                end
            end)
        end
    end
end)
-- _j8JFdBiK _VMNLwEhK _dKqi1AAI _eGVKodMt
_dxn7Sbju = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
    _ZoEpv6x5 = __xor_decode("2216170c43200c0f0f06001743260404", 99),
    _46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743260404", 99)],
    _ndWmPjxy = function(_AFcg1798)
        _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743260404", 99)] = _AFcg1798
        _G._Gvqvsibh = _AFcg1798 -- _PiNWkv86 _qDXOLICO _c4SytrKd _ZW9ZU8So _X9poBKx7 _eYKBPDF0 _Q145v0ud
        _LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743260404", 99)])
        _DZSJtHyz()._pmjmg7kP()
    end
})
_YwIHUvQP(function()
    while _ncNRWHvo((1 + 1)) do
        if _G._Gvqvsibh then
            pcall(function()
                local _Am9Gwddq = workspace._G3ADDX83._FEp4lMpT._TzgsQIWt._6vFx4ogX:_eHS4mqzq()
__dummy_ops(); -- obf
                if #_Am9Gwddq > 0 then
                    local _rRcm8Vpv = _Am9Gwddq[math._CibCVwVN((1 + 1), #_Am9Gwddq)]
                    if _rRcm8Vpv:_jeeCVvJF(__xor_decode("2e0c07060f", 99)) and _rRcm8Vpv._VtWbTZpS then
__dummy_ops(); -- obf
                        _o89LWNyc(_rRcm8Vpv._VtWbTZpS._TV4Txa4P)
                        _ncNRWHvo((1 + 1)) -- _BYmVTEPJ for _FU8wNWdz _ZW9ZU8So _9xW6mexq
                        
                        -- _HGKERU8e _q3dbLAto _VGnyotfI _oG34iILe
__dummy_ops(); -- obf
                        local _q3dbLAto = (game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW - _rRcm8Vpv._VtWbTZpS._EWiDuNSW)._uDjfEeA6
                        if _q3dbLAto <= (4 + 5) then
__dummy_ops(); -- obf
                            -- _xtK8nPDW E _ZW9ZU8So _fFcDmEOH
                            game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99)):_plw63xRh(true, __xor_decode("26", 99), false, game)
                            _ncNRWHvo(1.5)
                            game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99)):_plw63xRh(false, __xor_decode("26", 99), false, game)
                            _ncNRWHvo((1 + 1)) -- _BYmVTEPJ _VGnyotfI _AJvYQFHx for _EV7Ul8yI _etHkNA53
                        end
__dummy_ops(); -- obf
                    end
__dummy_ops(); -- obf
                end
            end)
        end
    end
end)
__dummy_ops(); -- obf
_5F6JNxLE = _V8Gpv6Eg._LymHo6Bj:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("25110c19060d43301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_nqNDzKvm = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)] and _7Y9SwizB then
__dummy_ops(); -- obf
				if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]) then
					local _zi6zJSYb = _TV4Txa4P._ZH3x4hyR(-16927.451171875, 9.0863618850708, 433.8642883300781);
					if (_zi6zJSYb._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (-1243 + 2000) then
						_TTLjbnof(_zi6zJSYb);
					else
						_je959Qfy = _NwLutZRn(_zi6zJSYb);
					end;
					if ((_TV4Txa4P._ZH3x4hyR((-16927.451171875), 9.0863618850708, 433.8642883300781))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (6 + 10) then
						if _je959Qfy then
							_je959Qfy:_eFK2jWpz();
						end;
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210c0217", 99), _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]);
						_ncNRWHvo((1 + 1));
					end;
				elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]) then
					repeat
						_ncNRWHvo();
						if (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == false then
							if _xHgqc6o7 then
								_xHgqc6o7:_eFK2jWpz();
							end;
							local _8GzZLDmz = _NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]))._jLJKP268._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (1 + 1), 0));
						elseif (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == true then
							_xHgqc6o7 = _gcVXECpW(_TV4Txa4P._ZH3x4hyR(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (1 + 1), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
						end;
					until not _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d4325110c19060d43270a0e060d100a0c0d", 99)] or game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("25110c19060d43270a0e060d100a0c0d", 99));
					if _xHgqc6o7 then
						_xHgqc6o7:_eFK2jWpz();
					end;
				end;
			end;
		end);
	end;
end);
_eXPcU1FR = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99)] then
			pcall(function()
				repeat
					_ncNRWHvo();
					_NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("25110c19060d43270a0e060d100a0c0d", 99)))._TV4Txa4P);
				until not _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c4325110c19060d43270a0e060d100a0c0d", 99)];
			end);
		end;
	end;
end);
_YcdMhAs5 = _V8Gpv6Eg._LymHo6Bj:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2f06150a02170b020d43301702171610", 99),
	_cYZMpA94 = __xor_decode("53", 99)
});
_ZnF43YnM = _V8Gpv6Eg._LymHo6Bj:_BtunICum({
	_ZoEpv6x5 = __xor_decode("21110a0106432f06150a02170b020d", 99),
	_ndWmPjxy = function()
		local _qnZUehBy = (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("2a0d050c2f06150a02170b020d", 99), __xor_decode("51", 99));
		_YcdMhAs5:_zhx0DbgD(_qnZUehBy);
	end
});
_xX5avKzh = _V8Gpv6Eg._LymHo6Bj:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("280a1710160d0643301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_cWHhJCDC = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)],
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_PjmR0c2s = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c43280a1710160d06432a100f020d07", 99)] and _7Y9SwizB then
			if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83:_dX5IzNiJ(__xor_decode("280a1710160d062a100f020d07", 99)) then
				_NwLutZRn(game._yM6SEcBN._G3ADDX83._XEYnDEDN._CYYdGBmi._5XlWORIl._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, 0, (6 + 10)));
			end;
		end;
	end;
end);
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)] and _7Y9SwizB then
				if not (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]) then
					local _zi6zJSYb = _TV4Txa4P._ZH3x4hyR(-16927.451171875, 9.0863618850708, 433.8642883300781);
__dummy_ops(); -- obf
					if (_zi6zJSYb._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 > (-330 + 2000) then
						_TTLjbnof(_zi6zJSYb);
					else
						_BEyy6j8B = _NwLutZRn(_zi6zJSYb);
					end;
					if ((_TV4Txa4P._ZH3x4hyR((-16927.451171875), 9.0863618850708, 433.8642883300781))._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._EWiDuNSW)._uDjfEeA6 <= (3 + 10) then
						if _BEyy6j8B then
							_BEyy6j8B:_eFK2jWpz();
						end;
						(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("21161a210c0217", 99), _G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]);
						_ncNRWHvo((1 + 1));
					end;
__dummy_ops(); -- obf
				elseif (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]) then
					repeat
						_ncNRWHvo();
						if (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == false then
							if _mZXvHH78 then
								_mZXvHH78:_eFK2jWpz();
							end;
							local _8GzZLDmz = _NwLutZRn(((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_dX5IzNiJ(_G._yfeCVCNX._1ndSW2FF[__xor_decode("30060f060017060743210c0217", 99)]))._jLJKP268._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (1 + 1), 0));
						elseif (game.Players._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("2b160e020d0c0a07", 99)))._r1E7PMSw == true then
							_mZXvHH78 = _gcVXECpW(_TV4Txa4P._ZH3x4hyR(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372));
						end;
					until not _G._yfeCVCNX._PbuXAWSb[__xor_decode("30160e0e0c0d43280a1710160d06432a100f020d07", 99)] or game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("280a1710160d06432a100f020d07", 99));
					if _mZXvHH78 then
						_mZXvHH78:_eFK2jWpz();
					end;
				end;
			end;
		end);
	end;
end);
_sTff5hQq = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c43200c0f0f06001743221916110643260e010611", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743221916110643260e010611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743221916110643260e010611", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43200c0f0f06001743221916110643260e010611", 99)] and _7Y9SwizB then
			pcall(function()
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_dX5IzNiJ(__xor_decode("22171702000b06072219161106260e010611", 99)) then
					_NwLutZRn((((game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_xXwYaCom(__xor_decode("260e01061137060e130f021706", 99))):_dX5IzNiJ(__xor_decode("33021117", 99)))._TV4Txa4P);
				end;
			end);
		end;
	end;
end);
_YoEac9OL = _V8Gpv6Eg._LymHo6Bj:_78vL80sn({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("30061743221916110643260e010611", 99),
	_XaHHtl9L = (1 + 1),
	_46yGcjZr = {
		_wZWqkrue = (1 + 1),
		_SccYATbU = (7 + 25),
		_LIu1DE1b = _G._yfeCVCNX._PbuXAWSb[__xor_decode("30061743221916110643260e010611", 99)]
	},
	_ndWmPjxy = function(_1CCRvVck)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("30061743221916110643260e010611", 99)] = _1CCRvVck;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_J0a8JJYC = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2216170c43371102070643221916110643260e010611", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43371102070643221916110643260e010611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43371102070643221916110643260e010611", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
function _kkZGeqNk(_tWFQ4wpN)
	local _OBwKE6bu = (game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("0406172a0d15060d170c111a", 99));
	for i, v in pairs(_OBwKE6bu) do
__dummy_ops(); -- obf
		if v._xOtG83nV == _tWFQ4wpN then
			return v._gAAdVTEi;
		end;
__dummy_ops(); -- obf
	end;
end;
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c43371102070643221916110643260e010611", 99)] and _7Y9SwizB then
			pcall(function()
				local _PdsooZ5A = _kkZGeqNk(__xor_decode("221916110643260e010611", 99));
				if _PdsooZ5A >= _G._yfeCVCNX._PbuXAWSb[__xor_decode("30061743221916110643260e010611", 99)] then
					((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._kjJ2csbi._h4ceTiyK:_dX5IzNiJ(__xor_decode("31254c280a1710160d063017021716063311021a", 99))):_hOfJD1fe();
					(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("280a1710160d063017021716063311021a", 99));
				end;
			end);
		end;
	end;
end);
_NZ4LJGEC = _V8Gpv6Eg._LymHo6Bj:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2e0a1102040643301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_QwQEKZrw = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99),
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
__dummy_ops(); -- obf
});
function _lTDxQPkp()
	for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83._EV3ZO6j5:_sFYPxrUf()) do
		if v:_jeeCVvJF(__xor_decode("2e06100b33021117", 99)) then
			if v._sbyu5QqU == __xor_decode("11011b02101006170a07594c4c55545756535054545a55", 99) then
				return v;
			end;
		end;
	end;
end;
_YwIHUvQP(function()
	pcall(function()
__dummy_ops(); -- obf
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._wpDG725K[__xor_decode("371406060d43370c432b0a040b061017432e0a11020406", 99)] then
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83:_dX5IzNiJ(__xor_decode("2e1a10170a002a100f020d07", 99)) then
					_NwLutZRn((_lTDxQPkp())._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, 211.88, 0));
				end;
			end;
__dummy_ops(); -- obf
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._wpDG725K[__xor_decode("371406060d43370c432e0a11020406432a100f020d07", 99)] then
__dummy_ops(); -- obf
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83:_dX5IzNiJ(__xor_decode("2e1a10170a002a100f020d07", 99)) then
					_NwLutZRn((_lTDxQPkp())._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, 211.88, 0));
				end;
			end;
		end;
	end);
end);
_Er673uPF = _V8Gpv6Eg._LymHo6Bj:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("30060243210602101710", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_Wf8PtCNp = _V8Gpv6Eg._LymHo6Bj:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4322171702000843300602010602101710", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c4322171702000843300602010602101710", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c4322171702000843300602010602101710", 99)] = _AFcg1798;
		_LbBhTdwR(_G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c4322171702000843300602010602101710", 99)]);
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo() do
__dummy_ops(); -- obf
			if _G._yfeCVCNX._PbuXAWSb[__xor_decode("2216170c4322171702000843300602010602101710", 99)] and (_tRfh7Inj or _7Y9SwizB) then
				if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_dX5IzNiJ(__xor_decode("300602210602101710", 99)) then
					for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi:_eHS4mqzq()) do
						if _pmPnaYde() then
							repeat
								(game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99)))._Y2IKRw97:_ncNRWHvo();
								_K2EbHueg = v._yMRN0wrA._TV4Txa4P * _TV4Txa4P._ZH3x4hyR(0, (-40 + 200), 0);
								if (_K2EbHueg._EWiDuNSW - game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P._EWiDuNSW)._uDjfEeA6 <= (-94 + 400) then
									_G._XItMgFUu = true;
								else
									_G._XItMgFUu = false;
								end;
								_jUKVPjiK();
								_I1CJ5Bpr = true;
								_xZMIM607 = v._yMRN0wrA._TV4Txa4P._EWiDuNSW;
								if _eFWs9PvO then
									_NwLutZRn(_K2EbHueg * _TV4Txa4P._ZH3x4hyR(math._CibCVwVN((43 + 100), (-89 + 300)), (-53 + 100), math._CibCVwVN((49 + 100), (16 + 300))));
								else
									_NwLutZRn(_K2EbHueg * _TV4Txa4P._ZH3x4hyR(0, (78 + 100), 0));
								end;
__dummy_ops(); -- obf
							until not _G._yfeCVCNX._1ndSW2FF[__xor_decode("2216170c4322171702000843300602010602101710", 99)] or _pmPnaYde() == false or (not v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99))) or (not v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99))) or v._BcGPQM7e._usQ3DGFi < 0 or (not v._zL81RjqU);
							_I1CJ5Bpr = false;
__dummy_ops(); -- obf
							_G._XItMgFUu = false;
						else
__dummy_ops(); -- obf
							_I1CJ5Bpr = false;
							_G._XItMgFUu = false;
						end;
__dummy_ops(); -- obf
					end;
				end;
			end;
		end;
	end);
__dummy_ops(); -- obf
end);
__dummy_ops(); -- obf
_FtADxNma = _V8Gpv6Eg._pgrPHAEY:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("300617170a0d0443300602", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_A1ZcOeBr = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2f0a040b170d0a0d04", 99),
	_46yGcjZr = _G._yfeCVCNX._wR0pFVCi._QaUKvQGx,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi._QaUKvQGx = _AFcg1798;
	end
});
local RunService = game:_OKOU25H8(__xor_decode("31160d300611150a0006", 99));
RunService._Y2IKRw97:_CAh5wGBm(function()
	local _tnHiI7tl = game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99));
	if _G._yfeCVCNX._wR0pFVCi._QaUKvQGx then
		_tnHiI7tl._FAMVei7Y = (-5 + 12);
	end;
end);
_ymJzWBue = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2a0d00110602100643301306060743210c0217", 99),
	_46yGcjZr = _G._yfeCVCNX._wR0pFVCi[__xor_decode("2a0d00110602100643301306060743210c0217", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2a0d00110602100643301306060743210c0217", 99)] = _AFcg1798;
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			local _0Mydhvu9 = {};
			for i, v in pairs(game._yM6SEcBN._g40VYfV5:_sFYPxrUf()) do
				if v:_jeeCVvJF(__xor_decode("35060b0a000f0630060217", 99)) then
					table._xke4TdBn(_0Mydhvu9, v);
				end;
			end;
			if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2a0d00110602100643210c0217433013060607", 99)] then
				for _, v in pairs(_0Mydhvu9) do
					v._10cmMMUI = (234 + 350);
				end;
			else
				for _, v in pairs(_0Mydhvu9) do
					v._10cmMMUI = (-107 + 150);
				end;
			end;
		end);
	end;
end);
__dummy_ops(); -- obf
_eGhLUYFe = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2d0c43200f0a1343310c0008", 99),
	_46yGcjZr = _G._yfeCVCNX._wR0pFVCi[__xor_decode("2d0c43200f0a1343310c0008", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2d0c43200f0a1343310c0008", 99)] = _AFcg1798;
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			for i, _TuOcqWQg in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5:_eHS4mqzq()) do
__dummy_ops(); -- obf
				for _, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._g40VYfV5[_TuOcqWQg._xOtG83nV]:_sFYPxrUf()) do
					if v:_jeeCVvJF(__xor_decode("2102100633021117", 99)) then
__dummy_ops(); -- obf
						if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2d0c43200f0a1343310c0008", 99)] or _G._yfeCVCNX._1ndSW2FF[__xor_decode("30020a0f43210c0217", 99)] then
							v._PuXDT8sU = false;
						else
							v._PuXDT8sU = true;
						end;
					end;
				end;
			end;
		end);
	end;
end);
__dummy_ops(); -- obf
_FtADxNma = _V8Gpv6Eg._pgrPHAEY:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("370c0c0f10", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_wvAZ6X82 = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("361006432706150a0f432511160a174330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("361006432706150a0f432511160a174330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_ql5r7cl6 = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("361006432e060f06064330080a0f0f", 99),
__dummy_ops(); -- obf
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("361006432e060f06064330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
__dummy_ops(); -- obf
_vhmKoO9i = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("3610064330140c11074330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("3610064330140c11074330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_XWlnDXNx = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("3610064324160d4330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
__dummy_ops(); -- obf
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("3610064324160d4330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_wAhx6TRe = _V8Gpv6Eg._pgrPHAEY:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a174330080a0f0f", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
__dummy_ops(); -- obf
});
_0fFAEqW0 = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a1743394330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743394330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_Ngh4SrIj = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a17433b4330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a17433b4330080a0f0f", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_iNCcBdpW = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a1743204330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743204330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_LQ7JTYHF = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a1743354330080a0f0f", 99),
	_46yGcjZr = _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743354330080a0f0f", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743354330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_KjR9QTFQ = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2706150a0f432511160a1743254330080a0f0f", 99),
	_46yGcjZr = _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743254330080a0f0f", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743254330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_MJiqe0IT = _V8Gpv6Eg._pgrPHAEY:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e060f06064330080a0f0f", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_XQPF4wnf = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2e060f060643394330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f060643394330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_6QIcLPF2 = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2e060f0606433b4330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f0606433b4330080a0f0f", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_H9iaSXPl = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("2e060f060643204330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f060643204330080a0f0f", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_B8HIrEAi = _V8Gpv6Eg._pgrPHAEY:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2e060f060643354330080a0f0f", 99),
	_46yGcjZr = true,
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f060643354330080a0f0f", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_QlUes9fh = false;
_gjnmj4kN = false;
_EXupot1h = false;
_Qq4JY3aZ = false;
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo() do
		pcall(function()
			if _G._XItMgFUu then
				if _G._yfeCVCNX._wR0pFVCi[__xor_decode("361006432706150a0f432511160a174330080a0f0f", 99)] and _EXupot1h == false then
					for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
						if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
__dummy_ops(); -- obf
							if v._8WgX6ewZ == __xor_decode("210f0c1b432511160a17", 99) then
								game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
							end;
						end;
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743394330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
						_ncNRWHvo();
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
__dummy_ops(); -- obf
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a17433b4330080a0f0f", 99)] then
__dummy_ops(); -- obf
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
						_ncNRWHvo();
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743204330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("20", 99), false, game);
						_ncNRWHvo();
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("20", 99), false, game);
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743354330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("35", 99), false, game);
						_ncNRWHvo();
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("35", 99), false, game);
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2706150a0f432511160a1743254330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("25", 99), false, game);
						_ncNRWHvo();
__dummy_ops(); -- obf
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("25", 99), false, game);
					end;
					_EXupot1h = true;
__dummy_ops(); -- obf
				end;
				if _G._yfeCVCNX._wR0pFVCi[__xor_decode("361006432e060f06064330080a0f0f", 99)] and _Qq4JY3aZ == false then
					for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
						if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
							if v._8WgX6ewZ == __xor_decode("2e060f0606", 99) then
								game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
							end;
						end;
__dummy_ops(); -- obf
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f060643394330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
						_ncNRWHvo(0);
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f0606433b4330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
						_ncNRWHvo(0);
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f060643204330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("20", 99), false, game);
						_ncNRWHvo(0);
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("20", 99), false, game);
					end;
					if _G._yfeCVCNX._wR0pFVCi[__xor_decode("2e060f060643354330080a0f0f", 99)] then
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("35", 99), false, game);
						_ncNRWHvo(0);
						(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("35", 99), false, game);
					end;
					_Qq4JY3aZ = true;
__dummy_ops(); -- obf
				end;
				if _G._yfeCVCNX._wR0pFVCi[__xor_decode("3610064330140c11074330080a0f0f", 99)] and _gjnmj4kN == false then
					for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
						if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
							if v._8WgX6ewZ == __xor_decode("30140c1107", 99) then
								game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
							end;
						end;
__dummy_ops(); -- obf
					end;
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
					_ncNRWHvo(0);
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
__dummy_ops(); -- obf
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
					_ncNRWHvo(0);
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
					_gjnmj4kN = true;
				end;
				if _G._yfeCVCNX._wR0pFVCi[__xor_decode("3610064324160d4330080a0f0f", 99)] and _QlUes9fh == false then
__dummy_ops(); -- obf
					for _, v in pairs(game.Players._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
						if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
							if v._8WgX6ewZ == __xor_decode("24160d", 99) then
								game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(v);
							end;
						end;
					end;
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
					_ncNRWHvo(0.1);
__dummy_ops(); -- obf
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
					_ncNRWHvo(0.1);
__dummy_ops(); -- obf
					(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
					_QlUes9fh = true;
				end;
				_QlUes9fh = false;
				_gjnmj4kN = false;
				_EXupot1h = false;
				_Qq4JY3aZ = false;
			end;
		end);
	end;
end);
function _pmPnaYde()
__dummy_ops(); -- obf
	if (game:_OKOU25H8(__xor_decode("340c11081013020006", 99))):_dX5IzNiJ(__xor_decode("300602210602101710", 99)) then
		for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._n5QqvrIi:_eHS4mqzq()) do
			if v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) or v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) or v._BcGPQM7e._usQ3DGFi < 0 then
				return true;
			end;
		end;
	end;
__dummy_ops(); -- obf
	return false;
end;
local _Js5x6yIB = _1yg2RZnD(game);
local _McScmpuE = _Js5x6yIB.__namecall;
_GwyLDqH5(_Js5x6yIB, false);
__dummy_ops(); -- obf
_Js5x6yIB.__namecall = _YYSiYDcA(function(...)
	local _zUsSXFQ4 = _v67XJ6PI();
	local _hZGQwG7H = {
		...
	};
	if tostring(_zUsSXFQ4) == __xor_decode("250a1106300611150611", 99) then
		if tostring(_hZGQwG7H[(1 + 1)]) == __xor_decode("31060e0c17062615060d17", 99) then
			if tostring(_hZGQwG7H[(1 + 2)]) ~= __xor_decode("17111606", 99) and tostring(_hZGQwG7H[(1 + 2)]) ~= __xor_decode("05020f1006", 99) then
				if _I1CJ5Bpr then
					_hZGQwG7H[(1 + 2)] = _xZMIM607;
					return _McScmpuE(unpack(_hZGQwG7H));
				end;
			end;
		end;
	end;
	return _McScmpuE(...);
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _2FmKC9Rx then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
					if v._xOtG83nV == _DFxiFN8p and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-32 + 100) then
__dummy_ops(); -- obf
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4339", 99)] then
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
						end;
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f433b", 99)] then
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
						end;
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4320", 99)] then
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("20", 99), false, game);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("20", 99), false, game);
						end;
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4335", 99)] then
__dummy_ops(); -- obf
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("35", 99), false, game);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("35", 99), false, game);
						end;
__dummy_ops(); -- obf
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("2511160a17432e02101706111a4330080a0f0f4325", 99)] then
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("25", 99), false, game);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("25", 99), false, game);
__dummy_ops(); -- obf
						end;
					end;
				end;
			end;
		end);
__dummy_ops(); -- obf
	end;
end);
_YwIHUvQP(function()
	while _ncNRWHvo() do
__dummy_ops(); -- obf
		pcall(function()
			if _rfhvhoJ7 then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._5iAO5Uk9:_eHS4mqzq()) do
					if v._xOtG83nV == _DFxiFN8p and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07", 99)) and v:_dX5IzNiJ(__xor_decode("2b160e020d0c0a07310c0c1733021117", 99)) and v._BcGPQM7e._usQ3DGFi <= v._BcGPQM7e._9rlLlE8F * _G._yfeCVCNX._B8nzttPb[__xor_decode("2e02101706111a432b06020f170b", 99)] / (-89 + 100) then
__dummy_ops(); -- obf
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("24160d432e02101706111a4330080a0f0f4339", 99)] then
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("39", 99), false, game);
							_ncNRWHvo(0.5);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("39", 99), false, game);
						end;
						if _G._yfeCVCNX._B8nzttPb[__xor_decode("24160d432e02101706111a4330080a0f0f433b", 99)] then
__dummy_ops(); -- obf
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3b", 99), false, game);
							_ncNRWHvo(0.5);
							(game:_RSSNiHZF(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3b", 99), false, game);
						end;
					end;
				end;
			end;
		end);
__dummy_ops(); -- obf
	end;
end);
_GTH6uzFq = _V8Gpv6Eg._pe6sIagV:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2f0c00020f43330f021a0611", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_Ydih7PD5 = _V8Gpv6Eg._pe6sIagV:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2200170a15064331020006433550", 99),
	_46yGcjZr = _G._yfeCVCNX._5vXmWKtm[__xor_decode("2200170a15064331020006433550", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._5vXmWKtm[__xor_decode("2200170a15064331020006433550", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
__dummy_ops(); -- obf
	end
});
_MQxwzw7R = _V8Gpv6Eg._pe6sIagV:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2200170a15064331020006433557", 99),
	_46yGcjZr = _G._yfeCVCNX._5vXmWKtm[__xor_decode("2200170a15064331020006433557", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._5vXmWKtm[__xor_decode("2200170a15064331020006433557", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._5vXmWKtm[__xor_decode("2200170a15064331020006433557", 99)] then
			if tonumber(((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L:_xXwYaCom(__xor_decode("31020006260d0611041a", 99)))._46yGcjZr) == (1 + 1) then
				if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._6HDGtM8L._N0wlnGoN._46yGcjZr == false then
					(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(true, __xor_decode("3a", 99), false, game);
					_ncNRWHvo(0.1);
					(game:_OKOU25H8(__xor_decode("350a111716020f2a0d1316172e020d02040611", 99))):_plw63xRh(false, __xor_decode("3a", 99), false, game);
				end;
			end;
		end;
	end;
end);
__dummy_ops(); -- obf
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo((1 + 1)) do
			if _G._yfeCVCNX._5vXmWKtm[__xor_decode("2200170a15064331020006433550", 99)] then
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._HAnfi10T:_y31s2mK6(__xor_decode("2200170a1502170622010a0f0a171a", 99));
			end;
		end;
__dummy_ops(); -- obf
	end);
end);
_rGJwoJlc = _V8Gpv6Eg._pe6sIagV:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("34020f08432c0d433402170611", 99),
	_46yGcjZr = _G._yfeCVCNX._5vXmWKtm[__xor_decode("34020f08432c0d433402170611", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._5vXmWKtm[__xor_decode("34020f08432c0d433402170611", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo(0.2) do
		pcall(function()
__dummy_ops(); -- obf
			if _G._yfeCVCNX._5vXmWKtm[__xor_decode("34020f08432c0d433402170611", 99)] then
				(game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83[__xor_decode("3402170611210210064e330f020d06", 99)]._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((-9 + 1000), (-29 + 112), (0 + 1000));
			else
				(game:_OKOU25H8(__xor_decode("340c11081013020006", 99)))._G3ADDX83[__xor_decode("3402170611210210064e330f020d06", 99)]._RnP3PiKD = _UWIiwj4W._ZH3x4hyR((257 + 1000), (46 + 80), (391 + 1000));
			end;
		end);
__dummy_ops(); -- obf
	end;
end);
_3mCusu8d = _V8Gpv6Eg._pe6sIagV:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2d0c43200f0a13", 99),
	_46yGcjZr = _G._yfeCVCNX._5vXmWKtm[__xor_decode("2d0c43200f0a13", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._5vXmWKtm[__xor_decode("2d0c43200f0a13", 99)] = _AFcg1798;
__dummy_ops(); -- obf
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_6uzT0XD2 = _V8Gpv6Eg._cwga6jAb:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2511160a17", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_Pgw1asf6 = _V8Gpv6Eg._cwga6jAb:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4331020d070c0e432511160a17", 99),
	_46yGcjZr = _G._yfeCVCNX._XvIz37Ld[__xor_decode("2216170c4321161a4331020d070c0e432511160a17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XvIz37Ld[__xor_decode("2216170c4321161a4331020d070c0e432511160a17", 99)] = _AFcg1798;
__dummy_ops(); -- obf
	end
});
_YwIHUvQP(function()
	pcall(function()
__dummy_ops(); -- obf
		while _ncNRWHvo(0.2) do
			if _G._yfeCVCNX._XvIz37Ld[__xor_decode("2216170c4321161a4331020d070c0e432511160a17", 99)] then
__dummy_ops(); -- obf
				(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("200c16100a0d", 99), __xor_decode("21161a", 99));
			end;
		end;
	end);
end);
local _CnnPlCIZ = {
	_WvsnnTtR = {
		__xor_decode("310c00080617432511160a17", 99),
__dummy_ops(); -- obf
		__xor_decode("30130a0d432511160a17", 99),
		__xor_decode("210f020706432511160a17", 99),
		__xor_decode("3013110a0d04432511160a17", 99),
		__xor_decode("210c0e01432511160a17", 99),
		__xor_decode("300e0c0806432511160a17", 99),
		__xor_decode("30130a0806432511160a17", 99)
__dummy_ops(); -- obf
	},
	_kriEjU1o = {
		__xor_decode("250f020e06432511160a17", 99),
		__xor_decode("25020f000c0d432511160a17", 99),
		__xor_decode("2a0006432511160a17", 99),
		__xor_decode("30020d07432511160a17", 99),
		__xor_decode("270a020e0c0d07432511160a17", 99),
		__xor_decode("27021108432511160a17", 99)
	},
	_CYXGS4yX = {
		__xor_decode("2f0a040b17432511160a17", 99),
		__xor_decode("311601010611432511160a17", 99),
		__xor_decode("210211110a0611432511160a17", 99),
		__xor_decode("240b0c1017432511160a17", 99),
		__xor_decode("2e02040e02432511160a17", 99)
__dummy_ops(); -- obf
	},
	_IhnhgvB3 = {
		__xor_decode("3216020806432511160a17", 99),
		__xor_decode("211607070b02432511160a17", 99),
		__xor_decode("2f0c1506432511160a17", 99),
		__xor_decode("30130a070611432511160a17", 99),
		__xor_decode("300c160d07432511160a17", 99),
		__xor_decode("330b0c060d0a1b432511160a17", 99),
		__xor_decode("330c1117020f432511160a17", 99),
		__xor_decode("31160e010f06432511160a17", 99),
		__xor_decode("33020a0d432511160a17", 99),
		__xor_decode("210f0a1919021107432511160a17", 99)
	},
	_1gj3DYrO = {
		__xor_decode("241102150a171a432511160a17", 99),
		__xor_decode("2e020e0e0c170b432511160a17", 99),
		__xor_decode("374e31061b432511160a17", 99),
		__xor_decode("270c16040b432511160a17", 99),
		__xor_decode("300b02070c14432511160a17", 99),
		__xor_decode("35060d0c0e432511160a17", 99),
		__xor_decode("200c0d17110c0f432511160a17", 99),
		__xor_decode("240210432511160a17", 99),
		__xor_decode("30130a110a17432511160a17", 99),
		__xor_decode("2f060c13021107432511160a17", 99),
		__xor_decode("3a06170a432511160a17", 99),
		__xor_decode("280a1710160d06432511160a17", 99),
		__xor_decode("271102040c0d432511160a17", 99)
	}
};
local _XBaGeQuW = {
	__xor_decode("200c0e0e0c0d434e432e1a170b0a00020f", 99),
	__xor_decode("360d000c0e0e0c0d434e432e1a170b0a00020f", 99),
	__xor_decode("31021106434e432e1a170b0a00020f", 99),
	__xor_decode("2f0604060d0702111a434e432e1a170b0a00020f", 99),
	__xor_decode("2e1a170b0a00020f", 99)
__dummy_ops(); -- obf
};
_ArwWxijZ = _V8Gpv6Eg._cwga6jAb:_cbrYLxZn({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("30170c1106433102110a171a432511160a17", 99),
__dummy_ops(); -- obf
	_lBKinVRV = _XBaGeQuW,
	_46yGcjZr = _G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)],
	_ndWmPjxy = function(_EqP6BkYD)
		_G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)] = _EqP6BkYD;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
function _wVIFOKiv()
	for i, v in pairs(_CnnPlCIZ) do
__dummy_ops(); -- obf
		if _G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)] == __xor_decode("200c0e0e0c0d434e432e1a170b0a00020f", 99) then
			if i == __xor_decode("200c0e0e0c0d", 99) or i == __xor_decode("360d000c0e0e0c0d", 99) or i == __xor_decode("31021106", 99) or i == __xor_decode("2f0604060d0702111a", 99) or i == __xor_decode("2e1a170b0a00020f", 99) then
				for _, _K2XWR6vn in ipairs(v) do
					table._xke4TdBn(_lIMN4Fuk, _K2XWR6vn);
				end;
			end;
__dummy_ops(); -- obf
		elseif _G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)] == __xor_decode("360d000c0e0e0c0d434e432e1a170b0a00020f", 99) then
			if i == __xor_decode("360d000c0e0e0c0d", 99) or i == __xor_decode("31021106", 99) or i == __xor_decode("2f0604060d0702111a", 99) or i == __xor_decode("2e1a170b0a00020f", 99) then
				for _, _K2XWR6vn in ipairs(v) do
					table._xke4TdBn(_lIMN4Fuk, _K2XWR6vn);
__dummy_ops(); -- obf
				end;
			end;
		elseif _G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)] == __xor_decode("31021106434e432e1a170b0a00020f", 99) then
__dummy_ops(); -- obf
			if i == __xor_decode("31021106", 99) or i == __xor_decode("2f0604060d0702111a", 99) or i == __xor_decode("2e1a170b0a00020f", 99) then
				for _, _K2XWR6vn in ipairs(v) do
					table._xke4TdBn(_lIMN4Fuk, _K2XWR6vn);
				end;
			end;
		elseif _G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)] == __xor_decode("2f0604060d0702111a434e432e1a170b0a00020f", 99) then
			if i == __xor_decode("2f0604060d0702111a", 99) or i == __xor_decode("2e1a170b0a00020f", 99) then
				for _, _K2XWR6vn in ipairs(v) do
					table._xke4TdBn(_lIMN4Fuk, _K2XWR6vn);
				end;
			end;
		elseif _G._yfeCVCNX._XvIz37Ld[__xor_decode("30170c1106433102110a171a432511160a17", 99)] == __xor_decode("2e1a170b0a00020f", 99) then
			if i == __xor_decode("2e1a170b0a00020f", 99) then
				for _, _K2XWR6vn in ipairs(v) do
					table._xke4TdBn(_lIMN4Fuk, _K2XWR6vn);
				end;
			end;
__dummy_ops(); -- obf
		end;
	end;
end;
_wo5dOt6E = _V8Gpv6Eg._cwga6jAb:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2216170c4330170c1106432511160a17", 99),
__dummy_ops(); -- obf
	_46yGcjZr = _G._yfeCVCNX._XvIz37Ld[__xor_decode("2216170c4330170c1106432511160a17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XvIz37Ld[__xor_decode("2216170c4330170c1106432511160a17", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			if _G._yfeCVCNX._XvIz37Ld[__xor_decode("2216170c4330170c1106432511160a17", 99)] then
				for i, v in pairs((game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_eHS4mqzq()) do
					if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
						_lIMN4Fuk = {};
						_wVIFOKiv();
						for z, _1l24hAyy in pairs(_lIMN4Fuk) do
							if v._xOtG83nV == _1l24hAyy then
__dummy_ops(); -- obf
								local _k4GeclpN = v._xOtG83nV;
__dummy_ops(); -- obf
								local _waG9tCgP = string._JTzTYFVq(v._xOtG83nV, __xor_decode("432511160a17", 99), __xor_decode("", 99));
								if (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(_k4GeclpN) then
									(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("30170c11062511160a17", 99), _waG9tCgP .. __xor_decode("4e", 99) .. _waG9tCgP, (game:_OKOU25H8(__xor_decode("330f021a061110", 99)))._5vXmWKtm._A84mhyus:_dX5IzNiJ(_k4GeclpN));
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
_x7avHYuh = _V8Gpv6Eg._cwga6jAb:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("2511160a17432d0c170a050a0002170a0c0d", 99),
	_46yGcjZr = _G._yfeCVCNX._XvIz37Ld[__xor_decode("2511160a17432d0c170a050a0002170a0c0d", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XvIz37Ld[__xor_decode("2511160a17432d0c170a050a0002170a0c0d", 99)] = _1CCRvVck;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
	while _ncNRWHvo((0 + 2)) do
		if _G._yfeCVCNX._XvIz37Ld[__xor_decode("2511160a17432d0c170a050a0002170a0c0d", 99)] then
			for i, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
				if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
					_DiNv9puX:_pnTE9h9b({
						_ZoEpv6x5 = __xor_decode("2511160a1743050c160d07", 99),
						_d1yjc5ku = v._xOtG83nV,
						_OZcGvsBJ = __xor_decode("01060f0f", 99),
						_amZzyzrx = (3 + 3)
					});
				end;
			end;
		end;
__dummy_ops(); -- obf
	end;
end);
_5J33DOqD = _V8Gpv6Eg._cwga6jAb:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("37060f06130c111743370c432511160a17", 99),
	_46yGcjZr = _G._yfeCVCNX._XvIz37Ld[__xor_decode("37060f06130c111743370c432511160a17", 99)],
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XvIz37Ld[__xor_decode("37060f06130c111743370c432511160a17", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
_YwIHUvQP(function()
__dummy_ops(); -- obf
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._XvIz37Ld[__xor_decode("37060f06130c111743370c432511160a17", 99)] then
			for i, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
				if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
__dummy_ops(); -- obf
					game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P = v._rarWBxwH._TV4Txa4P;
				end;
__dummy_ops(); -- obf
			end;
		end;
	end;
end);
_wMLZwYre = _V8Gpv6Eg._cwga6jAb:_eGVKodMt({
	_ZoEpv6x5 = __xor_decode("371406060d43370c432511160a17", 99),
	_46yGcjZr = _G._yfeCVCNX._XvIz37Ld[__xor_decode("371406060d43370c432511160a17", 99)],
__dummy_ops(); -- obf
	_ndWmPjxy = function(_AFcg1798)
		_G._yfeCVCNX._XvIz37Ld[__xor_decode("371406060d43370c432511160a17", 99)] = _AFcg1798;
		(_DZSJtHyz())._pmjmg7kP();
	end
});
__dummy_ops(); -- obf
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		if _G._yfeCVCNX._XvIz37Ld[__xor_decode("371406060d43370c432511160a17", 99)] then
__dummy_ops(); -- obf
			for i, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
				if string._Uw9siMFG(v._xOtG83nV, __xor_decode("2511160a17", 99)) then
					_NwLutZRn(v._rarWBxwH._TV4Txa4P);
				end;
			end;
		end;
	end;
end);
_JUoFygqN = _V8Gpv6Eg._cwga6jAb:_BtunICum({
	_ZoEpv6x5 = __xor_decode("24110201432511160a17", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
__dummy_ops(); -- obf
		for i, v in pairs(game._yM6SEcBN:_eHS4mqzq()) do
			if v:_jeeCVvJF(__xor_decode("370c0c0f", 99)) then
				v._rarWBxwH._TV4Txa4P = game.Players._5vXmWKtm._6HDGtM8L._yMRN0wrA._TV4Txa4P;
			end;
		end;
	end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_ljVd9DXL = _V8Gpv6Eg._cwga6jAb:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("350a1016020f", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
function _PNMrpDbD()
	for h, i in pairs((game:_ZLs23XFK(__xor_decode("11011b02101006170a07594c4c525754565a50555b515352", 99)))[(1 + 1)]:_eHS4mqzq()) do
		i._zL81RjqU = game._yM6SEcBN._G3ADDX83;
		i:_KFcoKuMb(game.Players._5vXmWKtm._6HDGtM8L._VtWbTZpS._EWiDuNSW + _UWIiwj4W._ZH3x4hyR(math._CibCVwVN((-(-10 + 50)), (4 + 50)), (-55 + 100), math._CibCVwVN((-(34 + 50)), (8 + 50))));
		if i._XvIz37Ld:_dX5IzNiJ(__xor_decode("220d0a0e02170a0c0d200c0d17110c0f0f0611", 99)) then
__dummy_ops(); -- obf
			((i._XvIz37Ld:_dX5IzNiJ(__xor_decode("220d0a0e02170a0c0d200c0d17110c0f0f0611", 99))):_kfpHCqdU(i._XvIz37Ld:_dX5IzNiJ(__xor_decode("2a070f06", 99)))):_IHBnE10S();
		end;
__dummy_ops(); -- obf
		i._rarWBxwH._AXfFsZ0Q:_CAh5wGBm(function(_DR9sgrcr)
			if _DR9sgrcr._zL81RjqU == game.Players._5vXmWKtm._6HDGtM8L then
				i._zL81RjqU = game.Players._5vXmWKtm._A84mhyus;
				game.Players._5vXmWKtm._6HDGtM8L._BcGPQM7e:_sts5rtig(i);
			end;
		end);
__dummy_ops(); -- obf
	end;
end;
__dummy_ops(); -- obf
_KsahWDZs = _V8Gpv6Eg._cwga6jAb:_BtunICum({
	_ZoEpv6x5 = __xor_decode("31020a0d432511160a17", 99),
__dummy_ops(); -- obf
	_ndWmPjxy = function()
		_PNMrpDbD();
	end
});
__dummy_ops(); -- obf
_G13AmdLY = _V8Gpv6Eg._86XpJXZ0:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("2e0a1000", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_rKSJAtYO = _V8Gpv6Eg._86XpJXZ0:_BtunICum({
	_ZoEpv6x5 = __xor_decode("290c0a0d43330a1102170610433706020e", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("3006173706020e", 99), __xor_decode("330a1102170610", 99));
	end
});
__dummy_ops(); -- obf
_C3W8goJS = _V8Gpv6Eg._86XpJXZ0:_BtunICum({
	_ZoEpv6x5 = __xor_decode("290c0a0d432e02110a0d0610433706020e", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._cgeNn54e:_hOfJD1fe(__xor_decode("3006173706020e", 99), __xor_decode("2e02110a0d0610", 99));
	end
});
_1JTF1fe4 = _V8Gpv6Eg._86XpJXZ0:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("200c070610", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
local _mJy31l6K = {
	__xor_decode("282a373724222e2a2d24", 99),
	__xor_decode("262d3a363c2a303c33312c", 99),
__dummy_ops(); -- obf
	__xor_decode("253627275253", 99),
	__xor_decode("212a242d263430", 99),
	__xor_decode("372b262431262237222026", 99),
	__xor_decode("3036215124222e2631312c212c373c263b3352", 99),
	__xor_decode("30373122342b22372e222a2e26", 99),
__dummy_ops(); -- obf
	__xor_decode("303621512c25252a202a222f2d2c2c212a26", 99),
__dummy_ops(); -- obf
	__xor_decode("303621512d2c2c212e2230372631525150", 99),
	__xor_decode("3036215127222a24312c2028", 99),
__dummy_ops(); -- obf
	__xor_decode("223b2a2c3126", 99),
__dummy_ops(); -- obf
	__xor_decode("37222d37222a24222e2a2e24", 99),
	__xor_decode("30373122342b22372e222a2d26", 99),
	__xor_decode("29203428", 99),
	__xor_decode("2536272752533c3551", 99),
__dummy_ops(); -- obf
	__xor_decode("303621512526315a5a5a", 99),
	__xor_decode("2e22242a20212a30", 99),
	__xor_decode("373a3c252c313c342237202b2a2d24", 99),
	__xor_decode("30372231202c27262b262c", 99)
};
function _yJmguRCy(_MjzvjNnN)
	(game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99)))._fQdPK4TW._zTfdtaGd:_hOfJD1fe(_MjzvjNnN);
end;
local _PpzNMJfg = _V8Gpv6Eg._86XpJXZ0:_BtunICum({
	_ZoEpv6x5 = __xor_decode("31060706060e43220f0f43200c070610", 99),
	_ndWmPjxy = function()
		for i, v in pairs(_mJy31l6K) do
			_yJmguRCy(v);
		end;
	end
});
_wy2zkxbh = _V8Gpv6Eg._86XpJXZ0:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("241102130b0a00", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
function _sSDUmliw()
	local _YhkmZMbK = true;
	local g = game;
	local w = g._yM6SEcBN;
	local l = g._tnHiI7tl;
	local t = w._eo4vgYHy;
	(_RB3FlcVZ())._3nA1ZW5S._DY6V8ErQ = __xor_decode("2f0615060f5352", 99);
__dummy_ops(); -- obf
	for i, v in pairs(g:_sFYPxrUf()) do
		if v:_jeeCVvJF(__xor_decode("33021117", 99)) or v:_jeeCVvJF(__xor_decode("360d0a0c0d", 99)) or v:_jeeCVvJF(__xor_decode("200c110d0611340607040633021117", 99)) or v:_jeeCVvJF(__xor_decode("371116101033021117", 99)) then
			v._SIZGgot0 = __xor_decode("330f0210170a00", 99);
			v._9lL692Kv = 0;
		elseif v:_jeeCVvJF(__xor_decode("270600020f", 99)) or v:_jeeCVvJF(__xor_decode("37061b17161106", 99)) and _YhkmZMbK then
			v._zfGLVJb0 = (1 + 1);
		elseif v:_jeeCVvJF(__xor_decode("330211170a000f06260e0a17170611", 99)) or v:_jeeCVvJF(__xor_decode("3711020a0f", 99)) then
			v._HyvidGci = _0R5xuWFi._ZH3x4hyR(0);
		elseif v:_jeeCVvJF(__xor_decode("261b130f0c100a0c0d", 99)) then
__dummy_ops(); -- obf
			v._xvjfJ4bZ = (1 + 1);
			v._8ZDQDjNL = (1 + 1);
		elseif v:_jeeCVvJF(__xor_decode("250a1106", 99)) or v:_jeeCVvJF(__xor_decode("30130c172f0a040b17", 99)) or v:_jeeCVvJF(__xor_decode("300e0c0806", 99)) then
__dummy_ops(); -- obf
			v._UgAIr8uU = false;
		end;
	end;
end;
_AE0e0npS = _V8Gpv6Eg._86XpJXZ0:_BtunICum({
	_ZoEpv6x5 = __xor_decode("25131043210c0c1017", 99),
	_ndWmPjxy = function()
		_sSDUmliw();
	end
});
_oVQ2aYi0 = _V8Gpv6Eg._86XpJXZ0:_BtunICum({
	_ZoEpv6x5 = __xor_decode("31060e0c150643250c04", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._MQPIN7v8:_ROayZZfU();
		(game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._jis4SXVG:_ROayZZfU();
		game._tnHiI7tl._6n19rXQx = (3883807090 + 9000000000);
	end
});
_7D86iiiV = _V8Gpv6Eg._86XpJXZ0:_BtunICum({
	_ZoEpv6x5 = __xor_decode("31060e0c1506432f021502", 99),
	_ndWmPjxy = function()
		for i, v in pairs(game._yM6SEcBN:_sFYPxrUf()) do
			if v._xOtG83nV == __xor_decode("2f021502", 99) then
__dummy_ops(); -- obf
				v:_ROayZZfU();
			end;
		end;
		for i, v in pairs(game.ReplicatedStorage:_sFYPxrUf()) do
			if v._xOtG83nV == __xor_decode("2f021502", 99) then
__dummy_ops(); -- obf
				v:_ROayZZfU();
			end;
		end;
	end
});
_2asDDSUG = _V8Gpv6Eg._sOj0kwcc:_NTVgcORE({
	_ZoEpv6x5 = __xor_decode("300611150611", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_dcdUbGB4 = _V8Gpv6Eg._sOj0kwcc:_BtunICum({
	_ZoEpv6x5 = __xor_decode("3106090c0a0d43300611150611", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("37060f06130c1117300611150a0006", 99))):_WvvW9tcP(game._H6UqMXLN);
	end
});
_oceSNRWr = _V8Gpv6Eg._sOj0kwcc:_BtunICum({
	_ZoEpv6x5 = __xor_decode("300611150611432b0c13", 99),
	_ndWmPjxy = function()
		local _9WueD4Ib = (loadstring(game:_QhDSo8Ri(__xor_decode("0b17171310594c4c1102144d040a170b160116100611000c0d17060d174d000c0e4c1102144e1000110a13171302101706010a0d4c25264c0e020a0d4c3006111506113c2b0c133c300617170a0d0410", 99))))();
		_9WueD4Ib:_WvvW9tcP(game._H6UqMXLN);
__dummy_ops(); -- obf
	end
});
_kCJYiFKq = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("290c01432a27", 99),
	_cYZMpA94 = game._YkJRZMsS,
	_930Ovcr1 = {
		{
			_ZoEpv6x5 = __xor_decode("200c131a", 99),
__dummy_ops(); -- obf
			_ndWmPjxy = function()
				_MWxhJdxQ(game._YkJRZMsS);
			end
		}
	}
});
_ns2ME587 = _V8Gpv6Eg._sOj0kwcc:_EcxdEEHU({
	_ZoEpv6x5 = __xor_decode("260d17061143290c01432a27", 99),
	_ndWmPjxy = function(_1CCRvVck)
		_G._YkJRZMsS = _1CCRvVck;
	end
});
_Cog2Hug0 = _V8Gpv6Eg._sOj0kwcc:_BtunICum({
	_ZoEpv6x5 = __xor_decode("290c0a0d43290c01432a27", 99),
	_ndWmPjxy = function()
		(game:_OKOU25H8(__xor_decode("37060f06130c1117300611150a0006", 99))):_2n7Wheeu(game._H6UqMXLN, _G._YkJRZMsS);
	end
});
_KeU80lA9 = _V8Gpv6Eg._sOj0kwcc:_NTVgcORE({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("301702171610", 99),
	_AcYZ9p9B = __xor_decode("2f060517", 99)
});
_XfmzFvhn = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2e0c0c0d43300611150611", 99),
__dummy_ops(); -- obf
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_n9P24FoJ = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("280a1710160d0643301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_ay7P19wC = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("25110c19060d43301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_9QrANvf6 = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2e0a1102040643301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_Vhby5VsW = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
	_ZoEpv6x5 = __xor_decode("2b02080a432706020f061143301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
});
_ekTpnnbN = _V8Gpv6Eg._sOj0kwcc:_8docWN1o({
__dummy_ops(); -- obf
	_ZoEpv6x5 = __xor_decode("3311060b0a10170c110a0043301702171610", 99),
	_cYZMpA94 = __xor_decode("2d4c22", 99)
__dummy_ops(); -- obf
});
_YwIHUvQP(function()
	while _TyPAa8BS._ncNRWHvo() do
		pcall(function()
			if (game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._jis4SXVG._HcDLViST == __xor_decode("0b171713594c4c1414144d110c010f0c1b4d000c0e4c02101006174c5c0a075e5a54535a52575a575052", 99) then
				_XfmzFvhn:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec4325160f0f432e0c0c0d4352535346", 99));
__dummy_ops(); -- obf
			elseif (game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._jis4SXVG._HcDLViST == __xor_decode("0b171713594c4c1414144d110c010f0c1b4d000c0e4c02101006174c5c0a075e5a54535a52575a535651", 99) then
				_XfmzFvhn:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec4325160f0f432e0c0c0d43545646", 99));
			elseif (game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._jis4SXVG._HcDLViST == __xor_decode("0b171713594c4c1414144d110c010f0c1b4d000c0e4c02101006174c5c0a075e5a54535a525750545050", 99) then
				_XfmzFvhn:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec4325160f0f432e0c0c0d43565346", 99));
__dummy_ops(); -- obf
			elseif (game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._jis4SXVG._HcDLViST == __xor_decode("0b171713594c4c1414144d110c010f0c1b4d000c0e4c02101006174c5c0a075e5a54535a525653575352", 99) then
				_XfmzFvhn:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec4325160f0f432e0c0c0d43515646", 99));
			elseif (game:_OKOU25H8(__xor_decode("2f0a040b170a0d04", 99)))._jis4SXVG._HcDLViST == __xor_decode("0b171713594c4c1414144d110c010f0c1b4d000c0e4c02101006174c5c0a075e5a54535a52575a555b53", 99) then
				_XfmzFvhn:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec4325160f0f432e0c0c0d43525646", 99));
			else
				_XfmzFvhn:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec4325160f0f432e0c0c0d435346", 99));
			end;
		end);
	end;
end);
_YwIHUvQP(function()
	pcall(function()
__dummy_ops(); -- obf
		while _ncNRWHvo(0.2) do
			if _7Y9SwizB then
__dummy_ops(); -- obf
				if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("280a1710160d06432a100f020d07", 99)) then
					_n9P24FoJ:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec43280a1710160d06432a100f020d07430a1043301302140d0a0d04", 99));
				else
					_n9P24FoJ:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec43280a1710160d06432a100f020d07432d0c1743301302140d", 99));
				end;
			else
				_n9P24FoJ:_zhx0DbgD(__xor_decode("340c110f074350432c0d0f1a", 99));
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
			if _7Y9SwizB then
				if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("3311060b0a10170c110a00432a100f020d07", 99)) then
					_ekTpnnbN:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec433311060b0a10170c110a00432a100f020d07430a1043301302140d0a0d04", 99));
				else
					_ekTpnnbN:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec433311060b0a10170c110a00432a100f020d07432d0c1743301302140d", 99));
				end;
			else
				_ekTpnnbN:_zhx0DbgD(__xor_decode("340c110f074350432c0d0f1a", 99));
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	pcall(function()
		while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
			if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("25110c19060d43270a0e060d100a0c0d", 99)) then
				_ay7P19wC:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec4325110c19060d43270a0e060d100a0c0d43301302140d0a0d04", 99));
			else
				_ay7P19wC:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec4325110c19060d43270a0e060d100a0c0d432d0c1743301302140d", 99));
			end;
		end;
	end);
end);
_YwIHUvQP(function()
__dummy_ops(); -- obf
	pcall(function()
		while _ncNRWHvo(0.2) do
__dummy_ops(); -- obf
			if _tRfh7Inj or _7Y9SwizB then
				if game._yM6SEcBN._jt0YwSI2._sKCvGYpp:_dX5IzNiJ(__xor_decode("2e0a11020406432a100f020d07", 99)) then
					_9QrANvf6:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec432e0a11020406432a100f020d07430a1043301302140d0a0d04", 99));
				else
					_9QrANvf6:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec432e0a11020406432a100f020d07432d0c1743301302140d", 99));
				end;
			else
				_9QrANvf6:_zhx0DbgD(__xor_decode("340c110f074350432c0d0f1a", 99));
			end;
		end;
	end);
end);
_YwIHUvQP(function()
	while _ncNRWHvo(0.2) do
		pcall(function()
			local _sIWtDil7 = (((game:_OKOU25H8(__xor_decode("3106130f0a000217060730170c11020406", 99))):_xXwYaCom(__xor_decode("31060e0c170610", 99))):_xXwYaCom(__xor_decode("200c0e0e253c", 99))):_hOfJD1fe(__xor_decode("200c0f0c11102706020f0611", 99), __xor_decode("52", 99));
			if _sIWtDil7 then
				_Vhby5VsW:_zhx0DbgD(__xor_decode("a0c1a1ffa1f7a0cca1dba1ec432e0210170611432c0543221611021043301302140d0a0d04", 99));
			else
				_Vhby5VsW:_zhx0DbgD(__xor_decode("a0c1a1ffa1f5a0cca1dba1ec432e0210170611432c05432216110210432d0c1743301302140d", 99));
			end;
		end);
	end;
end);
__dummy_ops(); -- obf
local _HRceW4HB = __xor_decode("12220e14280e06292525", 99) -- _k6mr3q72 _0L9jNXYu _MjzvjNnN
local _x2BTSA1u = __xor_decode("0b17171310594c4c070a10000c11074d000c0e4c02130a4c1552534c0a0d150a1706104c", 99) .. _HRceW4HB .. __xor_decode("5c140a170b3c000c160d17105e1711160645140a170b3c061b130a1102170a0c0d5e17111606", 99)

-- _1xmuOb6K _vCyjPFXj if _eYKBPDF0 _DiiyV0Xk _hb3DEFNx and _HmDQGu1N _o9fXL97L
__dummy_ops(); -- obf
if not _V8Gpv6Eg or not _V8Gpv6Eg._Q18SKVJq then
    _4tQ00zrD(__xor_decode("270a10000c110743370201432611110c11594337020110430c1143270a10000c1107370201430d0c1743050c160d07", 99))
    return
end

-- _TLu2m4cx error _bwi6lS6L for _eYKBPDF0 _BNVhV0aq _7WkJssz8
local _2YDrckyq, _tdQBuFYY = pcall(function()
    return game:_OKOU25H8(__xor_decode("2b171713300611150a0006", 99)):_h6wgFOTi(_DiNv9puX._uMIrj8F8._YTT7w1gs({
        _Qks598FC = _x2BTSA1u,
        _YS0W1CtN = __xor_decode("242637", 99),
        _7fkSvNvF = {
            [__xor_decode("361006114e2204060d17", 99)] = __xor_decode("310c010f0c1b210c174c524d53", 99),
            [__xor_decode("220000061317", 99)] = __xor_decode("0213130f0a0002170a0c0d4c09100c0d", 99)
        }
    })._AtB2FWvE)
__dummy_ops(); -- obf
end)

-- _HGKERU8e if _eYKBPDF0 _7WkJssz8 _vvP2TwvN _VMI3whzy and if _eYKBPDF0 _8VNN37DJ _Eb8b8Djh _Fk7AgaaH
if _2YDrckyq and _tdQBuFYY and _tdQBuFYY._8VNN37DJ then
    -- _VKmdwG8B _eYKBPDF0 _qBKOsWwi for _eYKBPDF0 _ZH3x4hyR _x0S2Nu6q _Ej5Y4Jbx - _GLaSSOhk and _KEsPKQf3
    local _qBKOsWwi = __xor_decode("3006111506115943", 99) .. _tdQBuFYY._8VNN37DJ._s3gyZqcO .. 
        __xor_decode("692e060e010611105943", 99) .. tostring(_tdQBuFYY._5LsZ11yW) .. 
        __xor_decode("431f432c0d0f0a0d065943", 99) .. tostring(_tdQBuFYY._HCmcMdEw)
    
    -- _6gbGFi29 _eYKBPDF0 _yCcDeT7x _9WZGwOAb _l5GPuzAm _z3gOPnFa _MUwJk5ji for _eYKBPDF0 _ZH3x4hyR _x0S2Nu6q _Ej5Y4Jbx
    _V8Gpv6Eg._Q18SKVJq:_8docWN1o({
        _ZoEpv6x5 = __xor_decode("270a10000c110743300611150611432a0d050c", 99),
        _cYZMpA94 = _qBKOsWwi,
        _WgXU3n6Y = __xor_decode("11011b02101006170a07594c4c52505b5b515751505a545154515a5b", 99), -- _yCcDeT7x _Po2BEXT2 _meT0IJRM - _YKPAyn5D _z3gOPnFa _tBEUNBDl _M3m3NLc9 _fnrrIWtA
        _2jZQXuDM = (-10 + 36) -- _TxtoVc0e _JBENvOGg _Wg1e9raf _aaQgLQ6I _tBEUNBDl _x0S2Nu6q
    })
    
    -- _TLu2m4cx _shmH7MJY _yCcDeT7x _BtunICum _z3gOPnFa _eYKBPDF0 _ZH3x4hyR _x0S2Nu6q _Ej5Y4Jbx
    _V8Gpv6Eg._Q18SKVJq:_BtunICum({
        _ZoEpv6x5 = __xor_decode("290c0a0d43270a10000c110743300611150611", 99),
        _OZcGvsBJ = __xor_decode("11011b02101006170a07594c4c5252535a52555253505b53555252505a", 99), -- _OZcGvsBJ for _kEmQN0iD - _YKPAyn5D _z3gOPnFa _tBEUNBDl _M3m3NLc9 _fnrrIWtA
        _ndWmPjxy = function()
            -- _Adx8Nrxd _BDl96MGJ _mzM5MP2B (_5tPsqooJ _tBEUNBDl _oukVI6iL _mzM5MP2B _MjzvjNnN)
            _DiNv9puX:_pnTE9h9b({
                _ZoEpv6x5 = __xor_decode("270a10000c1107432a0d150a1706", 99),
                _d1yjc5ku = __xor_decode("2c13060d0a0d0443270a10000c1107430a0d150a17065943", 99) .. _tdQBuFYY._8VNN37DJ._s3gyZqcO,
__dummy_ops(); -- obf
                _OZcGvsBJ = __xor_decode("0a0e020406", 99),
                _amZzyzrx = (3 + 5),
                _wxc4zRGS = __xor_decode("11011b02101006170a07594c4c52535a52555253505b53555252505a", 99)
            })
            
            -- _h0V5ro6e _eYKBPDF0 _yCcDeT7x _0L9jNXYu _bUDvA16N in _EB6ty00y (_5tPsqooJ _tBEUNBDl _oukVI6iL _hL9eOIVD)
            local _PrDMsDXX = __xor_decode("0b17171310594c4c070a10000c11074d04044c", 99) .. _HRceW4HB
            
            -- _6HAuuJMp _ZW9ZU8So _21MHIai0 _5Gmg4EBz (_5tPsqooJ _tBEUNBDl _oukVI6iL _ZQAkjbn5)
            pcall(function()
                -- _w2iMpVr3 _ZQAkjbn5 _ZW9ZU8So _UdbIhdcr _47YXG6US _5Gmg4EBz
__dummy_ops(); -- obf
                if _pSQD7OXp and _pSQD7OXp._7WkJssz8 then
                    _pSQD7OXp._7WkJssz8({
                        _Qks598FC = _PrDMsDXX,
                        _YS0W1CtN = __xor_decode("242637", 99)
                    })
                elseif _ciAJQO5z and _ciAJQO5z._7WkJssz8 then
                    _ciAJQO5z._7WkJssz8({
                        _Qks598FC = _PrDMsDXX,
                        _YS0W1CtN = __xor_decode("242637", 99)
                    })
                elseif _7WkJssz8 then
                    _7WkJssz8({
                        _Qks598FC = _PrDMsDXX,
                        _YS0W1CtN = __xor_decode("242637", 99)
                    })
                elseif _MWxhJdxQ then
                    _MWxhJdxQ(_PrDMsDXX)
                end
            end)
        end
    })
    
    -- _TLu2m4cx _MhMDPm2E _S23EJWXg _BtunICum _z3gOPnFa _eYKBPDF0 _ZH3x4hyR _x0S2Nu6q _Ej5Y4Jbx
    _V8Gpv6Eg._Q18SKVJq:_BtunICum({
        _ZoEpv6x5 = __xor_decode("200c131a432a0d150a1706432f0a0d08", 99),
        _OZcGvsBJ = __xor_decode("11011b02101006170a07594c4c525050555b53525552545750555b5b", 99), -- _OZcGvsBJ for _kEmQN0iD - _YKPAyn5D _z3gOPnFa _tBEUNBDl _M3m3NLc9 _fnrrIWtA
        _ndWmPjxy = function()
            local _PrDMsDXX = __xor_decode("0b17171310594c4c070a10000c11074d04044c", 99) .. _HRceW4HB
            
            -- _Adx8Nrxd _BDl96MGJ _mzM5MP2B (_5tPsqooJ _tBEUNBDl _oukVI6iL _mzM5MP2B _MjzvjNnN)
            _DiNv9puX:_pnTE9h9b({
                _ZoEpv6x5 = __xor_decode("270a10000c1107432f0a0d0843200c130a0607", 99),
                _d1yjc5ku = __xor_decode("2a0d150a1706430f0a0d0843000c130a060743170c43000f0a13010c021107", 99),
                _OZcGvsBJ = __xor_decode("0a0e020406", 99),
                _amZzyzrx = (1 + 5),
                _wxc4zRGS = __xor_decode("11011b02101006170a07594c4c525050555b53525552545750555b5b", 99)
            })
            
            -- _5E8Clcpd _ZW9ZU8So _ROeYQbJg _ZW9ZU8So _ZnMuxUw4 (_5tPsqooJ _tBEUNBDl _oukVI6iL _hL9eOIVD)
            pcall(function()
                if _MWxhJdxQ then
                    _MWxhJdxQ(_PrDMsDXX)
                else
                    -- _eDmdCkTs _mzM5MP2B if _ZnMuxUw4 function not _0mYWhT1B
                    _DiNv9puX:_pnTE9h9b({
                        _ZoEpv6x5 = __xor_decode("2611110c11", 99),
                        _d1yjc5ku = __xor_decode("200f0a13010c0211074305160d00170a0c0d430d0c17430215020a0f02010f06", 99),
                        _OZcGvsBJ = __xor_decode("1402110d0a0d04", 99),
                        _amZzyzrx = (2 + 5),
                        _wxc4zRGS = __xor_decode("11011b02101006170a07594c4c525050555b53525552545750555b5b", 99)
                    })
                end
            end)
__dummy_ops(); -- obf
        end
    })
    
else
    -- _rarWBxwH _eYKBPDF0 error _iXUVfZqE _z3gOPnFa a _pdTOPWDY
    local _ttOtJX7d = __xor_decode("25020a0f060743170c43050617000b43270a10000c110743100611150611430a0d050c110e02170a0c0d", 99)
    if not _2YDrckyq then
        _ttOtJX7d = _ttOtJX7d .. __xor_decode("5943", 99) .. tostring(_tdQBuFYY)
    elseif not _tdQBuFYY then
        _ttOtJX7d = _ttOtJX7d .. __xor_decode("5943260e13171a43110610130c0d1006", 99)
    elseif not _tdQBuFYY._8VNN37DJ then
        _ttOtJX7d = _ttOtJX7d .. __xor_decode("59432a0d15020f0a07430a0d150a170643000c0706430c11430e0a10100a0d044304160a0f074307021702", 99)
    end
    
    -- _6gbGFi29 error _pdTOPWDY _z3gOPnFa _eYKBPDF0 _ZH3x4hyR _x0S2Nu6q _Ej5Y4Jbx
    _V8Gpv6Eg._Q18SKVJq:_8docWN1o({
        _ZoEpv6x5 = __xor_decode("270a10000c1107432611110c11", 99),
        _cYZMpA94 = _ttOtJX7d,
        _WgXU3n6Y = __xor_decode("11011b02101006170a07594c4c525050555b53525552545750555b5b", 99), -- _CjFxPDt5 _fnrrIWtA - _YKPAyn5D _z3gOPnFa _tBEUNBDl _M3m3NLc9 _fnrrIWtA
        _2jZQXuDM = (-15 + 36) -- _TxtoVc0e _JBENvOGg _Wg1e9raf _aaQgLQ6I _tBEUNBDl _x0S2Nu6q
    })
    
    -- _TLu2m4cx a _WPOwWZKP _kEmQN0iD _z3gOPnFa _eYKBPDF0 _ZH3x4hyR _x0S2Nu6q _Ej5Y4Jbx
__dummy_ops(); -- obf
    _V8Gpv6Eg._Q18SKVJq:_BtunICum({
        _ZoEpv6x5 = __xor_decode("310617111a43200c0d0d0600170a0c0d", 99),
        _OZcGvsBJ = __xor_decode("11011b02101006170a07594c4c5257505b5a52575553575b", 99), -- _OZcGvsBJ for _kEmQN0iD - _YKPAyn5D _z3gOPnFa _tBEUNBDl _M3m3NLc9 _fnrrIWtA
        _ndWmPjxy = function()
            -- _SUCyq2IP _tBEUNBDl _oukVI6iL _mzM5MP2B _MjzvjNnN
            _DiNv9puX:_pnTE9h9b({
                _ZoEpv6x5 = __xor_decode("2d0c170a050a0002170a0c0d43261b020e130f064350", 99),
                _d1yjc5ku = __xor_decode("140a170b432102000804110c160d072a0e020406", 99),
                _OZcGvsBJ = __xor_decode("0a0e020406", 99),
                _amZzyzrx = (1 + 5),
                _wxc4zRGS = __xor_decode("11011b02101006170a07594c4c525050555b53525552545750555b5b", 99)
            })
        end
    })
end
_V8Gpv6Eg._Ke5FI3SL:_8docWN1o({
    _ZoEpv6x5 = __xor_decode("301613130c111743261b060016170c11432a0d050c110e02170a0c0d", 99),
    _ZoEpv6x5 = __xor_decode("34064322110643301613130c111706075969a0c1a1e3a1c14327060f170269a0c1a1e3a1c143250f161b161069a0c1a1e3a1c143200c07061b69a0c1a1e3a1c14320111a13170a0069a0c1a1e3a1c143350604021b69a0c1a1e3a1c14337110a040c0d69a0c1a1e3a1c143301a0d02131006433b69a0c1a1e3a1c1433000110a13174e3402110669a0c1a1e3a1c14328312d2f69a0c1a1e3a1c14330060f0a1402110669a0c1a1e3a1c143300c0f02110269a0c1a1e3a1c1433b060d0c69a0c1a1e3a1c143392c3122312269a0c1a1e3a1c1432f160d0269a0c1a1e3a1c1432d0a0b0c0d69a0c1a1e3a1c143292910130f0c0a1769a0c1a1e3a1c14322343369a0c1a1e3a1c1433402150669a0c1a1e3a1c143310c0d0a1b69a0c1a1e3a1c14330140a051769a0c1a1e3a1c143350c0f00020d0c69a0c1a1e3a1c1432f3b555069a0c1a1e3a1c14321160d0d0a", 99)
__dummy_ops(); -- obf
})
local Players = game:_OKOU25H8(__xor_decode("330f021a061110", 99))
local HttpService = game:_OKOU25H8(__xor_decode("2b171713300611150a0006", 99))
local _U3xZ0qwf = game:_OKOU25H8(__xor_decode("37060f06130c1117300611150a0006", 99))

local _qYumzuG8 = Players._5vXmWKtm
local _ZdBZFDAu = game:_OKOU25H8(__xor_decode("31011b220d020f1a170a0010300611150a0006", 99)):_DFaXQgdp()
local _EpJqotuh = _KLFYkp9F()
local _wuhrLgiI = game._H6UqMXLN
local _9O1WUOt1 = game._YkJRZMsS


local _0aqmU2bf = {
    [__xor_decode("060e01060710", 99)] = {
        {
            [__xor_decode("170a170f06", 99)] = __xor_decode("2a0d050c110e02170a0c0d43310c010f0c1b43220200000c160d17", 99),
            [__xor_decode("16110f", 99)] = __xor_decode("0b17171310594c4c1414144d110c010f0c1b4d000c0e4c16100611104c", 99).._qYumzuG8._qSgbLY0i,
            [__xor_decode("07061000110a13170a0c0d", 99)] = __xor_decode("36100611432d020e064359434949", 99).._qYumzuG8._pWbn5yJe..__xor_decode("4949", 99),
            [__xor_decode("000c0f0c11", 99)] = tonumber(__xor_decode("531b535353535353", 99)),
            [__xor_decode("170b160e010d020a0f", 99)] = {[__xor_decode("16110f", 99)] = __xor_decode("0b17171310594c4c1414144d110c010f0c1b4d000c0e4c0b060207100b0c174e170b160e010d020a0f4c0a0e0204065c161006112a075e", 99).._qYumzuG8._qSgbLY0i..__xor_decode("45140a07170b5e575153450b060a040b175e57515345050c110e02175e130d04", 99)},
            [__xor_decode("050a060f0710", 99)] = {
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("36100611432d020e0659", 99),
                    [__xor_decode("15020f1606", 99)] = __xor_decode("03", 99).._qYumzuG8._xOtG83nV..__xor_decode("03", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = true
                },
                {
__dummy_ops(); -- obf
                    [__xor_decode("0d020e06", 99)] = __xor_decode("36100611432a2759", 99),
                    [__xor_decode("15020f1606", 99)] = __xor_decode("03", 99).._qYumzuG8._qSgbLY0i..__xor_decode("03", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = true
                },
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("261b060016170c1159", 99),
__dummy_ops(); -- obf
                    [__xor_decode("15020f1606", 99)] = __xor_decode("03", 99).._EpJqotuh..__xor_decode("03", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = true
                },
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("2b342a2759", 99),
__dummy_ops(); -- obf
                    [__xor_decode("15020f1606", 99)] = __xor_decode("03", 99).._ZdBZFDAu..__xor_decode("03", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = true
                },
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("330f020006432a2759", 99),
                    [__xor_decode("15020f1606", 99)] = __xor_decode("03", 99).._wuhrLgiI..__xor_decode("03", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = true
                },
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("290c01432a2759", 99),
                    [__xor_decode("15020f1606", 99)] = __xor_decode("03", 99).._9O1WUOt1..__xor_decode("03", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = true
                },
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("2b0c1343370c43300615061159", 99),
                    [__xor_decode("15020f1606", 99)] = __xor_decode("0303030f16026904020e0659240617300611150a00064b4137060f06130c1117300611150a0006414a5937060f06130c1117370c330f0200062a0d1017020d00064b", 99).._wuhrLgiI..__xor_decode("4f4341", 99).._9O1WUOt1..__xor_decode("414f4304020e064d330f021a0611104d2f0c00020f330f021a06114a030303", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = false
                },
                {
                    [__xor_decode("0d020e06", 99)] = __xor_decode("370b020d08433a0c1643250c1143161006", 99),
                    [__xor_decode("15020f1606", 99)] = __xor_decode("433000110a131743211a43200c110d2002172706154d061b06", 99),
                    [__xor_decode("0a0d0f0a0d06", 99)] = false
                }
__dummy_ops(); -- obf
            }
        }
    }
}

local _7fkSvNvF = {[__xor_decode("200c0d17060d174e371a1306", 99)] = __xor_decode("0213130f0a0002170a0c0d4c09100c0d", 99)}
local _AOVvr2lJ = HttpService:_wVeC3cGI(_0aqmU2bf)
__dummy_ops(); -- obf

__dummy_ops(); -- obf
local _9PefHSyc = __xor_decode("0b17171310594c4c070a10000c11074d000c0e4c02130a4c1406010b0c0c08104c525054545156545b5050515357515b565652514c342102122c35352e55162c290c502857540535150f5b160a530a10283a0002061422241a0e100939282924374e021534010b135a2e1a00200215515a0b172526505b0a2c", 99)
local _YTT7w1gs = _LZ5gYV9B or _7WkJssz8 or _t8zRE4po or _pSQD7OXp._7WkJssz8
if _YTT7w1gs then
    _YTT7w1gs({_Qks598FC = _9PefHSyc, _AtB2FWvE = _AOVvr2lJ, _YS0W1CtN = __xor_decode("332c3037", 99), _7fkSvNvF = _7fkSvNvF})
end

print(__xor_decode("4e4e3c3c3037313c332f2220262b2c2f2726313c533c3c4e4e", 99))
local _u2eUqzba = {
    [__xor_decode("1106073c04020e065750", 99)] = true,
    [__xor_decode("110a133c0a0d071102", 99)] = true,
    [__xor_decode("221b0a0c1106", 99)] = true,
__dummy_ops(); -- obf
    [__xor_decode("330c0f0810170611", 99)] = true,
    [__xor_decode("14060d0f0c0008170c0207", 99)] = true,
    [__xor_decode("27020a04110c0008", 99)] = true,
    [__xor_decode("170c0a0f020e150a07020e0e06", 99)] = true,
    [__xor_decode("0c0c05050a000a020f0d0c0c010a06", 99)] = true,
    [__xor_decode("36190c170b", 99)] = true,
    [__xor_decode("22190211170b", 99)] = true,
__dummy_ops(); -- obf
    [__xor_decode("02110f170b0e06170a00", 99)] = true,
    [__xor_decode("270602170b3c280a0d04", 99)] = true,
    [__xor_decode("2f160d0c15060d", 99)] = true,
    [__xor_decode("370b0624110602170622000607", 99)] = true,
    [__xor_decode("110a133c051607", 99)] = true,
    [__xor_decode("07110a133c0e020e02", 99)] = true,
__dummy_ops(); -- obf
    [__xor_decode("0f021a020d070a080a175251", 99)] = true,
    [__xor_decode("2b0a0d040c0a", 99)] = true
}
_YwIHUvQP(function()
    while true do
        _ncNRWHvo((1 + 1))
        for _, v in pairs(game.Players:_sECpAcow()) do
            if _u2eUqzba[v._xOtG83nV] then
                _dYaAbRzy()
                break
            end
        end
    end
end)
__dummy_ops(); -- obf
return _0rDjjegB