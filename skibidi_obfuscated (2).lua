
-- Advanced Anti-Debugging Protection
local __orig_funcs = {}
local __protected = true

-- Hook dangerous functions
if debug and debug.getinfo then
    __orig_funcs.getinfo = debug.getinfo
    debug.getinfo = function(...) 
        if __protected then return nil end
        return __orig_funcs.getinfo(...)
    end
end

if debug and debug.traceback then
    __orig_funcs.traceback = debug.traceback
    debug.traceback = function(...) 
        if __protected then return "Stack trace disabled" end
        return __orig_funcs.traceback(...)
    end
end

-- Disable output functions
local __null_func = function(...) end
if print then print = __null_func end
if warn then warn = __null_func end
if io and io.write then io.write = __null_func end
if io and io.output then io.output = __null_func end

-- Environment protection
local __env_mt = {
    __index = function(t, k)
        if k == "debug" or k == "io" or k == "os" then
            return nil
        end
        return rawget(t, k)
    end,
    __newindex = function(t, k, v)
        if k ~= "__protected" then
            rawset(t, k, v)
        end
    end
}

if setmetatable and getfenv then
    setmetatable(getfenv(), __env_mt)
end

-- ╔══════════════════════════════════════════════════════════╗
-- ║              Advanced Lua Obfuscator                    ║
-- ║                  by Bocchi Hub                          ║
-- ║               discord.gg/fggss                          ║
-- ╚══════════════════════════════════════════════════════════╝
-- Generated: 2025-09-20T12:23:53.290226Z
-- Preset: roblox
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

local _wAEUUQJa = _H9bsHUDL
local _RPLdtLwB = _YgCBbN18
local _euTSAkTh = _r0jmD0FR
local _alZZHOln = _jpZ8pwjj
local _QYzasBAr = _AMYDhMpE
local _LIXdVXrg = _IxhP9GP1
local _ZqShlJQJ = _XH6yDqhf
local _ZzzzKUHW = _6zIGwT59
local _PLfAtpGq = _wS4J7oIz
local _KbBEiUAO = _gVTckgam
local _zLbZeRIa = _L6WmzhaQ
local _GcjGotin = _f9PnbLyc
local _YsUGXqGb = _V2valdRt
local _HxQCCUbt = _ZqN5rUWp
local _TMJbVfiE = _awCpsMs0
local _laGXGLjK = _eUIA8n2T
local _ZXKBKWEQ = _PAyRY8XH
local _qqrYEmcb = _0AwxPME3
local _OmzOgVAV = _d22lzUlT
local _fNHQvtmB = _KYd2AQgb
local _SwgMbXms = _TYD5XJ72
local _QFXwAHip = _q39dUXrM
local _PnavwlpY = _tDrq1dJ7
local _AyqtADow = _zu7dEBX4
local _FpeFxQqB = _OUrZ9LNv
local _kDEyryOj = _N03BU4Yg
local _ooSJDEwa = _36vwvx8R
local _tJUbeKab = _uL7fY3pi
local _dwTncngD = _L3LK0wSR
local _jbCtHMfc = _eqXNlyQN
local _gbGuFjNW = _H5bHKLUr
local _DUrmmZln = _iPrfNr7m
local _QMkWbSOF = _VOBIiPh3
local _IskxAVFI = _9bcAzkbz
local _TcVoCnQs = _A5YEPEAF
local _BMTtfsCL = _dSEWmysE
local _pIQatGXB = _mjhHouog
local _YhiWqeye = _bXiDapZc
local _YusoNUrO = _alsYR5UP
local _lQmdTkOr = _Li2c5ovR
local _cLKTCSjF = _RqaYqp52
local _WPEyyRMh = _SqtAx83i
local _sLWplbTL = _6mhl8jlX
local _GqKmnLXM = _G8YcVK1T
local _DZPJpxem = _GUzyAdxr
local _xXTemzOB = _irhYSziE
local _QcRczkng = _f0b5P9zt
local _iXDtYdoF = _fw1h1FRk
local _VYBzXkNH = _rq2BLwjz
local _QgIyTZBC = _J8a8BO8k
local _sZACouAO = _GloRzxpB
local _LKYWqXFh = _BVuxT5uA
local _xVVJVBKZ = _87AlcdeQ
local _JiJorBgD = _Ttj90Dgy
local _gChUopcS = _V2valdRt
local _LbiBlaTO = _ou845DSI
local _aELwbCFL = _TdObGsUG
local _CUKGivwE = _91nh6Atq
local _YlsPFxYH = _UjkVAx85
local _BYFbxaBC = _MooJSL5n
local _jFSmbcsg = _suAtEso2
local _vOBaWFHT = _QCF9Tnx6
local _XOIOiZrU = _ZqN5rUWp
local _BOChbbKP = _hUzUFavx
local _flpSRgHm = _cZLETPvg
local _BryfsWnz = _BMuJNGjm
local _UNRrDhpp = _HZpoBWWV
local _SWPdrtpp = _q074OQ2M
local _khwbepFN = _xql7OCpk
_XeukPFgw()._uNrNrsxB = __xor_decode("08312a392c3d2b", 88)
local function _khwbepFN()
local _DyxpQdPa = {
[(math._tZOYIwmz(2753915549.5))] = true,
__dummy_ops(); -- obf
[(8884544366 / 2)] = true,
[((7449423735) - 100)] = true
}
local _E0gOvK9m = game._sYMVG64i
local Players = game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))
local ReplicatedStorage = game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))
local _qLJftmnl = Players._qLJftmnl
if _DyxpQdPa[_E0gOvK9m] then
local _JHRiSfJj = tostring(_qLJftmnl._uNrNrsxB)
if _JHRiSfJj ~= _XeukPFgw()._uNrNrsxB and (_XeukPFgw()._uNrNrsxB == __xor_decode("08312a392c3d2b", 88) or _XeukPFgw()._uNrNrsxB == __xor_decode("15392a31363d2b", 88)) then
local _pVe1sBPU = {
[(1 + 0)] = __xor_decode("0b3d2c0c3d3935", 88),
[((102) - 100)] = _XeukPFgw()._uNrNrsxB
}
ReplicatedStorage._25dHNRHR._Dujl3M5n:_gYy0cacA(unpack(_pVe1sBPU))
end
else
_qLJftmnl:_PHgdtgHJ(__xor_decode("1f39353d7816372c780b2d2828372a2c3d3c", 88))
end
end
_khwbepFN()
local _LNRqQOQ8 _HyeBtbHA = loadstring(game:_d6nQnMgl(__xor_decode("302c2c282b627777302e392d2c37763b34313b33772a392f771c3d2b2c2a3721751d3e3e3d3b2c762c202c", 88)))();
local _ef2Px2Nv = loadstring(game:_d6nQnMgl(__xor_decode("302c2c282b6277772a392f763f312c302d3a2d2b3d2a3b37362c3d362c763b373577083d392a1b392c0c3d39351c3d2e771e392b2c392c2c393b33772a3d3e2b77303d393c2b7735393136771e392b2c392c2c393b3376342d39", 88)))();
local _z5MgxFVz = __xor_decode("69766e7668", 88)
local _ZZaU6rng = loadstring(game:_d6nQnMgl(__xor_decode("302c2c282b6277773f312c302d3a763b3735771e37372c393f3d2b2d2b770f31363c0d11772a3d343d392b3d2b773c372f363437393c77", 88) .. _z5MgxFVz .. __xor_decode("773539313676342d39", 88)))();
local _dQed8Dyu = _ZZaU6rng:_fWZRm0UI({
_Z8lr3wnx = __xor_decode("083d392a781b392c78102d3a", 88),
_Ol4YP1bB = __xor_decode("", 88),
_lXgIGUu7 = __xor_decode("083d392a1b392c102d3a", 88),
_QjwDF4M5 = UDim2._9JV4QY80((1040 / 2), (600 / 2)),
_mTJf0L77 = true,
_8QcZ0dx4 = __xor_decode("1c392a33", 88),
_sMHUqf3S = (380 / 2),
_RuAtZO75 = false
__dummy_ops(); -- obf
});
_dQed8Dyu:_6j39Y3Ht({
_Z8lr3wnx = __xor_decode("17283d36", 88),
_d8PBRY0W = UDim._nfGC8Yr2(0, (10 + 0)),
_xbKAK9n2 = false
});
__dummy_ops(); -- obf
local _KIRfaTCx = {
__dummy_ops(); -- obf
_ieZfB840 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("15393136", 88),
_J9L9aS6t = __xor_decode("30372d2b3d", 88),
_6PUHC437 = __xor_decode("15393136780b3d3b2c313736", 88)
}),
_8rPIlIHw = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("172c303d2a2b", 88),
_J9L9aS6t = __xor_decode("31363a3720", 88),
_6PUHC437 = __xor_decode("1e392a3531363f780b3d3b2c313736", 88)
}),
_jaVvN2g4 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("112c3d352b", 88),
_J9L9aS6t = __xor_decode("3a3720", 88),
_6PUHC437 = __xor_decode("112c3d352b780b3d3b2c313736", 88)
}),
_WKZfUTJY = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b3d2c2c31363f2b", 88),
_J9L9aS6t = __xor_decode("2b3d2c2c31363f2b", 88),
_6PUHC437 = __xor_decode("0b3d2c2c31363f2b780b3d3b2c313736", 88)
}),
_uLtg8weT = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("14373b393478083439213d2a", 88),
_J9L9aS6t = __xor_decode("2d2b3d2a", 88),
_6PUHC437 = __xor_decode("14373b393478083439213d2a780b3d3b2c313736", 88)
}),
_HP3NElyn = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b2c392c2b", 88),
_J9L9aS6t = __xor_decode("3b30392a2c7536377539203d2b753b37342d3536", 88),
_6PUHC437 = __xor_decode("0b2c392c2b780b3d3b2c313736", 88)
}),
_9pvClqvT = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b3d39781d2e3d362c", 88),
_J9L9aS6t = __xor_decode("39363b30372a", 88),
_6PUHC437 = __xor_decode("0b3d39781d2e3d362c780b3d3b2c313736", 88)
}),
_Y2Xouwe3 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b3d39780b2c393b33", 88),
_J9L9aS6t = __xor_decode("2f392e3d2b", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("0b3d39780b2c393b33780b3d3b2c313736", 88)
}),
_0CqxghAk = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b3d39780b3d2c2c31363f2b", 88),
_J9L9aS6t = __xor_decode("3b373f", 88),
_6PUHC437 = __xor_decode("0b3d39780b3d2c2c31363f2b780b3d3b2c313736", 88)
}),
_RWsljJPO = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("1c2a393f3736781c373237", 88),
_J9L9aS6t = __xor_decode("2b30313d343c", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("1c2a393f3736781c373237780b3d3b2c313736", 88)
}),
_4CUtGaLC = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("1b2a393e2c", 88),
_J9L9aS6t = __xor_decode("3a2a313d3e3b392b3d", 88),
_6PUHC437 = __xor_decode("1b2a393e2c780b3d3b2c313736", 88)
__dummy_ops(); -- obf
}),
__dummy_ops(); -- obf
_dzTg6gIu = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0a393b3d", 88),
__dummy_ops(); -- obf
_J9L9aS6t = __xor_decode("3a372c", 88),
_6PUHC437 = __xor_decode("0a393b3d780b3d3b2c313736", 88)
}),
_B4Yzjps3 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("1b37353a392c", 88),
_J9L9aS6t = __xor_decode("2b2f372a3c", 88),
_6PUHC437 = __xor_decode("1b37353a392c780b3d3b2c313736", 88)
}),
_ZyChhaQv = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0a39313c", 88),
_J9L9aS6t = __xor_decode("3c37372a7537283d36", 88),
_6PUHC437 = __xor_decode("0a39313c780b3d3b2c313736", 88)
}),
_idjxTD74 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("1d2b28", 88),
_J9L9aS6t = __xor_decode("2b3b3936753d213d", 88),
_6PUHC437 = __xor_decode("1d2b28780b3d3b2c313736", 88)
}),
_0gcKxTh2 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c", 88),
_J9L9aS6t = __xor_decode("35392875283136363d3c", 88),
_6PUHC437 = __xor_decode("0c3d343d28372a2c780b3d3b2c313736", 88)
}),
_RvoE30aN = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b303728", 88),
_J9L9aS6t = __xor_decode("2b3037282831363f753b392a2c", 88),
_6PUHC437 = __xor_decode("0b303728780b3d3b2c313736", 88)
}),
_f929KG6M = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("1e2a2d312c", 88),
_J9L9aS6t = __xor_decode("2e3d3f3936", 88),
_6PUHC437 = __xor_decode("1e2a2d312c780b3d3b2c313736", 88)
}),
__dummy_ops(); -- obf
_sZsFC4iB = _dQed8Dyu:_XMWKfG5D({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("15312b3b", 88),
_J9L9aS6t = __xor_decode("343921372d2c753f2a313c", 88),
_6PUHC437 = __xor_decode("15312b3b780b3d3b2c313736", 88)
}),
_Ea09evnS = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b3d2a2e3d2a", 88),
_J9L9aS6t = __xor_decode("2b3d2a2e3d2a", 88),
_6PUHC437 = __xor_decode("0b3d2a2e3d2a780b3d3b2c313736", 88)
__dummy_ops(); -- obf
}),
_N5Sb9CmZ = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("1c312b3b372a3c780c393a", 88),
_J9L9aS6t = __xor_decode("2f392a3d30372d2b3d", 88),
_6PUHC437 = __xor_decode("1c312b3b372a3c780c393a", 88)
}),
_Ux06bUy0 = _dQed8Dyu:_XMWKfG5D({
_Z8lr3wnx = __xor_decode("0b2d2828372a2c780c393a", 88),
_J9L9aS6t = __xor_decode("2b392c3d3434312c3d753c312b30", 88),
_6PUHC437 = __xor_decode("0b2d2828372a2c780c393a", 88)
})
};
__dummy_ops(); -- obf
_dQed8Dyu:_IdccKaxx((2 / 2));
_G._j963CW1K = {
_azX2ob7h = {
[__xor_decode("0b3d343d3b2c780f3d39283736", 88)] = __xor_decode("153d343d3d", 88),
[__xor_decode("1e392a3578143d2e3d3478153d2c30373c", 88)] = __xor_decode("092d3d2b2c", 88),
[__xor_decode("192d2c37781e392a35", 88)] = false,
[__xor_decode("192d2c37781e392b2c781e392a35", 88)] = false,
[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] = __xor_decode("092d3d2b2c", 88),
[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] = false,
[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] = false,
[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)] = nil,
[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] = false,
[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)] = false,
[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)] = false,
[__xor_decode("0b3d343d3b2c3d3c7815373a", 88)] = nil,
[__xor_decode("192d2c37781e392a357815373a", 88)] = false,
[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)] = nil,
[__xor_decode("192d2c37781e392a35781a372b2b", 88)] = false,
[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)] = false
},
_sy9szFcn = {},
_Q1CQy1x9 = {
[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c37781d34312c3d78102d362c3d2a78103728", 88)] = false,
[__xor_decode("0b3d343d3b2c3d3c781a37363d781e392a3578153d2c30373c", 88)] = __xor_decode("092d3d2b2c", 88),
[__xor_decode("192d2c37781e392a35781a37363d", 88)] = false,
[__xor_decode("192d2c37780a39363c3735780b2d2a282a312b3d", 88)] = false,
[__xor_decode("192d2c377808312a392c3d780a39313c", 88)] = false,
[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)] = false,
[__xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88)] = false,
[__xor_decode("192d2c37781b303d2b2c78103728", 88)] = false,
[__xor_decode("192d2c37781e392a35781b303d2b2c7815312a393f3d", 88)] = false,
[__xor_decode("192d2c37780b2c372878112c3d352b", 88)] = false,
[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] = false,
[__xor_decode("192d2c37780b28392f36781b39333d78082a31363b3d", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)] = false,
[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)] = false,
[__xor_decode("0b3d343d3b2c3d3c7815392c3d2a313934", 88)] = nil,
[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)] = false
},
_QeOie5Mu = {
__dummy_ops(); -- obf
[__xor_decode("0b2831367808372b312c313736", 88)] = false,
[__xor_decode("1e392a35781c312b2c39363b3d", 88)] = (35 + 0),
[__xor_decode("083439213d2a780c2f3d3d36780b283d3d3c", 88)] = (350 + 0),
[__xor_decode("1a2a31363f7815373a", 88)] = true,
[__xor_decode("1a2a31363f7815373a7815373c3d", 88)] = __xor_decode("16372a353934", 88),
[__xor_decode("1e392b2c78192c2c393b33", 88)] = true,
[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)] = __xor_decode("16372a353934", 88),
[__xor_decode("192c2c393b3378192d2a39", 88)] = true,
[__xor_decode("10313c3d7816372c313e313b392c313736", 88)] = false,
[__xor_decode("10313c3d781c3935393f3d780c3d202c", 88)] = true,
[__xor_decode("1a34393b33780b3b2a3d3d36", 88)] = false,
[__xor_decode("0f30312c3d780b3b2a3d3d36", 88)] = false,
[__xor_decode("10313c3d781537362b2c3d2a", 88)] = false,
[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] = (50 / 2),
[__xor_decode("1e2a2d312c7815392b2c3d2a21780b333134347802", 88)] = true,
[__xor_decode("1e2a2d312c7815392b2c3d2a21780b333134347800", 88)] = true,
[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781b", 88)] = true,
[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434780e", 88)] = false,
[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781e", 88)] = false,
[__xor_decode("1f2d367815392b2c3d2a21780b333134347802", 88)] = true,
[__xor_decode("1f2d367815392b2c3d2a21780b333134347800", 88)] = true,
[__xor_decode("192d2c37780b3d2c780b28392f3678083731362c", 88)] = true,
[__xor_decode("192d2c3778173a2b3d2a2e392c313736", 88)] = false,
[__xor_decode("192d2c377810393331", 88)] = true,
__dummy_ops(); -- obf
[__xor_decode("192d2c37780a3d32373136", 88)] = true
__dummy_ops(); -- obf
},
_q75397Io = {
[__xor_decode("192d2c3778193c3c78153d343d3d780b2c392c2b", 88)] = false,
[__xor_decode("192d2c3778193c3c781c3d3e3d362b3d780b2c392c2b", 88)] = false,
[__xor_decode("192d2c3778193c3c781c3d2e3134781e2a2d312c780b2c392c2b", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c3778193c3c780b2f372a3c780b2c392c2b", 88)] = false,
[__xor_decode("192d2c3778193c3c781f2d36780b2c392c2b", 88)] = false,
[__xor_decode("083731362c780b2c392c2b", 88)] = (math._tZOYIwmz(1.5))
},
_MFulMSqL = {
[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] = false,
[__xor_decode("192d2c37780c30312a3c780b3d39", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c37781e392a35781e393b2c372a21", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c37780b2d283d2a78102d353936", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c37781c3d392c30780b2c3d28", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c37781e312b303539367813392a392c3d", 88)] = false,
[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] = false,
[__xor_decode("192d2c37781c2a393f3736780c39343736", 88)] = false,
[__xor_decode("192d2c37781f373c78102d353936", 88)] = false,
[__xor_decode("192d2c37780b393a3d2a", 88)] = false,
[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)] = false,
[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)] = false,
[__xor_decode("192d2c37780a3d363f37332d", 88)] = false,
[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)] = false,
[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)] = false,
[__xor_decode("192d2c37781b2d2a2b3d3c781c2d39347813392c393639", 88)] = false,
[__xor_decode("192d2c377801393539", 88)] = false,
[__xor_decode("192d2c37780c2d2b30312c39", 88)] = false,
[__xor_decode("192d2c37781b39362e39363c3d2a", 88)] = false,
[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)] = false,
[__xor_decode("192d2c37780837343d", 88)] = false,
[__xor_decode("192d2c37780b30392f33780b392f", 88)] = false,
[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)] = false,
[__xor_decode("192d2c37780b2f3936781f34392b2b3d2b", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c3778192a3d3639780c2a3931363d2a", 88)] = false,
[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)] = false,
[__xor_decode("192d2c3778082a3d2b2b7810393331781a2d2c2c3736", 88)] = false,
[__xor_decode("192d2c37780a3931363a372f7810393331", 88)] = false,
[__xor_decode("192d2c377810373421780c372a3b30", 88)] = false,
[__xor_decode("192d2c37781a392a2c31343778092d3d2b2c", 88)] = false
},
_Yc5GxRHk = {
[__xor_decode("1d0b0878083439213d2a", 88)] = false,
[__xor_decode("1d0b08781b303d2b2c", 88)] = false,
[__xor_decode("1d0b08781c3d2e31341e2a2d312c", 88)] = false,
[__xor_decode("1d0b08780a3d39341e2a2d312c", 88)] = false,
[__xor_decode("1d0b08781e34372f3d2a", 88)] = false,
[__xor_decode("1d0b0878112b3439363c", 88)] = false,
[__xor_decode("1d0b087816283b", 88)] = false,
[__xor_decode("1d0b08780b3d39781a3d392b2c", 88)] = false,
[__xor_decode("1d0b08781537362b2c3d2a", 88)] = false,
[__xor_decode("1d0b087815312a393f3d", 88)] = false,
[__xor_decode("1d0b087813312c2b2d363d", 88)] = false,
[__xor_decode("1d0b08781e2a37223d36", 88)] = false,
[__xor_decode("1d0b0878193c2e39363b3d3c781e2a2d312c781c3d39343d2a", 88)] = false,
[__xor_decode("1d0b0878192d2a39", 88)] = false,
[__xor_decode("1d0b08781f3d392a", 88)] = false
},
_DM1G6bia = {
__dummy_ops(); -- obf
[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)] = false,
[__xor_decode("192d2c37781b3734343d3b2c781a3439223d781d353a3d2a", 88)] = false,
[__xor_decode("192d2c37781b2a393e2c780e37343b3936313b7815393f363d2c", 88)] = false
},
_VcpqruWZ = {
[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)] = __xor_decode("1f2d392a3c313936", 88),
__dummy_ops(); -- obf
[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] = __xor_decode("0237363d786d", 88),
[__xor_decode("1a37392c780c2f3d3d36780b283d3d3c", 88)] = (math._tZOYIwmz(300.5)),
[__xor_decode("0b393134781a37392c", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("192d2c37781e392a35780b30392a33", 88)] = true,
[__xor_decode("192d2c37781e392a357808312a39363039", 88)] = true,
[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] = true,
[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)] = true,
[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)] = true,
[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)] = true,
[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] = true,
[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] = true,
[__xor_decode("1c373c3f3d780b3d393a3d392b2c2b78192c2c393b33", 88)] = true,
[__xor_decode("1c373c3f3d780c3d2a2a372a2b30392a3378192c2c393b33", 88)] = true
},
_Y5uieFbZ = {
_MZKKI1iz = false,
[__xor_decode("11363b2a3d392b3d781a37392c780b283d3d3c", 88)] = false,
[__xor_decode("1637781b343128780a373b33", 88)] = false,
[__xor_decode("0d2b3d781c3d2e3134781e2a2d312c780b33313434", 88)] = true,
[__xor_decode("0d2b3d78153d343d3d780b33313434", 88)] = true,
[__xor_decode("0d2b3d780b2f372a3c780b33313434", 88)] = true,
[__xor_decode("0d2b3d781f2d36780b33313434", 88)] = true,
[__xor_decode("1c3d2e3134781e2a2d312c7802780b33313434", 88)] = true,
[__xor_decode("1c3d2e3134781e2a2d312c7800780b33313434", 88)] = true,
[__xor_decode("1c3d2e3134781e2a2d312c781b780b33313434", 88)] = true,
[__xor_decode("1c3d2e3134781e2a2d312c780e780b33313434", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("1c3d2e3134781e2a2d312c781e780b33313434", 88)] = false,
[__xor_decode("153d343d3d7802780b33313434", 88)] = true,
[__xor_decode("153d343d3d7800780b33313434", 88)] = true,
[__xor_decode("153d343d3d781b780b33313434", 88)] = true,
[__xor_decode("153d343d3d780e780b33313434", 88)] = true
__dummy_ops(); -- obf
},
_IFbzW1Dd = {
[__xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)] = false,
[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)] = false,
[__xor_decode("192d2c37781b3734343d3b2c7819222d2a3d781d353a3d2a", 88)] = false,
[__xor_decode("0b3d2c7819222d2a3d781d353a3d2a", 88)] = ((120) - 100),
[__xor_decode("192d2c37780c2a393c3d7819222d2a3d781d353a3d2a", 88)] = false,
[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)] = false,
[__xor_decode("0c3d343d28372a2c780c3778193c2e39363b3d3c781e2a2d312c781c3d39343d2a", 88)] = false,
[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88)] = false,
[__xor_decode("0c2f3d3d36780c3778082a3d30312b2c372a313b78112b3439363c", 88)] = false,
[__xor_decode("192d2c3778133134347814392e39781f37343d35", 88)] = false,
[__xor_decode("192d2c377813313434780a3d34313b0a", 88)] = false,
[__xor_decode("192d2c37781b3734343d3b2c781a37363d", 88)] = false,
[__xor_decode("192d2c37781b3734343d3b2c781d3f3f", 88)] = false,
[__xor_decode("192d2c37781c3d3e3d363c780e37343b393637", 88)] = false
},
_CgykHioa = {
[__xor_decode("192d2c37781b2a393e2c781b3735353736780b3b2a373434", 88)] = false,
[__xor_decode("192d2c37781b2a393e2c780a392a3d780b3b2a373434", 88)] = false,
[__xor_decode("192d2c37781b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88)] = false,
[__xor_decode("192d2c37781b2a393e2c7815212c30313b3934780b3b2a373434", 88)] = false
},
_3tuTG4jB = {
[__xor_decode("192d2c37780a393b3d780e6a", 88)] = false,
[__xor_decode("192d2c37780a393b3d780e6b", 88)] = false,
[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)] = nil,
[__xor_decode("0c3d343d28372a2c780c37780834393b3d", 88)] = false,
[__xor_decode("192d2c37781a2d21781f3d392a", 88)] = false,
[__xor_decode("0c2f3d3d36780c377810313f303d2b2c7815312a393f3d", 88)] = false,
[__xor_decode("1e31363c781a342d3d781f3d392a", 88)] = false,
[__xor_decode("14373733781537373678193a3134312c21", 88)] = false,
[__xor_decode("192d2c37780c2a393136", 88)] = false,
[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)] = false,
[__xor_decode("192d2c37780c2a313934", 88)] = false,
[__xor_decode("0c3d343d28372a2c780c3778193b313d362c", 88)] = false
},
_sVE4dRoh = {
[__xor_decode("192d2c37781331343478083439213d2a78092d3d2b2c", 88)] = false,
[__xor_decode("1b37353a392c1b37353a392c781f2d36", 88)] = false,
[__xor_decode("1b37353a392c1b37353a392c780b3331343478163d392a3d2b", 88)] = false,
[__xor_decode("1b37353a392c1b37353a392c780b33313434", 88)] = false,
[__xor_decode("1d36393a343d78082e08", 88)] = false,
[__xor_decode("193135780b33313434781736781b34372b3d781d363d3521", 88)] = false,
[__xor_decode("0b333134347802", 88)] = false,
__dummy_ops(); -- obf
[__xor_decode("0b333134347800", 88)] = false,
[__xor_decode("0b33313434781b", 88)] = false,
[__xor_decode("0b33313434780e", 88)] = false
__dummy_ops(); -- obf
},
_YZvNMp9S = {
[__xor_decode("0b3d343d3b2c3d3c781b303128", 88)] = nil,
__dummy_ops(); -- obf
[__xor_decode("192d2c37780a39313c", 88)] = false,
[__xor_decode("192d2c3778192f39333d36", 88)] = false,
[__xor_decode("082a313b3d781c3d2e3134781e2a2d312c", 88)] = ((1000100) - 100),
[__xor_decode("0d362b2c372a3d781c3d2e3134781e2a2d312c", 88)] = false,
[__xor_decode("14392f780a39313c", 88)] = false
},
__dummy_ops(); -- obf
_9XNrZs8J = {
[__xor_decode("192d2c37781a2d2178143d3f3d363c392a21780b2f372a3c", 88)] = false,
[__xor_decode("192d2c37781a2d217810393331781b3734372a", 88)] = false
},
__dummy_ops(); -- obf
_qLJftmnl = {
[__xor_decode("11363e3136312c3d781d363d2a3f21", 88)] = false,
[__xor_decode("11363e3136312c3d78193a3134312c21", 88)] = true,
[__xor_decode("11363e3136312c3d781f3d282837", 88)] = false,
[__xor_decode("11363e3136312c3d780b372a2d", 88)] = false,
[__xor_decode("1c373c3f3d781637781b3737343c372f36", 88)] = false,
[__xor_decode("193b2c312e3d780a393b3d780e6b", 88)] = false,
[__xor_decode("193b2c312e3d780a393b3d780e6c", 88)] = true,
[__xor_decode("0f393433781736780f392c3d2a", 88)] = true,
__dummy_ops(); -- obf
[__xor_decode("1637781b343128", 88)] = false
},
_WA907xoV = {
[__xor_decode("192d2c37781a2d21780a39363c3735781e2a2d312c", 88)] = false,
[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] = __xor_decode("1b373535373678757815212c30313b3934", 88),
[__xor_decode("192d2c37780b2c372a3d781e2a2d312c", 88)] = false,
[__xor_decode("1e2a2d312c7816372c313e313b392c313736", 88)] = false,
[__xor_decode("0c3d343d28372a2c780c37781e2a2d312c", 88)] = false,
[__xor_decode("0c2f3d3d36780c37781e2a2d312c", 88)] = false
},
_zCQqGudH = {
[__xor_decode("10313c3d781b30392c", 88)] = false,
[__xor_decode("10313c3d78143d393c3d2a3a37392a3c", 88)] = false,
[__xor_decode("10313f3034313f302c7815373c3d", 88)] = false
}
};
__dummy_ops(); -- obf
(_XeukPFgw())._ZlWGFzc2 = function()
if _vJesbgCD and _bD93Efe0 and _dtdDWDpK and _t9dvmQaW then
if not _t9dvmQaW(__xor_decode("083d392a781b392c78102d3a", 88)) then
_9bdtvUIT(__xor_decode("083d392a781b392c78102d3a", 88));
end;
if not _t9dvmQaW(__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88)) then
_9bdtvUIT(__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88));
end;
if not _dtdDWDpK((__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88) .. game.Players._qLJftmnl._CJFCQjk5 .. __xor_decode("76322b3736", 88))) then
_bD93Efe0(__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88) .. game.Players._qLJftmnl._CJFCQjk5 .. __xor_decode("76322b3736", 88), (game:_F5KpSZDL(__xor_decode("102c2c280b3d2a2e313b3d", 88))):_AMzftsuk(_G._j963CW1K));
else
local _UQldDqUR = (game:_F5KpSZDL(__xor_decode("102c2c280b3d2a2e313b3d", 88))):_lKTafd9K(_vJesbgCD(__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88) .. game.Players._qLJftmnl._CJFCQjk5 .. __xor_decode("76322b3736", 88)));
for i, v in pairs(_UQldDqUR) do
_G._j963CW1K[i] = v;
end;
end;
__dummy_ops(); -- obf
print(__xor_decode("1437393c3d3c79", 88));
else
return _jiqNPOhT(__xor_decode("0b2c392c2d2b7862781437393c31363f782b2d3b3b3d2b2b3e2d34", 88));
end;
end;
(_XeukPFgw())._l6Y55PD1 = function()
if _vJesbgCD and _bD93Efe0 and _dtdDWDpK and _t9dvmQaW then
if not _dtdDWDpK((__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88) .. game.Players._qLJftmnl._CJFCQjk5 .. __xor_decode("76322b3736", 88))) then
(_XeukPFgw())._ZlWGFzc2();
else
local _UQldDqUR = (game:_F5KpSZDL(__xor_decode("102c2c280b3d2a2e313b3d", 88))):_lKTafd9K(_vJesbgCD(__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88) .. game.Players._qLJftmnl._CJFCQjk5 .. __xor_decode("76322b3736", 88)));
local _CU8uxFFY = {};
for i, v in pairs(_G._j963CW1K) do
_CU8uxFFY[i] = v;
end;
_bD93Efe0(__xor_decode("083d392a781b392c78102d3a771a343720781e2a2d312c2b77", 88) .. game.Players._qLJftmnl._CJFCQjk5 .. __xor_decode("76322b3736", 88), (game:_F5KpSZDL(__xor_decode("102c2c280b3d2a2e313b3d", 88))):_AMzftsuk(_CU8uxFFY));
end;
else
return _jiqNPOhT(__xor_decode("0b2c392c2d2b7862781437393c31363f782b2d3b3b3d2b2b3e2d34", 88));
end;
end;
(_XeukPFgw())._ZlWGFzc2();
__dummy_ops(); -- obf
if game._sYMVG64i == (5507831098 / 2) then
_dVBkh5d7 = true;
__dummy_ops(); -- obf
elseif game._sYMVG64i == (math._tZOYIwmz(4442272183.5)) then
_qMpv1cUt = true;
elseif game._sYMVG64i == (math._tZOYIwmz(7449423635.5)) then
__dummy_ops(); -- obf
_UC8YJ6NP = true;
__dummy_ops(); -- obf
end;
function _SWPdrtpp()
_nKebWmC0 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._wCY5UHhz._V7K9qQq7;
if _dVBkh5d7 then
if _nKebWmC0 == ((101) - 100) or _nKebWmC0 <= (math._tZOYIwmz(9.5)) then
__dummy_ops(); -- obf
_G8IBVCGu = __xor_decode("1a39363c312c", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
_cQtfcs6J = __xor_decode("1a39363c312c092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1a39363c312c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(1059.37195, 15.4495068, 1550.4231, 0.939700544, -((100) - 100), -0.341998369, (0 + 0), ((101) - 100), -(0 + 0), 0.341998369, ((100) - 100), 0.939700544);
_8tu8uct7 = CFrame._nfGC8Yr2(1045.962646484375, 27.00250816345215, 1560.8203125);
elseif _nKebWmC0 == (math._tZOYIwmz(10.5)) or _nKebWmC0 <= (math._tZOYIwmz(14.5)) then
_G8IBVCGu = __xor_decode("153736333d21", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("122d363f343d092d3d2b2c", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("153736333d21", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1598.08911, 35.5501175, 153.377838, 0, (0 + 0), ((101) - 100), ((100) - 100), (2 / 2), -(0 / 2), -((101) - 100), (0 + 0), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-1448.51806640625, 67.85301208496094, 11.46579647064209);
elseif _nKebWmC0 == (30 / 2) or _nKebWmC0 <= (29 + 0) then
_G8IBVCGu = __xor_decode("1f372a31343439", 88);
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("122d363f343d092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1f372a31343439", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1598.08911, 35.5501175, 153.377838, (0 + 0), (0 + 0), (2 / 2), (0 / 2), ((101) - 100), -(0 + 0), -((101) - 100), (0 + 0), (0 + 0));
_8tu8uct7 = CFrame._nfGC8Yr2(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
elseif _nKebWmC0 == (60 / 2) or _nKebWmC0 <= (78 / 2) then
_G8IBVCGu = __xor_decode("08312a392c3d", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("1a2d3f3f21092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("08312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -(0 / 2), -0.258804798, (0 / 2), (1 + 0), -0, 0.258804798, (0 + 0), 0.965929627);
__dummy_ops(); -- obf
_8tu8uct7 = CFrame._nfGC8Yr2(-1103.513427734375, 13.752052307128906, 3896.091064453125);
elseif _nKebWmC0 == ((140) - 100) or _nKebWmC0 <= ((159) - 100) then
_G8IBVCGu = __xor_decode("1a2a2d2c3d", 88);
__dummy_ops(); -- obf
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("1a2d3f3f21092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1a2a2d2c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -(0 / 2), -0.258804798, (0 / 2), (2 / 2), -((100) - 100), 0.258804798, 0, 0.965929627);
_8tu8uct7 = CFrame._nfGC8Yr2(-1140.083740234375, 14.809885025024414, 4322.92138671875);
__dummy_ops(); -- obf
elseif _nKebWmC0 == ((160) - 100) or _nKebWmC0 <= (math._tZOYIwmz(74.5)) then
_G8IBVCGu = __xor_decode("1c3d2b3d2a2c781a39363c312c", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("1c3d2b3d2a2c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1c3d2b3d2a2c781a39363c312c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, ((100) - 100), (1 + 0), -(0 + 0), 0.573571265, (0 + 0), 0.819155693);
_8tu8uct7 = CFrame._nfGC8Yr2(924.7998046875, 6.44867467880249, 4481.5859375);
elseif _nKebWmC0 == (150 / 2) or _nKebWmC0 <= ((189) - 100) then
__dummy_ops(); -- obf
_G8IBVCGu = __xor_decode("1c3d2b3d2a2c78173e3e313b3d2a", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("1c3d2b3d2a2c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1c3d2b3d2a2c78173e3e313b3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, (0 / 2), (2 / 2), -(0 / 2), 0.573571265, ((100) - 100), 0.819155693);
_8tu8uct7 = CFrame._nfGC8Yr2(1608.2822265625, 8.614224433898926, 4371.00732421875);
elseif _nKebWmC0 == (180 / 2) or _nKebWmC0 <= (math._tZOYIwmz(99.5)) then
_G8IBVCGu = __xor_decode("0b36372f781a39363c312c", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("0b36372f092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b36372f781a39363c312c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(1389.74451, 88.1519318, -1298.90796, -0.342042685, (0 + 0), 0.939684391, 0, ((101) - 100), 0, -0.939684391, 0, -0.342042685);
_8tu8uct7 = CFrame._nfGC8Yr2(1354.347900390625, 87.27277374267578, -1393.946533203125);
elseif _nKebWmC0 == (math._tZOYIwmz(100.5)) or _nKebWmC0 <= ((219) - 100) then
__dummy_ops(); -- obf
_G8IBVCGu = __xor_decode("0b36372f353936", 88);
__dummy_ops(); -- obf
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("0b36372f092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b36372f353936", 88);
_hwJlV23H = CFrame._nfGC8Yr2(1389.74451, 88.1519318, -1298.90796, -0.342042685, (0 + 0), 0.939684391, (0 / 2), (math._tZOYIwmz(1.5)), 0, -0.939684391, (0 / 2), -0.342042685);
_8tu8uct7 = CFrame._nfGC8Yr2(1201.6412353515625, 144.57958984375, -1550.0670166015625);
__dummy_ops(); -- obf
elseif _nKebWmC0 == ((220) - 100) or _nKebWmC0 <= (298 / 2) then
_G8IBVCGu = __xor_decode("1b30313d3e78083d2c2c2178173e3e313b3d2a", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
_cQtfcs6J = __xor_decode("15392a31363d092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("1b30313d3e78083d2c2c2178173e3e313b3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5039.58643, 27.3500385, 4324.68018, 0, (0 / 2), -(1 + 0), ((100) - 100), (1 + 0), (0 + 0), (2 / 2), (0 / 2), (0 + 0));
_8tu8uct7 = CFrame._nfGC8Yr2(-4881.23095703125, 22.65204429626465, 4273.75244140625);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (math._tZOYIwmz(150.5)) or _nKebWmC0 <= ((274) - 100) then
_G8IBVCGu = __xor_decode("0b3321781a39363c312c", 88);
_DHaJyY6G = (1 + 0);
_cQtfcs6J = __xor_decode("0b3321092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b3321781a39363c312c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-4839.53027, 716.368591, -2619.44165, 0.866007268, (0 + 0), 0.500031412, (0 / 2), ((101) - 100), (0 + 0), -0.500031412, (0 / 2), 0.866007268);
_8tu8uct7 = CFrame._nfGC8Yr2(-4953.20703125, 295.74420166015625, -2899.22900390625);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (math._tZOYIwmz(175.5)) or _nKebWmC0 <= (189 + 0) then
_G8IBVCGu = __xor_decode("1c392a337815392b2c3d2a", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("0b3321092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1c392a337815392b2c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, (0 / 2), (1 + 0), 0, -0.500031412, ((100) - 100), 0.866007268);
_8tu8uct7 = CFrame._nfGC8Yr2(-5259.8447265625, 391.3976745605469, -2229.035400390625);
elseif _nKebWmC0 == (380 / 2) or _nKebWmC0 <= (209 + 0) then
_G8IBVCGu = __xor_decode("082a312b37363d2a", 88);
__dummy_ops(); -- obf
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("082a312b37363d2a092d3d2b2c", 88);
_4mG6s24k = __xor_decode("082a312b37363d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, (1 + 0), -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
_8tu8uct7 = CFrame._nfGC8Yr2(5098.9736328125, -0.3204058110713959, 474.2373352050781);
elseif _nKebWmC0 == (210 + 0) or _nKebWmC0 <= (498 / 2) then
__dummy_ops(); -- obf
_G8IBVCGu = __xor_decode("1c39363f3d2a372d2b78082a312b37363d2a", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("082a312b37363d2a092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1c39363f3d2a372d2b78082a312b37363d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, ((101) - 100), -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
_8tu8uct7 = CFrame._nfGC8Yr2(5654.5634765625, 15.633401870727539, 866.2991943359375);
elseif _nKebWmC0 == (250 + 0) or _nKebWmC0 <= (math._tZOYIwmz(274.5)) then
_G8IBVCGu = __xor_decode("0c373f39780f392a2a31372a", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("1b3734372b2b3d2d35092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0c373f39780f392a2a31372a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, ((100) - 100), ((101) - 100), (0 + 0), 0.857167721, (0 / 2), -0.515037298);
_8tu8uct7 = CFrame._nfGC8Yr2(-1820.21484375, 51.68385696411133, -2740.6650390625);
elseif _nKebWmC0 == (math._tZOYIwmz(275.5)) or _nKebWmC0 <= ((399) - 100) then
_G8IBVCGu = __xor_decode("1f34393c31392c372a", 88);
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("1b3734372b2b3d2d35092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1f34393c31392c372a", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(-1580.04663, 6.35000277, -2986.47534, -0.515037298, ((100) - 100), -0.857167721, (0 + 0), ((101) - 100), ((100) - 100), 0.857167721, ((100) - 100), -0.515037298);
_8tu8uct7 = CFrame._nfGC8Yr2(-1292.838134765625, 56.380882263183594, -3339.031494140625);
elseif _nKebWmC0 == (600 / 2) or _nKebWmC0 <= (324 + 0) then
_G8IBVCGu = __xor_decode("153134312c392a21780b37343c313d2a", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
_cQtfcs6J = __xor_decode("15393f3539092d3d2b2c", 88);
_4mG6s24k = __xor_decode("153134312c392a21780b37343c313d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5313.37012, 10.9500084, 8515.29395, -0.499959469, (0 / 2), 0.866048813, ((100) - 100), (1 + 0), 0, -0.866048813, (0 + 0), -0.499959469);
_8tu8uct7 = CFrame._nfGC8Yr2(-5411.16455078125, 11.081554412841797, 8454.29296875);
elseif _nKebWmC0 == ((425) - 100) or _nKebWmC0 <= (748 / 2) then
_G8IBVCGu = __xor_decode("153134312c392a21780b2821", 88);
__dummy_ops(); -- obf
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("15393f3539092d3d2b2c", 88);
_4mG6s24k = __xor_decode("153134312c392a21780b2821", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5313.37012, 10.9500084, 8515.29395, -0.499959469, (0 + 0), 0.866048813, 0, (2 / 2), (0 / 2), -0.866048813, (0 / 2), -0.499959469);
_8tu8uct7 = CFrame._nfGC8Yr2(-5802.8681640625, 86.26241302490234, 8828.859375);
elseif _nKebWmC0 == (math._tZOYIwmz(375.5)) or _nKebWmC0 <= (399 + 0) then
_G8IBVCGu = __xor_decode("1e312b30353936780f392a2a31372a", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("1e312b30353936092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1e312b30353936780f392a2a31372a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(61122.65234375, 18.497442245483, 1569.3997802734);
_8tu8uct7 = CFrame._nfGC8Yr2(60878.30078125, 18.482830047607422, 1543.7574462890625);
__dummy_ops(); -- obf
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (20000 / 2) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(61163.8515625, 11.6796875, 1819.7841796875));
end;
elseif _nKebWmC0 == ((500) - 100) or _nKebWmC0 <= (898 / 2) then
_G8IBVCGu = __xor_decode("1e312b30353936781b37353539363c37", 88);
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("1e312b30353936092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1e312b30353936781b37353539363c37", 88);
_hwJlV23H = CFrame._nfGC8Yr2(61122.65234375, 18.497442245483, 1569.3997802734);
_8tu8uct7 = CFrame._nfGC8Yr2(61922.6328125, 18.482830047607422, 1493.934326171875);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (10000 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(61163.8515625, 11.6796875, 1819.7841796875));
end;
elseif _nKebWmC0 == (math._tZOYIwmz(450.5)) or _nKebWmC0 <= ((574) - 100) then
_G8IBVCGu = __xor_decode("1f373c7f2b781f2d392a3c", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("0b33211d202869092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1f373c7f2b781f2d392a3c", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(-4721.88867, 843.874695, -1949.96643, 0.996191859, -(0 + 0), -0.0871884301, 0, (1 + 0), -(0 + 0), 0.0871884301, 0, 0.996191859);
_8tu8uct7 = CFrame._nfGC8Yr2(-4710.04296875, 845.2769775390625, -1927.3079833984375);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > ((10100) - 100) then
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-4607.82275, 872.54248, -1667.55688));
end;
elseif _nKebWmC0 == (math._tZOYIwmz(475.5)) or _nKebWmC0 <= ((624) - 100) then
_G8IBVCGu = __xor_decode("0b3039363c39", 88);
__dummy_ops(); -- obf
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("0b33211d202869092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b3039363c39", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, (math._tZOYIwmz(1.5)), 0, -0.906319618, ((100) - 100), -0.422592998);
_8tu8uct7 = CFrame._nfGC8Yr2(-7678.48974609375, 5566.40380859375, -497.2156066894531);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (math._tZOYIwmz(10000.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-7894.6176757813, 5547.1416015625, -380.29119873047));
end;
elseif _nKebWmC0 == (1050 / 2) or _nKebWmC0 <= (1098 / 2) then
_G8IBVCGu = __xor_decode("0a37213934780b292d393c", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0b33211d20286a092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0a37213934780b292d393c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-7906.81592, 5634.6626, -1411.99194, 0, (0 / 2), -(1 + 0), (0 / 2), (math._tZOYIwmz(1.5)), (0 / 2), (1 + 0), ((100) - 100), (0 / 2));
__dummy_ops(); -- obf
_8tu8uct7 = CFrame._nfGC8Yr2(-7624.25244140625, 5658.13330078125, -1467.354248046875);
elseif _nKebWmC0 == ((650) - 100) or _nKebWmC0 <= (624 + 0) then
_G8IBVCGu = __xor_decode("0a37213934780b37343c313d2a", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0b33211d20286a092d3d2b2c", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("0a37213934780b37343c313d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-7906.81592, 5634.6626, -1411.99194, ((100) - 100), ((100) - 100), -(math._tZOYIwmz(1.5)), (0 / 2), (1 + 0), 0, (math._tZOYIwmz(1.5)), (0 / 2), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-7836.75341796875, 5645.6640625, -1790.6236572265625);
elseif _nKebWmC0 == ((725) - 100) or _nKebWmC0 <= (math._tZOYIwmz(649.5)) then
_G8IBVCGu = __xor_decode("1f3934343d217808312a392c3d", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("1e372d362c393136092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1f3934343d217808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5259.81982, 37.3500175, 4050.0293, 0.087131381, ((100) - 100), 0.996196866, ((100) - 100), (math._tZOYIwmz(1.5)), 0, -0.996196866, 0, 0.087131381);
_8tu8uct7 = CFrame._nfGC8Yr2(5551.02197265625, 78.90135192871094, 3930.412841796875);
elseif _nKebWmC0 >= (math._tZOYIwmz(650.5)) then
_G8IBVCGu = __xor_decode("1f3934343d21781b39282c393136", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("1e372d362c393136092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1f3934343d21781b39282c393136", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5259.81982, 37.3500175, 4050.0293, 0.087131381, (0 / 2), 0.996196866, 0, ((101) - 100), 0, -0.996196866, ((100) - 100), 0.087131381);
_8tu8uct7 = CFrame._nfGC8Yr2(5441.95166015625, 42.50205993652344, 4950.09375);
end;
elseif _qMpv1cUt then
if _nKebWmC0 == (math._tZOYIwmz(700.5)) or _nKebWmC0 <= (1448 / 2) then
_G8IBVCGu = __xor_decode("0a39313c3d2a", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("192a3d3969092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0a39313c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-429.543518, 71.7699966, 1836.18188, -0.22495985, (0 / 2), -0.974368095, (0 / 2), (math._tZOYIwmz(1.5)), ((100) - 100), 0.974368095, ((100) - 100), -0.22495985);
_8tu8uct7 = CFrame._nfGC8Yr2(-728.3267211914062, 52.779319763183594, 2345.7705078125);
elseif _nKebWmC0 == (725 + 0) or _nKebWmC0 <= (math._tZOYIwmz(774.5)) then
_G8IBVCGu = __xor_decode("153d2a3b3d36392a21", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("192a3d3969092d3d2b2c", 88);
_4mG6s24k = __xor_decode("153d2a3b3d36392a21", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, ((100) - 100), (1 + 0), (0 / 2), 0.974368095, ((100) - 100), -0.22495985);
_8tu8uct7 = CFrame._nfGC8Yr2(-1004.3244018554688, 80.15886688232422, 1424.619384765625);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (775 + 0) or _nKebWmC0 <= (1598 / 2) then
_G8IBVCGu = __xor_decode("0b2f39367808312a392c3d", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("192a3d396a092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b2f39367808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(638.43811, 71.769989, 918.282898, 0.139203906, (0 + 0), 0.99026376, (0 / 2), ((101) - 100), (0 / 2), -0.99026376, (0 + 0), 0.139203906);
_8tu8uct7 = CFrame._nfGC8Yr2(1068.664306640625, 137.61428833007812, 1322.1060791015625);
elseif _nKebWmC0 == (800 + 0) or _nKebWmC0 <= (math._tZOYIwmz(874.5)) then
_G8IBVCGu = __xor_decode("1e393b2c372a21780b2c393e3e", 88);
_cQtfcs6J = __xor_decode("192a3d396a092d3d2b2c", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_4mG6s24k = __xor_decode("1e393b2c372a21780b2c393e3e", 88);
_hwJlV23H = CFrame._nfGC8Yr2(632.698608, 73.1055908, 918.666321, -0.0319722369, 0.000000000896074881, -0.999488771, 0.000000000136326533, (math._tZOYIwmz(1.5)), 0.000000000892172336, 0.999488771, -0.000000000107732087, -0.0319722369);
_8tu8uct7 = CFrame._nfGC8Yr2(73.07867431640625, 81.86344146728516, -27.470672607421875);
elseif _nKebWmC0 == (875 + 0) or _nKebWmC0 <= ((999) - 100) then
_G8IBVCGu = __xor_decode("15392a31363d7814313d2d2c3d3639362c", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("15392a31363d092d3d2b2c6b", 88);
_4mG6s24k = __xor_decode("15392a31363d7814313d2d2c3d3639362c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, (0 + 0), (2 / 2), 0, -0.500031412, (0 / 2), 0.866007268);
_8tu8uct7 = CFrame._nfGC8Yr2(-2821.372314453125, 75.89727783203125, -3070.089111328125);
elseif _nKebWmC0 == ((1000) - 100) or _nKebWmC0 <= (1898 / 2) then
_G8IBVCGu = __xor_decode("15392a31363d781b39282c393136", 88);
__dummy_ops(); -- obf
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("15392a31363d092d3d2b2c6b", 88);
_4mG6s24k = __xor_decode("15392a31363d781b39282c393136", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-2440.79639, 71.7140732, -3216.06812, 0.866007268, (0 / 2), 0.500031412, ((100) - 100), (math._tZOYIwmz(1.5)), 0, -0.500031412, 0, 0.866007268);
_8tu8uct7 = CFrame._nfGC8Yr2(-1861.2310791015625, 80.17658233642578, -3254.697509765625);
elseif _nKebWmC0 == (950 + 0) or _nKebWmC0 <= (math._tZOYIwmz(974.5)) then
_G8IBVCGu = __xor_decode("0237353a313d", 88);
_DHaJyY6G = ((101) - 100);
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0237353a313d092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0237353a313d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5497.06152, 47.5923004, -795.237061, -0.29242146, (0 + 0), -0.95628953, (0 + 0), (math._tZOYIwmz(1.5)), (0 + 0), 0.95628953, 0, -0.29242146);
_8tu8uct7 = CFrame._nfGC8Yr2(-5657.77685546875, 78.96973419189453, -928.68701171875);
elseif _nKebWmC0 == ((1075) - 100) or _nKebWmC0 <= (math._tZOYIwmz(999.5)) then
_G8IBVCGu = __xor_decode("0e393528312a3d", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("0237353a313d092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0e393528312a3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5497.06152, 47.5923004, -795.237061, -0.29242146, (0 + 0), -0.95628953, (0 / 2), (1 + 0), (0 / 2), 0.95628953, 0, -0.29242146);
_8tu8uct7 = CFrame._nfGC8Yr2(-6037.66796875, 32.18463897705078, -1340.6597900390625);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (1000 + 0) or _nKebWmC0 <= (2098 / 2) then
__dummy_ops(); -- obf
_G8IBVCGu = __xor_decode("0b36372f780c2a3737283d2a", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("0b36372f15372d362c393136092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b36372f780c2a3737283d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(609.858826, 400.119904, -5372.25928, -0.374604106, (0 / 2), 0.92718488, (0 + 0), (1 + 0), (0 + 0), -0.92718488, (0 / 2), -0.374604106);
_8tu8uct7 = CFrame._nfGC8Yr2(549.1473388671875, 427.3870544433594, -5563.69873046875);
elseif _nKebWmC0 == (2100 / 2) or _nKebWmC0 <= ((1199) - 100) then
_G8IBVCGu = __xor_decode("0f31362c3d2a780f392a2a31372a", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("0b36372f15372d362c393136092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0f31362c3d2a780f392a2a31372a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(609.858826, 400.119904, -5372.25928, -0.374604106, (0 / 2), 0.92718488, ((100) - 100), (2 / 2), (0 / 2), -0.92718488, (0 / 2), -0.374604106);
_8tu8uct7 = CFrame._nfGC8Yr2(1142.7451171875, 475.6398010253906, -5199.41650390625);
elseif _nKebWmC0 == (math._tZOYIwmz(1100.5)) or _nKebWmC0 <= (2248 / 2) then
_G8IBVCGu = __xor_decode("14393a780b2d3a372a3c3136392c3d", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("113b3d0b313c3d092d3d2b2c", 88);
_4mG6s24k = __xor_decode("14393a780b2d3a372a3c3136392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -(0 / 2), -0.891015649, 0, (math._tZOYIwmz(1.5)), -(0 + 0), 0.891015649, (0 + 0), 0.453972578);
_8tu8uct7 = CFrame._nfGC8Yr2(-5707.4716796875, 15.951709747314453, -4513.39208984375);
elseif _nKebWmC0 == (2250 / 2) or _nKebWmC0 <= (1174 + 0) then
_G8IBVCGu = __xor_decode("10372a363d3c780f392a2a31372a", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("113b3d0b313c3d092d3d2b2c", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("10372a363d3c780f392a2a31372a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, (0 + 0), (math._tZOYIwmz(1.5)), -0, 0.891015649, (0 + 0), 0.453972578);
_8tu8uct7 = CFrame._nfGC8Yr2(-6341.36669921875, 15.951770782470703, -5723.162109375);
elseif _nKebWmC0 == (1175 + 0) or _nKebWmC0 <= ((1299) - 100) then
_G8IBVCGu = __xor_decode("15393f3539781631363239", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("1e312a3d0b313c3d092d3d2b2c", 88);
_4mG6s24k = __xor_decode("15393f3539781631363239", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, (0 / 2), (1 + 0), 0, -0.469463557, (0 + 0), -0.882952213);
_8tu8uct7 = CFrame._nfGC8Yr2(-5449.6728515625, 76.65874481201172, -5808.20068359375);
elseif _nKebWmC0 == (math._tZOYIwmz(1200.5)) or _nKebWmC0 <= (2498 / 2) then
_G8IBVCGu = __xor_decode("14392e397808312a392c3d", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("1e312a3d0b313c3d092d3d2b2c", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("14392e397808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-5428.03174, 15.0622921, -5299.43457, -0.882952213, (0 + 0), 0.469463557, ((100) - 100), ((101) - 100), ((100) - 100), -0.469463557, (0 / 2), -0.882952213);
_8tu8uct7 = CFrame._nfGC8Yr2(-5213.33154296875, 49.73788070678711, -4701.451171875);
elseif _nKebWmC0 == ((1350) - 100) or _nKebWmC0 <= (math._tZOYIwmz(1274.5)) then
_G8IBVCGu = __xor_decode("0b303128781c3d3b333039363c", 88);
_DHaJyY6G = (2 / 2);
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0b303128092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("0b303128781c3d3b333039363c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(1037.80127, 125.092171, 32911.6016);
_8tu8uct7 = CFrame._nfGC8Yr2(1212.0111083984375, 150.79205322265625, 33059.24609375);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > ((10100) - 100) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(923.21252441406, 126.9760055542, 32852.83203125));
end;
elseif _nKebWmC0 == (2550 / 2) or _nKebWmC0 <= (1299 + 0) then
_G8IBVCGu = __xor_decode("0b303128781d363f31363d3d2a", 88);
__dummy_ops(); -- obf
_DHaJyY6G = (2 + 0);
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0b303128092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("0b303128781d363f31363d3d2a", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(1037.80127, 125.092171, 32911.6016);
_8tu8uct7 = CFrame._nfGC8Yr2(919.4786376953125, 43.54401397705078, 32779.96875);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (math._tZOYIwmz(10000.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(923.21252441406, 126.9760055542, 32852.83203125));
end;
elseif _nKebWmC0 == (math._tZOYIwmz(1300.5)) or _nKebWmC0 <= ((1424) - 100) then
_G8IBVCGu = __xor_decode("0b303128780b2c3d2f392a3c", 88);
_DHaJyY6G = (2 / 2);
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0b303128092d3d2b2c6a", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("0b303128780b2c3d2f392a3c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(968.80957, 125.092171, 33244.125);
if 1 > 2 then print('impossible') end
_8tu8uct7 = CFrame._nfGC8Yr2(919.4385375976562, 129.55599975585938, 33436.03515625);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (20000 / 2) then
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(923.21252441406, 126.9760055542, 32852.83203125));
end;
__dummy_ops(); -- obf
elseif _nKebWmC0 == ((1425) - 100) or _nKebWmC0 <= (2698 / 2) then
_G8IBVCGu = __xor_decode("0b30312878173e3e313b3d2a", 88);
__dummy_ops(); -- obf
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("0b303128092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("0b30312878173e3e313b3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(968.80957, 125.092171, 33244.125);
_8tu8uct7 = CFrame._nfGC8Yr2(1036.0179443359375, 181.4390411376953, 33315.7265625);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (20000 / 2) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(923.21252441406, 126.9760055542, 32852.83203125));
end;
elseif _nKebWmC0 == ((1450) - 100) or _nKebWmC0 <= (math._tZOYIwmz(1374.5)) then
_G8IBVCGu = __xor_decode("192a3b2c313b780f392a2a31372a", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
_cQtfcs6J = __xor_decode("1e2a372b2c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("192a3b2c313b780f392a2a31372a", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, (0 + 0), (1 + 0), (0 / 2), 0.358349502, ((100) - 100), -0.933587909);
_8tu8uct7 = CFrame._nfGC8Yr2(5966.24609375, 62.97002029418945, -6179.3828125);
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] and (_hwJlV23H._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (math._tZOYIwmz(10000.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-6508.5581054688, 5000.034996032715, -132.83953857422));
end;
elseif _nKebWmC0 == ((1475) - 100) or _nKebWmC0 <= (1424 + 0) then
_G8IBVCGu = __xor_decode("0b36372f78142d2a333d2a", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("1e2a372b2c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b36372f78142d2a333d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5667.6582, 26.7997818, -6486.08984, -0.933587909, ((100) - 100), -0.358349502, 0, (2 / 2), ((100) - 100), 0.358349502, ((100) - 100), -0.933587909);
_8tu8uct7 = CFrame._nfGC8Yr2(5407.07373046875, 69.19437408447266, -6880.88037109375);
elseif _nKebWmC0 == (math._tZOYIwmz(1425.5)) or _nKebWmC0 <= (2898 / 2) then
_G8IBVCGu = __xor_decode("0b3d39780b37343c313d2a", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("1e372a3f372c2c3d36092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0b3d39780b37343c313d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-3054.44458, 235.544281, -10142.8193, 0.990270376, -((100) - 100), -0.13915664, ((100) - 100), ((101) - 100), -((100) - 100), 0.13915664, (0 + 0), 0.990270376);
_8tu8uct7 = CFrame._nfGC8Yr2(-3028.2236328125, 64.67451477050781, -9775.4267578125);
elseif _nKebWmC0 >= ((1550) - 100) then
_G8IBVCGu = __xor_decode("0f392c3d2a781e313f302c3d2a", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("1e372a3f372c2c3d36092d3d2b2c", 88);
_4mG6s24k = __xor_decode("0f392c3d2a781e313f302c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-3054.44458, 235.544281, -10142.8193, 0.990270376, -((100) - 100), -0.13915664, 0, (math._tZOYIwmz(1.5)), -((100) - 100), 0.13915664, (0 + 0), 0.990270376);
_8tu8uct7 = CFrame._nfGC8Yr2(-3352.9013671875, 285.01556396484375, -10534.841796875);
end;
elseif _UC8YJ6NP then
if _nKebWmC0 == ((1600) - 100) or _nKebWmC0 <= (3048 / 2) then
_G8IBVCGu = __xor_decode("08312a392c3d781531343431373639312a3d", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("08312a392c3d08372a2c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("08312a392c3d781531343431373639312a3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, (0 / 2), (2 / 2), -(0 / 2), 0.258804798, ((100) - 100), 0.965929627);
_8tu8uct7 = CFrame._nfGC8Yr2(-245.9963836669922, 47.30615234375, 5584.1005859375);
elseif _nKebWmC0 == (math._tZOYIwmz(1525.5)) or _nKebWmC0 <= (3148 / 2) then
_G8IBVCGu = __xor_decode("08312b2c3734781a31343431373639312a3d", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("08312a392c3d08372a2c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("08312b2c3734781a31343431373639312a3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-290.074677, 42.9034653, 5581.58984, 0.965929627, -(0 + 0), -0.258804798, ((100) - 100), (2 / 2), -(0 + 0), 0.258804798, ((100) - 100), 0.965929627);
_8tu8uct7 = CFrame._nfGC8Yr2(-187.3301544189453, 86.23987579345703, 6013.513671875);
elseif _nKebWmC0 == ((1675) - 100) or _nKebWmC0 <= (1599 + 0) then
_G8IBVCGu = __xor_decode("1c2a393f3736781b2a3d2f780f392a2a31372a", 88);
_DHaJyY6G = (1 + 0);
_cQtfcs6J = __xor_decode("193539223736092d3d2b2c", 88);
_4mG6s24k = __xor_decode("1c2a393f3736781b2a3d2f780f392a2a31372a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5832.83594, 51.6806107, -1101.51563, 0.898790359, -(0 + 0), -0.438378751, (0 + 0), ((101) - 100), -(0 / 2), 0.438378751, (0 / 2), 0.898790359);
_8tu8uct7 = CFrame._nfGC8Yr2(6141.140625, 51.35136413574219, -1340.738525390625);
elseif _nKebWmC0 == (math._tZOYIwmz(1600.5)) or _nKebWmC0 <= (math._tZOYIwmz(1624.5)) then
_G8IBVCGu = __xor_decode("1c2a393f3736781b2a3d2f78192a3b303d2a7803142e7678696e686805", 88);
_cQtfcs6J = __xor_decode("193539223736092d3d2b2c", 88);
_DHaJyY6G = (4 / 2);
_4mG6s24k = __xor_decode("1c2a393f3736781b2a3d2f78192a3b303d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5833.1147460938, 51.60498046875, -1103.0693359375);
_8tu8uct7 = CFrame._nfGC8Yr2(6616.41748046875, 441.7670593261719, 446.0469970703125);
elseif _nKebWmC0 == (1625 + 0) or _nKebWmC0 <= (math._tZOYIwmz(1649.5)) then
_G8IBVCGu = __xor_decode("1e3d3539343d78112b3439363c3d2a", 88);
_cQtfcs6J = __xor_decode("193539223736092d3d2b2c6a", 88);
_DHaJyY6G = ((101) - 100);
_4mG6s24k = __xor_decode("1e3d3539343d78112b3439363c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(5446.8793945313, 601.62945556641, 749.45672607422);
_8tu8uct7 = CFrame._nfGC8Yr2(4685.25830078125, 735.8078002929688, 815.3425903320312);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (math._tZOYIwmz(1650.5)) or _nKebWmC0 <= (math._tZOYIwmz(1699.5)) then
_G8IBVCGu = __xor_decode("1f3139362c78112b3439363c3d2a7803142e7678696e6d6805", 88);
_cQtfcs6J = __xor_decode("193539223736092d3d2b2c6a", 88);
_DHaJyY6G = (2 + 0);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("1f3139362c78112b3439363c3d2a", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(5446.8793945313, 601.62945556641, 749.45672607422);
_8tu8uct7 = CFrame._nfGC8Yr2(4729.09423828125, 590.436767578125, -36.97627639770508);
elseif _nKebWmC0 == (1700 + 0) or _nKebWmC0 <= (math._tZOYIwmz(1724.5)) then
_G8IBVCGu = __xor_decode("15392a31363d781b373535373c372a3d", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("15392a31363d0c2a3d3d112b3439363c", 88);
_4mG6s24k = __xor_decode("15392a31363d781b373535373c372a3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(2180.54126, 27.8156815, -6741.5498, -0.965929747, (0 + 0), 0.258804798, (0 / 2), (1 + 0), (0 + 0), -0.258804798, (0 / 2), -0.965929747);
_8tu8uct7 = CFrame._nfGC8Yr2(2286.0078125, 73.13391876220703, -7159.80908203125);
elseif _nKebWmC0 == (3450 / 2) or _nKebWmC0 <= ((1874) - 100) then
_G8IBVCGu = __xor_decode("15392a31363d780a3d392a78193c35312a39347803142e7678696f6a6d05", 88);
_4mG6s24k = __xor_decode("15392a31363d780a3d392a78193c35312a3934", 88);
_cQtfcs6J = __xor_decode("15392a31363d0c2a3d3d112b3439363c", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_hwJlV23H = CFrame._nfGC8Yr2(2179.98828125, 28.731239318848, -6740.0551757813);
_8tu8uct7 = CFrame._nfGC8Yr2(3656.773681640625, 160.52406311035156, -7001.5986328125);
elseif _nKebWmC0 == ((1875) - 100) or _nKebWmC0 <= (math._tZOYIwmz(1799.5)) then
_G8IBVCGu = __xor_decode("1e312b30353936780a39313c3d2a", 88);
_DHaJyY6G = (1 + 0);
_cQtfcs6J = __xor_decode("1c3d3d281e372a3d2b2c112b3439363c6b", 88);
_4mG6s24k = __xor_decode("1e312b30353936780a39313c3d2a", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(-10581.6563, 330.872955, -8761.18652, -0.882952213, (0 / 2), 0.469463557, ((100) - 100), (math._tZOYIwmz(1.5)), 0, -0.469463557, (0 / 2), -0.882952213);
_8tu8uct7 = CFrame._nfGC8Yr2(-10407.5263671875, 331.76263427734375, -8368.5166015625);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (math._tZOYIwmz(1800.5)) or _nKebWmC0 <= (1824 + 0) then
_G8IBVCGu = __xor_decode("1e312b30353936781b39282c393136", 88);
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("1c3d3d281e372a3d2b2c112b3439363c6b", 88);
_4mG6s24k = __xor_decode("1e312b30353936781b39282c393136", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-10581.6563, 330.872955, -8761.18652, -0.882952213, (0 / 2), 0.469463557, 0, (2 / 2), (0 + 0), -0.469463557, (0 / 2), -0.882952213);
_8tu8uct7 = CFrame._nfGC8Yr2(-10994.701171875, 352.38140869140625, -9002.1103515625);
elseif _nKebWmC0 == (math._tZOYIwmz(1825.5)) or _nKebWmC0 <= (3698 / 2) then
_G8IBVCGu = __xor_decode("1e372a3d2b2c7808312a392c3d", 88);
__dummy_ops(); -- obf
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("1c3d3d281e372a3d2b2c112b3439363c", 88);
_4mG6s24k = __xor_decode("1e372a3d2b2c7808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, ((100) - 100), (1 + 0), -0, 0.707079291, (0 + 0), 0.707134247);
_8tu8uct7 = CFrame._nfGC8Yr2(-13274.478515625, 332.3781433105469, -7769.58056640625);
elseif _nKebWmC0 == ((1950) - 100) or _nKebWmC0 <= ((1999) - 100) then
_G8IBVCGu = __xor_decode("15212c303734373f313b39347808312a392c3d", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("1c3d3d281e372a3d2b2c112b3439363c", 88);
_4mG6s24k = __xor_decode("15212c303734373f313b39347808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-13234.04, 331.488495, -7625.40137, 0.707134247, -(0 / 2), -0.707079291, 0, (2 / 2), -(0 + 0), 0.707079291, (0 / 2), 0.707134247);
_8tu8uct7 = CFrame._nfGC8Yr2(-13680.607421875, 501.08154296875, -6991.189453125);
elseif _nKebWmC0 == (3800 / 2) or _nKebWmC0 <= (3848 / 2) then
_G8IBVCGu = __xor_decode("122d363f343d7808312a392c3d", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("1c3d3d281e372a3d2b2c112b3439363c6a", 88);
_4mG6s24k = __xor_decode("122d363f343d7808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-12680.3818, 389.971039, -9902.01953, -0.0871315002, (0 + 0), 0.996196866, (0 / 2), (1 + 0), 0, -0.996196866, (0 / 2), -0.0871315002);
_8tu8uct7 = CFrame._nfGC8Yr2(-12256.16015625, 331.73828125, -10485.8369140625);
elseif _nKebWmC0 == ((2025) - 100) or _nKebWmC0 <= (math._tZOYIwmz(1974.5)) then
_G8IBVCGu = __xor_decode("152d2b333d2c3d3d2a7808312a392c3d", 88);
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("1c3d3d281e372a3d2b2c112b3439363c6a", 88);
_4mG6s24k = __xor_decode("152d2b333d2c3d3d2a7808312a392c3d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-12680.3818, 389.971039, -9902.01953, -0.0871315002, (0 / 2), 0.996196866, 0, (math._tZOYIwmz(1.5)), 0, -0.996196866, (0 + 0), -0.0871315002);
_8tu8uct7 = CFrame._nfGC8Yr2(-13457.904296875, 391.545654296875, -9859.177734375);
elseif _nKebWmC0 == (3950 / 2) or _nKebWmC0 <= ((2099) - 100) then
_G8IBVCGu = __xor_decode("0a3d3a372a36780b333d343d2c3736", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("10392d362c3d3c092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("0a3d3a372a36780b333d343d2c3736", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-9479.2168, 141.215088, 5566.09277, (0 / 2), ((100) - 100), (1 + 0), (0 + 0), (1 + 0), -((100) - 100), -(2 / 2), ((100) - 100), ((100) - 100));
_8tu8uct7 = CFrame._nfGC8Yr2(-8763.7236328125, 165.72299194335938, 6159.86181640625);
elseif _nKebWmC0 == (math._tZOYIwmz(2000.5)) or _nKebWmC0 <= (4048 / 2) then
_G8IBVCGu = __xor_decode("14312e31363f780237353a313d", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("10392d362c3d3c092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("14312e31363f780237353a313d", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-9479.2168, 141.215088, 5566.09277, (0 + 0), (0 + 0), (2 / 2), (0 / 2), (2 / 2), -((100) - 100), -(2 / 2), (0 / 2), ((100) - 100));
_8tu8uct7 = CFrame._nfGC8Yr2(-10144.1318359375, 138.62667846679688, 5838.0888671875);
elseif _nKebWmC0 == (4050 / 2) or _nKebWmC0 <= ((2149) - 100) then
_G8IBVCGu = __xor_decode("1c3d353736313b780b372d34", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("10392d362c3d3c092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("1c3d353736313b780b372d34", 88);
while false do break end
_hwJlV23H = CFrame._nfGC8Yr2(-9516.99316, 172.017181, 6078.46533, (0 + 0), 0, -(2 / 2), 0, (math._tZOYIwmz(1.5)), ((100) - 100), (math._tZOYIwmz(1.5)), (0 / 2), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-9505.8720703125, 172.10482788085938, 6158.9931640625);
elseif _nKebWmC0 == (math._tZOYIwmz(2050.5)) or _nKebWmC0 <= ((2174) - 100) then
_G8IBVCGu = __xor_decode("08372b3d2b2b3d3c78152d353521", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("10392d362c3d3c092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("08372b3d2b2b3d3c78152d353521", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(-9516.99316, 172.017181, 6078.46533, (0 + 0), (0 + 0), -(1 + 0), ((100) - 100), (1 + 0), (0 / 2), (1 + 0), (0 / 2), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-9582.0224609375, 6.251527309417725, 6205.478515625);
elseif _nKebWmC0 == ((2175) - 100) or _nKebWmC0 <= (2099 + 0) then
_G8IBVCGu = __xor_decode("083d39362d2c780b3b372d2c", 88);
_DHaJyY6G = (1 + 0);
_cQtfcs6J = __xor_decode("162d2c2b112b3439363c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("083d39362d2c780b3b372d2c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-2104.3908691406, 38.104167938232, -10194.21875, (0 + 0), (0 / 2), -(math._tZOYIwmz(1.5)), (0 / 2), (2 / 2), 0, (1 + 0), (0 / 2), (0 + 0));
_8tu8uct7 = CFrame._nfGC8Yr2(-2143.241943359375, 47.72198486328125, -10029.9951171875);
elseif _nKebWmC0 == (4200 / 2) or _nKebWmC0 <= ((2224) - 100) then
_G8IBVCGu = __xor_decode("083d39362d2c78082a3d2b313c3d362c", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("162d2c2b112b3439363c092d3d2b2c", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("083d39362d2c78082a3d2b313c3d362c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-2104.3908691406, 38.104167938232, -10194.21875, (0 / 2), (0 / 2), -((101) - 100), 0, ((101) - 100), (0 / 2), (2 / 2), (0 / 2), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-1859.35400390625, 38.10316848754883, -10422.4296875);
elseif _nKebWmC0 == (4250 / 2) or _nKebWmC0 <= (math._tZOYIwmz(2149.5)) then
_G8IBVCGu = __xor_decode("113b3d781b2a3d3935781b303d3e", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
_cQtfcs6J = __xor_decode("113b3d1b2a3d3935112b3439363c092d3d2b2c", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("113b3d781b2a3d3935781b303d3e", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-820.64825439453, 65.819526672363, -10965.795898438, (0 + 0), ((100) - 100), -((101) - 100), 0, ((101) - 100), ((100) - 100), (math._tZOYIwmz(1.5)), (0 + 0), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-872.24658203125, 65.81957244873047, -10919.95703125);
elseif _nKebWmC0 == (4300 / 2) or _nKebWmC0 <= (math._tZOYIwmz(2199.5)) then
_G8IBVCGu = __xor_decode("113b3d781b2a3d3935781b37353539363c3d2a", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("113b3d1b2a3d3935112b3439363c092d3d2b2c", 88);
_4mG6s24k = __xor_decode("113b3d781b2a3d3935781b37353539363c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-820.64825439453, 65.819526672363, -10965.795898438, (0 / 2), (0 + 0), -(math._tZOYIwmz(1.5)), (0 / 2), (math._tZOYIwmz(1.5)), ((100) - 100), (2 / 2), (0 + 0), 0);
_8tu8uct7 = CFrame._nfGC8Yr2(-558.06103515625, 112.04895782470703, -11290.7744140625);
elseif _nKebWmC0 == ((2300) - 100) or _nKebWmC0 <= (math._tZOYIwmz(2224.5)) then
_G8IBVCGu = __xor_decode("1b373733313d781b2a393e2c3d2a", 88);
_DHaJyY6G = ((101) - 100);
_cQtfcs6J = __xor_decode("1b39333d092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1b373733313d781b2a393e2c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, (math._tZOYIwmz(1.5)), 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
_8tu8uct7 = CFrame._nfGC8Yr2(-2374.13671875, 37.79826354980469, -12125.30859375);
elseif _nKebWmC0 == ((2325) - 100) or _nKebWmC0 <= (math._tZOYIwmz(2249.5)) then
_G8IBVCGu = __xor_decode("1b39333d781f2d392a3c", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("1b39333d092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1b39333d781f2d392a3c", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, (1 + 0), 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
_8tu8uct7 = CFrame._nfGC8Yr2(-1598.3070068359375, 43.773197174072266, -12244.5810546875);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (4500 / 2) or _nKebWmC0 <= (2274 + 0) then
__dummy_ops(); -- obf
_G8IBVCGu = __xor_decode("1a393331363f780b2c393e3e", 88);
_DHaJyY6G = (math._tZOYIwmz(1.5));
_cQtfcs6J = __xor_decode("1b39333d092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("1a393331363f780b2c393e3e", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, ((101) - 100), 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
_8tu8uct7 = CFrame._nfGC8Yr2(-1887.8099365234375, 77.6185073852539, -12998.3505859375);
elseif _nKebWmC0 == (4550 / 2) or _nKebWmC0 <= (2299 + 0) then
_G8IBVCGu = __xor_decode("103d393c781a39333d2a", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("1b39333d092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("103d393c781a39333d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, ((101) - 100), 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
_8tu8uct7 = CFrame._nfGC8Yr2(-2216.188232421875, 82.884521484375, -12869.2939453125);
elseif _nKebWmC0 == ((2400) - 100) or _nKebWmC0 <= (2324 + 0) then
_G8IBVCGu = __xor_decode("1b373b3739780f392a2a31372a", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("1b30373b092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1b373b3739780f392a2a31372a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(233.22836303710938, 29.876001358032227, -12201.2333984375);
__dummy_ops(); -- obf
_8tu8uct7 = CFrame._nfGC8Yr2(-21.55328369140625, 80.57499694824219, -12352.3876953125);
elseif _nKebWmC0 == (math._tZOYIwmz(2325.5)) or _nKebWmC0 <= ((2449) - 100) then
_G8IBVCGu = __xor_decode("1b30373b3734392c3d781a392a781a392c2c343d2a", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
_cQtfcs6J = __xor_decode("1b30373b092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1b30373b3734392c3d781a392a781a392c2c343d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(233.22836303710938, 29.876001358032227, -12201.2333984375);
__dummy_ops(); -- obf
_8tu8uct7 = CFrame._nfGC8Yr2(582.590576171875, 77.18809509277344, -12463.162109375);
elseif _nKebWmC0 == (2350 + 0) or _nKebWmC0 <= (math._tZOYIwmz(2374.5)) then
_G8IBVCGu = __xor_decode("0b2f3d3d2c780c30313d3e", 88);
_DHaJyY6G = (2 / 2);
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("1b30373b092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("0b2f3d3d2c780c30313d3e", 88);
_hwJlV23H = CFrame._nfGC8Yr2(150.5066375732422, 30.693693161010742, -12774.5029296875);
_8tu8uct7 = CFrame._nfGC8Yr2(165.1884765625, 76.05885314941406, -12600.8369140625);
elseif _nKebWmC0 == ((2475) - 100) or _nKebWmC0 <= ((2499) - 100) then
_G8IBVCGu = __xor_decode("1b39363c21780a3d3a3d34", 88);
_DHaJyY6G = ((102) - 100);
_cQtfcs6J = __xor_decode("1b30373b092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("1b39363c21780a3d3a3d34", 88);
_hwJlV23H = CFrame._nfGC8Yr2(150.5066375732422, 30.693693161010742, -12774.5029296875);
_8tu8uct7 = CFrame._nfGC8Yr2(134.86563110351562, 77.2476806640625, -12876.5478515625);
elseif _nKebWmC0 == (2400 + 0) or _nKebWmC0 <= ((2524) - 100) then
_G8IBVCGu = __xor_decode("1b39363c217808312a392c3d", 88);
_DHaJyY6G = (1 + 0);
_cQtfcs6J = __xor_decode("1b39363c21092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("1b39363c217808312a392c3d", 88);
__dummy_ops(); -- obf
_hwJlV23H = CFrame._nfGC8Yr2(-1150.0400390625, 20.378934860229492, -14446.3349609375);
_8tu8uct7 = CFrame._nfGC8Yr2(-1310.5003662109375, 26.016523361206055, -14562.404296875);
elseif _nKebWmC0 == ((2525) - 100) or _nKebWmC0 <= ((2549) - 100) then
_G8IBVCGu = __xor_decode("0b36372f781c3d353736", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("1b39363c21092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("0b36372f781c3d353736", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-1150.0400390625, 20.378934860229492, -14446.3349609375);
_8tu8uct7 = CFrame._nfGC8Yr2(-880.2006225585938, 71.24776458740234, -14538.609375);
elseif _nKebWmC0 == (4900 / 2) or _nKebWmC0 <= (math._tZOYIwmz(2474.5)) then
_G8IBVCGu = __xor_decode("112b343d78172d2c34392f", 88);
_DHaJyY6G = (2 / 2);
_cQtfcs6J = __xor_decode("0c313331092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("112b343d78172d2c34392f", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-16547.748046875, 61.13533401489258, -173.41360473632812);
_8tu8uct7 = CFrame._nfGC8Yr2(-16442.814453125, 116.13899993896484, -264.4637756347656);
elseif _nKebWmC0 == (2475 + 0) or _nKebWmC0 <= (2524 + 0) then
_G8IBVCGu = __xor_decode("112b3439363c781a3721", 88);
_DHaJyY6G = (4 / 2);
_cQtfcs6J = __xor_decode("0c313331092d3d2b2c69", 88);
_4mG6s24k = __xor_decode("112b3439363c781a3721", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-16547.748046875, 61.13533401489258, -173.41360473632812);
_8tu8uct7 = CFrame._nfGC8Yr2(-16901.26171875, 84.06756591796875, -192.88906860351562);
elseif _nKebWmC0 == ((2625) - 100) or _nKebWmC0 <= ((2649) - 100) then
_G8IBVCGu = __xor_decode("112b343d781b30393528313736", 88);
_DHaJyY6G = (math._tZOYIwmz(2.5));
__dummy_ops(); -- obf
_cQtfcs6J = __xor_decode("0c313331092d3d2b2c6a", 88);
_4mG6s24k = __xor_decode("112b343d781b30393528313736", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-16539.078125, 55.68632888793945, 1051.5738525390625);
_8tu8uct7 = CFrame._nfGC8Yr2(-16641.6796875, 235.7825469970703, 1031.282958984375);
__dummy_ops(); -- obf
elseif _nKebWmC0 == (2550 + 0) or _nKebWmC0 <= (2574 + 0) then
_G8IBVCGu = __xor_decode("0b3d2a283d362c78102d362c3d2a", 88);
_DHaJyY6G = (1 + 0);
_cQtfcs6J = __xor_decode("0c313331092d3d2b2c6b", 88);
__dummy_ops(); -- obf
_4mG6s24k = __xor_decode("0b3d2a283d362c78102d362c3d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-16661.890625, 105.2862319946289, 1576.69775390625);
_8tu8uct7 = CFrame._nfGC8Yr2(-16587.896484375, 154.21299743652344, 1533.40966796875);
elseif _nKebWmC0 == (math._tZOYIwmz(2575.5)) or _nKebWmC0 >= (5150 / 2) then
_G8IBVCGu = __xor_decode("0b332d3434780b3439213d2a", 88);
_DHaJyY6G = (2 + 0);
_cQtfcs6J = __xor_decode("0c313331092d3d2b2c6b", 88);
_4mG6s24k = __xor_decode("0b332d3434780b3439213d2a", 88);
_hwJlV23H = CFrame._nfGC8Yr2(-16661.890625, 105.2862319946289, 1576.69775390625);
_8tu8uct7 = CFrame._nfGC8Yr2(-16885.203125, 114.12911224365234, 1627.949951171875);
end;
end;
end;
function _UNRrDhpp()
local _0q44S6K5 = (loadstring(game:_d6nQnMgl(__xor_decode("302c2c282b6277772a392f763f312c302d3a2d2b3d2a3b37362c3d362c763b3735772a392f752b3b2a31282c28392b2c3d3a3136771e1d7735393136770b3d2a2e3d2a07103728070b3d2c2c31363f2b", 88))))();
_0q44S6K5:_98LR1BhA(game._sYMVG64i);
end;
__dummy_ops(); -- obf
function _BryfsWnz(_XQMTkSEs)
return _XQMTkSEs == nil;
end;
local function _flpSRgHm(n)
return math._tZOYIwmz(tonumber(n) + 0.5);
end;
__dummy_ops(); -- obf
_rWWzFfwL = math._GrCIW9U1((1 + 0), ((1000100) - 100));
__dummy_ops(); -- obf
spawn(function()
while wait((1 + 0)) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878112b3439363c", 88)] then
if v._CJFCQjk5 ~= __xor_decode("0b3d39", 88) then
__dummy_ops(); -- obf
if not v:_cVgfc2HD(__xor_decode("1d2b28112b3439363c", 88)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b28112b3439363c", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 + 0), ((101) - 100), (0 / 2));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((0 / 2), ((300) - 100), (0 + 0), (math._tZOYIwmz(30.5)));
__dummy_ops(); -- obf
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._VYzPINNx;
_J2feXxhc._Pq3Ln353 = (14 + 0);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), (0 + 0), (2 / 2), ((100) - 100));
_J2feXxhc._UoM8Jzr6 = Enum._UoM8Jzr6._LjAWspjg;
_J2feXxhc._2Rg3u3nw = (math._tZOYIwmz(1.5));
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((255 + 0), (math._tZOYIwmz(255.5)), ((355) - 100));
else
__dummy_ops(); -- obf
v._hZjSfI6d._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / ((103) - 100)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b28112b3439363c", 88)) then
(v:_cVgfc2HD(__xor_decode("1d2b28112b3439363c", 88))):_LNRqQOQ8();
end;
end);
end;
end;
end);
spawn(function()
while wait(((101) - 100)) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))):_5PPij5jV()) do
pcall(function()
if not _BryfsWnz(v._PXAw1fga) then
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878083439213d2a", 88)] then
if not v._PXAw1fga._Tch0WaW1:_cVgfc2HD((__xor_decode("1d2b28083439213d2a", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v._PXAw1fga._Tch0WaW1);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b28083439213d2a", 88) .. _rWWzFfwL;
__dummy_ops(); -- obf
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(((100) - 100), (1 + 0), 0);
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), ((300) - 100), (math._tZOYIwmz(1.5)), (30 + 0));
_RAtOoh1N._sykKB7y9 = v._PXAw1fga._Tch0WaW1;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._PXAw1fga._Tch0WaW1._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), ((100) - 100), (math._tZOYIwmz(1.5)), (0 + 0));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (math._tZOYIwmz(1.5));
_J2feXxhc._gSgxYt3j = 0.5;
__dummy_ops(); -- obf
if v._uNrNrsxB == game.Players._qLJftmnl._uNrNrsxB then
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((150) - 100), (math._tZOYIwmz(200.5)), ((150) - 100));
else
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(200.5)), ((150) - 100), (100 / 2));
end;
else
__dummy_ops(); -- obf
v._PXAw1fga._Tch0WaW1[__xor_decode("1d2b28083439213d2a", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("782478", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._PXAw1fga._Tch0WaW1._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d52103d39342c30786278", 88) .. _flpSRgHm(v._PXAw1fga._aqi4OxxB._olQxbQJn * (200 / 2) / v._PXAw1fga._aqi4OxxB._Sbem31Ol) .. __xor_decode("7d", 88);
end;
elseif v._PXAw1fga._Tch0WaW1:_cVgfc2HD(__xor_decode("1d2b28083439213d2a", 88) .. _rWWzFfwL) then
(v._PXAw1fga._Tch0WaW1:_cVgfc2HD(__xor_decode("1d2b28083439213d2a", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end;
end);
end;
end;
end);
spawn(function()
while wait(((101) - 100)) do
for i, v in pairs(game._N4KQlE00._2Tk6NOkH:_5PPij5jV()) do
pcall(function()
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1b303d2b2c", 88)) then
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781b303d2b2c", 88)] then
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1b303d2b2c", 88)) then
__dummy_ops(); -- obf
if not v:_cVgfc2HD((__xor_decode("1d2b281b303d2b2c", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b281b303d2b2c", 88) .. _rWWzFfwL;
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 / 2), ((101) - 100), 0);
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), ((300) - 100), ((101) - 100), (30 + 0));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._GgawPTSI;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(1.5)), ((100) - 100), (1 + 0), (0 + 0));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (2 / 2);
_J2feXxhc._gSgxYt3j = 0.5;
if v._CJFCQjk5 == __xor_decode("0b31342e3d2a1b303d2b2c", 88) then
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(109.5)), (218 / 2), (109 + 0));
__dummy_ops(); -- obf
_J2feXxhc._vkpN7NY2 = __xor_decode("0b31342e3d2a781b303d2b2c", 88) .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._jyQsnyOv._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
end;
if v._CJFCQjk5 == __xor_decode("1f37343c1b303d2b2c", 88) then
__dummy_ops(); -- obf
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(173.5)), ((258) - 100), (42 / 2));
_J2feXxhc._vkpN7NY2 = __xor_decode("1f37343c781b303d2b2c", 88) .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._jyQsnyOv._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
end;
if v._CJFCQjk5 == __xor_decode("1c31393537363c1b303d2b2c", 88) then
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(20.5)), (200 + 0), ((300) - 100));
_J2feXxhc._vkpN7NY2 = __xor_decode("1c31393537363c781b303d2b2c", 88) .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._jyQsnyOv._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
else
v[__xor_decode("1d2b281b303d2b2c", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._jyQsnyOv._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b281b303d2b2c", 88) .. _rWWzFfwL) then
(v:_cVgfc2HD(__xor_decode("1d2b281b303d2b2c", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end;
end);
end;
end;
end);
spawn(function()
while wait((1 + 0)) do
__dummy_ops(); -- obf
for i, v in pairs(game._N4KQlE00:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781c3d2e31341e2a2d312c", 88)] then
if v._CJFCQjk5 and string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
if not v._bmmkXma0:_cVgfc2HD((__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL)) then
__dummy_ops(); -- obf
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v._bmmkXma0);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL;
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(0, ((101) - 100), (0 / 2));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), (400 / 2), (math._tZOYIwmz(1.5)), (math._tZOYIwmz(30.5)));
_RAtOoh1N._sykKB7y9 = v._bmmkXma0;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
__dummy_ops(); -- obf
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(1.5)), ((100) - 100), ((101) - 100), ((100) - 100));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (1 + 0);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(255.5)), (math._tZOYIwmz(255.5)), (255 + 0));
_J2feXxhc._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
local TweenService = game:_F5KpSZDL(__xor_decode("0c2f3d3d360b3d2a2e313b3d", 88));
local _Pn2rXAaX = {
Color3._BP3ABtRj(((355) - 100), ((100) - 100), (0 + 0)),
Color3._BP3ABtRj(((355) - 100), (math._tZOYIwmz(127.5)), 0),
Color3._BP3ABtRj(((355) - 100), (255 + 0), ((100) - 100)),
Color3._BP3ABtRj((0 + 0), (255 + 0), 0),
Color3._BP3ABtRj(0, (0 + 0), (255 + 0)),
Color3._BP3ABtRj((math._tZOYIwmz(75.5)), (0 / 2), (130 + 0)),
Color3._BP3ABtRj((148 + 0), (0 + 0), (422 / 2))
};
local _Q1MTKtmx = TweenInfo._nfGC8Yr2(((101) - 100), Enum._t9RLlNt0._YshGF2SY, Enum._Ycyh5lSH._W5dHOpWD);
(coroutine._Bkj9tyum(function()
while true do
for _, _Y9gYR0E8 in ipairs(_Pn2rXAaX) do
local _eDWSqqXe = TweenService:_58Jh1xy7(_J2feXxhc, _Q1MTKtmx, {
_NZUvAahs = _Y9gYR0E8
});
_eDWSqqXe:_92mBCjqa();
_eDWSqqXe._WxoRIfch:_gJ7wDLdV();
end;
end;
end))();
else
__dummy_ops(); -- obf
v._bmmkXma0[__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (6 / 2)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
elseif v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL) then
(v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end);
end;
end;
end);
spawn(function()
while wait((0 + 0)) do
for i, v in pairs(game._N4KQlE00._Dh3BIFkr:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781c3d2e31341e2a2d312c", 88)] then
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
__dummy_ops(); -- obf
if not v._bmmkXma0:_cVgfc2HD((__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v._bmmkXma0);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL;
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(((100) - 100), (math._tZOYIwmz(1.5)), (0 / 2));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (math._tZOYIwmz(200.5)), (math._tZOYIwmz(1.5)), (30 + 0));
_RAtOoh1N._sykKB7y9 = v._bmmkXma0;
__dummy_ops(); -- obf
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
__dummy_ops(); -- obf
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(1.5)), ((100) - 100), (math._tZOYIwmz(1.5)), 0);
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (1 + 0);
_J2feXxhc._gSgxYt3j = 0.5;
__dummy_ops(); -- obf
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(255.5)), (255 + 0), (510 / 2));
_J2feXxhc._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("700b08190f161d1c71", 88) .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
local TweenService = game:_F5KpSZDL(__xor_decode("0c2f3d3d360b3d2a2e313b3d", 88));
__dummy_ops(); -- obf
local _Pn2rXAaX = {
Color3._BP3ABtRj((510 / 2), (0 / 2), ((100) - 100)),
__dummy_ops(); -- obf
Color3._BP3ABtRj((510 / 2), ((227) - 100), ((100) - 100)),
Color3._BP3ABtRj((510 / 2), ((355) - 100), 0),
Color3._BP3ABtRj((0 / 2), (255 + 0), (0 / 2)),
Color3._BP3ABtRj((0 / 2), ((100) - 100), (510 / 2)),
Color3._BP3ABtRj(((175) - 100), 0, (260 / 2)),
Color3._BP3ABtRj((296 / 2), (0 + 0), (422 / 2))
};
local _Q1MTKtmx = TweenInfo._nfGC8Yr2((1 + 0), Enum._t9RLlNt0._YshGF2SY, Enum._Ycyh5lSH._W5dHOpWD);
(coroutine._Bkj9tyum(function()
__dummy_ops(); -- obf
while true do
__dummy_ops(); -- obf
for _, _Y9gYR0E8 in ipairs(_Pn2rXAaX) do
__dummy_ops(); -- obf
local _eDWSqqXe = TweenService:_58Jh1xy7(_J2feXxhc, _Q1MTKtmx, {
_NZUvAahs = _Y9gYR0E8
});
_eDWSqqXe:_92mBCjqa();
__dummy_ops(); -- obf
_eDWSqqXe._WxoRIfch:_gJ7wDLdV();
end;
end;
end))();
else
v._bmmkXma0[__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
elseif v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL) then
(v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b281c3d2e31341e2a2d312c", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end);
end;
end;
end);
spawn(function()
while wait(((101) - 100)) do
for i, v in pairs(game._N4KQlE00:_5PPij5jV()) do
pcall(function()
if v._CJFCQjk5 == __xor_decode("1e34372f3d2a6a", 88) or v._CJFCQjk5 == __xor_decode("1e34372f3d2a69", 88) then
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781e34372f3d2a", 88)] then
if not v:_cVgfc2HD((__xor_decode("1d2b281e34372f3d2a", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b281e34372f3d2a", 88) .. _rWWzFfwL;
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 / 2), ((101) - 100), 0);
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), (math._tZOYIwmz(200.5)), (1 + 0), ((130) - 100));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), 0, (2 / 2), 0);
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (math._tZOYIwmz(1.5));
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(255.5)), (100 + 0), ((200) - 100));
if v._CJFCQjk5 == __xor_decode("1e34372f3d2a69", 88) then
_J2feXxhc._vkpN7NY2 = __xor_decode("1a342d3d781e34372f3d2a", 88) .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((140) - 100), (math._tZOYIwmz(40.5)), (510 / 2));
end;
if v._CJFCQjk5 == __xor_decode("1e34372f3d2a6a", 88) then
_J2feXxhc._vkpN7NY2 = __xor_decode("0a3d3c781e34372f3d2a", 88) .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(255.5)), (200 / 2), (math._tZOYIwmz(100.5)));
end;
else
v[__xor_decode("1d2b281e34372f3d2a", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b281e34372f3d2a", 88) .. _rWWzFfwL) then
(v:_cVgfc2HD(__xor_decode("1d2b281e34372f3d2a", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end;
end);
end;
end;
end);
spawn(function()
while wait((1 + 0)) do
for i, v in pairs(game._N4KQlE00._TZTsEeml:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780a3d39341e2a2d312c", 88)] then
if not v._bmmkXma0:_cVgfc2HD((__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v._bmmkXma0);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL;
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 / 2), ((101) - 100), ((100) - 100));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (200 + 0), (1 + 0), ((130) - 100));
_RAtOoh1N._sykKB7y9 = v._bmmkXma0;
__dummy_ops(); -- obf
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), 0, (2 / 2), (0 / 2));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (1 + 0);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((300) - 100), (140 / 2), ((170) - 100));
_J2feXxhc._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
else
v._bmmkXma0[__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
elseif v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL) then
(v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end;
__dummy_ops(); -- obf
end;
for i, v in pairs(game._N4KQlE00._fhZAebdT:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780a3d39341e2a2d312c", 88)] then
if not v._bmmkXma0:_cVgfc2HD((__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v._bmmkXma0);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL;
__dummy_ops(); -- obf
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 / 2), (2 / 2), (0 / 2));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (math._tZOYIwmz(200.5)), (2 / 2), (math._tZOYIwmz(30.5)));
_RAtOoh1N._sykKB7y9 = v._bmmkXma0;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), (0 / 2), (math._tZOYIwmz(1.5)), (0 / 2));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = ((101) - 100);
__dummy_ops(); -- obf
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(255.5)), (340 / 2), 0);
__dummy_ops(); -- obf
_J2feXxhc._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / ((103) - 100)) .. __xor_decode("781c312b2c39363b3d", 88);
else
__dummy_ops(); -- obf
v._bmmkXma0[__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
elseif v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL) then
(v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
__dummy_ops(); -- obf
end;
end;
for i, v in pairs(game._N4KQlE00._WSfbRH9W:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780a3d39341e2a2d312c", 88)] then
if not v._bmmkXma0:_cVgfc2HD((__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v._bmmkXma0);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL;
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(0, (1 + 0), (0 + 0));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (math._tZOYIwmz(200.5)), (2 / 2), (60 / 2));
__dummy_ops(); -- obf
_RAtOoh1N._sykKB7y9 = v._bmmkXma0;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = Enum._aM9vazja._XOWjbn3S;
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(1.5)), (0 / 2), (1 + 0), ((100) - 100));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = ((101) - 100);
__dummy_ops(); -- obf
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((480 / 2), ((355) - 100), (20 / 2));
_J2feXxhc._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("7852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("781c312b2c39363b3d", 88);
else
v._bmmkXma0[__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL]._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._bmmkXma0._WXvbXr4t))._To53yerA / ((103) - 100)) .. __xor_decode("781c312b2c39363b3d", 88);
end;
elseif v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL) then
(v._bmmkXma0:_cVgfc2HD(__xor_decode("1d2b280a3d39341e2a2d312c", 88) .. _rWWzFfwL)):_LNRqQOQ8();
end;
end;
end;
end;
end);
spawn(function()
while wait((math._tZOYIwmz(1.5))) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781537362b2c3d2a", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if not v:_cVgfc2HD(__xor_decode("1d2b281537362b2c3d2a", 88)) then
local _3ac8rKtz = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88));
local _vk8ciq28 = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88));
_3ac8rKtz._48KJh7fv = v;
_3ac8rKtz._hIkG914A = Enum._hIkG914A._vhwFfuIo;
_3ac8rKtz._xHiOvf5x = true;
_3ac8rKtz._CJFCQjk5 = __xor_decode("1d2b281537362b2c3d2a", 88);
_3ac8rKtz._4F0Z3f3x = true;
_3ac8rKtz._uOzkdd21 = (math._tZOYIwmz(1.5));
__dummy_ops(); -- obf
_3ac8rKtz._QjwDF4M5 = UDim2._nfGC8Yr2((0 + 0), (400 / 2), (0 + 0), ((150) - 100));
_3ac8rKtz._XzyrhGis = Vector3._nfGC8Yr2(0, 2.5, ((100) - 100));
_vk8ciq28._48KJh7fv = _3ac8rKtz;
_vk8ciq28._0iYzCEWj = Color3._BP3ABtRj((510 / 2), ((355) - 100), (math._tZOYIwmz(255.5)));
_vk8ciq28._2Rg3u3nw = (math._tZOYIwmz(1.5));
_vk8ciq28._QjwDF4M5 = UDim2._nfGC8Yr2(0, ((300) - 100), 0, (math._tZOYIwmz(50.5)));
_vk8ciq28._aM9vazja = Enum._aM9vazja._qSW9VN23;
_vk8ciq28._NZUvAahs = Color3._BP3ABtRj(((220) - 100), (130 + 0), (460 / 2));
__dummy_ops(); -- obf
_vk8ciq28._vkpN7NY2._QjwDF4M5 = (35 + 0);
end;
local _bxTY4OSQ = math._tZOYIwmz((game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - v._JNHDC2Lw._WXvbXr4t)._To53yerA);
v._PVndDfuO._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("787578", 88) .. _bxTY4OSQ .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
else
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("1d2b281537362b2c3d2a", 88)) then
v._PVndDfuO:_LNRqQOQ8();
end;
end;
end;
end);
end;
end);
spawn(function()
while wait((1 + 0)) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780b3d39781a3d392b2c", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if not v:_cVgfc2HD(__xor_decode("1d2b280b3d393a3d392b2c2b", 88)) then
local _3ac8rKtz = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88));
local _vk8ciq28 = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88));
__dummy_ops(); -- obf
_3ac8rKtz._48KJh7fv = v;
_3ac8rKtz._hIkG914A = Enum._hIkG914A._vhwFfuIo;
_3ac8rKtz._xHiOvf5x = true;
_3ac8rKtz._CJFCQjk5 = __xor_decode("1d2b280b3d393a3d392b2c2b", 88);
_3ac8rKtz._4F0Z3f3x = true;
_3ac8rKtz._uOzkdd21 = (1 + 0);
_3ac8rKtz._QjwDF4M5 = UDim2._nfGC8Yr2((0 + 0), (400 / 2), (0 + 0), (math._tZOYIwmz(50.5)));
_3ac8rKtz._XzyrhGis = Vector3._nfGC8Yr2((0 / 2), 2.5, (0 / 2));
_vk8ciq28._48KJh7fv = _3ac8rKtz;
_vk8ciq28._0iYzCEWj = Color3._BP3ABtRj((math._tZOYIwmz(255.5)), ((355) - 100), (255 + 0));
_vk8ciq28._2Rg3u3nw = (2 / 2);
_vk8ciq28._QjwDF4M5 = UDim2._nfGC8Yr2((0 / 2), (400 / 2), (0 / 2), (50 + 0));
_vk8ciq28._aM9vazja = Enum._aM9vazja._aTBOLA5s;
_vk8ciq28._NZUvAahs = Color3._BP3ABtRj((math._tZOYIwmz(60.5)), ((340) - 100), ((220) - 100));
_vk8ciq28._vkpN7NY2._QjwDF4M5 = (70 / 2);
end;
local _bxTY4OSQ = math._tZOYIwmz((game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - v._JNHDC2Lw._WXvbXr4t)._To53yerA);
v._KaNGdfMS._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("787578", 88) .. _bxTY4OSQ .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
else
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("1d2b280b3d393a3d392b2c2b", 88)) then
v._KaNGdfMS:_LNRqQOQ8();
__dummy_ops(); -- obf
end;
end;
end;
end);
end;
end);
spawn(function()
while wait((math._tZOYIwmz(1.5))) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087816283b", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._S3xR2KTs:_5PPij5jV()) do
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if not v:_cVgfc2HD(__xor_decode("1d2b2816283b", 88)) then
local _3ac8rKtz = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88));
local _vk8ciq28 = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88));
_3ac8rKtz._48KJh7fv = v;
_3ac8rKtz._hIkG914A = Enum._hIkG914A._vhwFfuIo;
_3ac8rKtz._xHiOvf5x = true;
_3ac8rKtz._CJFCQjk5 = __xor_decode("1d2b2816283b", 88);
_3ac8rKtz._4F0Z3f3x = true;
_3ac8rKtz._uOzkdd21 = (2 / 2);
_3ac8rKtz._QjwDF4M5 = UDim2._nfGC8Yr2((0 + 0), ((300) - 100), (0 + 0), (50 + 0));
_3ac8rKtz._XzyrhGis = Vector3._nfGC8Yr2((0 + 0), 2.5, ((100) - 100));
_vk8ciq28._48KJh7fv = _3ac8rKtz;
_vk8ciq28._0iYzCEWj = Color3._BP3ABtRj((255 + 0), (510 / 2), ((355) - 100));
_vk8ciq28._2Rg3u3nw = ((101) - 100);
_vk8ciq28._QjwDF4M5 = UDim2._nfGC8Yr2(0, (400 / 2), ((100) - 100), (50 + 0));
_vk8ciq28._aM9vazja = Enum._aM9vazja._H0JSXg5K;
_vk8ciq28._NZUvAahs = Color3._BP3ABtRj(((300) - 100), (120 / 2), (240 / 2));
_vk8ciq28._vkpN7NY2._QjwDF4M5 = (math._tZOYIwmz(45.5));
end;
__dummy_ops(); -- obf
local _bxTY4OSQ = math._tZOYIwmz((game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - v._JNHDC2Lw._WXvbXr4t)._To53yerA);
v._xHlSA11a._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("787578", 88) .. _bxTY4OSQ .. __xor_decode("781c312b2c39363b3d", 88);
end;
end;
else
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._S3xR2KTs:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("1d2b2816283b", 88)) then
v._xHlSA11a:_LNRqQOQ8();
end;
end;
end;
end);
end;
end);
spawn(function()
while wait((2 / 2)) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087815312a393f3d", 88)] then
if v._CJFCQjk5 == __xor_decode("15312a393f3d78112b3439363c", 88) then
if not v:_cVgfc2HD(__xor_decode("1d2b2815312a393f3d112b3439363c", 88)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b2815312a393f3d112b3439363c", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(0, (math._tZOYIwmz(1.5)), ((100) - 100));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (400 / 2), (2 / 2), (math._tZOYIwmz(30.5)));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
__dummy_ops(); -- obf
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), 0, (2 / 2), 0);
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (1 + 0);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((150) - 100), (math._tZOYIwmz(180.5)), ((150) - 100));
else
v._nobpWDI2._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("7815", 88);
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
elseif v:_cVgfc2HD(__xor_decode("1d2b2815312a393f3d112b3439363c", 88)) then
(v:_cVgfc2HD(__xor_decode("1d2b2815312a393f3d112b3439363c", 88))):_LNRqQOQ8();
end;
end);
end;
end;
end);
__dummy_ops(); -- obf
spawn(function()
while wait((math._tZOYIwmz(1.5))) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087813312c2b2d363d", 88)] then
if v._CJFCQjk5 == __xor_decode("13312c2b2d363d78112b3439363c", 88) then
__dummy_ops(); -- obf
if not v:_cVgfc2HD(__xor_decode("1d2b2813312c2b2d363d112b3439363c", 88)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b2813312c2b2d363d112b3439363c", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 / 2), (1 + 0), (0 + 0));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), ((300) - 100), ((101) - 100), (30 + 0));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
__dummy_ops(); -- obf
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), (0 / 2), ((101) - 100), ((100) - 100));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (1 + 0);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((140) - 100), (80 / 2), (360 / 2));
else
v._FjMg4sny._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("7815", 88);
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b2813312c2b2d363d112b3439363c", 88)) then
(v:_cVgfc2HD(__xor_decode("1d2b2813312c2b2d363d112b3439363c", 88))):_LNRqQOQ8();
end;
end);
end;
end;
end);
spawn(function()
while wait((math._tZOYIwmz(1.5))) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781e2a37223d36", 88)] then
if v._CJFCQjk5 == __xor_decode("1e2a37223d36781c31353d362b313736", 88) then
if not v:_cVgfc2HD(__xor_decode("1d2b281e2a37223d36", 88)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b281e2a37223d36", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 + 0), (math._tZOYIwmz(1.5)), (0 + 0));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), ((300) - 100), (1 + 0), (30 + 0));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), ((100) - 100), ((101) - 100), (0 + 0));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
__dummy_ops(); -- obf
_J2feXxhc._2Rg3u3nw = (1 + 0);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((150) - 100), (180 + 0), ((355) - 100));
else
v._8kXbLxpR._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (6 / 2)) .. __xor_decode("7815", 88);
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b281e2a37223d36", 88)) then
(v:_cVgfc2HD(__xor_decode("1d2b281e2a37223d36", 88))):_LNRqQOQ8();
end;
end);
__dummy_ops(); -- obf
end;
end;
end);
spawn(function()
while wait((1 + 0)) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878082a3d30312b2c372a313b", 88)] then
if v._CJFCQjk5 == __xor_decode("082a3d30312b2c372a313b78112b3439363c", 88) then
if not v:_cVgfc2HD(__xor_decode("1d2b28082a3d30312b2c372a313b", 88)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b28082a3d30312b2c372a313b", 88);
__dummy_ops(); -- obf
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(0, (math._tZOYIwmz(1.5)), 0);
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), (400 / 2), (2 / 2), (math._tZOYIwmz(30.5)));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), (0 + 0), (1 + 0), (0 + 0));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (1 + 0);
__dummy_ops(); -- obf
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((200 + 0), ((150) - 100), (math._tZOYIwmz(40.5)));
else
v._Wcaf6fSm._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (3 + 0)) .. __xor_decode("7815", 88);
__dummy_ops(); -- obf
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b28082a3d30312b2c372a313b", 88)) then
(v:_cVgfc2HD(__xor_decode("1d2b28082a3d30312b2c372a313b", 88))):_LNRqQOQ8();
end;
end);
end;
end;
end);
spawn(function()
while wait((2 / 2)) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._S3xR2KTs:_5PPij5jV()) do
pcall(function()
__dummy_ops(); -- obf
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878193c2e39363b3d3c781e2a2d312c781c3d39343d2a", 88)] then
if v._CJFCQjk5 == __xor_decode("193c2e39363b3d3c781e2a2d312c781c3d39343d2a", 88) then
if not v:_cVgfc2HD(__xor_decode("1d2b28193c2e39363b3d1e2a2d312c1c3d39343d2a", 88)) then
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b28193c2e39363b3d1e2a2d312c1c3d39343d2a", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2(0, (2 / 2), (0 / 2));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(1.5)), (math._tZOYIwmz(200.5)), (1 + 0), (30 + 0));
_RAtOoh1N._sykKB7y9 = v;
__dummy_ops(); -- obf
_RAtOoh1N._4F0Z3f3x = true;
__dummy_ops(); -- obf
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(1.5)), ((100) - 100), (math._tZOYIwmz(1.5)), (0 + 0));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (math._tZOYIwmz(1.5));
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((250 + 0), ((150) - 100), (math._tZOYIwmz(50.5)));
else
v._vVi3gqbA._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (6 / 2)) .. __xor_decode("7815", 88);
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b28193c2e39363b3d1e2a2d312c1c3d39343d2a", 88)) then
__dummy_ops(); -- obf
(v:_cVgfc2HD(__xor_decode("1d2b28193c2e39363b3d1e2a2d312c1c3d39343d2a", 88))):_LNRqQOQ8();
end;
end);
__dummy_ops(); -- obf
end;
end;
end);
spawn(function()
while wait((1 + 0)) do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._S3xR2KTs:_5PPij5jV()) do
pcall(function()
__dummy_ops(); -- obf
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878192d2a39", 88)] then
__dummy_ops(); -- obf
if v._CJFCQjk5 == __xor_decode("15392b2c3d2a78373e781d363039363b3d353d362c", 88) then
if not v:_cVgfc2HD(__xor_decode("1d2b28192d2a39", 88)) then
__dummy_ops(); -- obf
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
__dummy_ops(); -- obf
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b28192d2a39", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 + 0), (1 + 0), ((100) - 100));
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), (400 / 2), ((101) - 100), (math._tZOYIwmz(30.5)));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((2 / 2), (0 + 0), (1 + 0), (0 / 2));
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = (2 / 2);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj((200 + 0), (110 / 2), (510 / 2));
__dummy_ops(); -- obf
else
v._nBTjdpMK._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (6 / 2)) .. __xor_decode("7815", 88);
end;
end;
elseif v:_cVgfc2HD(__xor_decode("1d2b28192d2a39", 88)) then
(v:_cVgfc2HD(__xor_decode("1d2b28192d2a39", 88))):_LNRqQOQ8();
end;
end);
end;
end;
end);
spawn(function()
__dummy_ops(); -- obf
while wait((1 + 0)) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG:_cVgfc2HD(__xor_decode("15212b2c313b112b3439363c", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._bziFetUU:_5PPij5jV()) do
pcall(function()
if _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781f3d392a", 88)] then
if v._CJFCQjk5 == __xor_decode("153d2b3008392a2c", 88) then
if not v:_cVgfc2HD(__xor_decode("192d2c371e392a351a3439223d1d353a3d2a", 88)) then
__dummy_ops(); -- obf
local _RAtOoh1N = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88), v);
__dummy_ops(); -- obf
_RAtOoh1N._CJFCQjk5 = __xor_decode("1d2b281f3d392a", 88);
_RAtOoh1N._6UgtxaX7 = Vector3._nfGC8Yr2((0 / 2), (math._tZOYIwmz(1.5)), 0);
_RAtOoh1N._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (math._tZOYIwmz(200.5)), (math._tZOYIwmz(1.5)), (60 / 2));
_RAtOoh1N._sykKB7y9 = v;
_RAtOoh1N._4F0Z3f3x = true;
local _J2feXxhc = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88), _RAtOoh1N);
_J2feXxhc._aM9vazja = __xor_decode("1b373c3d", 88);
_J2feXxhc._NKHpTRGT = __xor_decode("0b31223d696c", 88);
_J2feXxhc._sZH7xZXL = true;
_J2feXxhc._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), (0 + 0), (2 / 2), 0);
_J2feXxhc._UoM8Jzr6 = __xor_decode("0c3728", 88);
_J2feXxhc._2Rg3u3nw = ((101) - 100);
_J2feXxhc._gSgxYt3j = 0.5;
_J2feXxhc._NZUvAahs = Color3._BP3ABtRj(((180) - 100), (245 + 0), (490 / 2));
else
v._K1swzG88._vk8ciq28._vkpN7NY2 = v._CJFCQjk5 .. __xor_decode("78787852", 88) .. _flpSRgHm((((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._Tch0WaW1._WXvbXr4t - v._WXvbXr4t))._To53yerA / (math._tZOYIwmz(3.5))) .. __xor_decode("7815", 88);
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
elseif v:_cVgfc2HD(__xor_decode("1d2b281f3d392a", 88)) then
__dummy_ops(); -- obf
(v:_cVgfc2HD(__xor_decode("1d2b281f3d392a", 88))):_LNRqQOQ8();
__dummy_ops(); -- obf
end;
end);
end;
end;
end;
end);
__dummy_ops(); -- obf
function _BOChbbKP()
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88))):_UrBqrXrh();
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88))):_I4gbFhXT(Vector2._nfGC8Yr2((1280 + 0), (math._tZOYIwmz(672.5))));
end;
function _XOIOiZrU()
__dummy_ops(); -- obf
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("10392b1a2d2b37", 88)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d2b37", 88));
__dummy_ops(); -- obf
end;
end;
function _vOBaWFHT(_ddrZQdyU)
__dummy_ops(); -- obf
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(_ddrZQdyU) then
(game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(_ddrZQdyU))._48KJh7fv = game.Players._qLJftmnl._EraV8csx;
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
function _jFSmbcsg(_Cd1UCRtE)
if not game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(_Cd1UCRtE) then
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(_Cd1UCRtE) then
__dummy_ops(); -- obf
_AeOe2hlY = game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(_Cd1UCRtE);
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(_AeOe2hlY);
__dummy_ops(); -- obf
end;
end;
end;
spawn(function()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr:_5PPij5jV()) do
__dummy_ops(); -- obf
pcall(function()
if v._CJFCQjk5 == __xor_decode("1b2d2a2e3d3c0a31363f", 88) or v._CJFCQjk5 == __xor_decode("0b34392b3010312c", 88) or v._CJFCQjk5 == __xor_decode("0b2f372a3c0b34392b30", 88) or v._CJFCQjk5 == __xor_decode("0b34392b300c393134", 88) or v._CJFCQjk5 == __xor_decode("0b372d363c2b", 88) then
v:_LNRqQOQ8();
end;
__dummy_ops(); -- obf
end);
__dummy_ops(); -- obf
end;
end);
function _BYFbxaBC(_H9dG6vcD)
return math._tZOYIwmz((_H9dG6vcD._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA);
__dummy_ops(); -- obf
end;
function _YlsPFxYH(_Y8ipJ4Ym)
__dummy_ops(); -- obf
pcall(function()
if (_Y8ipJ4Ym._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA >= (2000 + 0) and game.Players._qLJftmnl._PXAw1fga._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
wait();
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = _Y8ipJ4Ym;
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b3d2c0b28392f36083731362c", 88));
__dummy_ops(); -- obf
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = _Y8ipJ4Ym;
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b3d2c0b28392f36083731362c", 88));
wait();
game.Players._qLJftmnl._PXAw1fga._Tch0WaW1:_LNRqQOQ8();
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = _Y8ipJ4Ym;
until (_Y8ipJ4Ym._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (4000 / 2) and game.Players._qLJftmnl._PXAw1fga._aqi4OxxB._olQxbQJn > (0 / 2);
end;
end);
end;
function _CUKGivwE(_Y8ipJ4Ym)
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = _Y8ipJ4Ym;
__dummy_ops(); -- obf
end;
function _aELwbCFL(_BnkCBKni)
local TweenService = game:_F5KpSZDL(__xor_decode("0c2f3d3d360b3d2a2e313b3d", 88));
local _6guIOmLU = workspace._ndlVJNpa[_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]];
if not _6guIOmLU or (not _6guIOmLU:_cVgfc2HD(__xor_decode("0e3d30313b343d0b3d392c", 88))) then
_jiqNPOhT(__xor_decode("0c303d78283439213d2a78352d2b2c7830392e3d783a3d3d36783736782c303d783a37392c7679", 88));
return {
_Aiy1S0Kw = function()
end
};
end;
local _nhR1SP24 = _BnkCBKni;
if typeof(_BnkCBKni) == __xor_decode("11362b2c39363b3d", 88) and _BnkCBKni:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
_nhR1SP24 = _BnkCBKni.CFrame;
elseif typeof(_BnkCBKni) ~= __xor_decode("1b1e2a39353d", 88) then
_jiqNPOhT(__xor_decode("0c303d787f28372b2c7f78392a3f2d353d362c78352d2b2c783a3d7839781b1e2a39353d78372a781a392b3d08392a2c79", 88));
return {
_Aiy1S0Kw = function()
end
};
end;
local _sRlJxHEx = _6guIOmLU._jkEBAkhw._WXvbXr4t;
local _zXaOPUBT = _nhR1SP24._WXvbXr4t;
local _T7LFTada = (_sRlJxHEx - _zXaOPUBT)._To53yerA;
local _eDWSqqXe = nil;
local _lUfLn341 = _T7LFTada / (_G._j963CW1K._VcpqruWZ[__xor_decode("1a37392c780c2f3d3d36780b283d3d3c", 88)] or (200 / 2));
local _fEDSSEEs = TweenInfo._nfGC8Yr2(_lUfLn341, Enum._t9RLlNt0._YshGF2SY);
_eDWSqqXe = TweenService:_58Jh1xy7(_6guIOmLU._jkEBAkhw, _fEDSSEEs, {
CFrame = _nhR1SP24
});
if _T7LFTada > (50 / 2) then
_eDWSqqXe:_92mBCjqa();
else
_jiqNPOhT(__xor_decode("0c3737783e392b2c783b3936783f3d2c7833313b333d3c", 88));
end;
local _LfZ8Bgx5 = {};
function _LfZ8Bgx5:_Aiy1S0Kw()
if _eDWSqqXe and _eDWSqqXe._9oNQpFx6 == Enum._9oNQpFx6._wE0Ylzjq then
__dummy_ops(); -- obf
_eDWSqqXe:_bQq4KZ1P();
end;
end;
__dummy_ops(); -- obf
return _LfZ8Bgx5;
end;
__dummy_ops(); -- obf
function _LbiBlaTO(_BnkCBKni)
_td8B60Nj.spawn(function()
pcall(function()
if game.Players._qLJftmnl._PXAw1fga._aqi4OxxB._FvNgPp3m == true then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB._FvNgPp3m = true;
end;
local _YDcLc3h2 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl;
local _iKm7IgZW = _YDcLc3h2._PXAw1fga;
local _eu3ZozX9 = _iKm7IgZW._JNHDC2Lw;
if _YDcLc3h2:_zqYdlyQF(_BnkCBKni._WXvbXr4t) <= (100 / 2) then
_eu3ZozX9.CFrame = _BnkCBKni;
__dummy_ops(); -- obf
if _iKm7IgZW:_cVgfc2HD(__xor_decode("0a37372c", 88)) then
__dummy_ops(); -- obf
_iKm7IgZW._cjnOroo5:_LNRqQOQ8();
wait();
_LbiBlaTO(_eu3ZozX9.CFrame);
wait();
end;
if _iKm7IgZW:_cVgfc2HD(__xor_decode("0a37372c", 88)) then
_iKm7IgZW._cjnOroo5:_XxWL9LnZ();
end;
__dummy_ops(); -- obf
elseif not _iKm7IgZW:_cVgfc2HD(__xor_decode("0a37372c", 88)) then
local _NYoiHNdv = Instance._nfGC8Yr2(__xor_decode("08392a2c", 88), _iKm7IgZW);
_NYoiHNdv._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), 0.5, (1 + 0));
_NYoiHNdv._CJFCQjk5 = __xor_decode("0a37372c", 88);
_NYoiHNdv._OeHP1NaS = true;
_NYoiHNdv._HenamT3N = ((101) - 100);
_NYoiHNdv._5rDNyh0H = false;
__dummy_ops(); -- obf
_NYoiHNdv.CFrame = _eu3ZozX9.CFrame;
end;
local _T7LFTada = (_eu3ZozX9._WXvbXr4t - _BnkCBKni._WXvbXr4t)._To53yerA;
local _MQQztSIX = game:_F5KpSZDL(__xor_decode("0c2f3d3d360b3d2a2e313b3d", 88));
local _Q1MTKtmx = TweenInfo._nfGC8Yr2(_T7LFTada / _G._j963CW1K._QeOie5Mu[__xor_decode("083439213d2a780c2f3d3d36780b283d3d3c", 88)], Enum._t9RLlNt0._YshGF2SY);
local _f6ytAPCu, _k8X1pUdC = pcall(function()
__dummy_ops(); -- obf
local _eDWSqqXe = _MQQztSIX:_58Jh1xy7(_iKm7IgZW._cjnOroo5, _Q1MTKtmx, {
CFrame = _BnkCBKni
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_eDWSqqXe:_92mBCjqa();
end);
if _G._BVuxT5uA == true then
_eDWSqqXe:_bQq4KZ1P();
_G._rLDXs3Rd = false;
end;
if not _f6ytAPCu then
return _k8X1pUdC;
__dummy_ops(); -- obf
end;
_iKm7IgZW._cjnOroo5.CFrame = _eu3ZozX9.CFrame;
if _f6ytAPCu and _iKm7IgZW:_cVgfc2HD(__xor_decode("0a37372c", 88)) then
pcall(function()
local _aUPWlt0j = (_eu3ZozX9._WXvbXr4t - _BnkCBKni._WXvbXr4t)._To53yerA;
if _aUPWlt0j >= (100 / 2) then
_td8B60Nj.spawn(function()
pcall(function()
if (_iKm7IgZW._cjnOroo5._WXvbXr4t - _eu3ZozX9._WXvbXr4t)._To53yerA > (400 / 2) then
_iKm7IgZW._cjnOroo5.CFrame = _eu3ZozX9.CFrame;
else
_eu3ZozX9.CFrame = _iKm7IgZW._cjnOroo5.CFrame;
__dummy_ops(); -- obf
end;
end);
end);
elseif _aUPWlt0j >= (math._tZOYIwmz(25.5)) and _aUPWlt0j < (math._tZOYIwmz(40.5)) then
_eu3ZozX9.CFrame = _BnkCBKni;
elseif _aUPWlt0j < (50 / 2) then
_eu3ZozX9.CFrame = _BnkCBKni;
__dummy_ops(); -- obf
end;
end);
end;
local _6ElkOkQu = {};
__dummy_ops(); -- obf
function _6ElkOkQu:_Aiy1S0Kw()
_eDWSqqXe:_bQq4KZ1P();
end;
return _6ElkOkQu;
end);
end);
__dummy_ops(); -- obf
end;
_td8B60Nj.spawn(function()
while _td8B60Nj.wait() do
pcall(function()
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = game.Players._qLJftmnl._PXAw1fga._cjnOroo5.CFrame;
if (game.Players._qLJftmnl._PXAw1fga._cjnOroo5._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA >= (2 / 2) then
game.Players._qLJftmnl._PXAw1fga._cjnOroo5.CFrame = game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame;
__dummy_ops(); -- obf
end;
end);
end;
end);
spawn(function()
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._c2DqCCgJ:_CEVggw7o(function()
pcall(function()
__dummy_ops(); -- obf
if _Gn5hTaWg then
_Gn5hTaWg(game.Players._qLJftmnl, __xor_decode("0b31352d34392c3137360a393c312d2b", 88), true);
end;
if _dCIW4jhK then
_dCIW4jhK(game.Players._qLJftmnl, __xor_decode("0b31352d34392c3137360a393c312d2b", 88), math._PzibwPkO);
end;
end);
end);
end);
local _nhNtW4dN = (_XeukPFgw or _TOkz8Urn or getfenv)();
local _ApzEV3PU = game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88));
local _EtdJsTNE = game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88));
local _6qY5Id9J = _EtdJsTNE._qLJftmnl;
local _sLsNOSw0 = _ApzEV3PU:_oS4sDmYc(__xor_decode("15373c2d343d2b", 88));
local _Vg4AeYEh = _sLsNOSw0:_oS4sDmYc(__xor_decode("163d2c", 88));
local _xcQgF8DI = workspace:_oS4sDmYc(__xor_decode("1b30392a393b2c3d2a2b", 88));
local _dC4K3229 = workspace:_oS4sDmYc(__xor_decode("1d363d35313d2b", 88));
local _82Dc8Xzx = game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88));
local _5QBHvPxL = {};
__dummy_ops(); -- obf
local _F0Aqt4kj = _Vg4AeYEh:_oS4sDmYc(__xor_decode("0a1d770a3d3f312b2c3d2a192c2c393b33", 88));
local _7gYRWHeF = _Vg4AeYEh:_oS4sDmYc(__xor_decode("0a1d770a3d3f312b2c3d2a10312c", 88));
function _5QBHvPxL:_fV5hLYKq(_6NHncXMR, _qEgQ618Y)
if _6NHncXMR then
_F0Aqt4kj:_vN6IYDgr(((100) - 100));
_F0Aqt4kj:_vN6IYDgr((2 / 2));
_F0Aqt4kj:_vN6IYDgr((math._tZOYIwmz(2.5)));
_F0Aqt4kj:_vN6IYDgr((6 / 2));
_7gYRWHeF:_vN6IYDgr(_6NHncXMR, _qEgQ618Y or {});
end;
end;
__dummy_ops(); -- obf
function _5QBHvPxL:_5Vh9UBn4()
local _HktukOKz = {
nil,
__dummy_ops(); -- obf
{}
__dummy_ops(); -- obf
};
__dummy_ops(); -- obf
for _, _uydRIWR0 in _dC4K3229:_5PPij5jV() do
if not _HktukOKz[(math._tZOYIwmz(1.5))] and _uydRIWR0:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88), true) and _6qY5Id9J:_zqYdlyQF(_uydRIWR0._JNHDC2Lw._WXvbXr4t) < (math._tZOYIwmz(60.5)) then
_HktukOKz[((101) - 100)] = _uydRIWR0:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88));
elseif _uydRIWR0:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88), true) and _6qY5Id9J:_zqYdlyQF(_uydRIWR0._JNHDC2Lw._WXvbXr4t) < (60 + 0) then
table._lwzCRDUx(_HktukOKz[(2 + 0)], {
[(math._tZOYIwmz(1.5))] = _uydRIWR0,
[(math._tZOYIwmz(2.5))] = _uydRIWR0:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88))
});
end;
__dummy_ops(); -- obf
end;
_L8APgENe:_fV5hLYKq(unpack(_HktukOKz));
local _YDcLc3h2 = {
__dummy_ops(); -- obf
nil,
{}
};
for _, _3s5ej9mI in _82Dc8Xzx:_5PPij5jV() do
if not _YDcLc3h2[(1 + 0)] and _3s5ej9mI:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88), true) and _6qY5Id9J:_zqYdlyQF(_3s5ej9mI._PXAw1fga._JNHDC2Lw._WXvbXr4t) < (math._tZOYIwmz(60.5)) then
_YDcLc3h2[(2 / 2)] = _3s5ej9mI._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88));
elseif _3s5ej9mI._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88), true) and _6qY5Id9J:_zqYdlyQF(_3s5ej9mI._PXAw1fga._JNHDC2Lw._WXvbXr4t) < (120 / 2) then
table._lwzCRDUx(_YDcLc3h2[(2 + 0)], {
[(1 + 0)] = _3s5ej9mI,
[((102) - 100)] = _3s5ej9mI._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88))
});
end;
end;
_L8APgENe:_fV5hLYKq(unpack(_YDcLc3h2));
end;
function _5QBHvPxL:_BwwHorH7()
__dummy_ops(); -- obf
_L8APgENe:_5Vh9UBn4();
end;
__dummy_ops(); -- obf
function _gChUopcS()
if not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or (not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)]) then
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b33", 88)] then
wait(_G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b33781c3d343921", 88)]);
_5QBHvPxL:_BwwHorH7();
else
wait(0.5);
__dummy_ops(); -- obf
_5QBHvPxL:_BwwHorH7();
__dummy_ops(); -- obf
end;
end;
end;
function _JiJorBgD()
_5QBHvPxL:_BwwHorH7();
end;
spawn(function()
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._c2DqCCgJ:_CEVggw7o(function()
pcall(function()
if _Wu0X4njD or _nTDEMboA or _G._dtivledw then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._23XFfqmx:_5PPij5jV()) do
for _, _mmYjp4il in pairs(v:_5PPij5jV()) do
if string._jiv09JBF(_mmYjp4il._vkpN7NY2, __xor_decode("0b333134347834373b333d3c79", 88)) then
v:_LNRqQOQ8();
end;
end;
end;
end;
end);
end);
end);
function _xVVJVBKZ()
pcall(function()
for i, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v._Jtla42kH == __xor_decode("0b2f372a3c", 88) and v:_2K0UehsO(__xor_decode("0c373734", 88)) then
local _pmLzFRWB = game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(v._CJFCQjk5);
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(_pmLzFRWB);
end;
end;
__dummy_ops(); -- obf
end);
end;
spawn(function()
__dummy_ops(); -- obf
local _0BKkdgEB = ((100) - 100);
while wait() do
if _G._j963CW1K._QeOie5Mu[__xor_decode("0b2831367808372b312c313736", 88)] then
local _p1Yw9iJ9 = (40 / 2);
local _nwJudez5 = _G._j963CW1K._QeOie5Mu[__xor_decode("1e392a35781c312b2c39363b3d", 88)];
local _zzSh6HYp = math._C9vcFUKj(_0BKkdgEB);
local x = math._6pPfJbBJ(_zzSh6HYp) * _p1Yw9iJ9;
local z = math._BkbmBa7r(_zzSh6HYp) * _p1Yw9iJ9;
__dummy_ops(); -- obf
_YuU8D8tp = CFrame._nfGC8Yr2(x, _nwJudez5, z);
_0BKkdgEB = (_0BKkdgEB + (60 / 2)) % (math._tZOYIwmz(360.5));
else
_YuU8D8tp = CFrame._nfGC8Yr2(0, _G._j963CW1K._QeOie5Mu[__xor_decode("1e392a35781c312b2c39363b3d", 88)], ((100) - 100));
end;
__dummy_ops(); -- obf
wait((0 / 2));
end;
end);
spawn(function()
pcall(function()
while wait() do
if _dVBkh5d7 then
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a3578143d392c303d2a", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815393f353978172a3d", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35780b3b2a392878153d2c3934", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357819363f3d34780f31363f2b", 88)] then
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw:_cVgfc2HD(__xor_decode("1a373c211b343128", 88)) then
local _PugRS63s = Instance._nfGC8Yr2(__xor_decode("1a373c210e3d34373b312c21", 88));
_PugRS63s._CJFCQjk5 = __xor_decode("1a373c211b343128", 88);
_PugRS63s._48KJh7fv = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw;
_PugRS63s._wcIqPPT2 = Vector3._nfGC8Yr2(((100100) - 100), ((100100) - 100), (math._tZOYIwmz(100000.5)));
__dummy_ops(); -- obf
_PugRS63s._vsFNqUM2 = Vector3._nfGC8Yr2((0 / 2), 0, (0 + 0));
end;
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait() do
if _dVBkh5d7 then
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)] then
for _, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_uamye779()) do
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
v._5rDNyh0H = false;
end;
end;
end;
end;
end;
__dummy_ops(); -- obf
end);
end);
spawn(function()
pcall(function()
while wait() do
if _qMpv1cUt then
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e392a35781e393b2c372a21", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b2f3936781f34392b2b3d2b", 88)] or _G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780a393b3d780e6a", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a392a2c31343778092d3d2b2c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)] or _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] then
__dummy_ops(); -- obf
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw:_cVgfc2HD(__xor_decode("1a373c211b343128", 88)) then
local _PugRS63s = Instance._nfGC8Yr2(__xor_decode("1a373c210e3d34373b312c21", 88));
__dummy_ops(); -- obf
_PugRS63s._CJFCQjk5 = __xor_decode("1a373c211b343128", 88);
_PugRS63s._48KJh7fv = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw;
_PugRS63s._wcIqPPT2 = Vector3._nfGC8Yr2(((100100) - 100), ((100100) - 100), (100000 + 0));
_PugRS63s._vsFNqUM2 = Vector3._nfGC8Yr2((0 + 0), (0 + 0), ((100) - 100));
end;
end;
end;
end;
end);
__dummy_ops(); -- obf
end);
spawn(function()
__dummy_ops(); -- obf
pcall(function()
while wait() do
__dummy_ops(); -- obf
if _qMpv1cUt then
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e392a35781e393b2c372a21", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b2f3936781f34392b2b3d2b", 88)] or _G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780a393b3d780e6a", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a392a2c31343778092d3d2b2c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)] or _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] then
for _, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_uamye779()) do
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
v._5rDNyh0H = false;
end;
__dummy_ops(); -- obf
end;
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait() do
if _UC8YJ6NP then
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377808312a392c3d780a39313c", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780a393b3d780e6b", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0c3d343d28372a2c780c37781e2a37223d36781c31353d362b313736", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0b393134780c37781e2a37223d36781c31353d362b313736", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c3778082a3d2b2b7810393331781a2d2c2c3736", 88)] or _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c3778192a3d3639780c2a3931363d2a", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("0c2f3d3d36780c377810313f303d2b2c7815312a393f3d", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("1e31363c781a342d3d781f3d392a", 88)] or _G._j963CW1K._sVE4dRoh[__xor_decode("192d2c37781331343478083439213d2a78092d3d2b2c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781b2d2a2b3d3c781c2d39347813392c393639", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c2d2b30312c39", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] or _G._gVIgzMXn or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3931363a372f7810393331", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781d3b2c372834392b35", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c3778173a2b3d2a2e392c313736780e6a", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c3778152d2b333d2c3d3d2a7810392c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810373421780c372a3b30", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781b39362e39363c3d2a", 88)] or _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)] then
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw:_cVgfc2HD(__xor_decode("1a373c211b343128", 88)) then
local _PugRS63s = Instance._nfGC8Yr2(__xor_decode("1a373c210e3d34373b312c21", 88));
_PugRS63s._CJFCQjk5 = __xor_decode("1a373c211b343128", 88);
_PugRS63s._48KJh7fv = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw;
_PugRS63s._wcIqPPT2 = Vector3._nfGC8Yr2((100000 + 0), (math._tZOYIwmz(100000.5)), (200000 / 2));
__dummy_ops(); -- obf
_PugRS63s._vsFNqUM2 = Vector3._nfGC8Yr2((0 / 2), 0, (0 / 2));
end;
end;
end;
end;
end);
end);
__dummy_ops(); -- obf
spawn(function()
pcall(function()
while wait() do
if _UC8YJ6NP then
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377808312a392c3d780a39313c", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780a393b3d780e6b", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0c3d343d28372a2c780c37781e2a37223d36781c31353d362b313736", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0b393134780c37781e2a37223d36781c31353d362b313736", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)] or _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c3778082a3d2b2b7810393331781a2d2c2c3736", 88)] or _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c3778192a3d3639780c2a3931363d2a", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("0c2f3d3d36780c377810313f303d2b2c7815312a393f3d", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] or _G._j963CW1K._3tuTG4jB[__xor_decode("1e31363c781a342d3d781f3d392a", 88)] or _G._j963CW1K._sVE4dRoh[__xor_decode("192d2c37781331343478083439213d2a78092d3d2b2c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781b2d2a2b3d3c781c2d39347813392c393639", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c2d2b30312c39", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] or _G._gVIgzMXn or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3931363a372f7810393331", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781d3b2c372834392b35", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c3778173a2b3d2a2e392c313736780e6a", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c3778152d2b333d2c3d3d2a7810392c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810373421780c372a3b30", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781b39362e39363c3d2a", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a3578143d392c303d2a", 88)] or _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)] then
for _, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_uamye779()) do
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
v._5rDNyh0H = false;
end;
end;
end;
end;
end;
end);
end);
spawn(function()
__dummy_ops(); -- obf
pcall(function()
while wait() do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or _G._2tRvP52D or _G._gVIgzMXn or _G._46ppaJg0 or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a3578173a2b3d2a2e392c313736", 88)] or _G._j963CW1K._WA907xoV[__xor_decode("0c2f3d3d36780c37781e2a2d312c", 88)] or _G._kaHlnP4M or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e392b2c", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)] then
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw:_cVgfc2HD(__xor_decode("1a373c211b343128", 88)) then
local _PugRS63s = Instance._nfGC8Yr2(__xor_decode("1a373c210e3d34373b312c21", 88));
_PugRS63s._CJFCQjk5 = __xor_decode("1a373c211b343128", 88);
_PugRS63s._48KJh7fv = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw;
_PugRS63s._wcIqPPT2 = Vector3._nfGC8Yr2((100000 + 0), (200000 / 2), (200000 / 2));
_PugRS63s._vsFNqUM2 = Vector3._nfGC8Yr2((0 + 0), ((100) - 100), (0 / 2));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._P5sj2uPT:_CEVggw7o(function()
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)] or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or _G._2tRvP52D or _G._gVIgzMXn or _G._46ppaJg0 or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a3578173a2b3d2a2e392c313736", 88)] or _G._j963CW1K._WA907xoV[__xor_decode("0c2f3d3d36780c37781e2a2d312c", 88)] or _G._kaHlnP4M or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e392b2c", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)] or _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)] then
for _, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_uamye779()) do
__dummy_ops(); -- obf
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
v._5rDNyh0H = false;
end;
end;
end;
end);
end);
__dummy_ops(); -- obf
end);
function _LKYWqXFh(_ZvjaRkAz)
if not _ZvjaRkAz then
_G._BVuxT5uA = true;
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame);
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw:_cVgfc2HD(__xor_decode("1a373c211b343128", 88)) then
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw:_cVgfc2HD(__xor_decode("1a373c211b343128", 88))):_LNRqQOQ8();
end;
_G._BVuxT5uA = false;
end;
end;
function _sZACouAO(_G8IBVCGu)
_G8IBVCGu._aqi4OxxB:_CgSrBCpg((11 + 0));
if _G8IBVCGu._aqi4OxxB:_cVgfc2HD(__xor_decode("19363135392c372a", 88)) then
_G8IBVCGu._aqi4OxxB._1O4Nmt4f:_LNRqQOQ8();
__dummy_ops(); -- obf
end;
end;
spawn(function()
pcall(function()
while wait() do
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v:_cVgfc2HD(__xor_decode("0a3d35372c3d1e2d363b2c3137360b3037372c", 88)) then
_XepaBoPR = v._CJFCQjk5;
end;
end;
end;
end;
end);
__dummy_ops(); -- obf
end);
_1KHChD3g = _KIRfaTCx._ieZfB840:_jASXS1ll({
_Z8lr3wnx = __xor_decode("15393136", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_fPyyW9uD = _KIRfaTCx._ieZfB840:_jirAYobi({
_Z8lr3wnx = __xor_decode("1f39353d780c31353d", 88),
_6PUHC437 = __xor_decode("68", 88),
_54LwQnsi = __xor_decode("2c31353d2a", 88),
_SalThrTA = (math._tZOYIwmz(20.5))
__dummy_ops(); -- obf
});
spawn(function()
while _td8B60Nj.wait() do
pcall(function()
local _Hof07dyf = math._tZOYIwmz(workspace._U5TmleM9 + 0.5);
local _wDXl3Opf = math._tZOYIwmz(_Hof07dyf / (60 + 0) ^ ((102) - 100)) % (24 + 0);
local _EfW8nq1R = math._tZOYIwmz(_Hof07dyf / ((160) - 100) ^ (1 + 0)) % ((160) - 100);
local _UYWC5cau = math._tZOYIwmz(_Hof07dyf / (120 / 2) ^ (0 / 2)) % ((160) - 100);
_fPyyW9uD:_rZJ3kCPC(_wDXl3Opf .. __xor_decode("7810372d2a2b78", 88) .. _EfW8nq1R .. __xor_decode("781531362d2c3d78", 88) .. _UYWC5cau .. __xor_decode("780b3d3b37363c", 88));
end);
end;
end);
__dummy_ops(); -- obf
_F3TiAyRW = _KIRfaTCx._ieZfB840:_jirAYobi({
_Z8lr3wnx = __xor_decode("0831363f", 88),
_6PUHC437 = __xor_decode("68", 88),
_54LwQnsi = __xor_decode("2b313f363934", 88),
_SalThrTA = (math._tZOYIwmz(20.5))
});
spawn(function()
while _td8B60Nj.wait() do
pcall(function()
_F3TiAyRW:_rZJ3kCPC((game:_F5KpSZDL(__xor_decode("0b2c392c2b", 88)))._3Si56eOX._b2t9p949[__xor_decode("1c392c39780831363f", 88)]:_bdrLvjrE());
end);
end;
end);
_FHlXSoEw = _KIRfaTCx._ieZfB840:_jASXS1ll({
_Z8lr3wnx = __xor_decode("143d2e3d34781e392a35", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
local _4kKKeAy5 = {
__dummy_ops(); -- obf
__xor_decode("153d343d3d", 88),
__xor_decode("0b2f372a3c", 88),
__xor_decode("1e2a2d312c", 88)
};
_oMRgUdeg = _KIRfaTCx._ieZfB840:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d780f3d39283736", 88),
_WmM52dug = _4kKKeAy5,
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c780f3d39283736", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c780f3d39283736", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
_td8B60Nj.spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c780f3d39283736", 88)] == __xor_decode("153d343d3d", 88) then
for i, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v._Jtla42kH == __xor_decode("153d343d3d", 88) then
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(tostring(v._CJFCQjk5)) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = v._CJFCQjk5;
end;
end;
end;
elseif _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c780f3d39283736", 88)] == __xor_decode("0b2f372a3c", 88) then
for i, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v._Jtla42kH == __xor_decode("0b2f372a3c", 88) then
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(tostring(v._CJFCQjk5)) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = v._CJFCQjk5;
end;
end;
end;
elseif _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c780f3d39283736", 88)] == __xor_decode("1f2d36", 88) then
for i, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v._Jtla42kH == __xor_decode("1f2d36", 88) then
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(tostring(v._CJFCQjk5)) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = v._CJFCQjk5;
__dummy_ops(); -- obf
end;
end;
end;
elseif _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c780f3d39283736", 88)] == __xor_decode("1e2a2d312c", 88) then
for i, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v._Jtla42kH == __xor_decode("1a343720781e2a2d312c", 88) then
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(tostring(v._CJFCQjk5)) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = v._CJFCQjk5;
end;
end;
end;
end;
end);
__dummy_ops(); -- obf
end;
end);
local _ONmaXKOS = {
__xor_decode("092d3d2b2c", 88),
__xor_decode("163778092d3d2b2c", 88),
__dummy_ops(); -- obf
__xor_decode("163d392a3d2b2c", 88)
};
_Zs1LSR0o = _KIRfaTCx._ieZfB840:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d781e392a3578143d2e3d3478153d2c30373c", 88),
_WmM52dug = _ONmaXKOS,
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("1e392a3578143d2e3d3478153d2c30373c", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._azX2ob7h[__xor_decode("1e392a3578143d2e3d3478153d2c30373c", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_GU09i5ot = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a3578143d2e3d34", 88),
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("1e392a3578143d2e3d3478153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88) and _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] then
pcall(function()
_SWPdrtpp();
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
if v._CJFCQjk5 == _G8IBVCGu then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (1 + 0), ((101) - 100));
_gChUopcS();
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] or v._aqi4OxxB._olQxbQJn <= 0 or (not v._48KJh7fv) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false;
end;
end;
end;
else
_LbiBlaTO(_8tu8uct7);
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("1e392a3578143d2e3d3478153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88) and _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] then
pcall(function()
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
if v._CJFCQjk5 then
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)))._WXvbXr4t)._To53yerA <= ((5100) - 100) then
repeat
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_gChUopcS();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), (1 + 0));
v._JNHDC2Lw._HenamT3N = (math._tZOYIwmz(1.5));
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
v._aqi4OxxB._p4DwX85W = (0 / 2);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
__dummy_ops(); -- obf
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not game._N4KQlE00._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5));
end;
end;
end;
__dummy_ops(); -- obf
end;
end);
end;
__dummy_ops(); -- obf
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("1e392a3578143d2e3d3478153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88) and _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] then
pcall(function()
_SWPdrtpp();
local _0XMqEanf = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2;
if not string._jiv09JBF(_0XMqEanf, _4mG6s24k) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("193a39363c3736092d3d2b2c", 88));
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _cQtfcs6J, _DHaJyY6G);
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
if v._CJFCQjk5 == _G8IBVCGu then
if string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
v._aqi4OxxB._p4DwX85W = (0 / 2);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (1 + 0));
_Icjvmi0Z = v._CJFCQjk5;
__dummy_ops(); -- obf
_gChUopcS();
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false;
end;
end;
end;
end;
else
_LbiBlaTO(_8tu8uct7);
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
end;
__dummy_ops(); -- obf
end;
end);
end;
end;
end);
_JZQsMDDG = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392b2c781e392a35", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392b2c781e392a35", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392b2c781e392a35", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392b2c781e392a35", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
__dummy_ops(); -- obf
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392b2c781e392a35", 88)] and _dVBkh5d7 then
if game.Players._qLJftmnl._TzmFDedP._wCY5UHhz._V7K9qQq7 >= (20 / 2) then
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] = false;
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392b2c781e392a35", 88)] = true;
end;
end;
end;
end);
end);
_jOsWYXEH = _KIRfaTCx._ieZfB840:_jASXS1ll({
_Z8lr3wnx = __xor_decode("15392b2c3d2a21781e392a35", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
if _UC8YJ6NP then
_Py6MKdfB = {
__xor_decode("092d3d2b2c", 88),
__xor_decode("163778092d3d2b2c", 88),
__xor_decode("163d392a3d2b2c", 88),
__dummy_ops(); -- obf
__xor_decode("1b39333d282a31363b3d", 88),
__xor_decode("1a37363d2b", 88)
};
elseif _qMpv1cUt or _dVBkh5d7 then
__dummy_ops(); -- obf
_Py6MKdfB = {
__xor_decode("092d3d2b2c", 88),
__xor_decode("163778092d3d2b2c", 88),
__xor_decode("163d392a3d2b2c", 88)
};
__dummy_ops(); -- obf
end;
_s3ZoGz6V = _KIRfaTCx._ieZfB840:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d7815392b2c3d2a2178153d2c30373c", 88),
_WmM52dug = _Py6MKdfB,
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
_tj8zOCwO = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e2a2d312c7815392b2c3d2a21", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
_yjNOmKGi = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f2d367815392b2c3d2a21", 88),
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
local _byaIrHje = {};
local _nwmXTsUt = (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("3f3d2c11362e3d362c372a21", 88));
for i, v in pairs(_nwmXTsUt) do
if v._DXq1Zcxk == __xor_decode("0b2f372a3c", 88) then
table._lwzCRDUx(_byaIrHje, v._CJFCQjk5);
end;
end;
_AEcFYQhN = _KIRfaTCx._ieZfB840:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d780b2f372a3c", 88),
_WmM52dug = _byaIrHje,
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
function _QgIyTZBC(_trgiuMqV)
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(_trgiuMqV) then
return true;
elseif game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(_trgiuMqV) then
return true;
end;
return false;
end;
spawn(function()
while wait() do
pcall(function()
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] then
if not _QgIyTZBC(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1437393c112c3d35", 88), _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
end;
end;
end);
end;
end);
_ZJaVMVcw = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b2f372a3c7815392b2c3d2a21", 88),
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
spawn(function()
while _td8B60Nj.wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88) then
pcall(function()
_SWPdrtpp();
if not string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("193a39363c3736092d3d2b2c", 88));
_LbiBlaTO(_hwJlV23H);
__dummy_ops(); -- obf
if (_hwJlV23H._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (10 / 2) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _cQtfcs6J, _DHaJyY6G);
__dummy_ops(); -- obf
end;
elseif string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
if game._N4KQlE00._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if v._CJFCQjk5 == _G8IBVCGu then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_gChUopcS();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), ((101) - 100), ((101) - 100));
v._JNHDC2Lw._HenamT3N = (math._tZOYIwmz(1.5));
v._aqi4OxxB._RPBflaz4 = (0 + 0);
v._aqi4OxxB._p4DwX85W = 0;
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == (0 + 0) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88);
end;
end;
end;
else
__dummy_ops(); -- obf
_LbiBlaTO(_8tu8uct7);
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88) then
pcall(function()
_SWPdrtpp();
_LbiBlaTO(_8tu8uct7);
if game._N4KQlE00._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
__dummy_ops(); -- obf
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _G8IBVCGu and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_gChUopcS();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (2 / 2), (1 + 0));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = 0;
v._aqi4OxxB._p4DwX85W = (0 + 0);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == 0 or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88);
end;
end;
else
__dummy_ops(); -- obf
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_LbiBlaTO(_8tu8uct7);
__dummy_ops(); -- obf
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a37363d2b", 88) then
pcall(function()
_LbiBlaTO(_UQuNDo77);
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0a3d3a372a36780b333d343d2c3736", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("14312e31363f780237353a313d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08372b3d2b2b3d3c78152d353521", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0a3d3a372a36780b333d343d2c3736", 88) or v._CJFCQjk5 == __xor_decode("14312e31363f780237353a313d", 88) or v._CJFCQjk5 == __xor_decode("1c3d353736313b780b372d34", 88) or v._CJFCQjk5 == __xor_decode("08372b3d2b2b3d3c78152d353521", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_gChUopcS();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (math._tZOYIwmz(1.5)), (2 / 2));
v._JNHDC2Lw._HenamT3N = (1 + 0);
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 + 0);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a37363d2b", 88);
__dummy_ops(); -- obf
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) then
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1b39333d282a31363b3d", 88) then
pcall(function()
__dummy_ops(); -- obf
local _LmuE6izd = CFrame._nfGC8Yr2(-2091.911865234375, 70.00884246826172, -12142.8359375);
_LbiBlaTO(_LmuE6izd);
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b373733313d781b2a393e2c3d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d781f2d392a3c", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1a393331363f780b2c393e3e", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("103d393c781a39333d2a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b373733313d781b2a393e2c3d2a", 88) or v._CJFCQjk5 == __xor_decode("1b39333d781f2d392a3c", 88) or v._CJFCQjk5 == __xor_decode("1a393331363f780b2c393e3e", 88) or v._CJFCQjk5 == __xor_decode("103d393c781a39333d2a", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_gChUopcS();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (1 + 0));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
v._aqi4OxxB._p4DwX85W = 0;
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1b39333d282a31363b3d", 88);
__dummy_ops(); -- obf
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1a393331363f780b2c393e3e", 88)) then
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88) then
pcall(function()
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)))._WXvbXr4t)._To53yerA <= (2000 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_gChUopcS();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (2 / 2), (math._tZOYIwmz(1.5)));
v._JNHDC2Lw._HenamT3N = (math._tZOYIwmz(1.5));
v._aqi4OxxB._RPBflaz4 = 0;
v._aqi4OxxB._p4DwX85W = (0 / 2);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == (0 / 2) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88);
end;
end;
end;
end);
__dummy_ops(); -- obf
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a372b2b", 88) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
_sfSIUacJ();
_LbiBlaTO(_JLryFlt7);
if (_JLryFlt7._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (10 / 2) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _Z1pkbtTP, _eLvltoeC);
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
pcall(function()
_sfSIUacJ();
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_K4AjBrOy) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _jx8xk5yl and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815392b2c3d2a21780b2f372a3c", 88)]);
_gChUopcS();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), ((101) - 100), (2 / 2));
v._JNHDC2Lw._HenamT3N = ((101) - 100);
v._aqi4OxxB._RPBflaz4 = 0;
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
__dummy_ops(); -- obf
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35780b2f372a3c7815392b2c3d2a21", 88)] or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a372b2b", 88) or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == ((100) - 100) or game.Players._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5));
end;
end;
end;
__dummy_ops(); -- obf
end);
end;
end;
end;
end);
spawn(function()
while _td8B60Nj.wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88) then
pcall(function()
_SWPdrtpp();
if not string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("193a39363c3736092d3d2b2c", 88));
_LbiBlaTO(_hwJlV23H);
if (_hwJlV23H._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (10 / 2) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _cQtfcs6J, _DHaJyY6G);
end;
elseif string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
if game._N4KQlE00._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if v._CJFCQjk5 == _G8IBVCGu then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / ((200) - 100) then
__dummy_ops(); -- obf
_jFSmbcsg((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3eMiG9Gm._V7K9qQq7);
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, ((125) - 100), (0 + 0)) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), ((100) - 100), 0));
_ZfKSfZif = true;
_Wu0X4njD = true;
else
__dummy_ops(); -- obf
_Wu0X4njD = false;
__dummy_ops(); -- obf
_ZfKSfZif = false;
__dummy_ops(); -- obf
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_JiJorBgD();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (2 / 2));
v._JNHDC2Lw._HenamT3N = (1 + 0);
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 + 0);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
_ZfKSfZif = true;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == ((100) - 100) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88);
_Wu0X4njD = false;
_ZfKSfZif = false;
end;
end;
end;
else
__dummy_ops(); -- obf
_Wu0X4njD = false;
_LbiBlaTO(_8tu8uct7);
_vOBaWFHT(_2tTcy2tD);
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88) then
pcall(function()
_SWPdrtpp();
_LbiBlaTO(_8tu8uct7);
if game._N4KQlE00._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
__dummy_ops(); -- obf
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _G8IBVCGu and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / ((200) - 100) then
_jFSmbcsg((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3eMiG9Gm._V7K9qQq7);
_Wu0X4njD = true;
_ZfKSfZif = true;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, (50 / 2), 0) * CFrame._ramCwUrF(math._C9vcFUKj((-(math._tZOYIwmz(90.5)))), 0, (0 + 0)));
else
_Wu0X4njD = false;
_ZfKSfZif = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_JiJorBgD();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
__dummy_ops(); -- obf
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (2 / 2), (2 / 2));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 / 2);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == (0 / 2) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88);
_Wu0X4njD = false;
_ZfKSfZif = false;
end;
end;
else
_Wu0X4njD = false;
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(_8tu8uct7);
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a37363d2b", 88) then
__dummy_ops(); -- obf
pcall(function()
_LbiBlaTO(_UQuNDo77);
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0a3d3a372a36780b333d343d2c3736", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("14312e31363f780237353a313d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08372b3d2b2b3d3c78152d353521", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0a3d3a372a36780b333d343d2c3736", 88) or v._CJFCQjk5 == __xor_decode("14312e31363f780237353a313d", 88) or v._CJFCQjk5 == __xor_decode("1c3d353736313b780b372d34", 88) or v._CJFCQjk5 == __xor_decode("08372b3d2b2b3d3c78152d353521", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (100 + 0) then
_jFSmbcsg((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3eMiG9Gm._V7K9qQq7);
_Wu0X4njD = true;
_ZfKSfZif = true;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), (math._tZOYIwmz(25.5)), (0 + 0)) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), (0 / 2), 0));
else
_Wu0X4njD = false;
_ZfKSfZif = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_JiJorBgD();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
__dummy_ops(); -- obf
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), ((101) - 100), (2 / 2));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = (0 + 0);
v._aqi4OxxB._p4DwX85W = (0 + 0);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not v._48KJh7fv) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a37363d2b", 88);
_Wu0X4njD = false;
_ZfKSfZif = false;
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) then
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1b39333d282a31363b3d", 88) then
pcall(function()
local _LmuE6izd = CFrame._nfGC8Yr2(-2091.911865234375, 70.00884246826172, -12142.8359375);
_LbiBlaTO(_LmuE6izd);
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b373733313d781b2a393e2c3d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d781f2d392a3c", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1a393331363f780b2c393e3e", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("103d393c781a39333d2a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b373733313d781b2a393e2c3d2a", 88) or v._CJFCQjk5 == __xor_decode("1b39333d781f2d392a3c", 88) or v._CJFCQjk5 == __xor_decode("1a393331363f780b2c393e3e", 88) or v._CJFCQjk5 == __xor_decode("103d393c781a39333d2a", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (100 + 0) then
_jFSmbcsg((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3eMiG9Gm._V7K9qQq7);
_Wu0X4njD = true;
__dummy_ops(); -- obf
_ZfKSfZif = true;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), (25 + 0), ((100) - 100)) * CFrame._ramCwUrF(math._C9vcFUKj((-(math._tZOYIwmz(90.5)))), 0, (0 / 2)));
else
_Wu0X4njD = false;
_ZfKSfZif = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_JiJorBgD();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), (1 + 0));
v._JNHDC2Lw._HenamT3N = ((101) - 100);
v._aqi4OxxB._RPBflaz4 = 0;
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
__dummy_ops(); -- obf
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1b39333d282a31363b3d", 88);
_Wu0X4njD = false;
_ZfKSfZif = false;
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1a393331363f780b2c393e3e", 88)) then
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88) then
pcall(function()
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)))._WXvbXr4t)._To53yerA <= (2000 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / ((200) - 100) then
_jFSmbcsg((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3eMiG9Gm._V7K9qQq7);
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, (math._tZOYIwmz(25.5)), (0 + 0)) * CFrame._ramCwUrF(math._C9vcFUKj((-(90 + 0))), (0 + 0), (0 / 2)));
_ZfKSfZif = true;
_Wu0X4njD = true;
else
_ZfKSfZif = false;
_Wu0X4njD = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_JiJorBgD();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (math._tZOYIwmz(1.5)), (math._tZOYIwmz(1.5)));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
v._aqi4OxxB._p4DwX85W = (0 / 2);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == 0 or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88);
_Wu0X4njD = false;
__dummy_ops(); -- obf
_ZfKSfZif = false;
end;
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a372b2b", 88) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
_sfSIUacJ();
_LbiBlaTO(_JLryFlt7);
if (_JLryFlt7._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= ((105) - 100) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _Z1pkbtTP, _eLvltoeC);
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
pcall(function()
_sfSIUacJ();
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_K4AjBrOy) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if v._CJFCQjk5 == _jx8xk5yl and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (100 + 0) then
_jFSmbcsg((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3eMiG9Gm._V7K9qQq7);
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, (25 + 0), 0) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), (0 + 0), 0));
_ZfKSfZif = true;
_Wu0X4njD = true;
else
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_Wu0X4njD = false;
_ZfKSfZif = false;
_JiJorBgD();
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (math._tZOYIwmz(1.5)));
v._JNHDC2Lw._HenamT3N = (2 / 2);
__dummy_ops(); -- obf
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 / 2);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)] or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a372b2b", 88) or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == ((100) - 100) or game.Players._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5));
_Wu0X4njD = false;
__dummy_ops(); -- obf
_ZfKSfZif = false;
end;
end;
else
_Wu0X4njD = false;
_ZfKSfZif = false;
end;
end);
end;
end;
end;
end);
spawn(function()
while _td8B60Nj.wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88) then
pcall(function()
_SWPdrtpp();
if not string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("193a39363c3736092d3d2b2c", 88));
_LbiBlaTO(_hwJlV23H);
if (_hwJlV23H._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(5.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _cQtfcs6J, _DHaJyY6G);
end;
__dummy_ops(); -- obf
elseif string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, _4mG6s24k) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
if game._N4KQlE00._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if v._CJFCQjk5 == _G8IBVCGu then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (math._tZOYIwmz(100.5)) then
_jFSmbcsg(_XepaBoPR);
local _44QcKlT5 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 + 0), (-(math._tZOYIwmz(15.5))), ((100) - 100));
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._aqi4OxxB:_cVgfc2HD(__xor_decode("", 88))):_gYy0cacA(__xor_decode("0c1908", 88), Vector3._nfGC8Yr2(_44QcKlT5._WXvbXr4t));
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), ((125) - 100), 0) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), ((100) - 100), ((100) - 100)));
__dummy_ops(); -- obf
_nTDEMboA = true;
_ZfKSfZif = true;
else
_nTDEMboA = false;
__dummy_ops(); -- obf
_ZfKSfZif = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (1 + 0), (2 / 2));
v._JNHDC2Lw._HenamT3N = (1 + 0);
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
__dummy_ops(); -- obf
v._aqi4OxxB._p4DwX85W = (0 / 2);
_JiJorBgD();
_RTvKUSlv = v._JNHDC2Lw.CFrame;
__dummy_ops(); -- obf
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88);
_nTDEMboA = false;
__dummy_ops(); -- obf
_ZfKSfZif = false;
end;
end;
end;
else
_nTDEMboA = false;
_ZfKSfZif = false;
_LbiBlaTO(_8tu8uct7);
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88) then
__dummy_ops(); -- obf
pcall(function()
__dummy_ops(); -- obf
_SWPdrtpp();
_LbiBlaTO(_8tu8uct7);
if game._N4KQlE00._rmNzQJ0M:_cVgfc2HD (_G8IBVCGu) then
__dummy_ops(); -- obf
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _G8IBVCGu and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (100 + 0) then
local _44QcKlT5 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (-(30 / 2)), 0);
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._aqi4OxxB:_cVgfc2HD(__xor_decode("", 88))):_gYy0cacA(__xor_decode("0c1908", 88), Vector3._nfGC8Yr2(_44QcKlT5._WXvbXr4t));
_jFSmbcsg(_XepaBoPR);
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (25 + 0), (0 + 0)) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), 0, ((100) - 100)));
_nTDEMboA = true;
_ZfKSfZif = true;
else
_ZfKSfZif = false;
_nTDEMboA = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
__dummy_ops(); -- obf
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (math._tZOYIwmz(1.5)), ((101) - 100));
v._JNHDC2Lw._HenamT3N = ((101) - 100);
v._aqi4OxxB._RPBflaz4 = 0;
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_JiJorBgD();
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
__dummy_ops(); -- obf
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5)) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88);
end;
end;
else
_nTDEMboA = false;
_ZfKSfZif = false;
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(_8tu8uct7);
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a37363d2b", 88) then
pcall(function()
__dummy_ops(); -- obf
_LbiBlaTO(_UQuNDo77);
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0a3d3a372a36780b333d343d2c3736", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("14312e31363f780237353a313d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08372b3d2b2b3d3c78152d353521", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if v._CJFCQjk5 == __xor_decode("0a3d3a372a36780b333d343d2c3736", 88) or v._CJFCQjk5 == __xor_decode("14312e31363f780237353a313d", 88) or v._CJFCQjk5 == __xor_decode("1c3d353736313b780b372d34", 88) or v._CJFCQjk5 == __xor_decode("08372b3d2b2b3d3c78152d353521", 88) then
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (100 + 0) then
_jFSmbcsg(_XepaBoPR);
local _44QcKlT5 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), (-((115) - 100)), 0);
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._aqi4OxxB:_cVgfc2HD(__xor_decode("", 88))):_gYy0cacA(__xor_decode("0c1908", 88), Vector3._nfGC8Yr2(_44QcKlT5._WXvbXr4t));
_nTDEMboA = true;
_ZfKSfZif = true;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (math._tZOYIwmz(25.5)), (0 / 2)) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), ((100) - 100), (0 + 0)));
else
_nTDEMboA = false;
_ZfKSfZif = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
_JiJorBgD();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (math._tZOYIwmz(1.5)), ((101) - 100));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
v._aqi4OxxB._p4DwX85W = 0;
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a37363d2b", 88) or v._aqi4OxxB._olQxbQJn <= (0 + 0) or (not v._48KJh7fv);
_nTDEMboA = false;
_ZfKSfZif = false;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) then
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1b39333d282a31363b3d", 88) then
pcall(function()
local _LmuE6izd = CFrame._nfGC8Yr2(-2091.911865234375, 70.00884246826172, -12142.8359375);
_LbiBlaTO(_LmuE6izd);
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b373733313d781b2a393e2c3d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d781f2d392a3c", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1a393331363f780b2c393e3e", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("103d393c781a39333d2a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b373733313d781b2a393e2c3d2a", 88) or v._CJFCQjk5 == __xor_decode("1b39333d781f2d392a3c", 88) or v._CJFCQjk5 == __xor_decode("1a393331363f780b2c393e3e", 88) or v._CJFCQjk5 == __xor_decode("103d393c781a39333d2a", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (200 / 2) then
_jFSmbcsg(_XepaBoPR);
__dummy_ops(); -- obf
local _44QcKlT5 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (-((115) - 100)), 0);
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._aqi4OxxB:_cVgfc2HD(__xor_decode("", 88))):_gYy0cacA(__xor_decode("0c1908", 88), Vector3._nfGC8Yr2(_44QcKlT5._WXvbXr4t));
_nTDEMboA = true;
_ZfKSfZif = true;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), ((125) - 100), 0) * CFrame._ramCwUrF(math._C9vcFUKj((-((190) - 100))), (0 + 0), 0));
else
_nTDEMboA = false;
_ZfKSfZif = false;
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
__dummy_ops(); -- obf
_XOIOiZrU();
_JiJorBgD();
__dummy_ops(); -- obf
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), ((101) - 100), ((101) - 100));
v._JNHDC2Lw._HenamT3N = ((101) - 100);
v._aqi4OxxB._RPBflaz4 = 0;
v._aqi4OxxB._p4DwX85W = 0;
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1b39333d282a31363b3d", 88) or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not v._48KJh7fv);
_nTDEMboA = false;
_ZfKSfZif = false;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1b39333d781f2d392a3c", 88)) then
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end;
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88) then
pcall(function()
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)))._WXvbXr4t)._To53yerA <= (2000 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / ((200) - 100) then
_jFSmbcsg(_XepaBoPR);
local _44QcKlT5 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, (-(math._tZOYIwmz(15.5))), ((100) - 100));
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._aqi4OxxB:_cVgfc2HD(__xor_decode("", 88))):_gYy0cacA(__xor_decode("0c1908", 88), Vector3._nfGC8Yr2(_44QcKlT5._WXvbXr4t));
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), (25 + 0), 0) * CFrame._ramCwUrF(math._C9vcFUKj((-(180 / 2))), (0 + 0), ((100) - 100)));
_nTDEMboA = true;
_ZfKSfZif = true;
__dummy_ops(); -- obf
else
_nTDEMboA = false;
_ZfKSfZif = false;
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), ((101) - 100));
__dummy_ops(); -- obf
v._JNHDC2Lw._HenamT3N = (2 / 2);
__dummy_ops(); -- obf
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_JiJorBgD();
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0) or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("163d392a3d2b2c", 88);
_nTDEMboA = false;
_ZfKSfZif = false;
__dummy_ops(); -- obf
end;
end;
end;
end);
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] and _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a372b2b", 88) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
_sfSIUacJ();
_LbiBlaTO(_JLryFlt7);
if (_JLryFlt7._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= ((105) - 100) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), _Z1pkbtTP, _eLvltoeC);
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
pcall(function()
_sfSIUacJ();
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_K4AjBrOy) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _jx8xk5yl and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
if v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (100 + 0) then
_jFSmbcsg(_XepaBoPR);
local _44QcKlT5 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 + 0), (-((115) - 100)), (0 / 2));
((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._aqi4OxxB:_cVgfc2HD(__xor_decode("", 88))):_gYy0cacA(__xor_decode("0c1908", 88), Vector3._nfGC8Yr2(_44QcKlT5._WXvbXr4t));
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, ((125) - 100), (0 / 2)) * CFrame._ramCwUrF(math._C9vcFUKj((-(math._tZOYIwmz(90.5)))), (0 / 2), 0));
_nTDEMboA = true;
_ZfKSfZif = true;
else
_nTDEMboA = false;
_ZfKSfZif = false;
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (math._tZOYIwmz(1.5)), ((101) - 100));
v._JNHDC2Lw._HenamT3N = (2 / 2);
v._aqi4OxxB._RPBflaz4 = (0 + 0);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
__dummy_ops(); -- obf
_JiJorBgD();
_3dFKra9N = v._JNHDC2Lw._WXvbXr4t;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)] or not _G._j963CW1K._azX2ob7h[__xor_decode("15392b2c3d2a2178153d2c30373c", 88)] == __xor_decode("1a372b2b", 88) or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or game.Players._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5));
_ZfKSfZif = false;
end;
end;
else
_nTDEMboA = false;
_ZfKSfZif = false;
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(_K4AjBrOy))._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end);
end;
end;
end;
end);
__dummy_ops(); -- obf
_JTFU5ZhC = _KIRfaTCx._ieZfB840:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0c212a39362c78173e780c303d780b33313d2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_JJAegoqp = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88),
_HwEwctDL = false,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)]);
end
});
function _VYBzXkNH()
local _zJvqU351 = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._xjqvzBko._GuaXRLxW;
local _VbSWeTHd = {
_vaxE5JdL = false,
_EDo6rsOL = false,
_Pwbaz23z = false,
_nr8NFDsR = false
};
for _, v in ipairs(_zJvqU351:_5PPij5jV()) do
if string._ZgAZ1I7Y(v._CJFCQjk5, __xor_decode("061d213d7d3c7c", 88)) and _VbSWeTHd[v._CJFCQjk5] ~= nil then
if tonumber(v._HenamT3N) == ((100) - 100) then
_VbSWeTHd[v._CJFCQjk5] = true;
end;
end;
end;
for _, _IQ93SVqi in pairs(_VbSWeTHd) do
if not _IQ93SVqi then
return false;
end;
end;
return true;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
function _iXDtYdoF()
__dummy_ops(); -- obf
for _, _wYcw1svt in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._xjqvzBko._GuaXRLxW:_5PPij5jV()) do
if _wYcw1svt:_cVgfc2HD(__xor_decode("1d393f343d1a372b2b192a3d3639", 88)) then
for i, v in pairs(_wYcw1svt._lt4bOlv9:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0c2a3d3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(v._qatvvlNL._WXvbXr4t));
_PnavwlpY();
end;
end;
end;
end;
__dummy_ops(); -- obf
end;
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)] then
pcall(function()
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c212a39362c78373e782c303d780b33313d2b", 88)) then
if not _VYBzXkNH() then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0b3d2a283d362c78102d362c3d2a", 88) or v._CJFCQjk5 == __xor_decode("0b332d3434780b3439213d2a", 88) or v._CJFCQjk5 == __xor_decode("112b343d781b30393528313736", 88) or v._CJFCQjk5 == __xor_decode("0b2d367533312b2b3d3c780f392a2a31372a", 88) then
if v._aqi4OxxB and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
_XOIOiZrU();
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 + 0);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not v._48KJh7fv or v._aqi4OxxB._olQxbQJn <= (0 + 0) or _VYBzXkNH() or (not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)]);
end;
end;
end;
else
__dummy_ops(); -- obf
repeat wait()
_iXDtYdoF();
until (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c212a39362c78373e782c303d780b33313d2b", 88)) or (not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37780b2d35353736780c212a39362c78173e780c303d780b33313d2b", 88)]);
end;
end;
end);
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end);
_y9xIlTz4 = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88),
_HwEwctDL = false,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)]);
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)] then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c212a39362c78373e782c303d780b33313d2b", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0c212a39362c78373e782c303d780b33313d2b", 88) then
repeat
wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
_XOIOiZrU();
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 + 0);
until not v._dKXId3aC or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c212a39362c78373e782c303d780b33313d2b", 88))) or (not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c377813313434780c212a39362c78173e780c303d780b33313d2b", 88)]);
end;
end;
end;
end);
end;
end;
end);
_5PCAXg8O = _KIRfaTCx._ieZfB840:_jASXS1ll({
_Z8lr3wnx = __xor_decode("15373a781e392a35", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
if _dVBkh5d7 then
_t6I12kX5 = {
__xor_decode("1a39363c312c", 88),
__xor_decode("153736333d21", 88),
__xor_decode("1f372a31343439", 88),
__xor_decode("08312a392c3d", 88),
__xor_decode("1a2a2d2c3d", 88),
__xor_decode("1c3d2b3d2a2c781a39363c312c", 88),
__xor_decode("1c3d2b3d2a2c78173e3e313b3d2a", 88),
__xor_decode("0b36372f781a39363c312c", 88),
__xor_decode("0b36372f353936", 88),
__xor_decode("1b30313d3e78083d2c2c2178173e3e313b3d2a", 88),
__xor_decode("0b3321781a39363c312c", 88),
__xor_decode("1c392a337815392b2c3d2a", 88),
__xor_decode("0c373f39780f392a2a31372a", 88),
__xor_decode("1f34393c31392c372a", 88),
__xor_decode("153134312c392a21780b37343c313d2a", 88),
__xor_decode("153134312c392a21780b2821", 88),
__xor_decode("1e312b30353936780f392a2a31372a", 88),
__xor_decode("1e312b30353936781b37353539363c37", 88),
__xor_decode("1f373c7f2b781f2d392a3c", 88),
__dummy_ops(); -- obf
__xor_decode("0b3039363c39", 88),
__xor_decode("0a37213934780b292d393c", 88),
__xor_decode("0a37213934780b37343c313d2a", 88),
__xor_decode("1f3934343d217808312a392c3d", 88),
__xor_decode("1f3934343d21781b39282c393136", 88)
};
elseif _qMpv1cUt then
_t6I12kX5 = {
__xor_decode("0a39313c3d2a", 88),
__xor_decode("153d2a3b3d36392a21", 88),
__xor_decode("0b2f39367808312a392c3d", 88),
__xor_decode("1e393b2c372a21780b2c393e3e", 88),
__xor_decode("15392a31363d7814313d2d2c3d3639362c", 88),
__xor_decode("15392a31363d781b39282c393136", 88),
__dummy_ops(); -- obf
__xor_decode("0237353a313d", 88),
__xor_decode("0e393528312a3d", 88),
__xor_decode("0b36372f780c2a3737283d2a", 88),
__xor_decode("0f31362c3d2a780f392a2a31372a", 88),
__dummy_ops(); -- obf
__xor_decode("14393a780b2d3a372a3c3136392c3d", 88),
__xor_decode("10372a363d3c780f392a2a31372a", 88),
__xor_decode("15393f3539781631363239", 88),
__dummy_ops(); -- obf
__xor_decode("14392e397808312a392c3d", 88),
__xor_decode("0b303128781c3d3b333039363c", 88),
__dummy_ops(); -- obf
__xor_decode("0b303128781d363f31363d3d2a", 88),
__xor_decode("0b303128780b2c3d2f392a3c", 88),
__xor_decode("0b30312878173e3e313b3d2a", 88),
__xor_decode("192a3b2c313b780f392a2a31372a", 88),
__xor_decode("0b36372f78142d2a333d2a", 88),
__xor_decode("0b3d39780b37343c313d2a", 88),
__xor_decode("0f392c3d2a781e313f302c3d2a", 88)
};
__dummy_ops(); -- obf
elseif _UC8YJ6NP then
_t6I12kX5 = {
__xor_decode("08312a392c3d781531343431373639312a3d", 88),
__dummy_ops(); -- obf
__xor_decode("1c2a393f3736781b2a3d2f780f392a2a31372a", 88),
__xor_decode("1c2a393f3736781b2a3d2f78192a3b303d2a", 88),
__xor_decode("1e3d3539343d78112b3439363c3d2a", 88),
__xor_decode("1f3139362c78112b3439363c3d2a", 88),
__xor_decode("15392a31363d781b373535373c372a3d", 88),
__xor_decode("15392a31363d780a3d392a78193c35312a3934", 88),
__xor_decode("1e312b30353936780a39313c3d2a", 88),
__xor_decode("1e312b30353936781b39282c393136", 88),
__xor_decode("1e372a3d2b2c7808312a392c3d", 88),
__xor_decode("15212c303734373f313b39347808312a392c3d", 88),
__xor_decode("122d363f343d7808312a392c3d", 88),
__xor_decode("152d2b333d2c3d3d2a7808312a392c3d", 88),
__xor_decode("0a3d3a372a36780b333d343d2c3736", 88),
__xor_decode("14312e31363f780237353a313d", 88),
__xor_decode("1c3d353736313b780b372d34", 88),
__xor_decode("08372b3d2b2b3d3c78152d353521", 88),
__xor_decode("083d39362d2c780b3b372d2c", 88),
__xor_decode("083d39362d2c78082a3d2b313c3d362c", 88),
__dummy_ops(); -- obf
__xor_decode("113b3d781b2a3d3935781b303d3e", 88),
__xor_decode("113b3d781b2a3d3935781b37353539363c3d2a", 88),
__xor_decode("1b373733313d781b2a393e2c3d2a", 88),
__xor_decode("1b39333d781f2d392a3c", 88),
__xor_decode("1a393331363f780b2c393e3e", 88),
__xor_decode("103d393c781a39333d2a", 88),
__xor_decode("1b373b3739780f392a2a31372a", 88),
__xor_decode("1b30373b3734392c3d781a392a781a392c2c343d2a", 88),
__xor_decode("0b2f3d3d2c780c30313d3e", 88),
__xor_decode("1b39363c21780a3d3a3d34", 88),
__xor_decode("1b39363c217808312a392c3d", 88),
__xor_decode("0b36372f781c3d353736", 88),
__xor_decode("112b343d78172d2c34392f", 88),
__xor_decode("112b3439363c781a3721", 88),
__xor_decode("0b2d367533312b2b3d3c780f392a2a31372a", 88),
__xor_decode("112b343d781b30393528313736", 88)
};
end;
_Y3rp0Lnh = _KIRfaTCx._ieZfB840:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d7815373a", 88),
_WmM52dug = _t6I12kX5,
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815373a3a", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815373a", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
_rNXrzay5 = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a357815373a", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("192d2c3778133134347815373a780f303d36780b28392f36", 88),
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)] then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815373a", 88)]) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c7815373a", 88)] then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 / 2);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (math._tZOYIwmz(1.5)), (2 / 2));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a357815373a", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
__dummy_ops(); -- obf
end;
end;
end;
end);
end;
end;
end);
_4oRJEMLl = _KIRfaTCx._ieZfB840:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1a372b2b781e392a35", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_EyxNyBio = _KIRfaTCx._ieZfB840:_jirAYobi({
_Z8lr3wnx = __xor_decode("1a372b2b780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
while wait(0.2) do
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)]) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)]) then
_EyxNyBio:_rZJ3kCPC(__xor_decode("0b28392f3679", 88));
else
__dummy_ops(); -- obf
_EyxNyBio:_rZJ3kCPC(__xor_decode("16372c780b28392f36", 88));
end;
end);
end;
end);
if _dVBkh5d7 then
_fXZVgAyf = {
__xor_decode("0c303d781f372a31343439781331363f", 88),
__xor_decode("1a373a3a21", 88),
__xor_decode("013d2c31", 88),
__xor_decode("15373a78143d393c3d2a", 88),
__xor_decode("0e313b3d78193c35312a3934", 88),
__xor_decode("0f392a3c3d36", 88),
__xor_decode("1b30313d3e780f392a3c3d36", 88),
__xor_decode("0b2f3936", 88),
__dummy_ops(); -- obf
__xor_decode("15393f353978193c35312a3934", 88),
__xor_decode("1e312b303539367814372a3c", 88),
__xor_decode("0f212b283d2a", 88),
__xor_decode("0c302d363c3d2a781f373c", 88),
__xor_decode("1b213a372a3f", 88),
__xor_decode("0b393a3d2a781d20283d2a2c", 88)
};
elseif _qMpv1cUt then
_fXZVgAyf = {
__xor_decode("1c31393537363c", 88),
__xor_decode("123d2a3d3521", 88),
__xor_decode("1e3932312c39", 88),
__xor_decode("1c3736780b2f3936", 88),
__xor_decode("0b3537333d78193c35312a3934", 88),
__xor_decode("1b2d2a2b3d3c781b39282c393136", 88),
__xor_decode("1c392a333a3d392a3c", 88),
__xor_decode("172a3c3d2a", 88),
__xor_decode("192f39333d363d3c78113b3d78193c35312a3934", 88),
__xor_decode("0c313c3d78133d3d283d2a", 88)
};
elseif _UC8YJ6NP then
_fXZVgAyf = {
__xor_decode("0b2c37363d", 88),
__xor_decode("112b3439363c781d35282a3d2b2b", 88),
__xor_decode("1331343778193c35312a3934", 88),
__xor_decode("1b39282c393136781d343d283039362c", 88),
__xor_decode("1a3d392d2c313e2d347808312a392c3d", 88),
__xor_decode("2a31280731363c2a39780c2a2d3d781e372a35", 88),
__xor_decode("1437363f3539", 88),
__xor_decode("0b372d34780a3d39283d2a", 88),
__xor_decode("1b39333d78092d3d3d36", 88)
};
end;
_dmiK13aQ = _KIRfaTCx._ieZfB840:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d781a372b2b", 88),
_WmM52dug = _fXZVgAyf,
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_5GGiz6MA = _KIRfaTCx._ieZfB840:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781a372b2b", 88),
_6PUHC437 = __xor_decode("192d2c377813313434781a372b2b780f303d36780b28392f36", 88),
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)] then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)]) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)] then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = 0;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), (math._tZOYIwmz(1.5)));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781a372b2b", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)]) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c781a372b2b", 88)]))._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((math._tZOYIwmz(5.5)), ((110) - 100), (2 + 0)));
end;
end);
end;
end;
end);
_9LOb3ETL = _KIRfaTCx._ieZfB840:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a3578193434781a372b2b", 88),
_V7K9qQq7 = _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)] then
pcall(function()
for i, _SriggJ6A in pairs(_fXZVgAyf) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_SriggJ6A) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _SriggJ6A then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (2 / 2), ((101) - 100));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
__dummy_ops(); -- obf
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a3578193434781a372b2b", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end;
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(_SriggJ6A) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(_SriggJ6A))._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((math._tZOYIwmz(5.5)), (20 / 2), (2 + 0)));
end;
end;
end);
end;
__dummy_ops(); -- obf
end;
end);
_w5KO1IRL = _KIRfaTCx._8rPIlIHw:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1d34312c3d78102d362c3d2a", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_3MgaRlHd = _KIRfaTCx._8rPIlIHw:_jirAYobi({
_Z8lr3wnx = __xor_decode("1d34312c3d78102d362c3d2a780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
while wait(0.2) do
pcall(function()
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1c31393a3437", 88)) or (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88)) or (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("0d2a3a3936", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c31393a3437", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0d2a3a3936", 88)) then
_3MgaRlHd:_rZJ3kCPC(__xor_decode("0b28392f3679", 88));
else
_3MgaRlHd:_rZJ3kCPC(__xor_decode("16372c780b28392f36", 88));
__dummy_ops(); -- obf
end;
end);
end;
end);
_JFt4IxPX = _KIRfaTCx._8rPIlIHw:_jirAYobi({
_Z8lr3wnx = __xor_decode("1d34312c3d78102d362c3d2a78082a373f2a3d2b2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
while wait() do
__dummy_ops(); -- obf
pcall(function()
if _dVBkh5d7 or _qMpv1cUt then
_JFt4IxPX:_rZJ3kCPC(__xor_decode("0b3d39786b7817363421", 88));
elseif _UC8YJ6NP then
_JFt4IxPX:_rZJ3kCPC((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1d34312c3d102d362c3d2a", 88), __xor_decode("082a373f2a3d2b2b", 88)));
end;
end);
end;
end);
_78gvbZ2b = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_A85VT9m4 = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781d34312c3d78102d362c3d2a78103728", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a78103728", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a78103728", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a78103728", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] and _UC8YJ6NP then
pcall(function()
local _0XMqEanf = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2;
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c31393a3437", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0d2a3a3936", 88)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
_LbiBlaTO(CFrame._nfGC8Yr2(-5418.892578125, 313.74130249023, -2826.2260742188));
if (Vector3._nfGC8Yr2((-5418.892578125), 313.74130249023, (-2826.2260742188)) - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (3 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1d34312c3d102d362c3d2a", 88));
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
if string._jiv09JBF(_0XMqEanf, __xor_decode("1c31393a3437", 88)) or string._jiv09JBF(_0XMqEanf, __xor_decode("1c3d39363c2a3d", 88)) or string._jiv09JBF(_0XMqEanf, __xor_decode("0d2a3a3936", 88)) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c31393a3437", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0d2a3a3936", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1c31393a3437", 88) or v._CJFCQjk5 == __xor_decode("1c3d39363c2a3d", 88) or v._CJFCQjk5 == __xor_decode("0d2a3a3936", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
v._aqi4OxxB._p4DwX85W = ((100) - 100);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (1 + 0), (math._tZOYIwmz(1.5)));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] == false or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv);
__dummy_ops(); -- obf
end;
end;
end;
end;
end;
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a78103728", 88)] and _UC8YJ6NP then
pcall(function()
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781d34312c3d78102d362c3d2a", 88)] then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c31393a3437", 88)) and (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88))) and (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0d2a3a3936", 88))) then
__dummy_ops(); -- obf
_UNRrDhpp();
end;
end;
end);
end;
end;
end);
_9AKCuhmo = _KIRfaTCx._8rPIlIHw:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1a37363d781e392a35", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
local _XvdetnLt = {
__xor_decode("092d3d2b2c", 88),
__xor_decode("163778092d3d2b2c", 88)
};
_eIVGZVoS = _KIRfaTCx._8rPIlIHw:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d781a37363d781e392a3578153d2c30373c", 88),
_WmM52dug = _XvdetnLt,
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c781a37363d781e392a3578153d2c30373c", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c781a37363d781e392a3578153d2c30373c", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
_Kp8EWAuT = _KIRfaTCx._8rPIlIHw:_jirAYobi({
_Z8lr3wnx = __xor_decode("1a37363d2b78172f363d3c", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
while wait() do
__dummy_ops(); -- obf
pcall(function()
local _nhwcUE7F = _ZqShlJQJ(__xor_decode("1a37363d2b", 88));
_Kp8EWAuT:_rZJ3kCPC(tostring(_nhwcUE7F));
end);
end;
end);
_tkRXU5vA = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781a37363d", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_PR8Ts7DV = CFrame._nfGC8Yr2(-9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c781a37363d781e392a3578153d2c30373c", 88)] == __xor_decode("163778092d3d2b2c", 88) and _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] and _UC8YJ6NP then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0a3d3a372a36780b333d343d2c3736", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("14312e31363f780237353a313d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08372b3d2b2b3d3c78152d353521", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0a3d3a372a36780b333d343d2c3736", 88) or v._CJFCQjk5 == __xor_decode("14312e31363f780237353a313d", 88) or v._CJFCQjk5 == __xor_decode("1c3d353736313b780b372d34", 88) or v._CJFCQjk5 == __xor_decode("08372b3d2b2b3d3c78152d353521", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
__dummy_ops(); -- obf
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end;
end;
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-9506.234375, 172.130615234375, 6117.0771484375));
end;
end);
__dummy_ops(); -- obf
end;
end;
end);
_9uVS7d7A = CFrame._nfGC8Yr2(-9516.99316, 172.017181, 6078.46533, 0, (0 + 0), -((101) - 100), (0 + 0), (1 + 0), 0, (math._tZOYIwmz(1.5)), 0, (0 + 0));
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c781a37363d781e392a3578153d2c30373c", 88)] == __xor_decode("092d3d2b2c", 88) and _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] and _UC8YJ6NP then
pcall(function()
local _0XMqEanf = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2;
if not string._jiv09JBF(_0XMqEanf, __xor_decode("1c3d353736313b780b372d34", 88)) then
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("193a39363c3736092d3d2b2c", 88));
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false then
_LbiBlaTO(_9uVS7d7A);
if (_9uVS7d7A._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (3 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c392a2c092d3d2b2c", 88), __xor_decode("10392d362c3d3c092d3d2b2c6a", 88), (1 + 0));
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == true then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0a3d3a372a36780b333d343d2c3736", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("14312e31363f780237353a313d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d353736313b780b372d34", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08372b3d2b2b3d3c78152d353521", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
__dummy_ops(); -- obf
if v._CJFCQjk5 == __xor_decode("0a3d3a372a36780b333d343d2c3736", 88) or v._CJFCQjk5 == __xor_decode("14312e31363f780237353a313d", 88) or v._CJFCQjk5 == __xor_decode("1c3d353736313b780b372d34", 88) or v._CJFCQjk5 == __xor_decode("08372b3d2b2b3d3c78152d353521", 88) then
if string._jiv09JBF((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._k5bnV1Aq._0XMqEanf._Z8lr3wnx._vkpN7NY2, __xor_decode("1c3d353736313b780b372d34", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
v._aqi4OxxB._p4DwX85W = 0;
_gChUopcS();
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781a37363d", 88)] or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not v._48KJh7fv) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._CptAFj6k._8E1Qo7w5 == false;
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
_2A4r2TbO = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780a39363c3735780b2d2a282a312b3d", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780a39363c3735780b2d2a282a312b3d", 88)],
local __7437 = {['v']=function()end} -- junk
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780a39363c3735780b2d2a282a312b3d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780a39363c3735780b2d2a282a312b3d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780a39363c3735780b2d2a282a312b3d", 88)] then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a37363d2b", 88), __xor_decode("1a2d21", 88), (1 + 0), (1 + 0));
end;
end;
end);
end);
_d8OkoqNU = _KIRfaTCx._8rPIlIHw:_jASXS1ll({
_Z8lr3wnx = __xor_decode("08312a392c3d780a39313c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_8IgjAyFL = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377808312a392c3d780a39313c", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377808312a392c3d780a39313c", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377808312a392c3d780a39313c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377808312a392c3d780a39313c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
function _QcRczkng()
__dummy_ops(); -- obf
local _h4nwAGp6 = CFrame._nfGC8Yr2(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, (2 / 2), 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458);
__dummy_ops(); -- obf
for _, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
local _XabAsLWF = v._JNHDC2Lw._WXvbXr4t;
if (_h4nwAGp6._WXvbXr4t - _XabAsLWF)._To53yerA <= (math._tZOYIwmz(2000.5)) then
if v then
return v;
else
return false;
end;
end;
end;
end;
end;
spawn(function()
while wait() do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377808312a392c3d780a39313c", 88)] then
pcall(function()
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
if v._CJFCQjk5 then
if _QcRczkng() then
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)))._WXvbXr4t)._To53yerA <= (4000 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_gChUopcS();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (math._tZOYIwmz(1.5)), (math._tZOYIwmz(1.5)));
v._JNHDC2Lw._HenamT3N = (math._tZOYIwmz(1.5));
v._aqi4OxxB._RPBflaz4 = (0 / 2);
v._aqi4OxxB._p4DwX85W = (0 / 2);
__dummy_ops(); -- obf
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
until not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c377808312a392c3d780a39313c", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not game._N4KQlE00._rmNzQJ0M:_cVgfc2HD(v._CJFCQjk5));
end;
else
_LbiBlaTO(CFrame._nfGC8Yr2(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, (math._tZOYIwmz(1.5)), 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458));
end;
end;
end;
end;
end);
__dummy_ops(); -- obf
end;
end;
end);
_1ss3WcNa = _KIRfaTCx._8rPIlIHw:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1b303d2b2c781e392a35", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_UPmm8Kqp = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88),
_6PUHC437 = __xor_decode("0c2f3d3d36782c37783b303d2b2c", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_kLSAWEIq = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88),
_6PUHC437 = __xor_decode("11362b2c39362c782c37783b303d2b2c", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
_5rSwSwwo = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b2c372878112c3d352b", 88),
_6PUHC437 = __xor_decode("0b2c3728780f303d36781f3d2c781f373c7f2b781b303934313b3d78372a781e371c", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b2c372878112c3d352b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b2c372878112c3d352b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b2c372878112c3d352b", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
spawn(function()
while wait() do
pcall(function()
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b2c372878112c3d352b", 88)] then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1f373c7f2b781b303934313b3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1f373c7f2b781b303934313b3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88)) then
_kLSAWEIq:_dlnmHBko(false);
_UPmm8Kqp:_dlnmHBko(false);
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame);
end;
end;
end);
end;
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._2Tk6NOkH:_5PPij5jV()) do
if v._CJFCQjk5:_jiv09JBF(__xor_decode("1b303d2b2c", 88)) then
__dummy_ops(); -- obf
repeat
wait();
_LbiBlaTO(v._jyQsnyOv.CFrame);
until _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c780c2f3d3d36", 88)] == false or (not v._48KJh7fv);
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame);
end;
end;
end;
end);
end;
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88)] then
__dummy_ops(); -- obf
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._2Tk6NOkH:_5PPij5jV()) do
__dummy_ops(); -- obf
if v._CJFCQjk5:_jiv09JBF(__xor_decode("1b303d2b2c", 88)) then
repeat
wait();
if v._CJFCQjk5 == __xor_decode("1c31393537363c1b303d2b2c", 88) then
_CUKGivwE(v._jyQsnyOv.CFrame);
elseif v._CJFCQjk5 == __xor_decode("1f37343c1b303d2b2c", 88) then
_CUKGivwE(v._jyQsnyOv.CFrame);
elseif v._CJFCQjk5 == __xor_decode("0b31342e3d2a1b303d2b2c", 88) then
__dummy_ops(); -- obf
_CUKGivwE(v._jyQsnyOv.CFrame);
end;
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a35781b303d2b2c7811362b2c39362c", 88)] or (not v._48KJh7fv);
end;
end;
end;
end);
end;
end);
_l5mOE6Uv = _KIRfaTCx._8rPIlIHw:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1b39333d78082a31363b3d", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_SYePh5NN = _KIRfaTCx._8rPIlIHw:_jirAYobi({
_Z8lr3wnx = __xor_decode("1b39333d78082a31363b3d780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
__dummy_ops(); -- obf
while _td8B60Nj.wait((5 + 0)) do
__dummy_ops(); -- obf
pcall(function()
if _UC8YJ6NP then
if string._iANxXWbs((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88))) == ((188) - 100) then
_SYePh5NN:_rZJ3kCPC(string._eE2f9bkB((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88)), (78 / 2), (82 / 2)) .. __xor_decode("780a3d3539313631363f", 88));
elseif string._iANxXWbs((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88))) == (math._tZOYIwmz(87.5)) then
_SYePh5NN:_rZJ3kCPC(string._eE2f9bkB((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88)), (math._tZOYIwmz(39.5)), ((140) - 100)) .. __xor_decode("780a3d3539313631363f", 88));
elseif string._iANxXWbs((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88))) == (172 / 2) then
_SYePh5NN:_rZJ3kCPC(string._eE2f9bkB((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88)), (39 + 0), (math._tZOYIwmz(39.5))) .. __xor_decode("780a3d3539313631363f", 88));
__dummy_ops(); -- obf
else
_SYePh5NN:_rZJ3kCPC(__xor_decode("1b39333d78082a31363b3d780b2c392c2d2b62780b28392f363d3c79", 88));
__dummy_ops(); -- obf
end;
else
_SYePh5NN:_rZJ3kCPC(__xor_decode("0b3d39786b7837363421", 88));
end;
end);
end;
end);
_vPQrH7nE = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377813392c39332d2a31", 88),
_6PUHC437 = __xor_decode("192d2c37781e392a3578737813313434781b39333d78082a31363b3d7803780b3d39786b78173634217805", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_AGd88XSt = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b28392f36781b39333d78082a31363b3d", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b28392f36781b39333d78082a31363b3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b28392f36781b39333d78082a31363b3d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b28392f36781b39333d78082a31363b3d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37780b28392f36781b39333d78082a31363b3d", 88)] and _UC8YJ6NP then
wait((math._tZOYIwmz(2.5)));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b39333d082a31363b3d0b28392f363d2a", 88), true);
end;
end;
end);
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] and _UC8YJ6NP then
pcall(function()
if game.ReplicatedStorage:_cVgfc2HD(__xor_decode("1b39333d78082a31363b3d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d78082a31363b3d", 88)) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d78082a31363b3d", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b39333d78082a31363b3d", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (2 / 2));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_sZACouAO(v);
_gChUopcS();
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 / 2);
end;
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Raru42j1._3RUnrVuC._LTiSXsUS._HenamT3N == ((100) - 100) and ((CFrame._nfGC8Yr2((-1990.672607421875), 4532.99951171875, (-14973.6748046875)))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA >= (4000 / 2) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-2151.82153, 149.315704, -12404.9053));
end;
__dummy_ops(); -- obf
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b373733313d781b2a393e2c3d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d781f2d392a3c", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1a393331363f780b2c393e3e", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("103d393c781a39333d2a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b373733313d781b2a393e2c3d2a", 88) or v._CJFCQjk5 == __xor_decode("1b39333d781f2d392a3c", 88) or v._CJFCQjk5 == __xor_decode("1a393331363f780b2c393e3e", 88) or v._CJFCQjk5 == __xor_decode("103d393c781a39333d2a", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), ((101) - 100), (2 / 2));
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357813392c39332d2a31", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Raru42j1._3RUnrVuC._LTiSXsUS._HenamT3N == ((100) - 100) or (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("1b39333d78082a31363b3d7803142e76786a6b68680578030a39313c781a372b2b05", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d78082a31363b3d7803142e76786a6b68680578030a39313c781a372b2b05", 88));
end;
end;
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-2091.911865234375, 70.00884246826172, -12142.8359375));
__dummy_ops(); -- obf
end;
end);
end;
end;
end);
_U9NpKJZY = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_HIy85lCy = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377813313434781c372d3f30781331363f", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)] and _UC8YJ6NP then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d78082a31363b3d", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b39333d78082a31363b3d", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 / 2);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), ((101) - 100));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_sZACouAO(v);
_gChUopcS();
if v._aqi4OxxB:_cVgfc2HD(__xor_decode("19363135392c372a", 88)) then
v._aqi4OxxB._1O4Nmt4f:_LNRqQOQ8();
end;
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781b39333d78082a31363b3d", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0);
end;
end;
__dummy_ops(); -- obf
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)] and _UC8YJ6NP then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c372d3f30781331363f", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1c372d3f30781331363f", 88) then
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = 0;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (2 / 2), (1 + 0));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_sZACouAO(v);
_gChUopcS();
if v._aqi4OxxB:_cVgfc2HD(__xor_decode("19363135392c372a", 88)) then
v._aqi4OxxB._1O4Nmt4f:_LNRqQOQ8();
end;
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377813313434781c372d3f30781331363f", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0);
end;
end;
end;
end;
end);
end;
end;
end);
_toCxqMCl = _KIRfaTCx._8rPIlIHw:_jASXS1ll({
_Z8lr3wnx = __xor_decode("15392c3d2a3139342b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
if _dVBkh5d7 then
_CMUmRxNC = {
__xor_decode("15393f353978172a3d", 88),
__xor_decode("19363f3d34780f31363f2b", 88),
__xor_decode("143d392c303d2a", 88),
__dummy_ops(); -- obf
__xor_decode("0b3b2a392878153d2c3934", 88)
};
elseif _qMpv1cUt then
_CMUmRxNC = {
__xor_decode("0a393c3137393b2c312e3d", 88),
__xor_decode("15212b2c313b781c2a3728343d2c", 88),
__xor_decode("15393f353978172a3d", 88),
__xor_decode("143d392c303d2a", 88),
__dummy_ops(); -- obf
__xor_decode("1d3b2c372834392b35", 88),
__xor_decode("0b3b2a392878153d2c3934", 88)
};
elseif _UC8YJ6NP then
_CMUmRxNC = {
__xor_decode("143d392c303d2a", 88),
__xor_decode("0b3b2a392878153d2c3934", 88),
__dummy_ops(); -- obf
__xor_decode("1b3736322d2a3d3c781b373b3739", 88),
__xor_decode("1c2a393f3736780b3b39343d", 88),
__dummy_ops(); -- obf
__xor_decode("1f2d3628372f3c3d2a", 88),
__xor_decode("1e312b30780c393134", 88),
__xor_decode("15313631780c2d2b33", 88)
};
end;
function _xXTemzOB(_KoS7ZIVZ)
__dummy_ops(); -- obf
if _KoS7ZIVZ == __xor_decode("0a393c3137393b2c312e3d", 88) and _qMpv1cUt then
_A16ZwMA7 = {
__xor_decode("1e393b2c372a21780b2c393e3e", 88)
__dummy_ops(); -- obf
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-507.7895202636719, 72.99479675292969, -126.45632934570312);
elseif _KoS7ZIVZ == __xor_decode("15212b2c313b781c2a3728343d2c", 88) and _qMpv1cUt then
_A16ZwMA7 = {
__xor_decode("0f392c3d2a781e313f302c3d2a", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-3352.9013671875, 285.01556396484375, -10534.841796875);
elseif _KoS7ZIVZ == __xor_decode("15393f353978172a3d", 88) and _dVBkh5d7 then
_A16ZwMA7 = {
__xor_decode("153134312c392a21780b2821", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-5850.2802734375, 77.28675079345703, 8848.6748046875);
elseif _KoS7ZIVZ == __xor_decode("15393f353978172a3d", 88) and _qMpv1cUt then
_A16ZwMA7 = {
__xor_decode("14392e397808312a392c3d", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-5234.60595703125, 51.953372955322266, -4732.27880859375);
elseif _KoS7ZIVZ == __xor_decode("19363f3d34780f31363f2b", 88) and _dVBkh5d7 then
_A16ZwMA7 = {
__dummy_ops(); -- obf
__xor_decode("0a37213934780b37343c313d2a", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-7827.15625, 5606.912109375, -1705.5833740234375);
elseif _KoS7ZIVZ == __xor_decode("143d392c303d2a", 88) and _dVBkh5d7 then
__dummy_ops(); -- obf
_A16ZwMA7 = {
__xor_decode("08312a392c3d", 88)
};
__dummy_ops(); -- obf
_DgIk1Zlv = CFrame._nfGC8Yr2(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
elseif _KoS7ZIVZ == __xor_decode("143d392c303d2a", 88) and _qMpv1cUt then
_A16ZwMA7 = {
__xor_decode("15392a31363d781b39282c393136", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
elseif _KoS7ZIVZ == __xor_decode("143d392c303d2a", 88) and _UC8YJ6NP then
_A16ZwMA7 = {
__xor_decode("122d363f343d7808312a392c3d", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-11975.78515625, 331.7734069824219, -10620.0302734375);
elseif _KoS7ZIVZ == __xor_decode("1d3b2c372834392b35", 88) and _qMpv1cUt then
_A16ZwMA7 = {
__dummy_ops(); -- obf
__xor_decode("0b303128781c3d3b333039363c", 88),
__xor_decode("0b303128781d363f31363d3d2a", 88),
__xor_decode("0b303128780b2c3d2f392a3c", 88),
__xor_decode("0b30312878173e3e313b3d2a", 88)
};
__dummy_ops(); -- obf
_DgIk1Zlv = CFrame._nfGC8Yr2(911.35827636719, 125.95812988281, 33159.5390625);
elseif _KoS7ZIVZ == __xor_decode("0b3b2a392878153d2c3934", 88) and _dVBkh5d7 then
_A16ZwMA7 = {
__dummy_ops(); -- obf
__xor_decode("1a2a2d2c3d", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
elseif _KoS7ZIVZ == __xor_decode("0b3b2a392878153d2c3934", 88) and _qMpv1cUt then
_A16ZwMA7 = {
__xor_decode("153d2a3b3d36392a21", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-972.307373046875, 73.04473876953125, 1419.2901611328125);
__dummy_ops(); -- obf
elseif _KoS7ZIVZ == __xor_decode("0b3b2a392878153d2c3934", 88) and _UC8YJ6NP then
__dummy_ops(); -- obf
_A16ZwMA7 = {
__xor_decode("08312a392c3d781531343431373639312a3d", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-289.6311950683594, 43.8282470703125, 5583.66357421875);
elseif _KoS7ZIVZ == __xor_decode("1b3736322d2a3d3c781b373b3739", 88) and _UC8YJ6NP then
_A16ZwMA7 = {
__xor_decode("1b30373b3734392c3d781a392a781a392c2c343d2a", 88)
};
__dummy_ops(); -- obf
_DgIk1Zlv = CFrame._nfGC8Yr2(744.7930908203125, 24.76934242248535, -12637.7255859375);
elseif _KoS7ZIVZ == __xor_decode("1c2a393f3736780b3b39343d", 88) and _UC8YJ6NP then
__dummy_ops(); -- obf
_A16ZwMA7 = {
__xor_decode("1c2a393f3736781b2a3d2f780f392a2a31372a", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(5824.06982421875, 51.38640213012695, -1106.694580078125);
__dummy_ops(); -- obf
elseif _KoS7ZIVZ == __xor_decode("1f2d3628372f3c3d2a", 88) and _UC8YJ6NP then
_A16ZwMA7 = {
__dummy_ops(); -- obf
__xor_decode("08312b2c3734781a31343431373639312a3d", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-379.6134338378906, 73.84449768066406, 5928.5263671875);
elseif _KoS7ZIVZ == __xor_decode("1e312b30780c393134", 88) and _UC8YJ6NP then
_A16ZwMA7 = {
__xor_decode("1e312b30353936781b39282c393136", 88)
};
_DgIk1Zlv = CFrame._nfGC8Yr2(-10961.0126953125, 331.7977600097656, -8914.29296875);
elseif _KoS7ZIVZ == __xor_decode("15313631780c2d2b33", 88) and _UC8YJ6NP then
_A16ZwMA7 = {
__dummy_ops(); -- obf
__xor_decode("15312c303734373f313b39347808312a392c3d", 88)
};
__dummy_ops(); -- obf
_DgIk1Zlv = CFrame._nfGC8Yr2(-13516.0458984375, 469.8182373046875, -6899.16064453125);
end;
__dummy_ops(); -- obf
end;
_AouvAnjo = _KIRfaTCx._8rPIlIHw:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d7815392c3d2a313934", 88),
__dummy_ops(); -- obf
_WmM52dug = _CMUmRxNC,
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c7815392c3d2a313934", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
__dummy_ops(); -- obf
_G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c7815392c3d2a313934", 88)] = _p5nxkYFQ;
end
});
_yuHYFj3Y = _KIRfaTCx._8rPIlIHw:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a357815392c3d2a313934", 88),
_V7K9qQq7 = _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
__dummy_ops(); -- obf
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)] then
pcall(function()
_xXTemzOB(_G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c7815392c3d2a313934", 88)]);
for i, _HktukOKz in pairs(_A16ZwMA7) do
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_HktukOKz) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _HktukOKz then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
__dummy_ops(); -- obf
_gChUopcS();
until not _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c37781e392a357815392c3d2a313934", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0);
for i = 1, 0 do end
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
local _XvsfdccK = (Vector3._nfGC8Yr2(_DgIk1Zlv) - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA;
if _XvsfdccK > ((18100) - 100) and _G._j963CW1K._Q1CQy1x9[__xor_decode("0b3d343d3b2c3d3c7815392c3d2a313934", 88)] == __xor_decode("1d3b2c372834392b35", 88) then
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(923.21252441406, 126.9760055542, 32852.83203125));
end;
_LbiBlaTO(_DgIk1Zlv);
end;
end;
end);
end;
end;
end);
_uW8nkI3v = _KIRfaTCx._WKZfUTJY:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b3d2c2c31363f2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_PRU3Oh8r = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b2831367808372b312c313736", 88),
_6PUHC437 = __xor_decode("0b2831367808372b312c313736780f303d36781e392a35", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("0b2831367808372b312c313736", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("0b2831367808372b312c313736", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_SkwLTL8m = _KIRfaTCx._WKZfUTJY:_l6YNnZJz({
_Z8lr3wnx = __xor_decode("1e392a35781c312b2c39363b3d", 88),
_mEE2DdbD = (2 / 2),
_V7K9qQq7 = {
_WVDUM05A = (10 + 0),
_NUxXt7G7 = (100 / 2),
_HwEwctDL = _G._j963CW1K._QeOie5Mu[__xor_decode("1e392a35781c312b2c39363b3d", 88)]
},
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e392a35781c312b2c39363b3d", 88)] = _Y8ipJ4Ym;
end
});
_8q0cKAWn = _KIRfaTCx._WKZfUTJY:_l6YNnZJz({
_Z8lr3wnx = __xor_decode("083439213d2a780c2f3d3d36780b283d3d3c", 88),
_mEE2DdbD = (2 / 2),
_V7K9qQq7 = {
_WVDUM05A = (20 / 2),
_NUxXt7G7 = (math._tZOYIwmz(350.5)),
_HwEwctDL = _G._j963CW1K._QeOie5Mu[__xor_decode("083439213d2a780c2f3d3d36780b283d3d3c", 88)]
},
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._QeOie5Mu[__xor_decode("083439213d2a780c2f3d3d36780b283d3d3c", 88)] = _Y8ipJ4Ym;
__dummy_ops(); -- obf
end
});
_DwEai0u9 = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1a2a31363f7815373a", 88),
_V7K9qQq7 = true,
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while _td8B60Nj.wait() do
if _G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a", 88)] then
pcall(function()
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if not string._jiv09JBF(v._CJFCQjk5, __xor_decode("1a372b2b", 88)) and v._CJFCQjk5 == _Icjvmi0Z and (v._JNHDC2Lw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= _H3ZvTICA then
v._JNHDC2Lw.CFrame = _RTvKUSlv;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), ((101) - 100), (2 / 2));
end;
end;
end);
end;
end;
end);
local _1WI73U6d = {
__xor_decode("14372f", 88),
__xor_decode("16372a353934", 88),
__xor_decode("10313f30", 88)
};
_3Ylu3oPL = _KIRfaTCx._WKZfUTJY:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1a2a31363f7815373a", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a7815373c3d", 88)],
_WmM52dug = _1WI73U6d,
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a7815373c3d", 88)] = _p5nxkYFQ;
end
});
local _Kwu6Nfiz = {
__xor_decode("0b34372f", 88),
__xor_decode("16372a353934", 88),
__xor_decode("1e392b2c", 88),
__xor_decode("0b2d283d2a781e392b2c", 88)
};
_y7qQvCCC = _KIRfaTCx._WKZfUTJY:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1e392b2c78192c2c393b3378153d2c30373c", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)],
_WmM52dug = _Kwu6Nfiz,
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)] = _p5nxkYFQ;
end
});
spawn(function()
__dummy_ops(); -- obf
while wait() do
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)] == __xor_decode("0b34372f", 88) then
_G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b33781c3d343921", 88)] = 0.25;
elseif _G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)] == __xor_decode("16372a353934", 88) then
__dummy_ops(); -- obf
_G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b33781c3d343921", 88)] = 0.20;
elseif _G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)] == __xor_decode("1e392b2c", 88) then
_G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b33781c3d343921", 88)] = 0.15;
elseif _G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b337815373c3d", 88)] == __xor_decode("0b2d283d2a781e392b2c", 88) then
__dummy_ops(); -- obf
_G._j963CW1K._QeOie5Mu[__xor_decode("1e392b2c78192c2c393b33781c3d343921", 88)] = 0.10;
__dummy_ops(); -- obf
end;
end;
end);
spawn(function()
__dummy_ops(); -- obf
while wait() do
if _G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a", 88)] then
pcall(function()
if _G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a7815373c3d", 88)] == __xor_decode("14372f", 88) then
_H3ZvTICA = (150 + 0);
elseif _G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a7815373c3d", 88)] == __xor_decode("16372a353934", 88) then
_H3ZvTICA = ((350) - 100);
__dummy_ops(); -- obf
elseif _G._j963CW1K._QeOie5Mu[__xor_decode("1a2a31363f7815373a7815373c3d", 88)] == __xor_decode("10313f30", 88) then
_H3ZvTICA = (800 + 0);
end;
end);
end;
end;
end);
_qjRifs47 = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192c392c3b3378192d2a39", 88),
_6PUHC437 = __xor_decode("192c2c393b3378163d392a3d2b2c781d363d35313d2b", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192c2c393b3378192d2a39", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192c2c393b3378192d2a39", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
spawn(function()
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._c2DqCCgJ:_CEVggw7o(function()
if _G._j963CW1K._QeOie5Mu[__xor_decode("192c2c393b3378192d2a39", 88)] and (not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781e2a2d312c7815392b2c3d2a21", 88)]) and (not _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35781f2d367815392b2c3d2a21", 88)]) then
pcall(function()
__dummy_ops(); -- obf
_gChUopcS();
end);
end;
end);
end);
_ciPW6maN = _KIRfaTCx._WKZfUTJY:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1f2a392830313b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_zO1HOMV5 = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("10313c3d7816372c313e313b392c313736", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d7816372c313e313b392c313736", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d7816372c313e313b392c313736", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d7816372c313e313b392c313736", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d7816372c313e313b392c313736", 88)] then
game.Players._qLJftmnl._1O886gDJ._23XFfqmx._pMvJ4x3V = false;
else
game.Players._qLJftmnl._1O886gDJ._23XFfqmx._pMvJ4x3V = true;
end;
end;
end);
__dummy_ops(); -- obf
_sDJDA7WN = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("10313c3d781c3935393f3d780c3d202c", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d781c3935393f3d780c3d202c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d781c3935393f3d780c3d202c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d781c3935393f3d780c3d202c", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("10313c3d781c3935393f3d780c3d202c", 88)] then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._5stb2thQ._pfY2X254._s2ZaYGUu._pMvJ4x3V = false;
__dummy_ops(); -- obf
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._5stb2thQ._pfY2X254._s2ZaYGUu._pMvJ4x3V = true;
end;
end;
end);
_zw1oCFML = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1a34393b33780b3b2a3d3d36", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("1a34393b33780b3b2a3d3d36", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1a34393b33780b3b2a3d3d36", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._QeOie5Mu[__xor_decode("1a34393b33780b3b2a3d3d36", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("1a34393b33780b3b2a3d3d36", 88)] then
(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._0dEIkVSk._QjwDF4M5 = UDim2._nfGC8Yr2((math._tZOYIwmz(500.5)), 0, ((600) - 100), (math._tZOYIwmz(500.5)));
else
(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._0dEIkVSk._QjwDF4M5 = UDim2._nfGC8Yr2(((101) - 100), (0 / 2), ((600) - 100), (1000 / 2));
end;
end;
end);
_7yVcoQwL = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0f30312c3d780b3b2a3d3d36", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("0f30312c3d780b3b2a3d3d36", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("0f30312c3d780b3b2a3d3d36", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._QeOie5Mu[__xor_decode("0f30312c3d780b3b2a3d3d36", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("0f30312c3d780b3b2a3d3d36", 88)] then
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88))):_M4p6FXzU(false);
else
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88))):_M4p6FXzU(true);
end;
end;
end);
_oo0unm0v = _KIRfaTCx._WKZfUTJY:_jASXS1ll({
_Z8lr3wnx = __xor_decode("15392b2c3d2a21780b3d2c2c31363f2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
_kDNES17u = _KIRfaTCx._WKZfUTJY:_l6YNnZJz({
_Z8lr3wnx = __xor_decode("15392b2c3d2a2178103d39342c30787d", 88),
_mEE2DdbD = (math._tZOYIwmz(1.5)),
_V7K9qQq7 = {
_WVDUM05A = (2 / 2),
_NUxXt7G7 = (math._tZOYIwmz(100.5)),
_HwEwctDL = _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)]
__dummy_ops(); -- obf
},
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] = _Y8ipJ4Ym;
end
});
_FIdFhzTj = _KIRfaTCx._WKZfUTJY:_jirAYobi({
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c780b33313434", 88)
});
__dummy_ops(); -- obf
_es3ikp2f = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b333134347802", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b333134347802", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_XFkUHeNi = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b333134347800", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b333134347800", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
_0CHiVhvH = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b33313434781b", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781b", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_7sOugnd1 = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b33313434780e", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434780e", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434780e", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_aLjihgIZ = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b33313434781e", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781e", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781e", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_HTo20Kc8 = _KIRfaTCx._WKZfUTJY:_jirAYobi({
_Z8lr3wnx = __xor_decode("1f2d36780b33313434", 88)
});
_XglgeUbl = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0b333134347802", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1f2d367815392b2c3d2a21780b333134347802", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_Sl2b4L9Y = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b333134347800", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("1f2d367815392b2c3d2a21780b333134347800", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_dEGPFWug = _KIRfaTCx._WKZfUTJY:_jASXS1ll({
_Z8lr3wnx = __xor_decode("172c303d2a2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_AUdArg9H = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b3d2c780b28392f3678083731362c", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c37780b3d2c780b28392f3678083731362c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("192d2c37780b3d2c780b28392f3678083731362c", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait() do
if _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c37780b3d2c780b28392f3678083731362c", 88)] then
pcall(function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b3d2c0b28392f36083731362c", 88));
end);
end;
end;
end);
__dummy_ops(); -- obf
_saHXuGsf = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c3778173a2b3d2a2e392c313736", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c3778173a2b3d2a2e392c313736", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("192d2c3778173a2b3d2a2e392c313736", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c3778173a2b3d2a2e392c313736", 88)] then
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._iVmKI2e7:_cVgfc2HD(__xor_decode("1135393f3d14393a3d34", 88)) then
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88))):_UrBqrXrh();
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88))):_oNv0rYD5(__xor_decode("68206e6d", 88));
wait();
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88))):_k0gh8Wxo(__xor_decode("68206e6d", 88));
end;
end;
end;
end);
_VvYOhHVZ = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377810393331", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c377810393331", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("192d2c377810393331", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_xukO0X4h = _KIRfaTCx._WKZfUTJY:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780a3d32373136", 88),
_V7K9qQq7 = _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c37780a3d32373136", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._QeOie5Mu[__xor_decode("192d2c37780a3d32373136", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c37780a3d32373136", 88)] then
game._wHmbZ92k._PE0C9Txo._fA3Ngv5H._9ibFBfe4:_CEVggw7o(function(v)
if v._CJFCQjk5 == __xor_decode("1d2a2a372a082a3735282c", 88) and v:_cVgfc2HD(__xor_decode("153d2b2b393f3d192a3d39", 88)) and v._F2OyZr2y:_cVgfc2HD(__xor_decode("1d2a2a372a1e2a39353d", 88)) then
(game:_F5KpSZDL(__xor_decode("0c3d343d28372a2c0b3d2a2e313b3d", 88))):_98LR1BhA(game._sYMVG64i);
end;
end);
end;
end;
end);
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
if _G._j963CW1K._QeOie5Mu[__xor_decode("192d2c377810393331", 88)] then
if not game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("10392b1a2d2b37", 88)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d2b37", 88));
end;
end;
end;
end);
_nsyJlZUd = _KIRfaTCx._jaVvN2g4:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0f372a343c", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_pVTCWioZ = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b3d3b37363c780b3d39", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)]);
do local __temp = math.random(68, 511); __temp = __temp + 0 end -- junk
(_XeukPFgw())._l6Y55PD1();
end
});
_LFTZsLFn = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780c30312a3c780b3d39", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786a7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)] then
pcall(function()
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._wCY5UHhz._V7K9qQq7 >= (3000 / 2) and _qMpv1cUt then
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("02092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("1f3d363d2a3934", 88)) == (0 + 0) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1926.3221435547, 12.819851875305, 1738.3092041016));
if ((CFrame._nfGC8Yr2((-1926.3221435547), 12.819851875305, 1738.3092041016))._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (10 + 0) then
__dummy_ops(); -- obf
wait(1.5);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("02092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("1a3d3f3136", 88));
end;
wait(1.8);
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("2a31280731363c2a39", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("2a31280731363c2a39", 88) then
_ldNddhr9 = v._JNHDC2Lw.CFrame;
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
__dummy_ops(); -- obf
v._JNHDC2Lw.CFrame = _ldNddhr9;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), ((101) - 100), (1 + 0));
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_gChUopcS();
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d3402372d", 88));
until _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c30312a3c780b3d39", 88)] == false or v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not v._48KJh7fv);
__dummy_ops(); -- obf
end;
end;
elseif not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("2a31280731363c2a39", 88)) and ((CFrame._nfGC8Yr2((-26880.93359375), 22.848554611206, 473.18951416016))._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(1000.5)) then
_LbiBlaTO(CFrame._nfGC8Yr2(-26880.93359375, 22.848554611206, 473.18951416016));
end;
end;
end;
end);
end;
end;
end);
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] and _dVBkh5d7 then
pcall(function()
local _nKebWmC0 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._wCY5UHhz._V7K9qQq7;
if _nKebWmC0 >= ((800) - 100) and _dVBkh5d7 then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._zKUCGYeS._T5H90qAa._5rDNyh0H == false and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._zKUCGYeS._T5H90qAa._HenamT3N == (math._tZOYIwmz(1.5)) then
__dummy_ops(); -- obf
local _FHc9Z4YL = CFrame._nfGC8Yr2(4849.29883, 5.65138149, 719.611877);
repeat
__dummy_ops(); -- obf
_LbiBlaTO(_FHc9Z4YL);
wait();
until (_FHc9Z4YL._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(3.5)) or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] == false;
wait(1.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1c2a3d2b2b2a372b39092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("1c3d2c3d3b2c312e3d", 88));
wait(0.5);
_jFSmbcsg(__xor_decode("133d21", 88));
__dummy_ops(); -- obf
repeat
_LbiBlaTO(CFrame._nfGC8Yr2(1347.7124, 37.3751602, -1325.6488));
__dummy_ops(); -- obf
wait();
until (Vector3._nfGC8Yr2(1347.7124, 37.3751602, (-1325.6488)) - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(3.5)) or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] == false;
wait(0.5);
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._zKUCGYeS._T5H90qAa._5rDNyh0H == false and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._zKUCGYeS._T5H90qAa._HenamT3N == (math._tZOYIwmz(1.5)) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("113b3d78193c35312a3934", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("113b3d78193c35312a3934", 88) then
if not v._aqi4OxxB._olQxbQJn <= 0 then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
_CmMde5tk = v._JNHDC2Lw.CFrame;
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
__dummy_ops(); -- obf
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (1 + 0), (math._tZOYIwmz(1.5)));
v._JNHDC2Lw.CFrame = _CmMde5tk;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b3d3b37363c780b3d39", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d341c2a3d2b2b2a372b39", 88));
end;
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("113b3d78193c35312a3934", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("113b3d78193c35312a3934", 88)))._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((105) - 100), (math._tZOYIwmz(10.5)), (7 + 0)));
end;
end;
end;
__dummy_ops(); -- obf
end);
end;
end;
__dummy_ops(); -- obf
end);
_nsyJlZUd = _KIRfaTCx._jaVvN2g4:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1e313f302c31363f780b2c21343d", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
_y6ZQaK89 = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b2d283d2a78102d353936", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b2d283d2a78102d353936", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b2d283d2a78102d353936", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b2d283d2a78102d353936", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_dOFl4SxZ = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781c3d392c30780b2c3d28", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c3d392c30780b2c3d28", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c3d392c30780b2c3d28", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c3d392c30780b2c3d28", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_N5sLcqAe = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b30392a333539367813392a392c3d", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e312b303539367813392a392c3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e312b303539367813392a392c3d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e312b303539367813392a392c3d", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
_iU91Z6wJ = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_omixvP0y = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c37781c2a393f3736780c39343736", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c39343736", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c39343736", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c39343736", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
_Wwdf4HNS = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f373c78102d353936", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f373c78102d353936", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f373c78102d353936", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f373c78102d353936", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while _td8B60Nj.wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f373c78102d353936", 88)] then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b30392a333539367813392a392c3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b30392a333539367813392a392c3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1f373c302d353936", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1f373c302d353936", 88)) then
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b2d283d2a302d353936", 88), true) == (math._tZOYIwmz(1.5)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)))._wCY5UHhz._V7K9qQq7 >= (400 + 0) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)))._wCY5UHhz._V7K9qQq7 >= (400 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c3d392c300b2c3d28", 88));
end;
else
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
__dummy_ops(); -- obf
_zEOZNmKf = __xor_decode("16372c7810392e3d780b2d283d2a302d353936", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (10 / 2)
});
end;
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c3d392c300b2c3d28", 88), true) == (2 / 2) then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)))._wCY5UHhz._V7K9qQq7 >= ((500) - 100) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88));
end;
else
_ZZaU6rng:_LpvKD4WR({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("16372c7810392e3d781c3d392c30780b2c3d28", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (5 + 0)
});
end;
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88), true) == ((101) - 100) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b30392a333539367813392a392c3d", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b30392a333539367813392a392c3d", 88)))._wCY5UHhz._V7K9qQq7 >= ((500) - 100) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b30392a333539367813392a392c3d", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b30392a333539367813392a392c3d", 88)))._wCY5UHhz._V7K9qQq7 >= ((500) - 100) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88));
end;
else
_ZZaU6rng:_LpvKD4WR({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("16372c7810392e3d780b30392a333539367813392a392c3d", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (5 + 0)
});
__dummy_ops(); -- obf
end;
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88), true) == (math._tZOYIwmz(1.5)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)))._wCY5UHhz._V7K9qQq7 >= (400 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c2a393f37360c39343736", 88));
end;
else
__dummy_ops(); -- obf
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("16372c7810392e3d781d343d3b2c2a313b781b34392f", 88),
__dummy_ops(); -- obf
_J9L9aS6t = __xor_decode("3a3d3434", 88),
__dummy_ops(); -- obf
_6qgBZ8zK = (10 / 2)
});
__dummy_ops(); -- obf
end;
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c2a393f37360c39343736", 88), true) == (1 + 0) then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)))._wCY5UHhz._V7K9qQq7 >= (800 / 2) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)))._wCY5UHhz._V7K9qQq7 >= (400 + 0) then
if string._jiv09JBF((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211f373c302d353936", 88), true), __xor_decode("1a2a31363f", 88)) then
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("16372c7810392e3d781d36372d3f307815392c3d2a313934", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = ((105) - 100)
});
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211f373c302d353936", 88));
end;
end;
else
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("16372c7810392e3d781c2a393f3736780c39343736", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (10 / 2)
__dummy_ops(); -- obf
});
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b2d283d2a302d353936", 88));
end;
end);
end;
__dummy_ops(); -- obf
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c39343736", 88)] then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736780c39343736", 88)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c2a393f37360c39343736", 88));
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1c2a393f3736780c39343736", 88);
__dummy_ops(); -- obf
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c2a393f37360c39343736", 88));
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1c2a393f3736780c39343736", 88);
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)))._wCY5UHhz._V7K9qQq7 <= (math._tZOYIwmz(399.5)) then
__dummy_ops(); -- obf
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1c2a393f3736781b34392f", 88);
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("6a", 88));
end;
end;
end;
end);
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e312b303539367813392a392c3d", 88)] then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211e312b3035393613392a392c3d", 88));
if string._jiv09JBF((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88)), __xor_decode("333d212b", 88)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0f392c3d2a78133d21", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0f392c3d2a78133d21", 88)) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2604.6958, 239.432526, -10315.1982, 0.0425701365, ((100) - 100), -0.999093413, (0 / 2), ((101) - 100), (0 / 2), 0.999093413, (0 / 2), 0.0425701365));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88));
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) then
__dummy_ops(); -- obf
else
_G11Gj3LP = __xor_decode("0c313c3d78133d3d283d2a", 88);
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(_G11Gj3LP) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _G11Gj3LP then
__dummy_ops(); -- obf
_bnKKtjna = v._JNHDC2Lw.CFrame;
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
__dummy_ops(); -- obf
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (1 + 0), (math._tZOYIwmz(1.5)));
v._JNHDC2Lw.CFrame = _bnKKtjna;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((4 / 2), (20 + 0), ((102) - 100)));
__dummy_ops(); -- obf
_gChUopcS();
until not v._48KJh7fv or v._aqi4OxxB._olQxbQJn <= 0 or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781e312b303539367813392a392c3d", 88)] == false or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0f392c3d2a78133d21", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0f392c3d2a78133d21", 88));
end;
__dummy_ops(); -- obf
end;
else
_LbiBlaTO(CFrame._nfGC8Yr2(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, (1 + 0), 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
wait((6 / 2));
end;
end;
else
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a313b781b34392f", 88)) then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 >= (400 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88));
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1d343d3b2c2a313b781b34392f", 88);
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88));
__dummy_ops(); -- obf
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1d343d3b2c2a313b781b34392f", 88);
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 <= (798 / 2) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1d343d3b2c2a37", 88);
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a37", 88));
end;
end;
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 >= ((500) - 100) or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(400.5)) then
if _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] == false then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_LbiBlaTO(CFrame._nfGC8Yr2(-10371.4717, 330.764496, -10131.4199));
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (CFrame._nfGC8Yr2((-10371.4717), 330.764496, (-10131.4199)))._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(10.5));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88), __xor_decode("0b2c392a2c", 88));
__dummy_ops(); -- obf
wait((4 / 2));
repeat
__dummy_ops(); -- obf
_td8B60Nj.wait();
_LbiBlaTO(CFrame._nfGC8Yr2(-12550.532226563, 336.22631835938, -7510.4233398438));
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (CFrame._nfGC8Yr2((-12550.532226563), 336.22631835938, (-7510.4233398438)))._WXvbXr4t)._To53yerA <= (10 + 0);
wait(((101) - 100));
repeat
__dummy_ops(); -- obf
_td8B60Nj.wait();
_LbiBlaTO(CFrame._nfGC8Yr2(-10371.4717, 330.764496, -10131.4199));
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (CFrame._nfGC8Yr2((-10371.4717), 330.764496, (-10131.4199)))._WXvbXr4t)._To53yerA <= (20 / 2);
wait(((101) - 100));
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88));
elseif _G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] == true then
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] = false;
wait((math._tZOYIwmz(1.5)));
repeat
_td8B60Nj.wait();
_LbiBlaTO(CFrame._nfGC8Yr2(-10371.4717, 330.764496, -10131.4199));
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (CFrame._nfGC8Yr2((-10371.4717), 330.764496, (-10131.4199)))._WXvbXr4t)._To53yerA <= (10 + 0);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88), __xor_decode("0b2c392a2c", 88));
wait((2 + 0));
repeat
_td8B60Nj.wait();
_LbiBlaTO(CFrame._nfGC8Yr2(-12550.532226563, 336.22631835938, -7510.4233398438));
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (CFrame._nfGC8Yr2((-12550.532226563), 336.22631835938, (-7510.4233398438)))._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(10.5));
__dummy_ops(); -- obf
wait((2 / 2));
repeat
_td8B60Nj.wait();
_LbiBlaTO(CFrame._nfGC8Yr2(-10371.4717, 330.764496, -10131.4199));
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781d343d3b2c2a313b781b34392f", 88)] or ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - (CFrame._nfGC8Yr2((-10371.4717), 330.764496, (-10131.4199)))._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(10.5));
wait((2 / 2));
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88));
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1d343d3b2c2a313b781b34392f", 88);
wait(0.1);
_G._j963CW1K._azX2ob7h[__xor_decode("192d2c37781e392a35", 88)] = true;
end;
end;
end;
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end);
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c3d392c30780b2c3d28", 88)] then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c3d392c30780b2c3d28", 88)) then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)))._wCY5UHhz._V7K9qQq7 >= (450 + 0) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c3d392c300b2c3d28", 88));
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1c3d392c30780b2c3d28", 88);
end;
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)))._wCY5UHhz._V7K9qQq7 >= (900 / 2) then
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c3d392c300b2c3d28", 88));
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1c3d392c30780b2c3d28", 88);
end;
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) and ((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)))._wCY5UHhz._V7K9qQq7 <= ((549) - 100) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1a34393b3378143d3f", 88);
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a34393b33143d3f", 88));
end;
end;
end;
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b2d283d2a78102d353936", 88)] then
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1b37353a392c", 88)) or game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1b37353a392c", 88)) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= (math._tZOYIwmz(150000.5)) then
_vOBaWFHT(__xor_decode("1b37353a392c", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a34393b33143d3f", 88));
end;
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)) or game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b2d283d2a302d353936", 88)) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("0b2d283d2a302d353936", 88);
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) or game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) or game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) or game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) or game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) or game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) or game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) then
__dummy_ops(); -- obf
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)))._wCY5UHhz._V7K9qQq7 <= (299 + 0) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1a34393b3378143d3f", 88);
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 <= (math._tZOYIwmz(299.5)) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1d343d3b2c2a37", 88);
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)))._wCY5UHhz._V7K9qQq7 <= (598 / 2) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1e312b303539367813392a392c3d", 88);
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)))._wCY5UHhz._V7K9qQq7 <= ((399) - 100) then
_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)] = __xor_decode("1c2a393f3736781b34392f", 88);
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)))._wCY5UHhz._V7K9qQq7 >= ((400) - 100) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= ((300100) - 100) then
_vOBaWFHT(__xor_decode("1a34393b3378143d3f", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a37", 88));
end;
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)) and (game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1a34393b3378143d3f", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(300.5)) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= ((300100) - 100) then
_vOBaWFHT(__xor_decode("1a34393b3378143d3f", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a37", 88));
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 >= (600 / 2) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= ((750100) - 100) then
_vOBaWFHT(__xor_decode("1d343d3b2c2a37", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211e312b3035393613392a392c3d", 88));
end;
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)) and (game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1d343d3b2c2a37", 88)))._wCY5UHhz._V7K9qQq7 >= (600 / 2) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= ((750100) - 100) then
_vOBaWFHT(__xor_decode("1d343d3b2c2a37", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211e312b3035393613392a392c3d", 88));
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(300.5)) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._rjKNq6oq._TzmFDedP._XG6GnbEK._V7K9qQq7 >= ((1600) - 100) then
_vOBaWFHT(__xor_decode("1e312b303539367813392a392c3d", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("6a", 88));
end;
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)) and (game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b303539367813392a392c3d", 88)))._wCY5UHhz._V7K9qQq7 >= (300 + 0) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._rjKNq6oq._TzmFDedP._XG6GnbEK._V7K9qQq7 >= (3000 / 2) then
__dummy_ops(); -- obf
_vOBaWFHT(__xor_decode("1e312b303539367813392a392c3d", 88));
__dummy_ops(); -- obf
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("6a", 88));
end;
if game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) and (game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)))._wCY5UHhz._V7K9qQq7 >= (math._tZOYIwmz(300.5)) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= (6000000 / 2) then
_vOBaWFHT(__xor_decode("1c2a393f3736781b34392f", 88));
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b2d283d2a302d353936", 88));
end;
if game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)) and (game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1c2a393f3736781b34392f", 88)))._wCY5UHhz._V7K9qQq7 >= ((400) - 100) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._RseTperJ._V7K9qQq7 >= (3000000 + 0) then
_vOBaWFHT(__xor_decode("1c2a393f3736781b34392f", 88));
wait(0.1);
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b2d283d2a302d353936", 88));
end;
end;
end;
end;
end);
end);
_nsyJlZUd = _KIRfaTCx._jaVvN2g4:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1f2d36787e780b2f372a3c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
__dummy_ops(); -- obf
_vcCnlp3d = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f3d2c780b393a3d2a", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while _td8B60Nj.wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)] and _dVBkh5d7 and game.Players._qLJftmnl._TzmFDedP._wCY5UHhz._V7K9qQq7 >= ((300) - 100) then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._qIevkAW9._525IHlbY._HenamT3N == (0 + 0) then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._1uYmXmlg._T5H90qAa._HenamT3N == (0 / 2) then
if ((CFrame._nfGC8Yr2((-1612.55884), 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, (-0.928667724), 0.0000000397099491, ((101) - 100), 0.0000000191679348, 0.928667724, (-0.0000000439869794), 0.37091279))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (100 + 0) then
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame);
__dummy_ops(); -- obf
wait((1 + 0));
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._1uYmXmlg._2waP9fNo._STjoqSGP.CFrame;
wait((1 + 0));
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._1uYmXmlg._wriPH9jY._STjoqSGP.CFrame;
wait((math._tZOYIwmz(1.5)));
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._1uYmXmlg._UPjBUQx0._STjoqSGP.CFrame;
wait((2 / 2));
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._1uYmXmlg._YbLzdkCT._STjoqSGP.CFrame;
wait(((101) - 100));
__dummy_ops(); -- obf
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ypeWVZqc._1uYmXmlg._iWFDDSpN._STjoqSGP.CFrame;
wait((2 / 2));
else
_LbiBlaTO(CFrame._nfGC8Yr2(-1612.55884, 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, -0.928667724, 0.0000000397099491, (math._tZOYIwmz(1.5)), 0.0000000191679348, 0.928667724, -0.0000000439869794, 0.37091279));
end;
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._0l3azep1._YRwGKOxc._525IHlbY._HenamT3N == ((100) - 100) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0c372a3b30", 88)) or game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0c372a3b30", 88)) then
_jFSmbcsg(__xor_decode("0c372a3b30", 88));
_LbiBlaTO(CFrame._nfGC8Yr2(1114.61475, 5.04679728, 4350.22803, -0.648466587, -0.00000000128799094, 0.761243105, -0.000000000570652914, ((101) - 100), 0.00000000120584542, -0.761243105, 0.000000000347544882, -0.648466587));
else
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408));
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0b313b33153936", 88)) ~= ((100) - 100) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("1f3d2c1b2d28", 88));
__dummy_ops(); -- obf
wait(0.5);
_jFSmbcsg(__xor_decode("1b2d28", 88));
wait(0.5);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("1e3134341b2d28", 88), (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._yYJDie7D);
wait(0);
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0b313b33153936", 88));
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0a313b300b3736", 88)) == nil then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0a313b300b3736", 88));
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0a313b300b3736", 88)) == ((100) - 100) then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("15373a78143d393c3d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("15373a78143d393c3d2a", 88)) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("15373a78143d393c3d2a", 88) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("15373a78143d393c3d2a7803142e7678696a680578031a372b2b05", 88)) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (math._tZOYIwmz(1.5)), (math._tZOYIwmz(1.5)));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
if false then local _ = 'never_executed' end
_gChUopcS();
until v._aqi4OxxB._olQxbQJn <= 0 or (not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)]);
__dummy_ops(); -- obf
end;
end;
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("15373a78143d393c3d2a", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("15373a78143d393c3d2a", 88)))._JNHDC2Lw.CFrame * _YuU8D8tp);
end;
end;
end;
__dummy_ops(); -- obf
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0a313b300b3736", 88)) == (math._tZOYIwmz(1.5)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0a313b300b3736", 88));
wait(0.5);
_jFSmbcsg(__xor_decode("0a3d34313b", 88));
wait(0.5);
_LbiBlaTO(CFrame._nfGC8Yr2(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 0.00000000566906877, 0.481375456, 0.0000000253851997, ((101) - 100), -0.0000000579995607, -0.481375456, 0.0000000630572643, 0.876514494));
end;
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0b393a3d2a781d20283d2a2c", 88)) or (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("0b393a3d2a781d20283d2a2c", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
if v._CJFCQjk5 == __xor_decode("0b393a3d2a781d20283d2a2c", 88) then
repeat
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
__dummy_ops(); -- obf
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (1 + 0), ((101) - 100));
__dummy_ops(); -- obf
v._JNHDC2Lw._HenamT3N = (math._tZOYIwmz(1.5));
v._aqi4OxxB._RPBflaz4 = ((100) - 100);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_gChUopcS();
__dummy_ops(); -- obf
until v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b393a3d2a", 88)]);
if v._aqi4OxxB._olQxbQJn <= 0 then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("082a37092d3d2b2c082a373f2a3d2b2b", 88), __xor_decode("0834393b3d0a3d34313b", 88));
__dummy_ops(); -- obf
end;
end;
end;
end;
end;
end);
end;
end;
end);
_EVTNqSdO = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)] and _UC8YJ6NP then
pcall(function()
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39333d78092d3d3d36", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b39333d78092d3d3d36", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), ((101) - 100));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
__dummy_ops(); -- obf
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781a2d3c3c21780b2f372a3c", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 / 2);
end;
end;
end;
else
__dummy_ops(); -- obf
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-731.2034301757812, 381.5658874511719, -11198.4951171875));
end;
end);
end;
end;
end);
function _DZPJpxem(_CEfYdMdY, _5891Tv57)
for i, v in next, game.ReplicatedStorage._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("3f3d2c11362e3d362c372a21", 88)) do
if v._CJFCQjk5 == _CEfYdMdY and v._gkwOZA5b >= _5891Tv57 then
return true;
end;
end;
return false;
end;
__dummy_ops(); -- obf
function _GqKmnLXM()
local _c9h4THUy = math._PzibwPkO;
local _J2feXxhc;
for k, v in pairs(game._N4KQlE00:_5PPij5jV()) do
if string._ZgAZ1I7Y(v._CJFCQjk5, __xor_decode("1b303d2b2c", 88)) then
local _QWmq0U2t = (v._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._QWmq0U2t;
if _QWmq0U2t < _c9h4THUy then
_c9h4THUy = _QWmq0U2t;
_J2feXxhc = v;
end;
end;
end;
if not _J2feXxhc then
for i, v in next, (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG:_uamye779() do
if v:_2K0UehsO(__xor_decode("08392a2c", 88)) and string._jiv09JBF(v._CJFCQjk5, __xor_decode("1b303d2b2c", 88)) then
local _QWmq0U2t = (v._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._QWmq0U2t;
if _QWmq0U2t < _c9h4THUy then
_c9h4THUy = _QWmq0U2t;
_J2feXxhc = v;
end;
__dummy_ops(); -- obf
end;
end;
end;
return _J2feXxhc;
end;
local _TCMR1Lpw = {};
function _sLWplbTL(_J2feXxhc)
local _LVRjEvxC;
if string._jiv09JBF(_J2feXxhc, __xor_decode("142e76", 88)) then
__dummy_ops(); -- obf
_LVRjEvxC = _J2feXxhc:_s9W3Busg(__xor_decode("787d28142e76787d3c737d28", 88), __xor_decode("", 88));
end;
__dummy_ops(); -- obf
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._kT0plQN4:_5PPij5jV()) do
local _cbCZoAPq;
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("142e76", 88)) then
_cbCZoAPq = v._CJFCQjk5:_s9W3Busg(__xor_decode("787d28142e76787d3c737d28", 88), __xor_decode("", 88));
end;
if v:_2K0UehsO(__xor_decode("08392a2c", 88)) and (_cbCZoAPq and _cbCZoAPq == _J2feXxhc or _J2feXxhc == v._CJFCQjk5 or _LVRjEvxC and v._CJFCQjk5 == _LVRjEvxC) then
return v;
end;
__dummy_ops(); -- obf
end;
for i, v in pairs(_KSeJcRlb()) do
local _cbCZoAPq;
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("142e76", 88)) then
_cbCZoAPq = v._CJFCQjk5:_s9W3Busg(__xor_decode("787d28142e76787d3c737d28", 88), __xor_decode("", 88));
end;
if v:_2K0UehsO(__xor_decode("08392a2c", 88)) and (_cbCZoAPq and _cbCZoAPq == _J2feXxhc or _J2feXxhc == v._CJFCQjk5 or _LVRjEvxC and v._CJFCQjk5 == _LVRjEvxC) then
__dummy_ops(); -- obf
return v;
end;
end;
end;
function _WPEyyRMh(_7EPKlT4q, _Y8ipJ4Ym)
if typeof(_7EPKlT4q) == __xor_decode("2c393a343d", 88) then
if #_TCMR1Lpw >= (8 / 2) then
_TCMR1Lpw = {};
return;
end;
local _lp5VZLAE;
for i, v in next, _7EPKlT4q do
if not table._jiv09JBF(_TCMR1Lpw, v) then
_lp5VZLAE = _sLWplbTL(v);
repeat
_td8B60Nj.wait();
_LbiBlaTO(_lp5VZLAE.CFrame * CFrame._nfGC8Yr2((0 / 2), (60 + 0), ((100) - 100)));
until (_lp5VZLAE._WXvbXr4t - _4Mp8LaNF._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (200 / 2) or _cLKTCSjF(_7EPKlT4q) or (not _Y8ipJ4Ym);
end;
end;
else
_lp5VZLAE = _sLWplbTL(_7EPKlT4q);
_LbiBlaTO(_lp5VZLAE.CFrame * CFrame._nfGC8Yr2((0 / 2), (math._tZOYIwmz(60.5)), (0 / 2)));
end;
end;
function _cLKTCSjF(c)
local _c9h4THUy = math._PzibwPkO;
__dummy_ops(); -- obf
local _J2feXxhc;
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_5PPij5jV()) do
local _cbCZoAPq = v._CJFCQjk5:_s9W3Busg(__xor_decode("787d28142e76787d3c737d28", 88), __xor_decode("", 88));
if (typeof(c) == __xor_decode("2c393a343d", 88) and (table._jiv09JBF(c, v._CJFCQjk5) or table._jiv09JBF(c, _cbCZoAPq)) or (v._CJFCQjk5 == c or c == _cbCZoAPq)) and v:_2K0UehsO(__xor_decode("15373c3d34", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
local _QWmq0U2t = (v._JNHDC2Lw._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._QWmq0U2t;
if _QWmq0U2t < _c9h4THUy then
_c9h4THUy = _QWmq0U2t;
_J2feXxhc = v;
end;
end;
end;
return _J2feXxhc;
end;
function _lQmdTkOr()
local _G8IBVCGu = {};
local _sYMVG64i;
local _YmNTPPoP;
if not _DZPJpxem(__xor_decode("1d3b2c372834392b35", 88), (500 / 2)) then
_G8IBVCGu = {
__xor_decode("0b303128781c3d3b333039363c7803142e7678696a6d6805", 88),
__xor_decode("0b303128780b2c3d2f392a3c7803142e7678696b686805", 88),
__xor_decode("0b30312878173e3e313b3d2a7803142e7678696b6a6d05", 88),
__xor_decode("0b303128781d363f31363d3d2a7803142e7678696a6f6d05", 88)
};
_sYMVG64i = (4442272183 + 0);
_YmNTPPoP = __xor_decode("0c2a392e3d341c2a3d2b2b2a372b39", 88);
elseif not _DZPJpxem(__xor_decode("1a37363d2b", 88), (1000 / 2)) then
_G8IBVCGu = {
__xor_decode("0a3d3a372a36780b333d343d2c37367803142e767869616f6d05", 88),
__xor_decode("1c3d353736313b780b372d347803142e76786a686a6d05", 88),
__dummy_ops(); -- obf
__xor_decode("14312e31363f780237353a313d7803142e76786a68686805", 88),
__dummy_ops(); -- obf
__xor_decode("08372b3d2b2b3d3c78152d3535217803142e76786a686d6805", 88)
};
_sYMVG64i = (math._tZOYIwmz(7449423635.5));
_YmNTPPoP = __xor_decode("0c2a392e3d3402372d", 88);
end;
return _G8IBVCGu, _sYMVG64i, _YmNTPPoP;
end;
local _cquGN4xy = (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n;
function _YusoNUrO()
if not _cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1b303d3b33", 88)) then
if game.Lighting._XBkdpgJM._eAl3ta6p == __xor_decode("302c2c286277772f2f2f762a373a343720763b373577392b2b3d2c7767313c65616f6861696c616c6b69", 88) and (game.Lighting._rC01eUg5 > (32 / 2) or game.Lighting._rC01eUg5 < (10 / 2)) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl:_zqYdlyQF(Vector3._nfGC8Yr2(-8654.314453125, 140.9499053955078, 6167.5283203125)) > ((150) - 100) then
_LbiBlaTO(CFrame._nfGC8Yr2(-8654.314453125, 140.9499053955078, 6167.5283203125));
end;
_cquGN4xy:_gYy0cacA(__xor_decode("3f2a392e3d2b2c37363d1d2e3d362c", 88), ((102) - 100));
_cquGN4xy:_gYy0cacA(__xor_decode("3f2a392e3d2b2c37363d1d2e3d362c", 88), (4 / 2), true);
_td8B60Nj.wait((2 / 2));
else
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("103728781e2d34347815373736", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = ((105) - 100)
__dummy_ops(); -- obf
});
_UNRrDhpp();
end;
else
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._T4UrEORf._8E1Qo7w5 then
game._ThlZtF51:_I4gbFhXT(Vector2._nfGC8Yr2(0, (0 + 0)));
game._ThlZtF51:_I4gbFhXT(Vector2._nfGC8Yr2((0 + 0), 0));
end;
if not (_cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1b303d3b33", 88)))._ZXbSrapm then
__dummy_ops(); -- obf
if ((CFrame._nfGC8Yr2((-10171.7607421875), 138.62667846679688, 6008.0654296875))._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > ((200) - 100) then
_geQPGyMx((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t, (CFrame._nfGC8Yr2(-10171.7607421875, 138.62667846679688, 6008.0654296875))._WXvbXr4t, CFrame._nfGC8Yr2(-10171.7607421875, 138.62667846679688 + (40 / 2), 6008.0654296875));
elseif _JQyoqoNh() == (math._tZOYIwmz(6.5)) then
for i, v in pairs(game.workspace._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("14312e31363f780237353a313d7803142e76786a68686805", 88) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
_td8B60Nj.wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
__dummy_ops(); -- obf
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (2 / 2), (2 / 2));
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv);
end;
end;
end;
return;
__dummy_ops(); -- obf
elseif not (_cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1b303d3b33", 88)))._PjVOWy8p then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl:_zqYdlyQF(Vector3._nfGC8Yr2(-8761.4765625, 142.10487365722656, 6086.07861328125)) > (math._tZOYIwmz(50.5)) then
_LbiBlaTO(CFrame._nfGC8Yr2(-8761.4765625, 142.10487365722656, 6086.07861328125));
else
local _SF3LmaSL = {
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._AOp0q6jP._LmEbNVHX._bhZclkLR,
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._y7V7B08r._LmEbNVHX._bhZclkLR,
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._EaQVLuMh._yPzbj4Cx._bhZclkLR,
__dummy_ops(); -- obf
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._Nli1RM5x._LmEbNVHX._bhZclkLR,
__dummy_ops(); -- obf
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._E7u5wXfg._yPzbj4Cx._bhZclkLR,
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._W54ZYsfU._yPzbj4Cx._bhZclkLR,
game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._Zprl05AN._yPzbj4Cx._bhZclkLR
};
for i, v in pairs(_SF3LmaSL) do
_qv2CHdvq(v);
end;
end;
elseif not (_cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1b303d3b33", 88)))._0HktEsoo then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl:_zqYdlyQF(Vector3._nfGC8Yr2(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > (math._tZOYIwmz(50.5)) then
_LbiBlaTO(CFrame._nfGC8Yr2(-9755.6591796875, 271.0661315917969, 6290.61474609375));
end;
_cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1f30372b2c", 88));
_td8B60Nj.wait(((103) - 100));
elseif not (_cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1b303d3b33", 88)))._zhsJ45VA then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl:_zqYdlyQF(Vector3._nfGC8Yr2(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > ((150) - 100) then
_LbiBlaTO(CFrame._nfGC8Yr2(-9530.0126953125, 6.104853630065918, 6054.83349609375));
__dummy_ops(); -- obf
end;
local _dGZH1SdJ = game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._dGZH1SdJ;
for i, v in pairs(_W8rQhKkt) do
local x = _dGZH1SdJ[v];
if x._abdMMNnZ._WXvbXr4t.X ~= (0 / 2) then
repeat
_td8B60Nj.wait();
_qv2CHdvq(x._bhZclkLR);
until x._abdMMNnZ._WXvbXr4t.X == ((100) - 100);
end;
end;
for i, v in pairs(_6x1Hcb5W) do
local x = game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)]._zhsJ45VA._CptAFj6k[v]._bmmkXma0.CFrame;
x = tostring(x);
x = (x:_UOdEmkA9(__xor_decode("7478", 88)))[(8 / 2)];
__dummy_ops(); -- obf
local c = __xor_decode("696068", 88);
if x == __xor_decode("69", 88) or x == __xor_decode("7569", 88) then
c = __xor_decode("6168", 88);
__dummy_ops(); -- obf
end;
if not string._jiv09JBF(tostring(_dGZH1SdJ[i]._abdMMNnZ._MpnDBZWW.Z), c) then
repeat
_td8B60Nj.wait();
_qv2CHdvq(_dGZH1SdJ[i]._bhZclkLR);
until string._jiv09JBF(tostring(_dGZH1SdJ[i]._abdMMNnZ._MpnDBZWW.Z), c);
print(i, c);
end;
end;
elseif not (_cquGN4xy:_gYy0cacA(__xor_decode("1f2d312c392a082d2222343d082a373f2a3d2b2b", 88), __xor_decode("1b303d3b33", 88)))._pL65uiqj then
for i, v in pairs(_pL65uiqj) do
local x = game.workspace._RgOmVefG[__xor_decode("10392d362c3d3c781b392b2c343d", 88)][__xor_decode("14393a78082d2222343d", 88)]._tQPtKbkn._k1wtN8hV[i];
if x.BrickColor._CJFCQjk5 ~= v then
repeat
_td8B60Nj.wait();
_qv2CHdvq(x._bhZclkLR);
until x.BrickColor._CJFCQjk5 == v;
end;
end;
__dummy_ops(); -- obf
end;
end;
end;
function _YhiWqeye()
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2b372d341f2d312c392a1a2d21", 88), true) == __xor_decode("0301372d7839342a3d393c2178372f36782c30312b78312c3d357605", 88) then
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
__dummy_ops(); -- obf
_zEOZNmKf = __xor_decode("01372d7839342a3d393c2178372f36782c30312b78312c3d35", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (math._tZOYIwmz(5.5))
});
_td8B60Nj.wait((5 + 0));
return;
end;
if game.Players._qLJftmnl._TzmFDedP._XG6GnbEK._V7K9qQq7 < (10000 / 2) then
__dummy_ops(); -- obf
_td8B60Nj.wait((2 + 0));
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("163d3d3c786d686868781e2a393f353d362c2b", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (math._tZOYIwmz(5.5))
__dummy_ops(); -- obf
});
return;
end;
__dummy_ops(); -- obf
if not _DZPJpxem(__xor_decode("1d3b2c372834392b35", 88), (500 / 2)) then
_td8B60Nj.wait((math._tZOYIwmz(2.5)));
__dummy_ops(); -- obf
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
_zEOZNmKf = __xor_decode("163d3d3c786a6d68781d3b2c372834392b35", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (5 + 0)
});
return;
end;
if _DZPJpxem(__xor_decode("1c392a33781e2a393f353d362c", 88), (math._tZOYIwmz(1.5))) and _DZPJpxem(__xor_decode("1d3b2c372834392b35", 88), (500 / 2)) and _DZPJpxem(__xor_decode("1a37363d2b", 88), (math._tZOYIwmz(500.5))) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2b372d341f2d312c392a1a2d21", 88), true);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2b372d341f2d312c392a1a2d21", 88));
if _UC8YJ6NP then
_YusoNUrO();
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d3402372d", 88));
end;
return;
end;
if not _DZPJpxem(__xor_decode("1c392a33781e2a393f353d362c", 88), (2 / 2)) then
if _qMpv1cUt then
if _BMTtfsCL(__xor_decode("1c392a333a3d392a3c7803142e7678696868680578030a39313c781a372b2b05", 88)) then
local v = _BMTtfsCL(__xor_decode("1c392a333a3d392a3c7803142e7678696868680578030a39313c781a372b2b05", 88));
repeat
_td8B60Nj.wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 / 2);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (1 + 0), ((101) - 100));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until v._aqi4OxxB._olQxbQJn <= ((100) - 100) or (not v._48KJh7fv);
elseif game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88)) or game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88)) then
if ((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._LVv9lVXf._3Burkvwd._i4i4e5zx._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (5 + 0) then
_jFSmbcsg(__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88));
_1wBg7HtU(game.Players._qLJftmnl._PXAw1fga[__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88)]._bmmkXma0, (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._LVv9lVXf._3Burkvwd._i4i4e5zx, (0 + 0));
_1wBg7HtU(game.Players._qLJftmnl._PXAw1fga[__xor_decode("1e312b2c78373e781c392a33363d2b2b", 88)]._bmmkXma0, (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._LVv9lVXf._3Burkvwd._i4i4e5zx, (1 + 0));
_1wBg7HtU(game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw, (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._LVv9lVXf._3Burkvwd._i4i4e5zx, (0 + 0));
__dummy_ops(); -- obf
_1wBg7HtU(game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw, (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._LVv9lVXf._3Burkvwd._i4i4e5zx, (1 + 0));
else
__dummy_ops(); -- obf
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._LVv9lVXf._3Burkvwd._i4i4e5zx.CFrame);
end;
__dummy_ops(); -- obf
else
local v = _GqKmnLXM();
repeat
_td8B60Nj.wait();
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - v._WXvbXr4t)._To53yerA <= (2 + 0) then
_1wBg7HtU(v, game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw, ((100) - 100));
_1wBg7HtU(v, game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw, (1 + 0));
end;
if (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - v._WXvbXr4t)._To53yerA <= (5 + 0) then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("0f", 88), false, game);
_td8B60Nj.wait();
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("0f", 88), false, game);
end;
_CUKGivwE(v.CFrame * CFrame._nfGC8Yr2(0, (1 + 0), (0 / 2)));
until not v or (not v._48KJh7fv) or (not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)]);
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d341c2a3d2b2b2a372b39", 88));
end;
else
__dummy_ops(); -- obf
local _G8IBVCGu, _sYMVG64i, _YmNTPPoP = _lQmdTkOr();
if game._sYMVG64i == _sYMVG64i then
if not _cLKTCSjF(_G8IBVCGu) then
_WPEyyRMh(_G8IBVCGu, _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)]);
else
local v = _cLKTCSjF(_G8IBVCGu);
repeat
_td8B60Nj.wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (2 / 2), (2 / 2));
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not v or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == 0 or (not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)]);
end;
__dummy_ops(); -- obf
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(_YmNTPPoP);
end;
end;
end;
_uQWyfBiK = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b372d34781f2d312c392a", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b372d34781f2d312c392a", 88)] then
_YhiWqeye();
end;
__dummy_ops(); -- obf
end);
end;
end);
_693AYgrv = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780a3d363f37332d", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786a7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)] and _qMpv1cUt then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("10313c3c3d3678133d21", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("10313c3c3d3678133d21", 88)) then
_jFSmbcsg(__xor_decode("10313c3c3d3678133d21", 88));
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(6571.1201171875, 299.23028564453, -6967.841796875));
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0b36372f78142d2a333d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("192a3b2c313b780f392a2a31372a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (v._CJFCQjk5 == __xor_decode("0b36372f78142d2a333d2a", 88) or v._CJFCQjk5 == __xor_decode("192a3b2c313b780f392a2a31372a", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), ((101) - 100), (math._tZOYIwmz(1.5)));
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("10313c3c3d3678133d21", 88)) or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780a3d363f37332d", 88)] == false or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 / 2);
end;
end;
else
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(5439.716796875, 84.420944213867, -6715.1635742188));
end;
end;
end;
end);
end);
__dummy_ops(); -- obf
_36K20In9 = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377810393434372f780b3b212c303d", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_IPECGyML = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
_GRBuOkDQ = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f3d2c7801393539", 88),
_6PUHC437 = __xor_decode("163d3d3c786b68781d34312c3d78102d362c3d2a74781e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377801393539", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c377801393539", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c377801393539", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_5GIT2vEM = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f3d2c780139353978103728", 88),
_6PUHC437 = __xor_decode("10372878113e781d34312c3d78102d362c3d2a7816372c780b28392f36", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780139353978103728", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780139353978103728", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780139353978103728", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
__dummy_ops(); -- obf
_s9LbIlEc = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f3d2c780c2d2b30312c39", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c2d2b30312c39", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c2d2b30312c39", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c2d2b30312c39", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_F49NZNkM = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d39786a7817363421", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_F49NZNkM = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781f2a3d213a3d392a3c", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_9Ny2RA3S = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780b30392a33780b392f", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
_MnvWEj5t = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780837343d", 88),
_6PUHC437 = __xor_decode("1e2d363b2c313736780b3d3978697817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
_N7g3oCOT = _KIRfaTCx._jaVvN2g4:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781c392a33781c393f3f3d2a", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("163d3d3c780b28392f36780a31287811363c2a3974781e2d363b2c313736780b3d39786b7817363421", 88),
_V7K9qQq7 = _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)] and _UC8YJ6NP then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("2a31280731363c2a39780c2a2d3d781e372a35", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("2a31280731363c2a39", 88)) then
__dummy_ops(); -- obf
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == (__xor_decode("2a31280731363c2a39780c2a2d3d781e372a35", 88) or v._CJFCQjk5 == __xor_decode("2a31280731363c2a39", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) and v:_2K0UehsO(__xor_decode("15373c3d34", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
repeat
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
__dummy_ops(); -- obf
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), ((101) - 100), ((101) - 100));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
__dummy_ops(); -- obf
_gChUopcS();
until _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c392a33781c393f3f3d2a", 88)] == false or v._aqi4OxxB._olQxbQJn <= 0;
end;
__dummy_ops(); -- obf
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-5344.822265625, 423.98541259766, -2725.0930175781));
end;
end;
__dummy_ops(); -- obf
end;
end);
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)] and _dVBkh5d7 then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c302d363c3d2a781f373c", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0c302d363c3d2a781f373c", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 / 2);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), ((101) - 100), (math._tZOYIwmz(1.5)));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780837343d", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0);
end;
end;
end;
else
__dummy_ops(); -- obf
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-7748.0185546875, 5606.80615234375, -2305.898681640625));
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)] and _dVBkh5d7 then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c303d780b392f", 88)) then
__dummy_ops(); -- obf
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if v._CJFCQjk5 == __xor_decode("0c303d780b392f", 88) then
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (1 + 0), (1 + 0));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780b30392a33780b392f", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0);
end;
end;
__dummy_ops(); -- obf
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-690.33081054688, 15.09425163269, 1582.2380371094));
end;
__dummy_ops(); -- obf
end);
end;
__dummy_ops(); -- obf
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)] and _dVBkh5d7 then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1f2a3d213a3d392a3c", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1f2a3d213a3d392a3c", 88) then
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 / 2);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (2 / 2), (math._tZOYIwmz(1.5)));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781f2a3d213a3d392a3c", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
end;
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-5023.38330078125, 28.65203285217285, 4332.3818359375));
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)] and _qMpv1cUt then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c313c3d78133d3d283d2a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0c313c3d78133d3d283d2a", 88) then
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
v._aqi4OxxB._p4DwX85W = (0 / 2);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (1 + 0), ((101) - 100));
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37781c2a393f3736780c2a313c3d362c", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
end;
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(-3914.830322265625, 123.29389190673828, -11516.8642578125));
end;
end);
end;
end;
end);
function _pIQatGXB()
__dummy_ops(); -- obf
local a;
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk._YgIbj3S8._zdgL1xbV._kG3nkuv8._azX2ob7h._pMvJ4x3V then
a = __xor_decode("69", 88);
elseif not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk._YgIbj3S8._REwgJyub._kG3nkuv8._azX2ob7h._pMvJ4x3V then
a = __xor_decode("6a", 88);
elseif not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk._YgIbj3S8._RdxdW1HG._kG3nkuv8._azX2ob7h._pMvJ4x3V then
a = __xor_decode("6b", 88);
elseif not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk._YgIbj3S8._jTgEOveg._kG3nkuv8._azX2ob7h._pMvJ4x3V then
a = __xor_decode("6c", 88);
elseif not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk._YgIbj3S8._nEGQQGEe._kG3nkuv8._azX2ob7h._pMvJ4x3V then
a = __xor_decode("6d", 88);
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
for i, v in next, (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk._YgIbj3S8:_5PPij5jV() do
if v:_2K0UehsO(__xor_decode("153d2b3008392a2c", 88)) and string._jiv09JBF(v._CJFCQjk5, a) and (not v._kG3nkuv8._azX2ob7h._pMvJ4x3V) then
return v;
end;
end;
end;
function _BMTtfsCL(a)
for i, v in next, game.ReplicatedStorage:_5PPij5jV() do
if v:_2K0UehsO(__xor_decode("15373c3d34", 88)) and (typeof(a) == __xor_decode("2c393a343d", 88) and table._jiv09JBF(a, v._CJFCQjk5) or v._CJFCQjk5 == a) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
return v;
end;
end;
for i, v in next, game._N4KQlE00._rmNzQJ0M:_5PPij5jV() do
if v:_2K0UehsO(__xor_decode("15373c3d34", 88)) and (typeof(a) == __xor_decode("2c393a343d", 88) and table._jiv09JBF(a, v._CJFCQjk5) or v._CJFCQjk5 == a) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
return v;
end;
end;
end;
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780c2d2b30312c39", 88)] and _UC8YJ6NP then
pcall(function()
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._Jyo7NPqk:_cVgfc2HD(__xor_decode("0c2d2b30312c391f392c3d", 88)) then
if _BMTtfsCL(__xor_decode("1437363f35397803142e76786a6868680578031a372b2b05", 88)) then
local v = _BMTtfsCL(__xor_decode("1437363f35397803142e76786a6868680578031a372b2b05", 88));
repeat
_td8B60Nj.wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (math._tZOYIwmz(1.5)));
__dummy_ops(); -- obf
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
__dummy_ops(); -- obf
until not v or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn == (0 + 0);
end;
elseif _BMTtfsCL(__xor_decode("2a31280731363c2a39780c2a2d3d781e372a357803142e76786d6868680578030a39313c781a372b2b05", 88)) then
if not game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("10373421780c372a3b30", 88)) and (not game.Players._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("10373421780c372a3b30", 88))) then
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._8fMdyzev._2IwOnWlt._EVBQG12R._T5H90qAa._T5H90qAa._X7M3Rrzh.CFrame);
else
_jFSmbcsg(__xor_decode("10373421780c372a3b30", 88));
__dummy_ops(); -- obf
if _pIQatGXB() then
_LbiBlaTO((_pIQatGXB()).CFrame);
end;
end;
__dummy_ops(); -- obf
else
__dummy_ops(); -- obf
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736", 88),
__dummy_ops(); -- obf
_zEOZNmKf = __xor_decode("0a31287811363c2a397816372c780b28392f36", 88),
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = (5 + 0)
});
_td8B60Nj.wait((3 + 0));
end;
__dummy_ops(); -- obf
end);
end;
end;
end);
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780139353978103728", 88)] and _UC8YJ6NP then
__dummy_ops(); -- obf
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1d34312c3d102d362c3d2a", 88), __xor_decode("082a373f2a3d2b2b", 88)) < (30 + 0) then
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377801393539", 88)] then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c31393a3437", 88)) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88))) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0d2a3a3936", 88))) then
__dummy_ops(); -- obf
_UNRrDhpp();
__dummy_ops(); -- obf
end;
end;
end;
end);
end;
end;
end);
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377801393539", 88)] and _UC8YJ6NP then
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1d34312c3d102d362c3d2a", 88), __xor_decode("082a373f2a3d2b2b", 88)) >= (30 + 0) then
__dummy_ops(); -- obf
repeat
wait(0.1);
_qv2CHdvq((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._8fMdyzev._8ZI4HOxB._bmmkXma0._bhZclkLR);
until (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("01393539", 88)) or (not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377801393539", 88)]);
elseif string._jiv09JBF(_0XMqEanf, __xor_decode("1c31393a3437", 88)) or string._jiv09JBF(_0XMqEanf, __xor_decode("1c3d39363c2a3d", 88)) or string._jiv09JBF(_0XMqEanf, __xor_decode("0d2a3a3936", 88)) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c31393a3437", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1c3d39363c2a3d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0d2a3a3936", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1c31393a3437", 88) or v._CJFCQjk5 == __xor_decode("1c3d39363c2a3d", 88) or v._CJFCQjk5 == __xor_decode("0d2a3a3936", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
__dummy_ops(); -- obf
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = 0;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (2 / 2), (2 / 2));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until _G._j963CW1K._Q1CQy1x9[__xor_decode("192d2c377801393539", 88)] == false or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v._48KJh7fv);
end;
end;
end;
end;
else
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1d34312c3d102d362c3d2a", 88));
end;
end;
end;
__dummy_ops(); -- obf
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)] and _dVBkh5d7 then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b30313d3e780f392a3c3d36", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b30313d3e780f392a3c3d36", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = ((100) - 100);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((2 / 2), (2 / 2), ((101) - 100));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _G._j963CW1K._MFulMSqL[__xor_decode("192d2c37780f392a3c3d36780b2f372a3c", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 + 0);
end;
end;
end;
else
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(CFrame._nfGC8Yr2(5186.14697265625, 24.86684226989746, 832.1885375976562));
end;
__dummy_ops(); -- obf
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)] then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0b372d34780a3d39283d2a", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("0b372d34780a3d39283d2a", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), ((101) - 100), (math._tZOYIwmz(1.5)));
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
v._JNHDC2Lw._HenamT3N = (1 + 0);
until v._aqi4OxxB._olQxbQJn <= 0 or _G._j963CW1K._MFulMSqL[__xor_decode("192d2c377810393434372f780b3b212c303d", 88)] == false;
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("10393434372f781d2b2b3d363b3d", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("10393434372f781d2b2b3d363b3d", 88)) then
repeat
_LbiBlaTO(CFrame._nfGC8Yr2(-8932.322265625, 146.83154296875, 6062.55078125));
wait();
until ((CFrame._nfGC8Yr2((-8932.322265625), 146.83154296875, 6062.55078125))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(8.5));
_jFSmbcsg(__xor_decode("10393434372f781d2b2b3d363b3d", 88));
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("0b372d34780a3d39283d2a", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("0b372d34780a3d39283d2a", 88)))._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((4 / 2), ((120) - 100), (4 / 2)));
__dummy_ops(); -- obf
end;
end);
end;
end;
end);
_WSF9NVoT = _KIRfaTCx._HP3NElyn:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0b2c392c2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_Wg438s2P = _KIRfaTCx._HP3NElyn:_jirAYobi({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0b2c392c2b", 88),
_6PUHC437 = __xor_decode("68", 88)
});
spawn(function()
while wait(0.2) do
pcall(function()
_Wg438s2P:_rZJ3kCPC(tostring((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._w16MDX6V._V7K9qQq7));
end);
end;
end);
_gY6T4QDn = _KIRfaTCx._HP3NElyn:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("193c3c78153d343d3d780b2c392c2b", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c78153d343d3d780b2c392c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c78153d343d3d780b2c392c2b", 88)] = _mspbXOZq;
end
});
_FxWQHkMe = _KIRfaTCx._HP3NElyn:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("193c3c781c3d3e3d362b3d780b2c392c2b", 88),
_V7K9qQq7 = _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781c3d3e3d362b3d780b2c392c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781c3d3e3d362b3d780b2c392c2b", 88)] = _mspbXOZq;
end
});
_O39WxGmB = _KIRfaTCx._HP3NElyn:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("193c3c780b2f372a3c780b2c392c2b", 88),
_V7K9qQq7 = _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c780b2f372a3c780b2c392c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c780b2f372a3c780b2c392c2b", 88)] = _mspbXOZq;
end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_1wdQVuNI = _KIRfaTCx._HP3NElyn:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("193c3c781f2d36780b2c392c2b", 88),
_V7K9qQq7 = _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781f2d36780b2c392c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781f2d36780b2c392c2b", 88)] = _mspbXOZq;
end
});
_NxummQrS = _KIRfaTCx._HP3NElyn:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("193c3c781c3d2e3134781e2a2d312c780b2c392c2b", 88),
_V7K9qQq7 = _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781c3d2e3134781e2a2d312c780b2c392c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781c3d2e3134781e2a2d312c780b2c392c2b", 88)] = _mspbXOZq;
end
});
_TOEitGYo = ((101) - 100);
_e2hEtIXk = _KIRfaTCx._HP3NElyn:_l6YNnZJz({
_Z8lr3wnx = __xor_decode("083731362c", 88),
_mEE2DdbD = (1 + 0),
_V7K9qQq7 = {
_WVDUM05A = (1 + 0),
__dummy_ops(); -- obf
_NUxXt7G7 = (math._tZOYIwmz(100.5)),
__dummy_ops(); -- obf
_HwEwctDL = _TOEitGYo
},
_5ej7rGiD = function(_Y8ipJ4Ym)
_TOEitGYo = _Y8ipJ4Ym;
end
__dummy_ops(); -- obf
});
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if game.Players._8BW2dubR._TzmFDedP._w16MDX6V._V7K9qQq7 >= _TOEitGYo then
if _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c78153d343d3d780b2c392c2b", 88)] then
local _pVe1sBPU = {
[(2 / 2)] = __xor_decode("193c3c083731362c", 88),
[(math._tZOYIwmz(2.5))] = __xor_decode("153d343d3d", 88),
[(math._tZOYIwmz(3.5))] = _TOEitGYo
};
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(unpack(_pVe1sBPU));
end;
if _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781c3d3e3d362b3d780b2c392c2b", 88)] then
local _pVe1sBPU = {
[((101) - 100)] = __xor_decode("193c3c083731362c", 88),
[(math._tZOYIwmz(2.5))] = __xor_decode("1c3d3e3d362b3d", 88),
[(3 + 0)] = _TOEitGYo
};
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(unpack(_pVe1sBPU));
end;
if _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c780b2f372a3c780b2c392c2b", 88)] then
local _pVe1sBPU = {
[(1 + 0)] = __xor_decode("193c3c083731362c", 88),
[(math._tZOYIwmz(2.5))] = __xor_decode("0b2f372a3c", 88),
[((103) - 100)] = _TOEitGYo
};
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(unpack(_pVe1sBPU));
end;
if _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781f2d36780b2c392c2b", 88)] then
local _pVe1sBPU = {
[(math._tZOYIwmz(1.5))] = __xor_decode("193c3c083731362c", 88),
[(2 + 0)] = __xor_decode("1f2d36", 88),
[(math._tZOYIwmz(3.5))] = _TOEitGYo
};
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(unpack(_pVe1sBPU));
end;
if _G._j963CW1K._q75397Io[__xor_decode("192d2c3778193c3c781c3d2e3134781e2a2d312c780b2c392c2b", 88)] then
local _pVe1sBPU = {
[(2 / 2)] = __xor_decode("193c3c083731362c", 88),
[(math._tZOYIwmz(2.5))] = __xor_decode("1c3d353736781e2a2d312c", 88),
[(3 + 0)] = _TOEitGYo
};
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(unpack(_pVe1sBPU));
end;
end;
end;
end);
_gqhHVwwK = _KIRfaTCx._ZyChhaQv:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0a39313c", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
__dummy_ops(); -- obf
_ky3xKIB7 = _KIRfaTCx._ZyChhaQv:_jirAYobi({
_Z8lr3wnx = __xor_decode("0a39313c780c31353d", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_Wx0Lpw5T = _KIRfaTCx._ZyChhaQv:_jirAYobi({
_Z8lr3wnx = __xor_decode("112b3439363c", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
pcall(function()
while wait(0.2) do
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._5yPd4Xtw._O7lPbDBA._8E1Qo7w5 == true then
_ky3xKIB7:_rZJ3kCPC((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._5yPd4Xtw._O7lPbDBA._vkpN7NY2);
else
_ky3xKIB7:_rZJ3kCPC(__xor_decode("0f39312c781e372a781c2d363f3d3736", 88));
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if game._N4KQlE00._RgOmVefG._qG3L2dch:_cVgfc2HD(__xor_decode("0a39313c112b3439363c6d", 88)) then
_Wx0Lpw5T:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad778112b3439363c786d", 88));
__dummy_ops(); -- obf
elseif game._N4KQlE00._RgOmVefG._qG3L2dch:_cVgfc2HD(__xor_decode("0a39313c112b3439363c6c", 88)) then
__dummy_ops(); -- obf
_Wx0Lpw5T:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad778112b3439363c786c", 88));
elseif game._N4KQlE00._RgOmVefG._qG3L2dch:_cVgfc2HD(__xor_decode("0a39313c112b3439363c6b", 88)) then
_Wx0Lpw5T:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad778112b3439363c786b", 88));
elseif game._N4KQlE00._RgOmVefG._qG3L2dch:_cVgfc2HD(__xor_decode("0a39313c112b3439363c6a", 88)) then
_Wx0Lpw5T:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad778112b3439363c786a", 88));
elseif game._N4KQlE00._RgOmVefG._qG3L2dch:_cVgfc2HD(__xor_decode("0a39313c112b3439363c69", 88)) then
_Wx0Lpw5T:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad778112b3439363c7869", 88));
else
_Wx0Lpw5T:_rZJ3kCPC(__xor_decode("0b2c392a2c781c2d363f3d3736", 88));
end;
end;
end);
end);
function _TcVoCnQs()
local _UUJIFTld = CFrame._nfGC8Yr2((0 + 0), (35 + 0), (0 + 0));
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._5yPd4Xtw._O7lPbDBA._8E1Qo7w5 == true then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786d", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786d", 88))).CFrame * _UUJIFTld);
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786c", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786c", 88))).CFrame * _UUJIFTld);
__dummy_ops(); -- obf
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786b", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786b", 88))).CFrame * _UUJIFTld);
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786a", 88)) then
__dummy_ops(); -- obf
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c786a", 88))).CFrame * _UUJIFTld);
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c7869", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c7869", 88))).CFrame * _UUJIFTld);
end;
end;
end;
function _IskxAVFI()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (v._JNHDC2Lw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= ((400) - 100) then
return true;
else
return false;
end;
end;
end;
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] and (_qMpv1cUt or _UC8YJ6NP) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._5yPd4Xtw._O7lPbDBA._8E1Qo7w5 == true then
if _IskxAVFI() then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
if (v._JNHDC2Lw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= ((600) - 100) then
pcall(function()
repeat
wait();
_gChUopcS();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_XOIOiZrU();
v._aqi4OxxB._p4DwX85W = (0 + 0);
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (2 / 2), ((101) - 100));
until not _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end);
end;
end;
end;
else
_TcVoCnQs();
end;
end;
end;
end;
end);
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] and (_qMpv1cUt or _UC8YJ6NP) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._5yPd4Xtw._O7lPbDBA._8E1Qo7w5 == false then
if not game._N4KQlE00._RgOmVefG._qG3L2dch:_cVgfc2HD(__xor_decode("0a39313c112b3439363c69", 88)) and (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b283d3b3139347815313b2a373b303128", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b283d3b3139347815313b2a373b303128", 88)) then
__dummy_ops(); -- obf
if _qMpv1cUt then
_qv2CHdvq((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ZeI8Mkvg._adLteYw7._STjoqSGP._azX2ob7h._bhZclkLR);
elseif _UC8YJ6NP then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-5083.26025390625, 314.6056823730469, -3175.673095703125));
_qv2CHdvq((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG[__xor_decode("1a37392c781b392b2c343d", 88)]._adLteYw7._STjoqSGP._azX2ob7h._bhZclkLR);
end;
__dummy_ops(); -- obf
end;
end;
__dummy_ops(); -- obf
end;
end);
end;
end);
_RSzQ8NRI = {};
_vF6e2LpF = require(game.ReplicatedStorage._6u5GPnug);
for i, v in pairs(_vF6e2LpF._rhEHNjbm) do
table._lwzCRDUx(_RSzQ8NRI, v);
end;
for i, v in pairs(_vF6e2LpF._oiFjzrVm) do
__dummy_ops(); -- obf
table._lwzCRDUx(_RSzQ8NRI, v);
end;
_w3x9jwBr = _KIRfaTCx._ZyChhaQv:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d781b303128", 88),
_WmM52dug = _RSzQ8NRI,
_V7K9qQq7 = _G._j963CW1K._YZvNMp9S[__xor_decode("0b3d343d3b2c3d3c781b303128", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._YZvNMp9S[__xor_decode("0b3d343d3b2c3d3c781b303128", 88)] = _p5nxkYFQ;
end
});
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] and (_qMpv1cUt or _UC8YJ6NP) then
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("0b283d3b3139347815313b2a373b303128", 88)) or (not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("0b283d3b3139347815313b2a373b303128", 88))) then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("112b3439363c7869", 88)) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0a39313c2b16283b", 88), __xor_decode("0b3d343d3b2c", 88), _G._j963CW1K._YZvNMp9S[__xor_decode("0b3d343d3b2c3d3c781b303128", 88)]);
end;
end;
end;
end;
end);
end);
_bzyojwVe = _KIRfaTCx._ZyChhaQv:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780a39313c", 88),
_6PUHC437 = __xor_decode("1b373528343d2c3d78392d2c3735392c313b39343421", 88),
_V7K9qQq7 = _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._YZvNMp9S[__xor_decode("192d2c37780a39313c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_R6VU5tCt = _KIRfaTCx._ZyChhaQv:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c3778192f39333d36", 88),
_V7K9qQq7 = _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c3778192f39333d36", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._YZvNMp9S[__xor_decode("192d2c3778192f39333d36", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._YZvNMp9S[__xor_decode("192d2c3778192f39333d36", 88)] then
pcall(function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("192f39333d363d2a", 88), __xor_decode("192f39333d36", 88));
end);
end;
end;
__dummy_ops(); -- obf
end);
_RWfeLhOz = _KIRfaTCx._ZyChhaQv:_l6YNnZJz({
_Z8lr3wnx = __xor_decode("082a313b3d", 88),
_V7K9qQq7 = {
_WVDUM05A = (1 + 0),
_NUxXt7G7 = ((10000100) - 100),
_HwEwctDL = _G._j963CW1K._YZvNMp9S[__xor_decode("082a313b3d781c3d2e3134781e2a2d312c", 88)]
},
_5ej7rGiD = function(_Y8ipJ4Ym)
__dummy_ops(); -- obf
_G._j963CW1K._YZvNMp9S[__xor_decode("082a313b3d781c3d2e3134781e2a2d312c", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
_2uX2PWTh = _KIRfaTCx._ZyChhaQv:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780d362b2c372a3d781c3d2e3134781e2a2d312c", 88),
_V7K9qQq7 = _G._j963CW1K._YZvNMp9S[__xor_decode("0d362b2c372a3d781c3d2e3134781e2a2d312c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._YZvNMp9S[__xor_decode("0d362b2c372a3d781c3d2e3134781e2a2d312c", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
function _QMkWbSOF()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_5PPij5jV()) do
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
return true;
end;
end;
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_5PPij5jV()) do
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
return true;
end;
end;
__dummy_ops(); -- obf
return false;
end;
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._YZvNMp9S[__xor_decode("0d362b2c372a3d781c3d2e3134781e2a2d312c", 88)] then
_QjsBB4c5 = (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("3f3d2c11362e3d362c372a211e2a2d312c2b", 88));
for i, v in pairs(_QjsBB4c5) do
if v._rEjk3DfY < _G._j963CW1K._YZvNMp9S[__xor_decode("082a313b3d781c3d2e3134781e2a2d312c", 88)] then
if not _QMkWbSOF() then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1437393c1e2a2d312c", 88), v._CJFCQjk5);
end;
end;
end;
end;
end);
end;
end);
_3qWk0MUe = _KIRfaTCx._ZyChhaQv:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c377814393a", 88),
_5ej7rGiD = function()
if _qMpv1cUt then
_LbiBlaTO(CFrame._nfGC8Yr2(-6438.73535, 250.645355, -4501.50684));
elseif _UC8YJ6NP then
_LbiBlaTO(CFrame._nfGC8Yr2(-5017.40869, 314.844055, -2823.0127, -0.925743818, 0.0000000448217499, -0.378151238, 0.00000000455503146, (1 + 0), 0.000000107377559, 0.378151238, 0.000000097681621, -0.925743818));
end;
__dummy_ops(); -- obf
end
});
_r06tKsov = _KIRfaTCx._ZyChhaQv:_jASXS1ll({
_Z8lr3wnx = __xor_decode("14392f780a39313c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_pYIZ8tcg = _KIRfaTCx._ZyChhaQv:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377814392f780a39313c", 88),
_V7K9qQq7 = _G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)] = _Y8ipJ4Ym;
_LKYWqXFh(_G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)] then
if not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("15313b2a373b303128", 88)) and (not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("15313b2a373b303128", 88))) and (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("172a3c3d2a", 88))) and (not (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("172a3c3d2a", 88))) then
wait(0.3);
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("15313b2a373b303128", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("15313b2a373b303128", 88), __xor_decode("6a", 88));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)] then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("172a3c3d2a", 88)) and (not (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("172a3c3d2a", 88))) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("15313b2a373b303128", 88)) or (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(__xor_decode("15313b2a373b303128", 88)) then
__dummy_ops(); -- obf
_qv2CHdvq((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._ZeI8Mkvg._vl3OD1hB._STjoqSGP._azX2ob7h._bhZclkLR);
end;
end;
if (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("172a3c3d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("172a3c3d2a", 88)) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("172a3c3d2a", 88)) then
for h, i in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if i._CJFCQjk5 == __xor_decode("172a3c3d2a", 88) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_gChUopcS();
__dummy_ops(); -- obf
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
_LbiBlaTO(i._JNHDC2Lw.CFrame * _YuU8D8tp);
__dummy_ops(); -- obf
i._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((1 + 0), (math._tZOYIwmz(1.5)), (2 / 2));
_gChUopcS();
until not i._48KJh7fv or i._aqi4OxxB._olQxbQJn <= ((100) - 100) or _G._j963CW1K._YZvNMp9S[__xor_decode("14392f780a39313c", 88)] == false;
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_cVgfc2HD(__xor_decode("172a3c3d2a", 88)) then
_LbiBlaTO(CFrame._nfGC8Yr2(-6217.2021484375, 28.047645568848, -5053.1357421875));
end;
end;
end;
end;
end);
end);
_OCveZozL = _KIRfaTCx._dzTg6gIu:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0a393b3d", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
local _MzCLVItQ = {
__xor_decode("0c372878173e781f2a3d392c0c2a3d3d", 88),
__xor_decode("0c313528343d78173e780c31353d", 88),
__xor_decode("143d2e3d2a78082d3434", 88),
__xor_decode("193b313d362c7817363d", 88)
};
_d05TlEF8 = _KIRfaTCx._dzTg6gIu:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("0b3d343d3b2c3d3c780834393b3d", 88),
_WmM52dug = _MzCLVItQ,
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)],
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._3tuTG4jB[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
_wxWMulW7 = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c37780834393b3d", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("0c3d343d28372a2c780c37780834393b3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._3tuTG4jB[__xor_decode("0c3d343d28372a2c780c37780834393b3d", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("0c3d343d28372a2c780c37780834393b3d", 88)] then
pcall(function()
if _G._j963CW1K._3tuTG4jB[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)] == __xor_decode("0c372878173e781f2a3d392c0c2a3d3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(2947.556884765625, 2281.630615234375, -7213.54931640625));
elseif _G._j963CW1K._3tuTG4jB[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)] == __xor_decode("0c313528343d78173e780c31353d", 88) then
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(28286.35546875, 14895.3017578125, 102.62469482421875);
elseif _G._j963CW1K._3tuTG4jB[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)] == __xor_decode("143d2e3d2a78082d3434", 88) then
local _8MaaH5kx = CFrame._nfGC8Yr2(28575.181640625, 14936.6279296875, 72.31636810302734);
if (_8MaaH5kx._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA >= (2000 / 2) then
(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(28286.35546875, 14895.3017578125, 102.62469482421875);
__dummy_ops(); -- obf
else
_LbiBlaTO(_8MaaH5kx);
__dummy_ops(); -- obf
end;
elseif _G._j963CW1K._3tuTG4jB[__xor_decode("0b3d343d3b2c3d3c780834393b3d", 88)] == __xor_decode("193b313d362c7817363d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(28981.552734375, 14888.4267578125, -120.245849609375));
end;
__dummy_ops(); -- obf
end);
end;
end;
end);
_NZBU9BjM = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c37781a2d21781f3d392a", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781a2d21781f3d392a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781a2d21781f3d392a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781a2d21781f3d392a", 88)] then
local _pVe1sBPU = {
__dummy_ops(); -- obf
[((101) - 100)] = true
};
local _pVe1sBPU = {
[(math._tZOYIwmz(1.5))] = __xor_decode("0d283f2a393c3d0a393b3d", 88),
[((102) - 100)] = __xor_decode("1a2d21", 88)
};
(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("0a3d35372c3d2b", 88))):_oS4sDmYc(__xor_decode("1b3735351e07", 88))):_gYy0cacA(unpack(_pVe1sBPU));
end;
end;
end);
end);
_Ku8jOl8O = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88),
_6PUHC437 = __xor_decode("0c2f3d3d36782c377830313f303d2b2c78283731362c", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("0c2f3d3d36780c377810313f303d2b2c7815312a393f3d", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._3tuTG4jB[__xor_decode("0c2f3d3d36780c377810313f303d2b2c7815312a393f3d", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_sh5r6Xn2 = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1e31363c781a342d3d781f3d392a", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("1e31363c781a342d3d781f3d392a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._3tuTG4jB[__xor_decode("1e31363c781a342d3d781f3d392a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("1e31363c781a342d3d781f3d392a", 88)] then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG:_cVgfc2HD(__xor_decode("15212b2c313b112b3439363c", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._bziFetUU:_5PPij5jV()) do
__dummy_ops(); -- obf
if v:_2K0UehsO(__xor_decode("153d2b3008392a2c", 88)) then
if v._KoS7ZIVZ == Enum._KoS7ZIVZ._Lr17v0u7 then
_LbiBlaTO(v.CFrame);
end;
end;
end;
end;
end;
end;
end);
end);
__dummy_ops(); -- obf
_kUhXOAP1 = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("143737337815373736787e782d2b3d78193a3134312c21", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("14373733781537373678193a3134312c21", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._3tuTG4jB[__xor_decode("14373733781537373678193a3134312c21", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._3tuTG4jB[__xor_decode("14373733781537373678193a3134312c21", 88)] then
wait();
local _vZxVQFrN = game.Lighting:_ce9509IM();
local _87S62rHz = game._N4KQlE00._wledWLu5.CFrame.p + _vZxVQFrN * (100 + 0);
game._N4KQlE00._wledWLu5.CFrame = CFrame._L8AuMq8c(game._N4KQlE00._wledWLu5.CFrame.p, _87S62rHz);
end;
end);
end;
end);
__dummy_ops(); -- obf
_7wCxag6d = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780c2a393136", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
_LKYWqXFh(_G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)] then
if game.Players._qLJftmnl._PXAw1fga._IDJtpSio._V7K9qQq7 == true then
_133JafeD = false;
_LbiBlaTO(CFrame._nfGC8Yr2(216.211181640625, 126.9352035522461, -12599.0732421875));
end;
end;
end;
end);
end);
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _133JafeD and _UC8YJ6NP then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b373b3739780f392a2a31372a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b30373b3734392c3d781a392a781a392c2c343d2a", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0b2f3d3d2c780c30313d3e", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1b39363c21780a3d3a3d34", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("1b373b3739780f392a2a31372a", 88) or v._CJFCQjk5 == __xor_decode("1b30373b3734392c3d781a392a781a392c2c343d2a", 88) or v._CJFCQjk5 == __xor_decode("0b2f3d3d2c780c30313d3e", 88) or v._CJFCQjk5 == __xor_decode("1b39363c21780a3d3a3d34", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = (0 + 0);
__dummy_ops(); -- obf
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not _133JafeD or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end;
end;
end;
else
_LbiBlaTO(CFrame._nfGC8Yr2(216.211181640625, 126.9352035522461, -12599.0732421875));
end;
end);
end;
end;
end);
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)] then
if game.Players._qLJftmnl._PXAw1fga._IDJtpSio._V7K9qQq7 == false then
_133JafeD = true;
end;
end;
end;
end);
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a393136", 88)] then
if tonumber(((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("0a393b3d1d363d2a3f21", 88)))._V7K9qQq7) == (1 + 0) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._IDJtpSio._V7K9qQq7 == false then
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("01", 88), false, game);
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("01", 88), false, game);
end;
end;
end;
end);
end;
end);
_i6J0V4fe = _KIRfaTCx._dzTg6gIu:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c37780a393b3d781c37372a", 88),
_5ej7rGiD = function()
game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88),Vector3._nfGC8Yr2(28286.35546875, 14895.3017578125, 102.62469482421875))
if game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("102d353936", 88) then
_KgmNjJ4d(CFrame._nfGC8Yr2(29221.822265625, 14890.9755859375, -205.99114990234375))
elseif game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("0b332128313d39", 88) then
_KgmNjJ4d(CFrame._nfGC8Yr2(28960.158203125, 14919.6240234375, 235.03948974609375))
elseif game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("1e312b30353936", 88) then
_KgmNjJ4d(CFrame._nfGC8Yr2(28231.17578125, 14890.9755859375, -211.64173889160156))
__dummy_ops(); -- obf
elseif game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("1b213a372a3f", 88) then
__dummy_ops(); -- obf
_KgmNjJ4d(CFrame._nfGC8Yr2(28502.681640625, 14895.9755859375, -423.7279357910156))
elseif game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("1f30372d34", 88) then
_KgmNjJ4d(CFrame._nfGC8Yr2(28674.244140625, 14890.6767578125, 445.4310607910156))
elseif game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("15313633", 88) then
_KgmNjJ4d(CFrame._nfGC8Yr2(29012.341796875, 14890.9755859375, -380.1492614746094))
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end
});
_gyS7BWNh = _KIRfaTCx._dzTg6gIu:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c3778193b313d362c", 88),
_5ej7rGiD = function()
game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88),Vector3._nfGC8Yr2(28286.35546875, 14895.3017578125, 102.62469482421875))
_KgmNjJ4d(CFrame._nfGC8Yr2(28981.552734375, 14888.4267578125, -120.245849609375))
end;
});
_s9pAPRVo = _KIRfaTCx._dzTg6gIu:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d2178193b313d362c78092d3d2b2c", 88),
__dummy_ops(); -- obf
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0d283f2a393c3d0a393b3d", 88), __xor_decode("1a2d21", 88));
end
});
_WlErtJl8 = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c37780c2a313934", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)],
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] = _Y8ipJ4Ym;
_LKYWqXFh(_G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("102d353936", 88) then
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_uamye779()) do
__dummy_ops(); -- obf
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
pcall(function()
repeat
wait(0.1);
v._aqi4OxxB._olQxbQJn = 0;
until not _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 / 2);
end);
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("0b332128313d39", 88) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._TI4K8Vww._k1wtN8hV:_uamye779()) do
if v._CJFCQjk5 == __xor_decode("2b36372f312b3439363c071b213431363c3d2a76686069", 88) then
_LbiBlaTO(v.CFrame * CFrame._nfGC8Yr2(0, ((100) - 100), ((100) - 100)));
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("1e312b30353936", 88) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D._mtUg6HMn:_uamye779()) do
if v._CJFCQjk5 == __xor_decode("102d35393637313c0a37372c08392a2c", 88) then
repeat
wait();
_LbiBlaTO(v.CFrame * CFrame._nfGC8Yr2(0, ((300) - 100), (0 + 0)));
_PnavwlpY();
until not _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= (0 / 2) or (not v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)));
end;
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("1b213a372a3f", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(((28754) - 100), 14898.7832, -(30 + 0), (math._tZOYIwmz(1.5)), (0 / 2), ((100) - 100), (0 + 0), (1 + 0), (0 + 0), (0 / 2), ((100) - 100), (1 + 0)));
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("1f30372d34", 88) then
for i, v in pairs(game._N4KQlE00._rmNzQJ0M:_uamye779()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
__dummy_ops(); -- obf
pcall(function()
repeat
wait(0.1);
v._aqi4OxxB._olQxbQJn = (0 + 0);
until not _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37780c2a313934", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end);
end;
__dummy_ops(); -- obf
end;
elseif (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._TzmFDedP._3tuTG4jB._V7K9qQq7 == __xor_decode("15313633", 88) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_uamye779()) do
if v._CJFCQjk5 == __xor_decode("0b2c392a2c083731362c", 88) then
_LbiBlaTO(v.CFrame * CFrame._nfGC8Yr2(((100) - 100), (10 + 0), 0));
end;
end;
end;
end;
__dummy_ops(); -- obf
end;
end);
end);
_49JShH9c = _KIRfaTCx._dzTg6gIu:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88),
_V7K9qQq7 = _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)] then
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._azX2ob7h._5yPd4Xtw._JVn7dhMW._8E1Qo7w5 == true then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))):_zFXsQGqu()) do
if v ~= game.Players._qLJftmnl and v._PXAw1fga and v._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
if (v._PXAw1fga._JNHDC2Lw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= ((600) - 100) then
if v._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v._PXAw1fga._aqi4OxxB._olQxbQJn > 0 then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:_gJ7wDLdV();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_XOIOiZrU();
_LbiBlaTO(v._PXAw1fga._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (0 / 2), (math._tZOYIwmz(40.5))));
_gChUopcS();
until not _G._j963CW1K._3tuTG4jB[__xor_decode("192d2c37781331343478083439213d2a78193e2c3d2a780c2a313934", 88)] or (not v._PXAw1fga) or v._PXAw1fga._aqi4OxxB._olQxbQJn <= (0 / 2);
end;
end;
end;
end;
end;
end;
end;
__dummy_ops(); -- obf
end);
_Sh8IBNq4 = _KIRfaTCx._0gcKxTh2:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_4EI8iQka = _KIRfaTCx._0gcKxTh2:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c37781e312a2b2c780b3d39", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d3415393136", 88));
end
});
_aDyMezLT = _KIRfaTCx._0gcKxTh2:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c37780b3d3b37363c780b3d39", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d341c2a3d2b2b2a372b39", 88));
end
});
_DOA5OS1n = _KIRfaTCx._0gcKxTh2:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c37780c30312a3c780b3d39", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0c2a392e3d3402372d", 88));
end
});
_wMsobui3 = _KIRfaTCx._0gcKxTh2:_jASXS1ll({
_Z8lr3wnx = __xor_decode("112b3439363c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
_jgRrvMMV = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b303728", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_XMjUkKdl = _KIRfaTCx._RvoE30aN:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781a2d2178143d3f3d363c392a21780b2f372a3c", 88),
_V7K9qQq7 = _G._j963CW1K._9XNrZs8J[__xor_decode("192d2c37781a2d2178143d3f3d363c392a21780b2f372a3c", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._9XNrZs8J[__xor_decode("192d2c37781a2d2178143d3f3d363c392a21780b2f372a3c", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._9XNrZs8J[__xor_decode("192d2c37781a2d2178143d3f3d363c392a21780b2f372a3c", 88)] then
__dummy_ops(); -- obf
pcall(function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("143d3f3d363c392a210b2f372a3c1c3d39343d2a", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("143d3f3d363c392a210b2f372a3c1c3d39343d2a", 88), __xor_decode("6a", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("143d3f3d363c392a210b2f372a3c1c3d39343d2a", 88), __xor_decode("6b", 88));
end);
end;
end;
end);
_8wxcAMf9 = _KIRfaTCx._RvoE30aN:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781a2d217810393331781b3734372a", 88),
_V7K9qQq7 = _G._j963CW1K._9XNrZs8J[__xor_decode("192d2c37781a2d217810393331781b3734372a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._9XNrZs8J[__xor_decode("192d2c37781a2d217810393331781b3734372a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
if _G._j963CW1K._9XNrZs8J[__xor_decode("192d2c37781a2d217810393331781b3734372a", 88)] then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b3734372a2b1c3d39343d2a", 88), __xor_decode("6a", 88));
__dummy_ops(); -- obf
end;
end;
end);
_sCqYrFPg = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("193a3134312c313d2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_jC8b787w = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781f3d282837", 88),
_6PUHC437 = __xor_decode("7c696874686868", 88),
__dummy_ops(); -- obf
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d2110393331", 88), __xor_decode("1f3d282837", 88));
end
});
__dummy_ops(); -- obf
_Jd0ysCHf = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781a2d2b377810393331", 88),
_6PUHC437 = __xor_decode("7c6a6d74686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d2110393331", 88), __xor_decode("1a2d2b37", 88));
__dummy_ops(); -- obf
end
});
_a4yJT4Fq = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b372a2d", 88),
_6PUHC437 = __xor_decode("7c6a6d74686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d2110393331", 88), __xor_decode("0b372a2d", 88));
end
});
_CbBkczu5 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d2178173a2b3d2a2e392c3137367810393331", 88),
_6PUHC437 = __xor_decode("7c6f6d6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("133d360c393433", 88), __xor_decode("1a2d21", 88));
end
});
_ROpRipjP = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1e313f302c31363f780b2c21343d", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_xb07hMKv = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781a34393b3378143d3f", 88),
_6PUHC437 = __xor_decode("7c696d6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a34393b33143d3f", 88));
end
});
_X4DqqjCJ = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781d343d3b2c2a37", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("7c6d6d6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a37", 88));
end
__dummy_ops(); -- obf
});
_csswiiAt = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781e312b303539367813392a392c3d", 88),
_6PUHC437 = __xor_decode("7c6f6d6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211e312b3035393613392a392c3d", 88));
end
});
_KSgLwOEp = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781c2a393f3736781b34392f", 88),
_6PUHC437 = __xor_decode("789bde9aca69746d6868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("1c2a393f37361b34392f", 88), __xor_decode("6a", 88));
end
});
_gvHfT6Jq = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b2d283d2a302d353936", 88),
_6PUHC437 = __xor_decode("7c6b7468686874686868", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b2d283d2a302d353936", 88));
end
});
_2Bc56cTa = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781c3d392c30780b2c3d28", 88),
_6PUHC437 = __xor_decode("789bde9aca6d74686868787c6d7468686874686868", 88),
__dummy_ops(); -- obf
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c3d392c300b2c3d28", 88));
end
});
_gNYyH49k = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b30392a333539367813392a392c3d", 88),
_6PUHC437 = __xor_decode("789bde9aca6d74686868787c6a746d686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88), true);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b30392a3335393613392a392c3d", 88));
end
});
_aDbvlu2z = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781d343d3b2c2a313b781b34392f", 88),
_6PUHC437 = __xor_decode("789bde9aca6d74686868787c6b7468686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211d343d3b2c2a313b1b34392f", 88));
end
});
_Mp1yZVzm = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781c2a393f3736780c39343736", 88),
_6PUHC437 = __xor_decode("789bde9aca6d74686868787c6b7468686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211c2a393f37360c39343736", 88));
end
});
_DU9kWlaw = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781f373c78102d353936", 88),
_6PUHC437 = __xor_decode("789bde9aca6d74686868787c6d7468686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211f373c302d353936", 88));
__dummy_ops(); -- obf
end
});
_Jkf8b92j = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b39363f2d31363d78192a2c", 88),
_6PUHC437 = __xor_decode("789bde9aca6d74686868787c6d7468686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b39363f2d31363d192a2c", 88), true);
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d210b39363f2d31363d192a2c", 88));
end
});
__dummy_ops(); -- obf
_33NlDzDd = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b2f372a3c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_da2DZre4 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781b2d2c34392b2b", 88),
_6PUHC437 = __xor_decode("7c6974686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1b2d2c34392b2b", 88));
end
});
_9x9kXcWd = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d217813392c393639", 88),
_6PUHC437 = __xor_decode("7c6974686868", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("13392c393639", 88));
__dummy_ops(); -- obf
end
});
_D2sEBTfO = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d2178112a37367815393b3d", 88),
_6PUHC437 = __xor_decode("7c6a6d74686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("112a37367815393b3d", 88));
end
});
_9dfTf8fb = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781c2d39347813392c393639", 88),
_6PUHC437 = __xor_decode("7c696a74686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1c2d39347813392c393639", 88));
end
});
_aGgnenRG = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780c2a3128343d7813392c393639", 88),
_6PUHC437 = __xor_decode("7c6e6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0c2a3128343d7813392c393639", 88));
end
});
_k4Q7wiub = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780831283d", 88),
_6PUHC437 = __xor_decode("7c69686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0831283d", 88));
end
});
_wbypdFJ6 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1a2d21781c2d393478103d393c3d3c781a34393c3d", 88),
_6PUHC437 = __xor_decode("7c6c686874686868", 88),
__dummy_ops(); -- obf
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1c2d393475103d393c3d3c781a34393c3d", 88));
end
});
_Tc9gkY5H = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781a312b3d362c37", 88),
_6PUHC437 = __xor_decode("7c69746a686874686868", 88),
__dummy_ops(); -- obf
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1a312b3d362c37", 88));
end
});
_ZNJS8iXi = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b372d34781b39363d", 88),
_6PUHC437 = __xor_decode("7c6974686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0b372d34781b39363d", 88));
end
});
_6SGMm5II = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1f2d36", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
__dummy_ops(); -- obf
_riAGlAl7 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b3431363f2b30372c", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("7c6d74686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0b3431363f2b30372c", 88));
end
});
_GXPWHhoq = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d2178152d2b333d2c", 88),
_6PUHC437 = __xor_decode("7c6074686868", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("152d2b333d2c", 88));
end
});
_fnRit3zK = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781e3431362c34373b33", 88),
_6PUHC437 = __xor_decode("7c6968746d6868", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1e3431362c34373b33", 88));
end
});
_ULgFpVO9 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780a3d3e31363d3c781e31362c34373b33", 88),
_6PUHC437 = __xor_decode("7c6e6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0a3d3e31363d3c781e31362c34373b33", 88));
end
});
_qsXjEfb8 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21781b3936363736", 88),
_6PUHC437 = __xor_decode("7c69686874686868", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1b3936363736", 88));
end
});
_YDOzo14c = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d217813393a2d3b3039", 88),
_6PUHC437 = __xor_decode("789bde9aca69746d6868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("0b3431363f2b30372c", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("0b3431363f2b30372c", 88), __xor_decode("6a", 88));
end
});
_kKV5TeLw = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b2c392c2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_ZTWppc9q = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d2b3d2c780b2c392c2b", 88),
_6PUHC437 = __xor_decode("789bde9aca6a746d6868", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("0a3d3e2d363c", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("0a3d3e2d363c", 88), __xor_decode("6a", 88));
end
});
_Libmf0TE = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a39363c3735780a393b3d", 88),
_6PUHC437 = __xor_decode("789bde9aca6b74686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("0a3d2a373434", 88), __xor_decode("69", 88));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a34393b333a3d392a3c0a3d2f392a3c", 88), __xor_decode("0a3d2a373434", 88), __xor_decode("6a", 88));
end
});
_dvnPQGf6 = _KIRfaTCx._RvoE30aN:_jASXS1ll({
_Z8lr3wnx = __xor_decode("193b3b3d2b2b372a313d2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_ikumcL40 = _KIRfaTCx._RvoE30aN:_STjoqSGP({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1a2d21781a34393b33781b39283d", 88),
_6PUHC437 = __xor_decode("7c6d6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("1a34393b33781b39283d", 88));
end
});
_UTM0rhct = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780b2f372a3c2b3539367810392c", 88),
_6PUHC437 = __xor_decode("7c696d6874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0b2f372a3c2b3539367810392c", 88));
end
});
_FnAAMAmH = _KIRfaTCx._RvoE30aN:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2d21780c3735373d780a31363f", 88),
_6PUHC437 = __xor_decode("7c6d686874686868", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d21112c3d35", 88), __xor_decode("0c3735373d780a31363f", 88));
end
});
_OQCshrCU = _KIRfaTCx._B4Yzjps3:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1b37353a392c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_btUqShtd = _KIRfaTCx._B4Yzjps3:_jirAYobi({
_Z8lr3wnx = __xor_decode("083439213d2a2b781136780b3d2a2e3d2a", 88),
_6PUHC437 = __xor_decode("68", 88)
});
spawn(function()
while wait(0.2) do
pcall(function()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))):_zFXsQGqu()) do
if i == ((112) - 100) then
_btUqShtd:_rZJ3kCPC(i .. __xor_decode("787778", 88) .. __xor_decode("696a", 88) .. __xor_decode("7015392071", 88));
elseif i == ((101) - 100) then
_btUqShtd:_rZJ3kCPC(i .. __xor_decode("787778", 88) .. __xor_decode("696a", 88));
else
__dummy_ops(); -- obf
_btUqShtd:_rZJ3kCPC(i .. __xor_decode("787778", 88) .. __xor_decode("696a", 88));
end;
end;
__dummy_ops(); -- obf
end);
end;
end);
local _4BO8iThl = {};
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))):_5PPij5jV()) do
__dummy_ops(); -- obf
table._lwzCRDUx(_4BO8iThl, v._CJFCQjk5);
__dummy_ops(); -- obf
end;
_rT8bPp3h = _KIRfaTCx._B4Yzjps3:_36SSOu6Q({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1b3037372b3d78083439213d2a", 88),
_WmM52dug = _4BO8iThl,
_V7K9qQq7 = tostring(_4BO8iThl[(1 + 0)]),
__dummy_ops(); -- obf
_5ej7rGiD = function(_p5nxkYFQ)
__dummy_ops(); -- obf
_G._GdFPXcRo = _p5nxkYFQ;
end
});
__dummy_ops(); -- obf
_Ak1lVCSI = _KIRfaTCx._B4Yzjps3:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d3e2a3d2b3078083439213d2a", 88),
_5ej7rGiD = function()
_4BO8iThl = {};
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))):_5PPij5jV()) do
table._lwzCRDUx(_4BO8iThl, v._CJFCQjk5);
end;
_rT8bPp3h:_JS3G6jky(_4BO8iThl);
end
});
_oNOS5ZVC = _KIRfaTCx._B4Yzjps3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b283d3b2c392c3d78083439213d2a", 88),
_V7K9qQq7 = false,
_5ej7rGiD = function(_mspbXOZq)
_dHDQ7D3a = _mspbXOZq
local Players = game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))
local _N4KQlE00 = game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))
local _jMBjws6X = _N4KQlE00._wledWLu5
local _qLJftmnl = Players._qLJftmnl
while _dHDQ7D3a do
wait(0.1)
local _n15tLryS = _G._GdFPXcRo and Players:_cVgfc2HD(_G._GdFPXcRo)
if _n15tLryS and _n15tLryS._PXAw1fga and _n15tLryS._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) then
_jMBjws6X._9bmckj4Q = _n15tLryS._PXAw1fga._aqi4OxxB
else
break
end
end
if _qLJftmnl._PXAw1fga and _qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) then
_jMBjws6X._9bmckj4Q = _qLJftmnl._PXAw1fga._aqi4OxxB
end
end
})
_ac9jncgt = _KIRfaTCx._B4Yzjps3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c3778083439213d2a", 88),
_V7K9qQq7 = false,
_5ej7rGiD = function(_mspbXOZq)
_G._46ppaJg0 = _Y8ipJ4Ym;
pcall(function()
__dummy_ops(); -- obf
if _G._46ppaJg0 then
repeat
_LbiBlaTO((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))[_G._GdFPXcRo]._PXAw1fga._JNHDC2Lw.CFrame);
wait();
until _G._46ppaJg0 == false or (not (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))):_cVgfc2HD(_G._GdFPXcRo));
end;
_LKYWqXFh(_G._46ppaJg0);
end);
end
});
local _7VEOyKvY = {};
if _dVBkh5d7 then
_7VEOyKvY = {
__xor_decode("0f31363c15313434", 88),
__dummy_ops(); -- obf
__xor_decode("15392a31363d", 88),
__xor_decode("15313c3c343d780c372f36", 88),
__xor_decode("122d363f343d", 88),
__xor_decode("08312a392c3d780e313434393f3d", 88),
__dummy_ops(); -- obf
__xor_decode("1c3d2b3d2a2c", 88),
__xor_decode("0b36372f78112b3439363c", 88),
__xor_decode("15392a31363d1e372a3c", 88),
__xor_decode("1b3734372b2b3d2d35", 88),
__xor_decode("0b332178112b3439363c7869", 88),
__xor_decode("0b332178112b3439363c786a", 88),
__xor_decode("0b332178112b3439363c786b", 88),
__xor_decode("082a312b3736", 88),
__xor_decode("15393f3539780e313434393f3d", 88),
__xor_decode("0d363c3d2a780f392c3d2a78112b3439363c", 88),
__xor_decode("1e372d362c393136781b312c21", 88),
__xor_decode("0b30393633780a373735", 88),
__xor_decode("15373a78112b3439363c", 88)
};
elseif _qMpv1cUt then
_7VEOyKvY = {
__xor_decode("0c303d781b393e3d", 88),
__xor_decode("1e2a312b2c780b28372c", 88),
__xor_decode("1c392a3378192a3d39", 88),
__xor_decode("1e34393531363f37781539362b313736", 88),
__xor_decode("1e34393531363f37780a373735", 88),
__xor_decode("1f2a3d3d36780237363d", 88),
__xor_decode("1e393b2c372a21", 88),
__xor_decode("1b3734372b2b2d3135", 88),
__xor_decode("0237353a313d78112b3439363c", 88),
__xor_decode("0c2f37780b36372f7815372d362c393136", 88),
__xor_decode("082d363378103922392a3c", 88),
__xor_decode("1b2d2a2b3d3c780b303128", 88),
__dummy_ops(); -- obf
__xor_decode("113b3d781b392b2c343d", 88),
__xor_decode("1e372a3f372c2c3d3678112b3439363c", 88),
__xor_decode("0d2b2b372878112b3439363c", 88),
__xor_decode("15313631780b332178112b3439363c", 88)
};
elseif _UC8YJ6NP then
_7VEOyKvY = {
__xor_decode("1539362b313736", 88),
__xor_decode("08372a2c780c372f36", 88),
__xor_decode("1f2a3d392c780c2a3d3d", 88),
__xor_decode("1b392b2c343d781736780c303d780b3d39", 88),
__xor_decode("153136310b3321", 88),
__xor_decode("10213c2a3978112b3439363c", 88),
__xor_decode("1e3437392c31363f780c2d2a2c343d", 88),
__xor_decode("10392d362c3d3c781b392b2c343d", 88),
__xor_decode("113b3d781b2a3d393578112b3439363c", 88),
__xor_decode("083d39362d2c78112b3439363c", 88),
__xor_decode("1b39333d78112b3439363c", 88),
__xor_decode("1b373b373978112b3439363c", 88),
__xor_decode("1b39363c2178112b3439363c", 88),
__xor_decode("0c31333178172d2c28372b2c", 88),
__xor_decode("1c2a393f3736781c373237", 88)
};
end;
_pI5IZsfB = _KIRfaTCx._0gcKxTh2:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d78112b3439363c", 88),
_WmM52dug = _7VEOyKvY,
repeat local __x = {}; break until __x -- junk
_V7K9qQq7 = _7VEOyKvY[((101) - 100)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._fJYFcQnO = _p5nxkYFQ;
end
});
_LLsmidXd = _KIRfaTCx._0gcKxTh2:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c3778112b3439363c", 88),
_V7K9qQq7 = false,
_5ej7rGiD = function(_mspbXOZq)
_G._2tRvP52D = _mspbXOZq;
if _G._2tRvP52D then
repeat
wait();
if _G._fJYFcQnO == __xor_decode("0f31363c15313434", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(979.79895019531, 16.516613006592, 1429.0466308594));
elseif _G._fJYFcQnO == __xor_decode("15392a31363d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2566.4296875, 6.8556680679321, 2045.2561035156));
elseif _G._fJYFcQnO == __xor_decode("15313c3c343d780c372f36", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-690.33081054688, 15.09425163269, 1582.2380371094));
elseif _G._fJYFcQnO == __xor_decode("122d363f343d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1612.7957763672, 36.852081298828, 149.12843322754));
elseif _G._fJYFcQnO == __xor_decode("08312a392c3d780e313434393f3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1181.3093261719, 4.7514905929565, 3803.5456542969));
elseif _G._fJYFcQnO == __xor_decode("1c3d2b3d2a2c", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(944.15789794922, 20.919729232788, 4373.3002929688));
elseif _G._fJYFcQnO == __xor_decode("0b36372f78112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(1347.8067626953, 104.66806030273, -1319.7370605469));
elseif _G._fJYFcQnO == __xor_decode("15392a31363d1e372a3c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-4914.8212890625, 50.963626861572, 4281.0278320313));
elseif _G._fJYFcQnO == __xor_decode("1b3734372b2b3d2d35", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1427.6203613281, 7.2881078720093, -2792.7722167969));
__dummy_ops(); -- obf
elseif _G._fJYFcQnO == __xor_decode("0b332178112b3439363c7869", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-4869.1025390625, 733.46051025391, -2667.0180664063));
elseif _G._fJYFcQnO == __xor_decode("0b332178112b3439363c786a", 88) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-4607.82275, 872.54248, -1667.55688));
elseif _G._fJYFcQnO == __xor_decode("0b332178112b3439363c786b", 88) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-7894.6176757813, 5547.1416015625, -380.29119873047));
__dummy_ops(); -- obf
elseif _G._fJYFcQnO == __xor_decode("082a312b3736", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(4875.330078125, 5.6519818305969, 734.85021972656));
elseif _G._fJYFcQnO == __xor_decode("15393f3539780e313434393f3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-5247.7163085938, 12.883934020996, 8504.96875));
elseif _G._fJYFcQnO == __xor_decode("0d363c3d2a780f392c3d2a78112b3439363c", 88) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(61163.8515625, 11.6796875, 1819.7841796875));
elseif _G._fJYFcQnO == __xor_decode("1e372d362c393136781b312c21", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(5127.1284179688, 59.501365661621, 4105.4458007813));
elseif _G._fJYFcQnO == __xor_decode("0b30393633780a373735", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1442.16553, 29.8788261, -28.3547478));
elseif _G._fJYFcQnO == __xor_decode("15373a78112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2850.20068, 7.39224768, 5354.99268));
elseif _G._fJYFcQnO == __xor_decode("0c303d781b393e3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-380.47927856445, 77.220390319824, 255.82550048828));
elseif _G._fJYFcQnO == __xor_decode("1e2a312b2c780b28372c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-11.311455726624, 29.276733398438, 2771.5224609375));
elseif _G._fJYFcQnO == __xor_decode("1c392a3378192a3d39", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(3780.0302734375, 22.652164459229, -3498.5859375));
elseif _G._fJYFcQnO == __xor_decode("1e34393531363f37781539362b313736", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-483.73370361328, 332.0383605957, 595.32708740234));
elseif _G._fJYFcQnO == __xor_decode("1e34393531363f37780a373735", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(2284.4140625, 15.152037620544, 875.72534179688));
elseif _G._fJYFcQnO == __xor_decode("1f2a3d3d36780237363d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2448.5300292969, 73.016105651855, -3210.6306152344));
elseif _G._fJYFcQnO == __xor_decode("1e393b2c372a21", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(424.12698364258, 211.16171264648, -427.54049682617));
elseif _G._fJYFcQnO == __xor_decode("1b3734372b2b2d3135", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1503.6224365234, 219.7956237793, 1369.3101806641));
elseif _G._fJYFcQnO == __xor_decode("0237353a313d78112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-5622.033203125, 492.19604492188, -781.78552246094));
elseif _G._fJYFcQnO == __xor_decode("0c2f37780b36372f7815372d362c393136", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(753.14288330078, 408.23559570313, -5274.6147460938));
elseif _G._fJYFcQnO == __xor_decode("082d363378103922392a3c", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-6127.654296875, 15.951762199402, -5040.2861328125));
__dummy_ops(); -- obf
elseif _G._fJYFcQnO == __xor_decode("1b2d2a2b3d3c780b303128", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(923.40197753906, 125.05712890625, 32885.875));
elseif _G._fJYFcQnO == __xor_decode("113b3d781b392b2c343d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(6148.4116210938, 294.38687133789, -6741.1166992188));
__dummy_ops(); -- obf
elseif _G._fJYFcQnO == __xor_decode("1e372a3f372c2c3d3678112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-3032.7641601563, 317.89672851563, -10075.373046875));
elseif _G._fJYFcQnO == __xor_decode("0d2b2b372878112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(4816.8618164063, 8.4599885940552, 2863.8195800781));
elseif _G._fJYFcQnO == __xor_decode("15313631780b332178112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-288.74060058594, 49326.31640625, -35248.59375));
elseif _G._fJYFcQnO == __xor_decode("1f2a3d392c780c2a3d3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(2681.2736816406, 1682.8092041016, -7190.9853515625));
elseif _G._fJYFcQnO == __xor_decode("1b392b2c343d781736780c303d780b3d39", 88) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-5083.26025390625, 314.6056823730469, -3175.673095703125));
elseif _G._fJYFcQnO == __xor_decode("153136310b3321", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-260.65557861328, 49325.8046875, -35253.5703125));
elseif _G._fJYFcQnO == __xor_decode("08372a2c780c372f36", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-290.7376708984375, 6.729952812194824, 5343.5537109375));
elseif _G._fJYFcQnO == __xor_decode("10213c2a3978112b3439363c", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(5291.24951, 1005.4433, 393.762421, 0.994222522, 0.00000000945717726, -0.10733854, -0.00000000708227299, (math._tZOYIwmz(1.5)), 0.0000000225065655, 0.10733854, -0.0000000216163336, 0.994222522));
elseif _G._fJYFcQnO == __xor_decode("1e3437392c31363f780c2d2a2c343d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-13274.528320313, 531.82073974609, -7579.22265625));
elseif _G._fJYFcQnO == __xor_decode("1539362b313736", 88) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("2a3d292d3d2b2c1d362c2a39363b3d", 88), Vector3._nfGC8Yr2(-12471.169921875, 374.94024658203, -7551.677734375));
elseif _G._fJYFcQnO == __xor_decode("10392d362c3d3c781b392b2c343d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-9515.3720703125, 164.00624084473, 5786.0610351562));
elseif _G._fJYFcQnO == __xor_decode("113b3d781b2a3d393578112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-902.56817626953, 79.93204498291, -10988.84765625));
__dummy_ops(); -- obf
elseif _G._fJYFcQnO == __xor_decode("083d39362d2c78112b3439363c", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-2062.7475585938, 50.473892211914, -10232.568359375));
elseif _G._fJYFcQnO == __xor_decode("1b39333d78112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1884.7747802734375, 19.327526092529297, -11666.8974609375));
elseif _G._fJYFcQnO == __xor_decode("1b373b373978112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(87.94276428222656, 73.55451202392578, -12319.46484375));
__dummy_ops(); -- obf
elseif _G._fJYFcQnO == __xor_decode("1b39363c2178112b3439363c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1014.4241943359375, 149.11068725585938, -14555.962890625));
elseif _G._fJYFcQnO == __xor_decode("0c31333178172d2c28372b2c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 0.00000000110512588, -0.99813664, -0.0000000183458475, (math._tZOYIwmz(1.5)), 0.00000000222871765, 0.99813664, 0.0000000184476558, -0.0610186495));
elseif _G._fJYFcQnO == __xor_decode("1c2a393f3736781c373237", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(5743.31934, 1206.90991, 936.011047, 0.475779682, -0.00000000366404773, -0.879564524, 0.0000000254969592, (1 + 0), 0.00000000962622693, 0.879564524, -0.000000027006184, 0.475779682));
end;
until not _G._2tRvP52D;
end;
_LKYWqXFh(_G._2tRvP52D);
end
});
__dummy_ops(); -- obf
_5F5oOTND = _KIRfaTCx._0gcKxTh2:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("16283b", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
local _IkHIS13K = {};
if _dVBkh5d7 then
_IkHIS13K = {
__xor_decode("0a39363c3735781c3d2e3134781e2a2d312c", 88),
__xor_decode("1a343720781e2a2d312c2b781c3d39343d2a", 88),
__xor_decode("0a3d35372e3d781c3d2e3134781e2a2d312c", 88),
__xor_decode("193a3134312c21780c3d393b303d2a", 88),
__xor_decode("1c392a33780b2c3d28", 88),
__dummy_ops(); -- obf
__xor_decode("1d343d3b2c2a37", 88),
__xor_decode("1e312b303539367813392a392c3d", 88)
};
elseif _qMpv1cUt then
_IkHIS13K = {
__xor_decode("1c392a3f3736781a3d2a392c30", 88),
__xor_decode("152c2b2c3d2a31372d2b78153936", 88),
__xor_decode("15212b2c3d2a31372d2b780b3b313d362c312b2c", 88),
__xor_decode("192f39333d3631363f781d20283d2a2c", 88),
__xor_decode("163d2a3c", 88),
__xor_decode("1a392a78153936393f3d2a", 88),
__xor_decode("1a343720781e2a2d312c2b781c3d39343d2a", 88),
__xor_decode("0c2a3d2e372a", 88),
__xor_decode("1d363039363b3d353d362c781d3c312c372a", 88),
__xor_decode("08312a392c3d780a3d3b2a2d312c3d2a", 88),
__xor_decode("15392a31363d2b780a3d3b2a2d312c3d2a", 88),
__xor_decode("1b303d35312b2c", 88),
__xor_decode("1b213a372a3f", 88),
__xor_decode("1f30372d347815392a33", 88),
__xor_decode("1f2d392b30313d35", 88),
__xor_decode("1d3478193c353136", 88),
__xor_decode("1d34780a373c37343e37", 88),
__xor_decode("192a372f3d", 88)
};
elseif _UC8YJ6NP then
_IkHIS13K = {
__xor_decode("1a343720781e2a2d312c2b781c3d39343d2a", 88),
__xor_decode("0a3d35372e3d781c3d2e3134781e2a2d312c", 88),
__xor_decode("10372a363d3c78153936", 88),
__xor_decode("102d363f3d2178153936", 88),
__xor_decode("082a3d2e31372d2b78103d2a37", 88),
__xor_decode("1a2d2c343d2a", 88),
__xor_decode("142d36372e3d36", 88),
__xor_decode("0c2a3d2e372a", 88),
__xor_decode("1d34312c3d78102d362c3d2a", 88),
__xor_decode("083439213d2a78102d362c3d2a", 88),
__xor_decode("0d22372c30", 88)
};
end;
_Me0230b0 = _KIRfaTCx._0gcKxTh2:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d7816283b", 88),
_WmM52dug = _IkHIS13K,
_V7K9qQq7 = _IkHIS13K[(2 / 2)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._kwyNQep7 = _p5nxkYFQ;
end
});
_PhlbQz4q = _KIRfaTCx._0gcKxTh2:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c377816283b", 88),
_V7K9qQq7 = false,
_5ej7rGiD = function(_mspbXOZq)
_G._kaHlnP4M = _mspbXOZq;
if _G._kaHlnP4M then
repeat
wait();
if _G._kwyNQep7 == __xor_decode("1c392a3f3736781a3d2a392c30", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(703.372986, 186.985519, 654.522034, (2 / 2), ((100) - 100), (0 + 0), ((100) - 100), ((101) - 100), (0 / 2), ((100) - 100), (0 / 2), (1 + 0)));
elseif _G._kwyNQep7 == __xor_decode("152c2b2c3d2a31372d2b78153936", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -0.00000000906400288, 0.92552036, -0.00000000895582009, (math._tZOYIwmz(1.5)), 0.0000000134578926, -0.92552036, -0.0000000133852689, 0.378697902));
elseif _G._kwyNQep7 == __xor_decode("15212b2c3d2a31372d2b780b3b313d362c312b2c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-6437.87793, 250.645355, -4498.92773, 0.502376854, -0.0000000101223634, -0.864648759, 0.0000000234106086, (2 / 2), 0.00000000189508653, 0.864648759, -0.0000000211940012, 0.502376854));
elseif _G._kwyNQep7 == __xor_decode("192f39333d3631363f781d20283d2a2c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-408.098846, 16.0459061, 247.432846, 0.028394036, 0.000000000617599138, 0.999596894, -0.00000000557905944, (1 + 0), -0.000000000459372484, -0.999596894, -0.00000000556376767, 0.028394036));
elseif _G._kwyNQep7 == __xor_decode("163d2a3c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-401.783722, 73.0859299, 262.306702, (1 + 0), (0 + 0), ((100) - 100), ((100) - 100), (2 / 2), 0, ((100) - 100), (0 + 0), (math._tZOYIwmz(1.5))));
elseif _G._kwyNQep7 == __xor_decode("1a392a78153936393f3d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-385.84726, 73.0458984, 316.088806, (2 / 2), 0, (0 / 2), 0, (1 + 0), (0 / 2), ((100) - 100), 0, ((101) - 100)));
elseif _G._kwyNQep7 == __xor_decode("1a343720781e2a2d312c2b781c3d39343d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-450.725464, 73.0458984, 355.636902, -0.780352175, -0.000000027266168, 0.625340283, 0.00000000978516468, (2 / 2), 0.0000000558128797, -0.625340283, 0.0000000496727601, -0.780352175));
__dummy_ops(); -- obf
elseif _G._kwyNQep7 == __xor_decode("0c2a3d2e372a", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-341.498322, 331.886444, 643.024963, (1 + 0), ((100) - 100), ((100) - 100), 0, (2 / 2), (0 + 0), (0 + 0), 0, ((101) - 100)));
elseif _G._kwyNQep7 == __xor_decode("083437332b2c3d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1885.16016, 88.3838196, -1912.28723, -0.513468027, (0 + 0), 0.858108759, ((100) - 100), (2 / 2), ((100) - 100), -0.858108759, (0 / 2), -0.513468027));
elseif _G._kwyNQep7 == __xor_decode("1d363039363b3d353d362c781d3c312c372a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-346.820221, 72.9856339, 1194.36218, (1 + 0), ((100) - 100), 0, ((100) - 100), (1 + 0), 0, 0, (0 / 2), (2 / 2)));
elseif _G._kwyNQep7 == __xor_decode("08312a392c3d780a3d3b2a2d312c3d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-428.072998, 72.9495239, 1445.32422, (math._tZOYIwmz(1.5)), (0 + 0), 0, (0 + 0), (2 / 2), 0, (0 / 2), ((100) - 100), (2 / 2)));
elseif _G._kwyNQep7 == __xor_decode("15392a31363d2b780a3d3b2a2d312c3d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1349.77295, 72.9853363, -1045.12964, 0.866493046, (0 + 0), -0.499189168, 0, (2 / 2), (0 / 2), 0.499189168, (0 + 0), 0.866493046));
elseif _G._kwyNQep7 == __xor_decode("1b303d35312b2c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-2777.45288, 72.9919434, -3572.25732, ((101) - 100), ((100) - 100), (0 + 0), ((100) - 100), (1 + 0), ((100) - 100), 0, (0 + 0), (2 / 2)));
elseif _G._kwyNQep7 == __xor_decode("1f30372d347815392a33", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(635.172546, 125.976357, 33219.832, ((101) - 100), (0 + 0), 0, (0 + 0), (2 / 2), 0, ((100) - 100), 0, (1 + 0)));
elseif _G._kwyNQep7 == __xor_decode("1b213a372a3f", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(629.146851, 312.307373, -531.624146, (1 + 0), (0 / 2), (0 / 2), (0 / 2), (2 / 2), (0 / 2), 0, ((100) - 100), (math._tZOYIwmz(1.5))));
elseif _G._kwyNQep7 == __xor_decode("1f2d392b30313d35", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(937.953003, 181.083359, 33277.9297, (1 + 0), -0.0000000860126406, 0.0000000000000000381773896, 0.0000000860126406, (1 + 0), -0.000000000000000189969598, -0.000000000000000038177373, 0.000000000000000189969598, (1 + 0)));
elseif _G._kwyNQep7 == __xor_decode("1d3478193c353136", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(1322.80835, 126.345039, 33135.8789, 0.988783717, -0.0000000869797603, -0.149354503, 0.0000000862223786, ((101) - 100), -0.0000000115461916, 0.149354503, -0.00000000146101409, 0.988783717));
elseif _G._kwyNQep7 == __xor_decode("1d34780a373c37343e37", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(941.228699, 40.4686775, 32778.9922, -0.818029106, -0.0000000119524382, 0.575176775, -0.0000000128741648, (2 / 2), 0.00000000247053866, -0.575176775, -0.00000000538394795, -0.818029106));
elseif _G._kwyNQep7 == __xor_decode("192a372f3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1994.51038, 125.519142, -72.2622986, -0.16715166, -0.0000000655417338, -0.985931218, -0.0000000713315558, (1 + 0), -0.0000000543836585, 0.985931218, 0.0000000612376851, -0.16715166));
elseif _G._kwyNQep7 == __xor_decode("0a39363c3735781c3d2e3134781e2a2d312c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 0.0000000274216543, 0.829979479, 0.0000000583273234, (math._tZOYIwmz(1.5)), 0.00000000616037932, -0.829979479, 0.0000000518467118, -0.557794094));
elseif _G._kwyNQep7 == __xor_decode("1a343720781e2a2d312c2b781c3d39343d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-923.255066, 7.67800522, 1608.61011, (math._tZOYIwmz(1.5)), (0 + 0), ((100) - 100), 0, (2 / 2), 0, (0 / 2), 0, (1 + 0)));
elseif _G._kwyNQep7 == __xor_decode("0a3d35372e3d781c3d2e3134781e2a2d312c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(5664.80469, 64.677681, 867.85907, ((101) - 100), (0 / 2), (0 + 0), 0, (1 + 0), (0 + 0), (0 / 2), 0, ((101) - 100)));
elseif _G._kwyNQep7 == __xor_decode("193a3134312c21780c3d393b303d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -0.0000000926330159, 0.500262439, -0.0000000733759435, (2 / 2), 0.00000005816689, -0.500262439, 0.0000000136579752, -0.865874112));
elseif _G._kwyNQep7 == __xor_decode("1c392a33780b2c3d28", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-987.873047, 13.7778397, 3989.4978, (1 + 0), (0 + 0), (0 / 2), (0 / 2), (math._tZOYIwmz(1.5)), 0, ((100) - 100), ((100) - 100), (math._tZOYIwmz(1.5))));
elseif _G._kwyNQep7 == __xor_decode("1d343d3b2c2a37", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-5389.49561, 13.283, -2149.80151, (2 / 2), (0 + 0), (0 + 0), (0 / 2), (math._tZOYIwmz(1.5)), (0 / 2), 0, 0, ((101) - 100)));
elseif _G._kwyNQep7 == __xor_decode("1e312b303539367813392a392c3d", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(61581.8047, 18.8965912, 987.832703, ((101) - 100), ((100) - 100), ((100) - 100), ((100) - 100), (1 + 0), ((100) - 100), ((100) - 100), 0, (1 + 0)));
elseif _G._kwyNQep7 == __xor_decode("0a39363c3735781c3d2e3134781e2a2d312c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(12491 + 0), (674 / 2), -(14898 / 2)));
elseif _G._kwyNQep7 == __xor_decode("1a343720781e2a2d312c2b781c3d39343d2a", 88) then
__dummy_ops(); -- obf
_LbiBlaTO(CFrame._nfGC8Yr2(-(25022 / 2), ((437) - 100), -((7548) - 100)));
elseif _G._kwyNQep7 == __xor_decode("0a3d35372e3d781c3d2e3134781e2a2d312c", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-((5671) - 100), (2178 / 2), -(5322 / 2)));
elseif _G._kwyNQep7 == __xor_decode("10372a363d3c78153936", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-((11990) - 100), (math._tZOYIwmz(931.5)), -(8760 + 0)));
elseif _G._kwyNQep7 == __xor_decode("102d363f3d2178153936", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(math._tZOYIwmz(10919.5)), (math._tZOYIwmz(624.5)), -(10268 + 0)));
elseif _G._kwyNQep7 == __xor_decode("082a3d2e31372d2b78103d2a37", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(10368 + 0), (332 + 0), -(20256 / 2)));
elseif _G._kwyNQep7 == __xor_decode("1a2d2c343d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-((5225) - 100), (math._tZOYIwmz(316.5)), -((3230) - 100)));
elseif _G._kwyNQep7 == __xor_decode("142d36372e3d36", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(10234 / 2), (632 / 2), -((3193) - 100)));
elseif _G._kwyNQep7 == __xor_decode("1d34312c3d78102d362c3d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(5420 + 0), ((414) - 100), -(2828 + 0)));
elseif _G._kwyNQep7 == __xor_decode("083439213d2a78102d362c3d2a", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(11118 / 2), ((414) - 100), -(5680 / 2)));
elseif _G._kwyNQep7 == __xor_decode("0d22372c30", 88) then
_LbiBlaTO(CFrame._nfGC8Yr2(-(19570 / 2), (852 + 0), (6667 + 0)));
end;
until not _G._kaHlnP4M;
end;
_LKYWqXFh(_G._kaHlnP4M);
end
});
_Qrj5B8AI = _KIRfaTCx._idjxTD74:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1d2b28", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_UMJbSBfX = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b2878083439213d2a", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c78083439213d2a", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878083439213d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878083439213d2a", 88)] = _mspbXOZq;
end
});
_yv6E2u1P = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28781b303d2b2c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c781b303d2b2c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781b303d2b2c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781b303d2b2c", 88)] = _mspbXOZq;
end
});
__dummy_ops(); -- obf
_v4Qv7t8v = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28781c3d2e31341e2a2d312c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c781c3d2e31341e2a2d312c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781c3d2e31341e2a2d312c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781c3d2e31341e2a2d312c", 88)] = _mspbXOZq;
end
__dummy_ops(); -- obf
});
_ANJh6Fny = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28780a3d39341e2a2d312c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c780a3d39341e2a2d312c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780a3d39341e2a2d312c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780a3d39341e2a2d312c", 88)] = _mspbXOZq;
end
});
_yKL3DdeY = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28781e34372f3d2a", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c781e34372f3d2a", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781e34372f3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781e34372f3d2a", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
end
});
__dummy_ops(); -- obf
_KJqjHu7K = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b2878112b3439363c", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("10313f3034313f302c78112b3439363c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878112b3439363c", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878112b3439363c", 88)] = _mspbXOZq;
end
});
__dummy_ops(); -- obf
_zlfBlCh1 = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b287816283b", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("10313f3034313f302c7816283b", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087816283b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087816283b", 88)] = _mspbXOZq;
end
});
_qYTAfI1I = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28780b3d39781a3d392b2c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c780b3d391a3d392b2c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780b3d39781a3d392b2c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08780b3d39781a3d392b2c", 88)] = _mspbXOZq;
end
});
_moHU6dR3 = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28781537362b2c3d2a", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c781537362b2c3d2a", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781537362b2c3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781537362b2c3d2a", 88)] = _mspbXOZq;
end
});
_BUpAH5R0 = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b287815312a393f3d78112b3439363c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c7815312a393f3d78112b3439363c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087815312a393f3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087815312a393f3d", 88)] = _mspbXOZq;
end
});
_vsA3oLnx = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b287813312c2b2d363d78112b3439363c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c7813312c2b2d363d78112b3439363c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087813312c2b2d363d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b087813312c2b2d363d", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
end
});
_yiBil8vO = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b28781e2a37223d36781c31353d362b313736", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c781e2a37223d36781c31353d362b313736", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781e2a37223d36", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781e2a37223d36", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
end
});
_UQNJbRl9 = _KIRfaTCx._idjxTD74:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1d2b2878082a3d30312b2c372a313b78112b3439363c", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c78082a3d30312b2c372a313b78112b3439363c", 88),
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878082a3d30312b2c372a313b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b0878082a3d30312b2c372a313b", 88)] = _mspbXOZq;
end
});
_bJHIK2mD = _KIRfaTCx._idjxTD74:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1d2b28781f3d392a", 88),
_6PUHC437 = __xor_decode("10313f3034313f302c781f3d392a", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781f3d392a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Yc5GxRHk[__xor_decode("1d0b08781f3d392a", 88)] = _mspbXOZq;
end
});
_pFCCQ0v8 = _KIRfaTCx._RWsljJPO:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1c2a393f3736781c373237", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_fiHw527x = _KIRfaTCx._RWsljJPO:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88),
_6PUHC437 = __xor_decode("192d2c37781b373528343d392c3d78092d3d2b2c7873781b3734343d3b2c781a3439223d781d353a3d2a7803780b3d39786b78173634217805", 88),
_V7K9qQq7 = _G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
function _DUrmmZln()
local _TOcdBm2m = ((((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("15373c2d343d2b", 88))):_oS4sDmYc(__xor_decode("163d2c", 88))):_oS4sDmYc(__xor_decode("0a1e771c2a393f3736102d362c3d2a", 88))):_gYy0cacA({
_ClkTQ99f = __xor_decode("1b303d3b33", 88)
});
if _TOcdBm2m then
__dummy_ops(); -- obf
for _YETnTPNR, _Y8ipJ4Ym in pairs(_TOcdBm2m) do
if _YETnTPNR == __xor_decode("0c3d202c", 88) then
return _Y8ipJ4Ym;
end;
end;
end;
end;
function _gbGuFjNW()
local _PazUqVsF = ((((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("15373c2d343d2b", 88))):_oS4sDmYc(__xor_decode("163d2c", 88))):_oS4sDmYc(__xor_decode("0a1e771c2a393f3736102d362c3d2a", 88))):_gYy0cacA({
_ClkTQ99f = __xor_decode("0a3d292d3d2b2c092d3d2b2c", 88)
});
return _PazUqVsF;
end;
function _jbCtHMfc()
local _TOcdBm2m = ((((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("15373c2d343d2b", 88))):_oS4sDmYc(__xor_decode("163d2c", 88))):_oS4sDmYc(__xor_decode("0a1e771c2a393f3736102d362c3d2a", 88))):_gYy0cacA({
_ClkTQ99f = __xor_decode("1b303d3b33", 88)
__dummy_ops(); -- obf
});
if _TOcdBm2m then
for _YETnTPNR, _Y8ipJ4Ym in pairs(_TOcdBm2m) do
if _YETnTPNR == __xor_decode("0c3d202c", 88) then
if string._jiv09JBF(_Y8ipJ4Ym, __xor_decode("0e3d363735372d2b78192b2b39313439362c", 88)) or string._jiv09JBF(_Y8ipJ4Ym, __xor_decode("10213c2a39781d363e372a3b3d2a", 88)) or string._jiv09JBF(_Y8ipJ4Ym, __xor_decode("1c3d2b2c2a3721786968782c2a3d3d2b", 88)) then
return true;
end;
end;
end;
end;
return false;
end;
spawn(function()
while wait(0.2) do
if _G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)] then
pcall(function()
if not _G._IP3aiXv8 and (not _jbCtHMfc()) then
__dummy_ops(); -- obf
local _2rfJnBjC = CFrame._nfGC8Yr2(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, ((101) - 100), 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196);
_LbiBlaTO(_2rfJnBjC);
((((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("15373c2d343d2b", 88))):_oS4sDmYc(__xor_decode("163d2c", 88))):_oS4sDmYc(__xor_decode("0a1e771c2a393f3736102d362c3d2a", 88))):_gYy0cacA({
_ClkTQ99f = __xor_decode("0a3d292d3d2b2c092d3d2b2c", 88)
});
end;
_dwTncngD();
_G._IP3aiXv8 = true;
end);
end;
end;
end);
function _dwTncngD()
if string._jiv09JBF(_DUrmmZln(), __xor_decode("0e3d363735372d2b78192b2b39313439362c", 88)) then
_G._EFRrko4x = __xor_decode("0e3d363735372d2b78192b2b39313439362c", 88);
elseif string._jiv09JBF(_DUrmmZln(), __xor_decode("10213c2a39781d363e372a3b3d2a", 88)) then
_G._EFRrko4x = __xor_decode("10213c2a39781d363e372a3b3d2a", 88);
elseif string._jiv09JBF(_DUrmmZln(), __xor_decode("1c3d2b2c2a3721786968782c2a3d3d2b", 88)) then
__dummy_ops(); -- obf
_G._EFRrko4x = __xor_decode("1c3d2b2c2a3721786968782c2a3d3d2b", 88);
end;
end;
_G._IP3aiXv8 = false;
spawn(function()
while wait(0.2) do
if _tJUbeKab() then
_G._IP3aiXv8 = false;
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)] then
pcall(function()
__dummy_ops(); -- obf
if _G._EFRrko4x == __xor_decode("0e3d363735372d2b78192b2b39313439362c", 88) and _G._IP3aiXv8 then
_kDEyryOj();
elseif _G._EFRrko4x == __xor_decode("10213c2a39781d363e372a3b3d2a", 88) and _G._IP3aiXv8 then
_FpeFxQqB();
elseif _G._EFRrko4x == __xor_decode("1c3d2b2c2a3721786968782c2a3d3d2b", 88) and _G._IP3aiXv8 then
_AyqtADow();
end;
end);
__dummy_ops(); -- obf
end;
end;
__dummy_ops(); -- obf
end);
function _tJUbeKab()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._1O886gDJ._23XFfqmx:_5PPij5jV()) do
for _, _mmYjp4il in pairs(v:_5PPij5jV()) do
if string._jiv09JBF(_mmYjp4il._vkpN7NY2, __xor_decode("0c392b33783b373528343d2c3d3c79", 88)) or string._jiv09JBF(_mmYjp4il._vkpN7NY2, __xor_decode("103d393c783a393b33782c37782c303d781c373237", 88)) then
return true;
end;
end;
end;
return false;
end;
function _ooSJDEwa()
_CUKGivwE((((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_oS4sDmYc(__xor_decode("1d353a3d2a0c3d352834392c3d", 88))):_cVgfc2HD(__xor_decode("08392a2c", 88))).CFrame);
__dummy_ops(); -- obf
end;
function _kDEyryOj()
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0e3d363735372d2b78192b2b39313439362c", 88)) then
_LbiBlaTO(CFrame._nfGC8Yr2(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, (2 / 2), -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
else
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0e3d363735372d2b78192b2b39313439362c", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
v._aqi4OxxB._p4DwX85W = 0;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2((math._tZOYIwmz(1.5)), (1 + 0), (2 / 2));
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
__dummy_ops(); -- obf
until not v._48KJh7fv or v._aqi4OxxB._olQxbQJn <= (0 + 0) or (not _G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)]) or (not _G._IP3aiXv8);
end;
end;
end;
end;
__dummy_ops(); -- obf
end;
function _FpeFxQqB()
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("10213c2a39781d363e372a3b3d2a", 88)) then
_LbiBlaTO(CFrame._nfGC8Yr2(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, (math._tZOYIwmz(1.5)), -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
else
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if v._CJFCQjk5 == __xor_decode("10213c2a39781d363e372a3b3d2a", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
v._aqi4OxxB._p4DwX85W = 0;
v._JNHDC2Lw._QjwDF4M5 = Vector3._nfGC8Yr2(((101) - 100), (math._tZOYIwmz(1.5)), (math._tZOYIwmz(1.5)));
_RTvKUSlv = v._JNHDC2Lw.CFrame;
_Icjvmi0Z = v._CJFCQjk5;
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
until not v._48KJh7fv or v._aqi4OxxB._olQxbQJn <= (0 + 0) or (not _G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)]) or (not _G._IP3aiXv8);
end;
end;
end;
end;
end;
function _AyqtADow()
local _dHf49aPr = CFrame._nfGC8Yr2(5260.28223, 1004.24329, 347.062622, 0.923247099, -0.00000000370291953, 0.384206682, -0.000000000671108058, (math._tZOYIwmz(1.5)), 0.0000000112505019, -0.384206682, -0.0000000106448379, 0.923247099);
__dummy_ops(); -- obf
local _NH9ZIsbl = CFrame._nfGC8Yr2(5237.94775, 1004.24329, 429.596344, 0.371416599, 0.00000000207420636, 0.92846632, 0.00000000476562345, (2 / 2), -0.00000000414041734, -0.92846632, 0.00000000596254068, 0.371416599);
local _sGUufYPG = CFrame._nfGC8Yr2(5320.87793, 1004.24329, 439.152954, 0.136340275, -0.0000000995428806, -0.990662038, 0.0000000610136723, ((101) - 100), -0.0000000920841288, 0.990662038, -0.0000000478891593, 0.136340275);
local _dOZuXSos = CFrame._nfGC8Yr2(5346.70752, 1004.24329, 359.389008, 0.296962529, 0.0000000642768185, -0.954889119, -0.0000000737323518, ((101) - 100), 0.0000000443832349, 0.954889119, 0.0000000572260639, 0.296962529);
local _qKMrypX9 = (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame;
if (_qKMrypX9._WXvbXr4t - _dHf49aPr._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(3.5)) then
_PnavwlpY();
else
_LbiBlaTO(_dHf49aPr);
end;
if (_qKMrypX9._WXvbXr4t - _NH9ZIsbl._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(3.5)) then
_PnavwlpY();
else
__dummy_ops(); -- obf
_LbiBlaTO(_NH9ZIsbl);
end;
if (_qKMrypX9._WXvbXr4t - _sGUufYPG._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(3.5)) then
__dummy_ops(); -- obf
_PnavwlpY();
else
_LbiBlaTO(_sGUufYPG);
end;
if (_qKMrypX9._WXvbXr4t - _dOZuXSos._WXvbXr4t)._To53yerA <= ((103) - 100) then
_PnavwlpY();
else
__dummy_ops(); -- obf
_LbiBlaTO(_dOZuXSos);
end;
end;
_5e70w48K = false;
_wRVjqe4s = false;
_SITfUXqN = false;
_5iJQMt4F = false;
function _PnavwlpY()
if _SITfUXqN == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("1a343720781e2a2d312c", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
end;
end;
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait((0 / 2));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
__dummy_ops(); -- obf
wait(((100) - 100));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1b", 88), false, game);
__dummy_ops(); -- obf
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1b", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("0e", 88), false, game);
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("0e", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1e", 88), false, game);
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1e", 88), false, game);
_SITfUXqN = true;
end;
if _5iJQMt4F == false then
__dummy_ops(); -- obf
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("153d343d3d", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
__dummy_ops(); -- obf
end;
end;
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
wait(((100) - 100));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1b", 88), false, game);
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1b", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("0e", 88), false, game);
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("0e", 88), false, game);
_5iJQMt4F = true;
end;
if _wRVjqe4s == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("0b2f372a3c", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
end;
end;
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
__dummy_ops(); -- obf
wait(((100) - 100));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
wait((0 / 2));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
__dummy_ops(); -- obf
_wRVjqe4s = true;
end;
if _5e70w48K == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("1f2d36", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
end;
end;
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait(0.1);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
wait(0.1);
__dummy_ops(); -- obf
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
_5e70w48K = true;
end;
_5e70w48K = false;
_wRVjqe4s = false;
__dummy_ops(); -- obf
_SITfUXqN = false;
_5iJQMt4F = false;
end;
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._DM1G6bia[__xor_decode("192d2c37781e392a35781a3439223d781d353a3d2a", 88)] then
pcall(function()
if ((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_oS4sDmYc(__xor_decode("1d353a3d2a0c3d352834392c3d", 88))):_cVgfc2HD(__xor_decode("08392a2c", 88)) then
_ooSJDEwa();
end;
end);
end;
end;
end);
_YhBn1gjw = _KIRfaTCx._RWsljJPO:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c780e37343b3936313b7815393f363d2c", 88),
_5ej7rGiD = function()
(((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("0a3d35372c3d2b", 88))):_oS4sDmYc(__xor_decode("1b3735351e07", 88))):_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("0e37343b3936313b7815393f363d2c", 88));
end
});
_QbYwTFuC = _KIRfaTCx._4CUtGaLC:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b2a393e2c781b3735353736780b3b2a373434", 88),
_HwEwctDL = _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c781b3735353736780b3b2a373434", 88)] or false,
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("1b2a393e2c781b3735353736780b3b2a373434", 88),
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._CgykHioa = _G._j963CW1K._CgykHioa or {};
_G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c781b3735353736780b3b2a373434", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c781b3735353736780b3b2a373434", 88)] then
pcall(function()
repeat
wait((math._tZOYIwmz(1.5)));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("1b37353537360b3b2a373434", 88));
until not (_G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c781b3735353736780b3b2a373434", 88)]);
end);
end;
end;
end);
_KIRfaTCx._4CUtGaLC:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b2a393e2c780a392a3d780b3b2a373434", 88),
__dummy_ops(); -- obf
_HwEwctDL = _G._j963CW1K._BtjDKqdM and _G._j963CW1K._BtjDKqdM[__xor_decode("192d2c37781b2a393e2c780a392a3d780b3b2a373434", 88)] or false,
_6PUHC437 = __xor_decode("1b2a393e2c780a392a3d780b3b2a373434", 88),
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._BtjDKqdM = _G._j963CW1K._BtjDKqdM or {};
_G._j963CW1K._BtjDKqdM[__xor_decode("192d2c37781b2a393e2c780a392a3d780b3b2a373434", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c780a392a3d780b3b2a373434", 88)] then
pcall(function()
repeat
wait((math._tZOYIwmz(1.5)));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("0a392a3d0b3b2a373434", 88));
until not (_G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c780a392a3d780b3b2a373434", 88)]);
__dummy_ops(); -- obf
end);
end;
end;
end);
_KIRfaTCx._4CUtGaLC:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88),
_HwEwctDL = _G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88)] or false,
_6PUHC437 = __xor_decode("1b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88),
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._CgykHioa = _G._j963CW1K._CgykHioa or {};
_G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88)] then
pcall(function()
__dummy_ops(); -- obf
repeat
wait((math._tZOYIwmz(1.5)));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("143d3f3d363c392a210b3b2a373434", 88));
until not (_G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c78143d3f3d363c392a21780b3b2a373434", 88)]);
end);
__dummy_ops(); -- obf
end;
end;
end);
_KIRfaTCx._4CUtGaLC:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b2a393e2c7815212c30313b3934780b3b2a373434", 88),
_HwEwctDL = _G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c7815212c30313b3934780b3b2a373434", 88)] or false,
_6PUHC437 = __xor_decode("1b2a393e2c7815212c30313b3934780b3b2a373434", 88),
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._CgykHioa = _G._j963CW1K._CgykHioa or {};
_G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c7815212c30313b3934780b3b2a373434", 88)] = _Y8ipJ4Ym;
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c7815212c30313b3934780b3b2a373434", 88)] then
pcall(function()
repeat
wait((2 / 2));
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("15212c30313b39340b3b2a373434", 88));
until not (_G._j963CW1K._CgykHioa and _G._j963CW1K._CgykHioa[__xor_decode("192d2c37781b2a393e2c7815212c30313b3934780b3b2a373434", 88)]);
end);
end;
end;
end);
_KIRfaTCx._4CUtGaLC:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c78143d2e31392c303936781b2a372f36", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("143d2e31392c3039361b2a372f36", 88));
end
__dummy_ops(); -- obf
});
_KIRfaTCx._4CUtGaLC:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c78143d2e31392c303936780b30313d343c", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("143d2e31392c3039360b30313d343c", 88));
end
});
_KIRfaTCx._4CUtGaLC:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c781a3d392b2c78102d362c3d2a", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("1a3d392b2c102d362c3d2a", 88));
end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_KIRfaTCx._4CUtGaLC:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c780c37372c3078163d3b3334393b3d", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("0c37372c30163d3b3334393b3d", 88));
end
});
_KIRfaTCx._4CUtGaLC:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c780c3d2a2a372a7812392f", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("0c3d2a2a372a12392f", 88));
end
});
_KIRfaTCx._4CUtGaLC:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b2a393e2c781537362b2c3d2a7815393f363d2c", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b2a393e2c112c3d35", 88), __xor_decode("1b2a393e2c", 88), __xor_decode("1537362b2c3d2a15393f363d2c", 88));
end
});
local _A494TJ9x = _KIRfaTCx._9pvClqvT:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b3d39781d2e3d362c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
local _Z73Q1gEq = {
__xor_decode("1f2d392a3c313936", 88),
__xor_decode("1a3d392b2c78102d362c3d2a", 88),
__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88),
__xor_decode("15392a31363d1f2a39363c1a2a313f393c3d", 88),
__xor_decode("08312a392c3d1a2a313f393c3d", 88),
__xor_decode("15392a31363d1a2a313f393c3d", 88),
__xor_decode("08312a392c3d0b34373728", 88),
__xor_decode("15392a31363d0b34373728", 88)
};
local _KZ2TZEVp = {
__xor_decode("0237363d7869", 88),
__xor_decode("0237363d786a", 88),
__xor_decode("0237363d786b", 88),
__xor_decode("0237363d786c", 88),
__xor_decode("0237363d786d", 88),
__dummy_ops(); -- obf
__xor_decode("0237363d786e", 88),
__xor_decode("363134363134", 88)
};
_gNEPzKnG = _KIRfaTCx._9pvClqvT:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d781a37392c", 88),
__dummy_ops(); -- obf
_WmM52dug = _Z73Q1gEq,
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
_puklaW5H = _KIRfaTCx._9pvClqvT:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("1b3037372b3d780237363d", 88),
_WmM52dug = _KZ2TZEVp,
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
_kFWkTlJE = _KIRfaTCx._9pvClqvT:_l6YNnZJz({
_Z8lr3wnx = __xor_decode("1a37392c780c2f3d3d36780b283d3d3c", 88),
_mEE2DdbD = (math._tZOYIwmz(1.5)),
_V7K9qQq7 = {
_WVDUM05A = (math._tZOYIwmz(1.5)),
_NUxXt7G7 = (math._tZOYIwmz(350.5)),
_HwEwctDL = _G._j963CW1K._VcpqruWZ[__xor_decode("1a37392c780c2f3d3d36780b283d3d3c", 88)]
},
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._VcpqruWZ[__xor_decode("1a37392c780c2f3d3d36780b283d3d3c", 88)] = _Y8ipJ4Ym;
end
});
_kNhEejdx = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b393134781a37392c", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("192d2c37780b393134781a37392c787e7813313434781d363d35313d2b", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)]);
(_XeukPFgw())._l6Y55PD1();
if not _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] then
__dummy_ops(); -- obf
_G._dtivledw = false;
_ZfKSfZif = false;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end
});
local _JTfgxkRz;
__dummy_ops(); -- obf
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("0237363d7869", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -0.000000000236509201, -0.991110802, -0.0569955558, 0.120211802);
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("0237363d786a", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -0.000000000415334017, -0.949422479, -0.0606706589, 0.308084518);
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("0237363d786b", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 0.0000000000270896673, -0.925605655, -0.0370079502, 0.376675636);
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("0237363d786c", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("0237363d786d", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -0.00000000139882339, -0.981290519, -0.0365765914, -0.189026669);
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("0237363d786e", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372);
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c780237363d", 88)] == __xor_decode("113c33", 88) then
_JTfgxkRz = CFrame._nfGC8Yr2(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (2 / 2), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536);
__dummy_ops(); -- obf
end;
end;
end);
end);
function _QFXwAHip()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_5PPij5jV()) do
if v._CJFCQjk5 == _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)] then
for _, _25FQTmR3 in pairs(v:_5PPij5jV()) do
if _25FQTmR3._CJFCQjk5 == __xor_decode("15211a37392c1d2b28", 88) then
return v;
end;
end;
end;
end;
return false;
end;
function _SwgMbXms()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88)) or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88)) then
return true;
end;
return false;
end;
function _fNHQvtmB()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("0b30392a33", 88) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0b30392a33", 88)) then
if (v._JNHDC2Lw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(200.5)) then
return true;
end;
end;
end;
end;
return false;
__dummy_ops(); -- obf
end;
function _OmzOgVAV()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == __xor_decode("08312a39363039", 88) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a39363039", 88)) then
if (v._JNHDC2Lw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= ((300) - 100) then
return true;
end;
end;
end;
end;
return false;
end;
function _qqrYEmcb(_CJFCQjk5, _48KJh7fv)
local _3ac8rKtz = Instance._nfGC8Yr2(__xor_decode("1a3134343a37392a3c1f2d31", 88));
local _vk8ciq28 = Instance._nfGC8Yr2(__xor_decode("0c3d202c14393a3d34", 88));
_3ac8rKtz._48KJh7fv = _48KJh7fv;
_3ac8rKtz._hIkG914A = Enum._hIkG914A._vhwFfuIo;
_3ac8rKtz._xHiOvf5x = true;
_3ac8rKtz._CJFCQjk5 = _CJFCQjk5;
_3ac8rKtz._4F0Z3f3x = true;
_3ac8rKtz._uOzkdd21 = (math._tZOYIwmz(1.5));
_3ac8rKtz._QjwDF4M5 = UDim2._nfGC8Yr2(((100) - 100), ((300) - 100), (0 / 2), (50 + 0));
_3ac8rKtz._XzyrhGis = Vector3._nfGC8Yr2(0, 2.5, 0);
__dummy_ops(); -- obf
_vk8ciq28._48KJh7fv = _3ac8rKtz;
_vk8ciq28._0iYzCEWj = Color3._BP3ABtRj((510 / 2), (510 / 2), ((355) - 100));
__dummy_ops(); -- obf
_vk8ciq28._2Rg3u3nw = (math._tZOYIwmz(1.5));
_vk8ciq28._QjwDF4M5 = UDim2._nfGC8Yr2((1 + 0), ((100) - 100), (2 / 2), (0 + 0));
_vk8ciq28._aM9vazja = Enum._aM9vazja._qSW9VN23;
_vk8ciq28._NZUvAahs = Color3._BP3ABtRj((255 + 0), (255 + 0), (255 + 0));
_vk8ciq28._Pq3Ln353 = (15 + 0);
_vk8ciq28._vkpN7NY2 = __xor_decode("", 88);
end;
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] then
if not _QFXwAHip() then
local _Cq8gNZv4 = CFrame._nfGC8Yr2(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (_Cq8gNZv4._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > (2000 + 0) then
_YlsPFxYH(_Cq8gNZv4);
else
_pRT3zTzW = _LbiBlaTO(_Cq8gNZv4);
end;
if ((CFrame._nfGC8Yr2((-16927.451171875), 9.0863618850708, 433.8642883300781))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (20 / 2) then
if _pRT3zTzW then
_pRT3zTzW:_Aiy1S0Kw();
end;
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a37392c", 88), _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]);
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_5PPij5jV()) do
if v._CJFCQjk5 == _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)] then
if (v._jkEBAkhw.CFrame._WXvbXr4t - (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (200 / 2) then
_qqrYEmcb(__xor_decode("15211a37392c1d2b28", 88), v);
__dummy_ops(); -- obf
end;
end;
end;
wait((math._tZOYIwmz(1.5)));
end;
elseif _QFXwAHip() then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_5PPij5jV()) do
if v._CJFCQjk5 == _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)] then
if v:_cVgfc2HD(__xor_decode("15211a37392c1d2b28", 88)) then
if (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == false then
if _fNHQvtmB() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c3d2a2a372a2b30392a33", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] or _OmzOgVAV() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b30781b2a3d2f78153d353a3d2a", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)] or _QYzasBAr() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] then
if _6ElkOkQu then
_6ElkOkQu:_Aiy1S0Kw();
end;
else
_6ElkOkQu = _LbiBlaTO(v._jkEBAkhw.CFrame * CFrame._nfGC8Yr2((0 / 2), ((101) - 100), 0));
end;
else
repeat
wait();
__dummy_ops(); -- obf
_LfZ8Bgx5 = _aELwbCFL(_JTfgxkRz);
until _fNHQvtmB() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c3d2a2a372a2b30392a33", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] or _OmzOgVAV() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b30781b2a3d2f78153d353a3d2a", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)] or _QYzasBAr() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] or (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == false or _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] == false;
if _LfZ8Bgx5 then
_LfZ8Bgx5:_Aiy1S0Kw();
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, (math._tZOYIwmz(32.5)), false, game);
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, ((132) - 100), false, game);
end;
end;
end;
end;
end;
end;
end);
end;
end);
spawn(function()
__dummy_ops(); -- obf
pcall(function()
while wait(0.2) do
if _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] then
if _fNHQvtmB() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c3d2a2a372a2b30392a33", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] or _OmzOgVAV() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b30781b2a3d2f78153d353a3d2a", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)] or (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)] or _QYzasBAr() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] then
if game.Players._qLJftmnl._PXAw1fga._aqi4OxxB._FvNgPp3m == true then
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, ((132) - 100), false, game);
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, (32 + 0), false, game);
end;
end;
__dummy_ops(); -- obf
end;
end;
end);
end);
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
if _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] then
__dummy_ops(); -- obf
pcall(function()
if _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b30781b2a3d2f78153d353a3d2a", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b30781b2a3d2f78153d353a3d2a", 88)) then
if v._CJFCQjk5 == __xor_decode("1e312b30781b2a3d2f78153d353a3d2a", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
__dummy_ops(); -- obf
_G._dtivledw = false;
until not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end;
end;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88)) then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
local _FvX7afGa = v._jYrsalCS.CFrame;
if (_FvX7afGa._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (100 / 2) then
__dummy_ops(); -- obf
_G._dtivledw = true;
else
_G._dtivledw = false;
end;
_LbiBlaTO(_FvX7afGa);
_XOIOiZrU();
_ZfKSfZif = true;
_J2Wqd1Pm = v._jYrsalCS.CFrame * CFrame._nfGC8Yr2((0 + 0), (-((115) - 100)), (0 / 2));
_3dFKra9N = _J2Wqd1Pm._WXvbXr4t;
__dummy_ops(); -- obf
until not v._48KJh7fv or v._olQxbQJn < (0 / 2) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("1e312b301a37392c", 88))) or (not v:_cVgfc2HD(__xor_decode("1d363f31363d", 88))) or (not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)]);
_ZfKSfZif = false;
_G._dtivledw = false;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
local _FvX7afGa = v._jYrsalCS.CFrame;
_XOIOiZrU();
if (_FvX7afGa._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(50.5)) then
_G._dtivledw = true;
else
_G._dtivledw = false;
end;
_LbiBlaTO(_FvX7afGa);
_ZfKSfZif = true;
_J2Wqd1Pm = v._jYrsalCS.CFrame * CFrame._nfGC8Yr2(((100) - 100), (-(30 / 2)), ((100) - 100));
_3dFKra9N = _J2Wqd1Pm._WXvbXr4t;
until not v._48KJh7fv or v._olQxbQJn._V7K9qQq7 < (0 + 0) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1f2a39363c1a2a313f393c3d", 88))) or (not v:_cVgfc2HD(__xor_decode("1d363f31363d", 88))) or (not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)]);
_ZfKSfZif = false;
_G._dtivledw = false;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88)) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
local _FvX7afGa = v._jYrsalCS.CFrame;
__dummy_ops(); -- obf
if (_FvX7afGa._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(50.5)) then
_G._dtivledw = true;
else
_G._dtivledw = false;
end;
_LbiBlaTO(_FvX7afGa);
__dummy_ops(); -- obf
_ZfKSfZif = true;
_XOIOiZrU();
_J2Wqd1Pm = v._jYrsalCS.CFrame * CFrame._nfGC8Yr2((0 / 2), (-(15 + 0)), (0 + 0));
_3dFKra9N = _J2Wqd1Pm._WXvbXr4t;
until not v._48KJh7fv or v._olQxbQJn._V7K9qQq7 < (0 + 0) or (not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a392c3d1a2a313f393c3d", 88))) or (not v:_cVgfc2HD(__xor_decode("1d363f31363d", 88))) or (not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)]);
__dummy_ops(); -- obf
_ZfKSfZif = false;
_G._dtivledw = false;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and _QYzasBAr() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_cVgfc2HD(__xor_decode("0b3d391a3d392b2c2b", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D:_5PPij5jV()) do
if _QYzasBAr() then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_VhHpBhrw = v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), ((500) - 100), ((100) - 100));
if (_VhHpBhrw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame._WXvbXr4t)._To53yerA <= (400 + 0) then
_G._dtivledw = true;
else
_G._dtivledw = false;
end;
_XOIOiZrU();
_ZfKSfZif = true;
_3dFKra9N = v._JNHDC2Lw.CFrame._WXvbXr4t;
if _ZXKBKWEQ() then
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(math._GrCIW9U1((-(400 / 2)), (math._tZOYIwmz(300.5))), ((500) - 100), math._GrCIW9U1((-(400 / 2)), (math._tZOYIwmz(300.5)))));
else
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (800 / 2), ((100) - 100)));
end;
until not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] or _QYzasBAr() == false or (not v:_cVgfc2HD(__xor_decode("102d35393637313c", 88))) or (not v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88))) or v._aqi4OxxB._olQxbQJn <= 0 or (not v._48KJh7fv);
_ZfKSfZif = false;
_G._dtivledw = false;
else
_ZfKSfZif = false;
_G._dtivledw = false;
end;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c3d2a2a372a2b30392a33", 88)) and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0c3d2a2a372a2b30392a33", 88)) then
if v._CJFCQjk5 == __xor_decode("0c3d2a2a372a2b30392a33", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > ((100) - 100) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
__dummy_ops(); -- obf
_gChUopcS();
_G._dtivledw = false;
_LbiBlaTO(v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2((0 / 2), (math._tZOYIwmz(50.5)), (0 + 0)));
until not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= ((100) - 100);
end;
end;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and _OmzOgVAV() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("08312a39363039", 88)) then
if v._CJFCQjk5 == __xor_decode("08312a39363039", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 / 2) then
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
__dummy_ops(); -- obf
_gChUopcS();
_G._dtivledw = false;
until not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
end;
end;
end;
elseif _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] and _fNHQvtmB() and _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)] then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_cVgfc2HD(__xor_decode("0b30392a33", 88)) then
if v._CJFCQjk5 == __xor_decode("0b30392a33", 88) then
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > (0 + 0) then
__dummy_ops(); -- obf
repeat
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_XOIOiZrU();
_jFSmbcsg(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
_LbiBlaTO(v._JNHDC2Lw.CFrame * _YuU8D8tp);
_gChUopcS();
_G._dtivledw = false;
until not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)] or (not v._48KJh7fv) or v._aqi4OxxB._olQxbQJn <= 0;
end;
end;
end;
end;
else
_ZfKSfZif = false;
_G._dtivledw = false;
__dummy_ops(); -- obf
_vOBaWFHT(_G._j963CW1K._azX2ob7h[__xor_decode("0b3d343d3b2c3d3c780f3d39283736", 88)]);
end;
end);
end;
__dummy_ops(); -- obf
end;
end);
function _ZXKBKWEQ()
local _883jIsTx = (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D;
for _, _xZfHUODZ in pairs(_883jIsTx:_5PPij5jV()) do
if _xZfHUODZ:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and _xZfHUODZ:_cVgfc2HD(__xor_decode("193631352b", 88)) then
local _TM4FPp54 = _xZfHUODZ._aqi4OxxB;
local _rJWr90l1 = _TM4FPp54:_ssY1d4Jx(__xor_decode("19363135392c372a", 88)) or _TM4FPp54;
for _, _M9DdXfPF in pairs(_xZfHUODZ._ZcbCFLZ7:_5PPij5jV()) do
if _M9DdXfPF:_2K0UehsO(__xor_decode("19363135392c313736", 88)) then
if _M9DdXfPF._kCfXvKGP == __xor_decode("2a3a20392b2b3d2c313c627777606f68606a6a696f616a", 88) or _M9DdXfPF._kCfXvKGP == __xor_decode("2a3a20392b2b3d2c313c627777606f68606a6a6a6d6d6e", 88) or _M9DdXfPF._kCfXvKGP == __xor_decode("2a3a20392b2b3d2c313c627777606f68606a6a6b6e6961", 88) or _M9DdXfPF._kCfXvKGP == __xor_decode("2a3a20392b2b3d2c313c627777606f68606a6a6d6e6e60", 88) then
for _, _WZQNvgSi in pairs(_rJWr90l1:_mEMMWiLV()) do
if _WZQNvgSi._fshogISr._kCfXvKGP == _M9DdXfPF._kCfXvKGP then
if _WZQNvgSi._I1Rm30ho then
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
_DeOJrSmy = _KIRfaTCx._9pvClqvT:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1d363d35313d2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_XWuzkoEb = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35780b30392a33", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b30392a33", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_GAMgBdxf = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a357808312a39363039", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a39363039", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_ROmiXzqd = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781e312b30781b2a3d2f78153d353a3d2a", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
_ivcTLudm = _KIRfaTCx._9pvClqvT:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1a37392c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_GR0gopca = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35781f30372b2c780b303128", 88)]);
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
_hTgnsKSD = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781a2a313f393c3d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_ItITJYkJ = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a357808312a392c3d781f2a39363c781a2a313f393c3d", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_aYhLHBTv = _KIRfaTCx._9pvClqvT:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1a372b2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_Rrj0HJAV = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780c3d2a2a372a2b30392a33", 88)]);
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
_5AQKVomO = _KIRfaTCx._9pvClqvT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88),
_V7K9qQq7 = _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._VcpqruWZ[__xor_decode("192d2c37781e392a35780b3d393a3d392b2c2b", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_ioAWh4br = _KIRfaTCx._Y2Xouwe3:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b3d39780b2c393b33", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
spawn(function()
pcall(function()
while wait(0.2) do
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("15312a393f3d78112b3439363c", 88)) then
_kOIaaOZm:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad77815312a393f3d78112b3439363c780b28392f3631363f", 88));
else
_kOIaaOZm:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9ad79bda9ac59bdb9af79bda9ae09bda9ad77815312a393f3d78112b3439363c7816372c780b28392f36", 88));
end;
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("13312c2b2d363d78112b3439363c", 88)) then
_Ozl81Vcr:_rZJ3kCPC(__xor_decode("9bdb9afa9bfa9ad89ae29bda9af19bdb9af79bda9ae09bda9ad77813312c2b2d363d78112b3439363c780b28392f3631363f", 88));
else
_Ozl81Vcr:_rZJ3kCPC(__xor_decode("9bdb9afa9bfa9ad89ae29bda9af19bdb9af79bda9ae09bda9ad77813312c2b2d363d78112b3439363c7816372c780b28392f36", 88));
end;
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("1e2a37223d36781c31353d362b313736", 88)) then
_LOUM2yfG:_rZJ3kCPC(__xor_decode("9bdb9afa9bda9ac59bfa9ad89ac69bdb9af79bda9ae09bda9ad7781e2a37223d36781c31353d362b313736780b28392f3631363f", 88));
else
_LOUM2yfG:_rZJ3kCPC(__xor_decode("9bdb9afa9bda9ac59bfa9ad89ac69bdb9af79bda9ae09bda9ad7781e2a37223d36781c31353d362b3137367816372c780b28392f36", 88));
end;
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b78112b3439363c", 88)) then
__dummy_ops(); -- obf
_s8EvBXXf:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9afe9bda9aec78082a3d30312b2c372a313b78112b3439363c780b28392f3631363f", 88));
else
_s8EvBXXf:_rZJ3kCPC(__xor_decode("9bdb9ae89bdd9ae09bda9afe9bda9aec78082a3d30312b2c372a313b78112b3439363c7816372c780b28392f36", 88));
end;
end;
end);
end);
_s8EvBXXf = _KIRfaTCx._Y2Xouwe3:_jirAYobi({
_Z8lr3wnx = __xor_decode("082a3d30312b2c372a313b780b2c392c2d2b", 88),
__dummy_ops(); -- obf
_6PUHC437 = __xor_decode("167719", 88)
});
_vRiYKPQE = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88),
_6PUHC437 = __xor_decode("163d3d3c780e37343b3936313b7815393f363d2c", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88)] and _UC8YJ6NP then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]) then
local _Cq8gNZv4 = CFrame._nfGC8Yr2(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (_Cq8gNZv4._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > ((2100) - 100) then
__dummy_ops(); -- obf
_YlsPFxYH(_Cq8gNZv4);
else
_pRT3zTzW = _LbiBlaTO(_Cq8gNZv4);
end;
if ((CFrame._nfGC8Yr2((-16927.451171875), 9.0863618850708, 433.8642883300781))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (math._tZOYIwmz(10.5)) then
if _pRT3zTzW then
_pRT3zTzW:_Aiy1S0Kw();
end;
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a37392c", 88), _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]);
wait(((101) - 100));
end;
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]) then
repeat
wait();
if (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == false then
__dummy_ops(); -- obf
if _1PMIU9DS then
_1PMIU9DS:_Aiy1S0Kw();
__dummy_ops(); -- obf
end;
local _6ElkOkQu = _LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]))._jkEBAkhw.CFrame * CFrame._nfGC8Yr2((0 + 0), (1 + 0), (0 + 0)));
elseif (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == true then
_1PMIU9DS = _aELwbCFL(CFrame._nfGC8Yr2(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, ((101) - 100), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
end;
until not _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d3535373678082a3d30312b2c372a313b78112b3439363c", 88)] or game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b78112b3439363c", 88));
if _1PMIU9DS then
_1PMIU9DS:_Aiy1S0Kw();
end;
end;
end;
end);
end;
end);
_MEeWKUfg = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c2f3d3d36780c3778082a3d30312b2c372a313b78112b3439363c", 88),
_6PUHC437 = __xor_decode("163d3d3c780b28392f36", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c3778082a3d30312b2c372a313b78112b3439363c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c3778082a3d30312b2c372a313b78112b3439363c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c3778082a3d30312b2c372a313b78112b3439363c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
spawn(function()
while wait() do
if _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c3778082a3d30312b2c372a313b78112b3439363c", 88)] then
pcall(function()
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b78112b3439363c", 88)) then
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b78112b3439363c", 88))).CFrame);
end;
end);
end;
end;
end);
_G._Trlyb84Z = false
_tSqht1dX = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c3778133134347814392e39781f37343d35", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778133134347814392e39781f37343d35", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778133134347814392e39781f37343d35", 88)] = _mspbXOZq
_G._PmktSyn3 = _mspbXOZq
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778133134347814392e39781f37343d35", 88)])
_XeukPFgw()._l6Y55PD1()
end
})
function _laGXGLjK()
local _4Mp8LaNF = game.Players._qLJftmnl
local _UHwrPuvD = _4Mp8LaNF._PXAw1fga or _4Mp8LaNF._WUMUl6Gh:_gJ7wDLdV()
if _UHwrPuvD:_ssY1d4Jx(__xor_decode("0c373734", 88)) then
__dummy_ops(); -- obf
return true
end
__dummy_ops(); -- obf
if _4Mp8LaNF._EraV8csx:_ssY1d4Jx(__xor_decode("0c373734", 88)) then
_UHwrPuvD._aqi4OxxB:_Ns7wbIn7(_4Mp8LaNF._EraV8csx:_ssY1d4Jx(__xor_decode("0c373734", 88)))
return true
__dummy_ops(); -- obf
end
return false
end
spawn(function()
while wait(0.5) do
if _G._Trlyb84Z then
pcall(function()
local _IOWt1OVb = nil
for _, _xpihD6X2 in pairs(workspace._rmNzQJ0M:_5PPij5jV()) do
__dummy_ops(); -- obf
if _xpihD6X2._CJFCQjk5 == __xor_decode("14392e39781f37343d35", 88) and _xpihD6X2:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and _xpihD6X2:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and _xpihD6X2._aqi4OxxB._olQxbQJn > ((100) - 100) then
_IOWt1OVb = _xpihD6X2
__dummy_ops(); -- obf
break
end
end
if not _IOWt1OVb then
if workspace:_cVgfc2HD(__xor_decode("153928", 88)) and workspace._RgOmVefG:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b112b3439363c", 88)) then
__dummy_ops(); -- obf
for _, v in pairs(workspace._RgOmVefG._O0I9KyQB:_uamye779()) do
if v._CJFCQjk5 == __xor_decode("14392e39781f37343d35", 88) and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn > 0 then
_IOWt1OVb = v
break
end
end
end
end
if _IOWt1OVb and _IOWt1OVb:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and _IOWt1OVb:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and _IOWt1OVb._aqi4OxxB._olQxbQJn > (0 + 0) then
local _4Mp8LaNF = game.Players._qLJftmnl
local _UHwrPuvD = _4Mp8LaNF._PXAw1fga or _4Mp8LaNF._WUMUl6Gh:_gJ7wDLdV()
local _jXOokZnS = _UHwrPuvD:_oS4sDmYc(__xor_decode("102d35393637313c0a37372c08392a2c", 88))
local _eYEeTPiS = _IOWt1OVb._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(((100) - 100), (16 / 2), (math._tZOYIwmz(10.5)))
_KgmNjJ4d(_eYEeTPiS)
wait(0.5)
__dummy_ops(); -- obf
_laGXGLjK()
for i = (1 + 0), (math._tZOYIwmz(5.5)) do
game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88)):_UrBqrXrh()
game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88)):_O3xWyo05(Vector2._nfGC8Yr2((math._tZOYIwmz(1000.5)), (1000 + 0)))
wait(0.3)
end
wait((2 / 2))
__dummy_ops(); -- obf
for _, _uLlLzUI7 in pairs(workspace:_5PPij5jV()) do
if _uLlLzUI7:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) and (_uLlLzUI7._CJFCQjk5:_jiv09JBF(__xor_decode("1c2a3728", 88)) or _uLlLzUI7._CJFCQjk5:_jiv09JBF(__xor_decode("1b303d2b2c", 88)))
and (_uLlLzUI7._WXvbXr4t - _IOWt1OVb._JNHDC2Lw._WXvbXr4t)._To53yerA < ((150) - 100) then
__dummy_ops(); -- obf
_KgmNjJ4d(CFrame._nfGC8Yr2(_uLlLzUI7._WXvbXr4t))
wait(0.5)
end
end
else
if workspace:_cVgfc2HD(__xor_decode("153928", 88)) and workspace._RgOmVefG:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b112b3439363c", 88)) then
local _I4e2TVgn = nil
for _, _nJSu0PE8 in pairs(workspace._RgOmVefG._O0I9KyQB:_uamye779()) do
if _nJSu0PE8:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) and
(_nJSu0PE8._CJFCQjk5:_jiv09JBF(__xor_decode("0b332d3434", 88)) or _nJSu0PE8._CJFCQjk5:_jiv09JBF(__xor_decode("1a37363d", 88)) or _nJSu0PE8._CJFCQjk5:_jiv09JBF(__xor_decode("1c313637", 88))) then
_I4e2TVgn = _nJSu0PE8
break
end
end
if _I4e2TVgn then
_KgmNjJ4d(_I4e2TVgn.CFrame)
else
local _Ccv76bJh = CFrame._nfGC8Yr2(-(4000 / 2), (50 + 0), -((6700) - 100))
_KgmNjJ4d(_Ccv76bJh)
end
wait(((103) - 100))
end
end
end)
end
end
end)
function _TMJbVfiE(_H9dG6vcD, _XqfLixNQ)
local _jXOokZnS = game.Players._qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88))
if _jXOokZnS and _H9dG6vcD then
return (_jXOokZnS._WXvbXr4t - _H9dG6vcD._WXvbXr4t)._To53yerA <= _XqfLixNQ
end
return false
end
_OYglaWCX = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c377813313434780a3d34313b", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c377813313434780a3d34313b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c377813313434780a3d34313b", 88)] = _mspbXOZq
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c377813313434780a3d34313b", 88)])
_XeukPFgw()._l6Y55PD1()
end
})
spawn(function()
while wait(0.1) do
if _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c377813313434780a3d34313b", 88)] then
__dummy_ops(); -- obf
local _qLJftmnl = game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl
local ReplicatedStorage = game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))
__dummy_ops(); -- obf
local RunService = game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88))
local _ThlZtF51 = game:_F5KpSZDL(__xor_decode("0e312a2c2d39340d2b3d2a", 88))
local _N4KQlE00 = game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))
local function _XOIOiZrU()
__dummy_ops(); -- obf
if not _qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("10392b1a2d2b37", 88)) then
ReplicatedStorage._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d2b37", 88))
end
end
local function _gChUopcS()
__dummy_ops(); -- obf
_ThlZtF51:_UrBqrXrh()
_ThlZtF51:_O3xWyo05(Vector2._nfGC8Yr2(((951) - 100), ((258) - 100)), _N4KQlE00._wledWLu5.CFrame)
local _f6ytAPCu = pcall(function()
if ReplicatedStorage._25dHNRHR:_cVgfc2HD(__xor_decode("192c2c393b33", 88)) then
ReplicatedStorage._25dHNRHR._V2valdRt:_vN6IYDgr()
__dummy_ops(); -- obf
end
__dummy_ops(); -- obf
if ReplicatedStorage._25dHNRHR:_cVgfc2HD(__xor_decode("1b37353a392c", 88)) then
ReplicatedStorage._25dHNRHR._sVE4dRoh:_vN6IYDgr()
end
end)
local function _GcjGotin(_YETnTPNR)
_ThlZtF51:_UrBqrXrh()
_ThlZtF51:_oNv0rYD5(_YETnTPNR)
wait(0.01)
_ThlZtF51:_k0gh8Wxo(_YETnTPNR)
end
_GcjGotin(__xor_decode("22", 88))
wait(0.01)
_GcjGotin(__xor_decode("20", 88))
if _qLJftmnl._PXAw1fga and _qLJftmnl._PXAw1fga:_ssY1d4Jx(__xor_decode("0c373734", 88)) then
__dummy_ops(); -- obf
local _qGtw52US = _qLJftmnl._PXAw1fga:_ssY1d4Jx(__xor_decode("0c373734", 88))
if _qGtw52US:_cVgfc2HD(__xor_decode("0a3d35372c3d1b34313b33", 88)) then
__dummy_ops(); -- obf
_qGtw52US._ojRBMk6i:_vN6IYDgr()
end
if _qGtw52US:_cVgfc2HD(__xor_decode("0a3d35372c3d1e2d363b2c313736", 88)) then
_qGtw52US._k2mGgBSU:_gYy0cacA(__xor_decode("1b34313b33", 88))
end
end
end
local function _zLbZeRIa()
local _108aNzIx = nil
for _, v in pairs(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._1O886gDJ:_uamye779()) do
__dummy_ops(); -- obf
if v:_2K0UehsO(__xor_decode("0c3d202c14393a3d34", 88)) and (v._vkpN7NY2:_jiv09JBF(__xor_decode("0a3d34313b78103d39342c30", 88)) or v._vkpN7NY2:_jiv09JBF(__xor_decode("0e37343b39363778082a3d2b2b2d2a3d", 88))) then
_108aNzIx = v
break
end
end
if _108aNzIx then
__dummy_ops(); -- obf
local _pz8vtO94 = game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)):_cVgfc2HD(__xor_decode("0a3d34313b", 88)) or
game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)):_cVgfc2HD(__xor_decode("0e37343b3936370a3d34313b", 88)) or
__dummy_ops(); -- obf
game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)):_cVgfc2HD(__xor_decode("0b3d390a3d34313b", 88))
if _pz8vtO94 then return _pz8vtO94 end
end
for _, v in pairs(_N4KQlE00:_uamye779()) do
if v._CJFCQjk5 == __xor_decode("14392e39", 88) or v._CJFCQjk5 == __xor_decode("14392e391037343d", 88) or v._CJFCQjk5 == __xor_decode("0a3d34313b", 88) or
__dummy_ops(); -- obf
v._CJFCQjk5 == __xor_decode("0a3d34313b1a392b3d", 88) or v._CJFCQjk5 == __xor_decode("0e37343b3936313b0c392a3f3d2c", 88) then
__dummy_ops(); -- obf
return v
end
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) and v:_ssY1d4Jx(__xor_decode("082a37203135312c21082a3735282c", 88)) then
__dummy_ops(); -- obf
local _Q8HAzDZ1 = v:_ssY1d4Jx(__xor_decode("082a37203135312c21082a3735282c", 88))
if _Q8HAzDZ1._iDosBfFk:_fFCoEJJj():_jiv09JBF(__xor_decode("392c2c393b33", 88)) or _Q8HAzDZ1._iDosBfFk:_fFCoEJJj():_jiv09JBF(__xor_decode("30312c", 88)) then
__dummy_ops(); -- obf
return v
end
end
end
__dummy_ops(); -- obf
for _, v in pairs(_N4KQlE00:_uamye779()) do
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
if (v._1mI5G0yY.R > 0.8 and v._1mI5G0yY.G < 0.3 and v._1mI5G0yY.B < 0.3) and v._HenamT3N < 0.5 then
if v._QjwDF4M5._To53yerA > (math._tZOYIwmz(5.5)) then
return v
end
end
end
end
for _, v in pairs(_N4KQlE00:_uamye779()) do
if (string._ZgAZ1I7Y(v._CJFCQjk5:_fFCoEJJj(), __xor_decode("2a3d34313b", 88)) or
string._ZgAZ1I7Y(v._CJFCQjk5:_fFCoEJJj(), __xor_decode("34392e39", 88)) or
string._ZgAZ1I7Y(v._CJFCQjk5:_fFCoEJJj(), __xor_decode("2e37343b393637", 88)) or
string._ZgAZ1I7Y(v._CJFCQjk5:_fFCoEJJj(), __xor_decode("3037343d", 88))) and
(v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) or v:_2K0UehsO(__xor_decode("15373c3d34", 88))) then
return v
end
end
return nil
end
local function _KbBEiUAO(_H9dG6vcD, _T7LFTada)
_T7LFTada = _T7LFTada or (math._tZOYIwmz(5.5))  -
if not _H9dG6vcD or not _qLJftmnl._PXAw1fga or not _qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
return false
end
local _kDn2rugw
if _H9dG6vcD:_2K0UehsO(__xor_decode("15373c3d34", 88)) and _H9dG6vcD:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) then
__dummy_ops(); -- obf
_kDn2rugw = _H9dG6vcD._JNHDC2Lw._WXvbXr4t
__dummy_ops(); -- obf
elseif _H9dG6vcD:_2K0UehsO(__xor_decode("15373c3d34", 88)) and _H9dG6vcD._wE0aCNiF then
_kDn2rugw = _H9dG6vcD._wE0aCNiF._WXvbXr4t
elseif _H9dG6vcD:_2K0UehsO(__xor_decode("15373c3d34", 88)) then
local _Y8Nx4VhW = {}
for _, _nJSu0PE8 in pairs(_H9dG6vcD:_uamye779()) do
if _nJSu0PE8:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
table._lwzCRDUx(_Y8Nx4VhW, _nJSu0PE8._WXvbXr4t)
end
end
if #_Y8Nx4VhW > (0 / 2) then
local _HmgmK4gw = Vector3._nfGC8Yr2((0 / 2), 0, (0 / 2))
for _, _BnkCBKni in ipairs(_Y8Nx4VhW) do
_HmgmK4gw = _HmgmK4gw + _BnkCBKni
end
_kDn2rugw = _HmgmK4gw / #_Y8Nx4VhW
else
__dummy_ops(); -- obf
local _v2nvrjOS = _H9dG6vcD:_XrfdXEXc()
_kDn2rugw = _v2nvrjOS._WXvbXr4t
end
else
_kDn2rugw = _H9dG6vcD._WXvbXr4t
end
local _ac8aYHmm = Vector3._nfGC8Yr2(_kDn2rugw.X, _kDn2rugw.Y + (math._tZOYIwmz(5.5)), _kDn2rugw.Z)
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(_ac8aYHmm)
wait(0.1)
__dummy_ops(); -- obf
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(
_qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t,
__dummy_ops(); -- obf
_kDn2rugw
)
wait(0.1)
local _ezDO18Lf = (_kDn2rugw - _qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._1pMKU56j
local _IBmFmiUw = _kDn2rugw - _ezDO18Lf * _T7LFTada
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(_IBmFmiUw, _kDn2rugw)
local _d3eNKuOh = (2 / 2)
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(_kDn2rugw - _ezDO18Lf * _d3eNKuOh, _kDn2rugw)
wait(0.1)
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._L8AuMq8c(
_qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t,
_kDn2rugw
)
return true
__dummy_ops(); -- obf
end
local _fpf7sTu9
local function _PLfAtpGq()
if _fpf7sTu9 then _fpf7sTu9:_6a8RDjRG() end
_fpf7sTu9 = RunService._P5sj2uPT:_CEVggw7o(function()
if _qLJftmnl._PXAw1fga then
for _, v in pairs(_qLJftmnl._PXAw1fga:_uamye779()) do
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
v._5rDNyh0H = false
end
end
end
end)
end
local function _ZzzzKUHW()
if not _qLJftmnl._PXAw1fga or
not _qLJftmnl._PXAw1fga:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) or
_qLJftmnl._PXAw1fga._aqi4OxxB._olQxbQJn <= (0 / 2) then
return
end
local _UCRWRCQa = false
for _, v in pairs(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._1O886gDJ:_uamye779()) do
if v:_2K0UehsO(__xor_decode("0c3d202c14393a3d34", 88)) and (
(v._vkpN7NY2 and (v._vkpN7NY2:_jiv09JBF(__xor_decode("0a3d34313b78103d39342c30", 88)) or v._vkpN7NY2:_jiv09JBF(__xor_decode("0e37343b39363778082a3d2b2b2d2a3d", 88)))) or
(v._CJFCQjk5 and (v._CJFCQjk5:_jiv09JBF(__xor_decode("0a3d34313b103d39342c30", 88)) or v._CJFCQjk5:_jiv09JBF(__xor_decode("0e37343b3936370d11", 88))))
) then
_UCRWRCQa = true
break
end
end
__dummy_ops(); -- obf
if not _UCRWRCQa then
for _, v in pairs(game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))._qLJftmnl._1O886gDJ:_uamye779()) do
if v:_2K0UehsO(__xor_decode("0c3d202c14393a3d34", 88)) and v._vkpN7NY2 and v._vkpN7NY2:_jiv09JBF(__xor_decode("0c31353d78143d3e2c", 88)) then
_UCRWRCQa = true
break
end
end
__dummy_ops(); -- obf
end
if _UCRWRCQa then
_PLfAtpGq()
_XOIOiZrU()
local _H9dG6vcD = _zLbZeRIa()
if _H9dG6vcD then
if _KbBEiUAO(_H9dG6vcD, ((103) - 100)) then
for i = ((101) - 100), (20 / 2) do
_gChUopcS()
wait(0.05)
end
end
else
local _h9NACMsn = {
{_BnkCBKni = Vector3._nfGC8Yr2((5500 + 0), ((400) - 100), -(math._tZOYIwmz(6000.5))), _XqfLixNQ = (100 / 2)},
{_BnkCBKni = Vector3._nfGC8Yr2(((5600) - 100), ((450) - 100), -((6100) - 100)), _XqfLixNQ = (math._tZOYIwmz(50.5))},
{_BnkCBKni = Vector3._nfGC8Yr2((11000 / 2), (800 / 2), -(6000 + 0)), _XqfLixNQ = (100 / 2)},
{_BnkCBKni = Vector3._nfGC8Yr2((math._tZOYIwmz(5500.5)), (math._tZOYIwmz(450.5)), -(math._tZOYIwmz(6000.5))), _XqfLixNQ = (50 + 0)},
{_BnkCBKni = Vector3._nfGC8Yr2(((5600) - 100), (1000 / 2), -(6000 + 0)), _XqfLixNQ = (100 / 2)},
{_BnkCBKni = Vector3._nfGC8Yr2((11000 / 2), ((650) - 100), -((6100) - 100)), _XqfLixNQ = (math._tZOYIwmz(50.5))}
__dummy_ops(); -- obf
}
for _, _sZE6hU0o in ipairs(_h9NACMsn) do
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(_sZE6hU0o._BnkCBKni)
wait(0.2)
for _0BKkdgEB = ((100) - 100), (359 + 0), (180 / 2) do
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(_sZE6hU0o._BnkCBKni) * CFrame._ramCwUrF(((100) - 100), math._C9vcFUKj(_0BKkdgEB), (0 / 2))
wait(0.1)
_H9dG6vcD = _zLbZeRIa()
if _H9dG6vcD then
if _KbBEiUAO(_H9dG6vcD, ((103) - 100)) then
for i = (1 + 0), (10 + 0) do
_gChUopcS()
wait(0.05)
end
return
end
end
end
for _p1Yw9iJ9 = (10 + 0), _sZE6hU0o._XqfLixNQ, (10 + 0) do
for _0BKkdgEB = 0, (359 + 0), (90 + 0) do
local _KMzLLPJ7 = Vector3._nfGC8Yr2(
__dummy_ops(); -- obf
math._6pPfJbBJ(math._C9vcFUKj(_0BKkdgEB)) * _p1Yw9iJ9,
(0 / 2),
math._BkbmBa7r(math._C9vcFUKj(_0BKkdgEB)) * _p1Yw9iJ9
)
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2(_sZE6hU0o._BnkCBKni + _KMzLLPJ7)
wait(0.1)
_H9dG6vcD = _zLbZeRIa()
if _H9dG6vcD then
if _KbBEiUAO(_H9dG6vcD, ((103) - 100)) then
for i = (math._tZOYIwmz(1.5)), (math._tZOYIwmz(10.5)) do
_gChUopcS()
wait(0.05)
__dummy_ops(); -- obf
end
return
end
end
end
__dummy_ops(); -- obf
end
end
_qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = CFrame._nfGC8Yr2((11000 / 2), (400 + 0), -(12000 / 2))
end
else
__dummy_ops(); -- obf
end
__dummy_ops(); -- obf
end
_ZzzzKUHW()
end
__dummy_ops(); -- obf
end
end)
_sdSojN68 = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b3734343d3b2c781a37363d", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c781a37363d", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c781a37363d", 88)] = _mspbXOZq
_G._ex52x78x = _mspbXOZq
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c781a37363d", 88)])
_XeukPFgw()._l6Y55PD1()
end
})
spawn(function()
while wait((math._tZOYIwmz(1.5))) do
if _G._ex52x78x then
__dummy_ops(); -- obf
pcall(function()
for _, _YMGTCyHG in pairs(workspace:_uamye779()) do
if _YMGTCyHG:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) and _YMGTCyHG._CJFCQjk5 == __xor_decode("1c3136371a37363d", 88) then
__dummy_ops(); -- obf
_KgmNjJ4d(CFrame._nfGC8Yr2(_YMGTCyHG._WXvbXr4t))
__dummy_ops(); -- obf
wait((1 + 0))
local _T7LFTada = (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - _YMGTCyHG._WXvbXr4t)._To53yerA
if _T7LFTada <= (5 + 0) then
game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88)):_UNx2hisa(true, __xor_decode("1d", 88), false, game)
wait(0.5)
game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88)):_UNx2hisa(false, __xor_decode("1d", 88), false, game)
wait(((101) - 100))
end
end
end
end)
end
end
end)
_eXD2xOtF = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b3734343d3b2c781d3f3f", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c781d3f3f", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c781d3f3f", 88)] = _mspbXOZq
_G._Wbi44Y4o = _mspbXOZq
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c781d3f3f", 88)])
_XeukPFgw()._l6Y55PD1()
end
})
spawn(function()
while wait((2 / 2)) do
if _G._Wbi44Y4o then
pcall(function()
__dummy_ops(); -- obf
local _nhm1yCS5 = workspace._RgOmVefG._O0I9KyQB._2X9HaObo._BkCA5RSd:_5PPij5jV()
if #_nhm1yCS5 > (0 + 0) then
local _zSeKoS60 = _nhm1yCS5[math._GrCIW9U1((math._tZOYIwmz(1.5)), #_nhm1yCS5)]
if _zSeKoS60:_2K0UehsO(__xor_decode("15373c3d34", 88)) and _zSeKoS60._wE0aCNiF then
_KgmNjJ4d(_zSeKoS60._wE0aCNiF.CFrame)
wait((2 / 2))
local _T7LFTada = (game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t - _zSeKoS60._wE0aCNiF._WXvbXr4t)._To53yerA
if _T7LFTada <= (10 / 2) then
game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88)):_UNx2hisa(true, __xor_decode("1d", 88), false, game)
wait(1.5)
game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88)):_UNx2hisa(false, __xor_decode("1d", 88), false, game)
wait((math._tZOYIwmz(1.5)))
end
end
end
for i = 1, 0 do end
__dummy_ops(); -- obf
end)
end
end
__dummy_ops(); -- obf
end)
__dummy_ops(); -- obf
_LOUM2yfG = _KIRfaTCx._Y2Xouwe3:_jirAYobi({
_Z8lr3wnx = __xor_decode("1e2a37223d36780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_TAfhYoag = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)] and _UC8YJ6NP then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]) then
local _Cq8gNZv4 = CFrame._nfGC8Yr2(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (_Cq8gNZv4._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > ((2100) - 100) then
__dummy_ops(); -- obf
_YlsPFxYH(_Cq8gNZv4);
else
_pRT3zTzW = _LbiBlaTO(_Cq8gNZv4);
end;
if ((CFrame._nfGC8Yr2((-16927.451171875), 9.0863618850708, 433.8642883300781))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (20 / 2) then
if _pRT3zTzW then
_pRT3zTzW:_Aiy1S0Kw();
end;
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a37392c", 88), _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]);
wait((math._tZOYIwmz(1.5)));
end;
__dummy_ops(); -- obf
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]) then
repeat
wait();
if (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == false then
if _Rz8jBdKJ then
_Rz8jBdKJ:_Aiy1S0Kw();
end;
local _6ElkOkQu = _LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]))._jkEBAkhw.CFrame * CFrame._nfGC8Yr2(0, ((101) - 100), 0));
elseif (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == true then
_Rz8jBdKJ = _aELwbCFL(CFrame._nfGC8Yr2(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (2 / 2), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
__dummy_ops(); -- obf
end;
until not _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d35353736781e2a37223d36781c31353d362b313736", 88)] or game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("1e2a37223d36781c31353d362b313736", 88));
__dummy_ops(); -- obf
if _Rz8jBdKJ then
_Rz8jBdKJ:_Aiy1S0Kw();
end;
end;
end;
end);
end;
end);
__dummy_ops(); -- obf
_mL3qWNbR = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88)] then
pcall(function()
repeat
wait();
_LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("1e2a37223d36781c31353d362b313736", 88))).CFrame);
until not _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c37781e2a37223d36781c31353d362b313736", 88)];
end);
end;
end;
end);
_P3L5Uha8 = _KIRfaTCx._Y2Xouwe3:_jirAYobi({
_Z8lr3wnx = __xor_decode("143d2e31392c303936780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("68", 88)
});
_QxUOCprZ = _KIRfaTCx._Y2Xouwe3:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1a2a313a3d78143d2e31392c303936", 88),
_5ej7rGiD = function()
local _eMZp281W = (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("11363e37143d2e31392c303936", 88), __xor_decode("6a", 88));
_P3L5Uha8:_rZJ3kCPC(_eMZp281W);
end
});
_Ozl81Vcr = _KIRfaTCx._Y2Xouwe3:_jirAYobi({
_Z8lr3wnx = __xor_decode("13312c2b2d363d780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_RuDH0JMe = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
_NV9OjfZB = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377813312c2b2d363d78112b3439363c", 88)] and _UC8YJ6NP then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG:_cVgfc2HD(__xor_decode("13312c2b2d363d112b3439363c", 88)) then
_LbiBlaTO(game._N4KQlE00._RgOmVefG._UhOwlAOM._lEhjnZNE._Abr3L5fP.CFrame * CFrame._nfGC8Yr2(((100) - 100), ((100) - 100), ((110) - 100)));
end;
end;
end;
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)] and _UC8YJ6NP then
if not (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]) then
local _Cq8gNZv4 = CFrame._nfGC8Yr2(-16927.451171875, 9.0863618850708, 433.8642883300781);
__dummy_ops(); -- obf
if (_Cq8gNZv4._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA > ((2100) - 100) then
_YlsPFxYH(_Cq8gNZv4);
else
_RuLF18yR = _LbiBlaTO(_Cq8gNZv4);
end;
__dummy_ops(); -- obf
if ((CFrame._nfGC8Yr2((-16927.451171875), 9.0863618850708, 433.8642883300781))._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw._WXvbXr4t)._To53yerA <= (20 / 2) then
if _RuLF18yR then
_RuLF18yR:_Aiy1S0Kw();
end;
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1a2d211a37392c", 88), _G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]);
wait(((101) - 100));
end;
elseif (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]) then
repeat
wait();
if (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == false then
if _2Y4E9l2w then
_2Y4E9l2w:_Aiy1S0Kw();
end;
local _6ElkOkQu = _LbiBlaTO(((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_cVgfc2HD(_G._j963CW1K._VcpqruWZ[__xor_decode("0b3d343d3b2c3d3c781a37392c", 88)]))._jkEBAkhw.CFrame * CFrame._nfGC8Yr2((0 / 2), (math._tZOYIwmz(1.5)), 0));
elseif (game.Players._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("102d35393637313c", 88)))._FvNgPp3m == true then
_2Y4E9l2w = _aELwbCFL(CFrame._nfGC8Yr2(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372));
end;
until not _G._j963CW1K._IFbzW1Dd[__xor_decode("0b2d353537367813312c2b2d363d78112b3439363c", 88)] or game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("13312c2b2d363d78112b3439363c", 88));
if _2Y4E9l2w then
__dummy_ops(); -- obf
_2Y4E9l2w:_Aiy1S0Kw();
__dummy_ops(); -- obf
end;
end;
end;
end);
end;
end);
_wHrSANDR = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37781b3734343d3b2c7819222d2a3d781d353a3d2a", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c7819222d2a3d781d353a3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c7819222d2a3d781d353a3d2a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37781b3734343d3b2c7819222d2a3d781d353a3d2a", 88)] and _UC8YJ6NP then
pcall(function()
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_cVgfc2HD(__xor_decode("192c2c393b303d3c19222d2a3d1d353a3d2a", 88)) then
_LbiBlaTO((((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_oS4sDmYc(__xor_decode("1d353a3d2a0c3d352834392c3d", 88))):_cVgfc2HD(__xor_decode("08392a2c", 88))).CFrame);
end;
end);
end;
end;
end);
_dad4pLJl = _KIRfaTCx._Y2Xouwe3:_l6YNnZJz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0b3d2c7819222d2a3d781d353a3d2a", 88),
_mEE2DdbD = (math._tZOYIwmz(1.5)),
_V7K9qQq7 = {
_WVDUM05A = (math._tZOYIwmz(1.5)),
_NUxXt7G7 = (25 + 0),
_HwEwctDL = _G._j963CW1K._IFbzW1Dd[__xor_decode("0b3d2c7819222d2a3d781d353a3d2a", 88)]
},
_5ej7rGiD = function(_Y8ipJ4Ym)
_G._j963CW1K._IFbzW1Dd[__xor_decode("0b3d2c7819222d2a3d781d353a3d2a", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
__dummy_ops(); -- obf
end
});
__dummy_ops(); -- obf
_4doE3h6X = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780c2a393c3d7819222d2a3d781d353a3d2a", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37780c2a393c3d7819222d2a3d781d353a3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37780c2a393c3d7819222d2a3d781d353a3d2a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
function _ZqShlJQJ(_HtXAeYLM)
local _nwmXTsUt = (game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("3f3d2c11362e3d362c372a21", 88));
for i, v in pairs(_nwmXTsUt) do
__dummy_ops(); -- obf
if v._CJFCQjk5 == _HtXAeYLM then
return v._gkwOZA5b;
end;
end;
end;
spawn(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c37780c2a393c3d7819222d2a3d781d353a3d2a", 88)] and _UC8YJ6NP then
pcall(function()
__dummy_ops(); -- obf
local _3bjyMOqN = _ZqShlJQJ(__xor_decode("19222d2a3d781d353a3d2a", 88));
if _3bjyMOqN >= _G._j963CW1K._IFbzW1Dd[__xor_decode("0b3d2c7819222d2a3d781d353a3d2a", 88)] then
((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._cRFoTNMj._YFJuoBoF:_cVgfc2HD(__xor_decode("0a1e7713312c2b2d363d0b2c392c2d3d082a3921", 88))):_gYy0cacA();
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("13312c2b2d363d0b2c392c2d3d082a3921", 88));
__dummy_ops(); -- obf
end;
end);
__dummy_ops(); -- obf
end;
end;
end);
_kOIaaOZm = _KIRfaTCx._Y2Xouwe3:_jirAYobi({
_Z8lr3wnx = __xor_decode("15312a393f3d780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_Ku8jOl8O = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
function _LIXdVXrg()
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG._bziFetUU:_uamye779()) do
__dummy_ops(); -- obf
if v:_2K0UehsO(__xor_decode("153d2b3008392a2c", 88)) then
if v._sc5Yny63 == __xor_decode("2a3a20392b2b3d2c313c6277776e6f6c6d686b6f6f616e", 88) then
return v;
end;
end;
end;
end;
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._3tuTG4jB[__xor_decode("0c2f3d3d36780c377810313f303d2b2c7815312a393f3d", 88)] then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG:_cVgfc2HD(__xor_decode("15212b2c313b112b3439363c", 88)) then
_LbiBlaTO((_LIXdVXrg()).CFrame * CFrame._nfGC8Yr2(((100) - 100), 211.88, (0 / 2)));
end;
end;
end;
__dummy_ops(); -- obf
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
__dummy_ops(); -- obf
if _G._j963CW1K._3tuTG4jB[__xor_decode("0c2f3d3d36780c377815312a393f3d78112b3439363c", 88)] then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG:_cVgfc2HD(__xor_decode("15212b2c313b112b3439363c", 88)) then
_LbiBlaTO((_LIXdVXrg()).CFrame * CFrame._nfGC8Yr2((0 / 2), 211.88, ((100) - 100)));
end;
end;
end;
local __tbl = {}; __tbl[#__tbl + 1] = 'HWS' -- junk
__dummy_ops(); -- obf
end);
end);
_DqyOcPp7 = _KIRfaTCx._Y2Xouwe3:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b3d39781a3d392b2c2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_N3335PUj = _KIRfaTCx._Y2Xouwe3:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88),
_V7K9qQq7 = _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)] = _mspbXOZq;
_LKYWqXFh(_G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)]);
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
pcall(function()
while wait() do
__dummy_ops(); -- obf
if _G._j963CW1K._IFbzW1Dd[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)] and (_qMpv1cUt or _UC8YJ6NP) then
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_cVgfc2HD(__xor_decode("0b3d391a3d392b2c2b", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D:_5PPij5jV()) do
if _QYzasBAr() then
repeat
__dummy_ops(); -- obf
(game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88)))._qmLtN496:wait();
_VhHpBhrw = v._JNHDC2Lw.CFrame * CFrame._nfGC8Yr2(0, (400 / 2), (0 / 2));
if (_VhHpBhrw._WXvbXr4t - game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame._WXvbXr4t)._To53yerA <= ((500) - 100) then
_G._dtivledw = true;
else
_G._dtivledw = false;
end;
__dummy_ops(); -- obf
_XOIOiZrU();
_ZfKSfZif = true;
_3dFKra9N = v._JNHDC2Lw.CFrame._WXvbXr4t;
if _wEhRzAEs then
_LbiBlaTO(_VhHpBhrw * CFrame._nfGC8Yr2(math._GrCIW9U1(((200) - 100), (300 + 0)), (100 + 0), math._GrCIW9U1((math._tZOYIwmz(100.5)), (math._tZOYIwmz(300.5)))));
else
__dummy_ops(); -- obf
_LbiBlaTO(_VhHpBhrw * CFrame._nfGC8Yr2((0 / 2), (math._tZOYIwmz(100.5)), ((100) - 100)));
end;
until not _G._j963CW1K._VcpqruWZ[__xor_decode("192d2c3778192c2c393b33780b3d393a3d392b2c2b", 88)] or _QYzasBAr() == false or (not v:_cVgfc2HD(__xor_decode("102d35393637313c", 88))) or (not v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88))) or v._aqi4OxxB._olQxbQJn < (0 + 0) or (not v._48KJh7fv);
_ZfKSfZif = false;
_G._dtivledw = false;
else
__dummy_ops(); -- obf
_ZfKSfZif = false;
_G._dtivledw = false;
__dummy_ops(); -- obf
end;
end;
end;
end;
end;
end);
end);
_G45n4biJ = _KIRfaTCx._0CqxghAk:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b3d2c2c31363f780b3d39", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_7WqsTuS0 = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("14313f302c3631363f", 88),
_V7K9qQq7 = _G._j963CW1K._Y5uieFbZ._MZKKI1iz,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ._MZKKI1iz = _mspbXOZq;
end
__dummy_ops(); -- obf
});
local RunService = game:_F5KpSZDL(__xor_decode("0a2d360b3d2a2e313b3d", 88));
RunService._qmLtN496:_CEVggw7o(function()
local Lighting = game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88));
if _G._j963CW1K._Y5uieFbZ._MZKKI1iz then
Lighting._rC01eUg5 = ((112) - 100);
end;
end);
__dummy_ops(); -- obf
_o2E385Vi = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("11363b2a3d392b3d780b283d3d3c781a37392c", 88),
_V7K9qQq7 = _G._j963CW1K._Y5uieFbZ[__xor_decode("11363b2a3d392b3d780b283d3d3c781a37392c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("11363b2a3d392b3d780b283d3d3c781a37392c", 88)] = _mspbXOZq;
end
});
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
pcall(function()
local _7QWFy4kZ = {};
for i, v in pairs(game._N4KQlE00._ndlVJNpa:_uamye779()) do
if v:_2K0UehsO(__xor_decode("0e3d30313b343d0b3d392c", 88)) then
table._lwzCRDUx(_7QWFy4kZ, v);
end;
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("11363b2a3d392b3d781a37392c780b283d3d3c", 88)] then
__dummy_ops(); -- obf
for _, v in pairs(_7QWFy4kZ) do
v._4jLiQxMr = ((450) - 100);
end;
else
for _, v in pairs(_7QWFy4kZ) do
v._4jLiQxMr = (math._tZOYIwmz(150.5));
end;
end;
end);
end;
end);
_bworaMuy = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1637781b343128780a373b33", 88),
_V7K9qQq7 = _G._j963CW1K._Y5uieFbZ[__xor_decode("1637781b343128780a373b33", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("1637781b343128780a373b33", 88)] = _mspbXOZq;
end
});
__dummy_ops(); -- obf
spawn(function()
while wait(0.2) do
pcall(function()
for i, _Qzk5Lrgx in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa:_5PPij5jV()) do
for _, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._ndlVJNpa[_Qzk5Lrgx._CJFCQjk5]:_uamye779()) do
if v:_2K0UehsO(__xor_decode("1a392b3d08392a2c", 88)) then
if _G._j963CW1K._Y5uieFbZ[__xor_decode("1637781b343128780a373b33", 88)] or _G._j963CW1K._VcpqruWZ[__xor_decode("0b393134781a37392c", 88)] then
v._5rDNyh0H = false;
else
__dummy_ops(); -- obf
v._5rDNyh0H = true;
end;
end;
__dummy_ops(); -- obf
end;
__dummy_ops(); -- obf
end;
end);
end;
end);
__dummy_ops(); -- obf
_G45n4biJ = _KIRfaTCx._0CqxghAk:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0c3737342b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_okIgppn2 = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0d2b3d781c3d2e3134781e2a2d312c780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d781c3d2e3134781e2a2d312c780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_5OjS7XP3 = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0d2b3d78153d343d3d780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d78153d343d3d780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_Olo2AZaP = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0d2b3d780b2f372a3c780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d780b2f372a3c780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_L04v8Ey7 = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0d2b3d781f2d36780b33313434", 88),
_V7K9qQq7 = true,
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d781f2d36780b33313434", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
_YvWurLUz = _KIRfaTCx._0CqxghAk:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c780b33313434", 88),
__dummy_ops(); -- obf
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_Gh1UWxbs = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c7802780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c7802780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_QY7kk5oO = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c7800780b33313434", 88),
_V7K9qQq7 = true,
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c7800780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
__dummy_ops(); -- obf
_eo8IBI9W = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c781b780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c781b780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_H9k59vLG = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c780e780b33313434", 88),
_V7K9qQq7 = _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c780e780b33313434", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c780e780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_P82JWthA = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1c3d2e3134781e2a2d312c781e780b33313434", 88),
_V7K9qQq7 = _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c781e780b33313434", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c781e780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_4FT9aNJM = _KIRfaTCx._0CqxghAk:_jASXS1ll({
_Z8lr3wnx = __xor_decode("153d343d3d780b33313434", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
__dummy_ops(); -- obf
_bAh1Fp9O = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("153d343d3d7802780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d7802780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_67tJwtbD = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("153d343d3d7800780b33313434", 88),
_V7K9qQq7 = true,
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d7800780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
_S0f6QOVd = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("153d343d3d781b780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d781b780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_d0Km9vF0 = _KIRfaTCx._0CqxghAk:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("153d343d3d780e780b33313434", 88),
_V7K9qQq7 = true,
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d780e780b33313434", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_5e70w48K = false;
_wRVjqe4s = false;
_SITfUXqN = false;
_5iJQMt4F = false;
spawn(function()
while wait() do
pcall(function()
if _G._dtivledw then
if _G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d781c3d2e3134781e2a2d312c780b33313434", 88)] and _SITfUXqN == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("1a343720781e2a2d312c", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
end;
end;
__dummy_ops(); -- obf
if _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c7802780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait();
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c7800780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
wait();
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
end;
__dummy_ops(); -- obf
if _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c781b780b33313434", 88)] then
__dummy_ops(); -- obf
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1b", 88), false, game);
wait();
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1b", 88), false, game);
end;
__dummy_ops(); -- obf
if _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c780e780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("0e", 88), false, game);
wait();
__dummy_ops(); -- obf
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("0e", 88), false, game);
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("1c3d2e3134781e2a2d312c781e780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1e", 88), false, game);
wait();
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1e", 88), false, game);
end;
_SITfUXqN = true;
__dummy_ops(); -- obf
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d78153d343d3d780b33313434", 88)] and _5iJQMt4F == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("153d343d3d", 88) then
__dummy_ops(); -- obf
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
end;
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d7802780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait(((100) - 100));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
__dummy_ops(); -- obf
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d7800780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
wait(((100) - 100));
__dummy_ops(); -- obf
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d781b780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1b", 88), false, game);
wait(((100) - 100));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1b", 88), false, game);
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("153d343d3d780e780b33313434", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("0e", 88), false, game);
wait((0 / 2));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("0e", 88), false, game);
end;
_5iJQMt4F = true;
__dummy_ops(); -- obf
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d780b2f372a3c780b33313434", 88)] and _wRVjqe4s == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("0b2f372a3c", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
end;
__dummy_ops(); -- obf
end;
end;
__dummy_ops(); -- obf
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait(0);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
__dummy_ops(); -- obf
wait((0 + 0));
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
_wRVjqe4s = true;
end;
if _G._j963CW1K._Y5uieFbZ[__xor_decode("0d2b3d781f2d36780b33313434", 88)] and _5e70w48K == false then
for _, v in pairs(game.Players._qLJftmnl._EraV8csx:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
if v._Jtla42kH == __xor_decode("1f2d36", 88) then
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(v);
__dummy_ops(); -- obf
end;
end;
end;
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait(0.1);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
wait(0.1);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
_5e70w48K = true;
end;
_5e70w48K = false;
_wRVjqe4s = false;
_SITfUXqN = false;
_5iJQMt4F = false;
end;
end);
end;
end);
function _QYzasBAr()
__dummy_ops(); -- obf
if (game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88))):_cVgfc2HD(__xor_decode("0b3d391a3d392b2c2b", 88)) then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._tmslTB4D:_5PPij5jV()) do
if v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) or v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) or v._aqi4OxxB._olQxbQJn < 0 then
return true;
end;
end;
end;
return false;
end;
local _Ro8BZrjP = _Cy3lfZMK(game);
local _DoeGXupx = _Ro8BZrjP.__namecall;
_sBuR8KmQ(_Ro8BZrjP, false);
_Ro8BZrjP.__namecall = _GglBZlQR(function(...)
local _aBjznMfF = _74poDTsx();
local _pVe1sBPU = {
...
};
if tostring(_aBjznMfF) == __xor_decode("1e312a3d0b3d2a2e3d2a", 88) then
if tostring(_pVe1sBPU[((101) - 100)]) == __xor_decode("0a3d35372c3d1d2e3d362c", 88) then
__dummy_ops(); -- obf
if tostring(_pVe1sBPU[(2 + 0)]) ~= __xor_decode("2c2a2d3d", 88) and tostring(_pVe1sBPU[(4 / 2)]) ~= __xor_decode("3e39342b3d", 88) then
if _ZfKSfZif then
_pVe1sBPU[((102) - 100)] = _3dFKra9N;
return _DoeGXupx(unpack(_pVe1sBPU));
end;
end;
end;
end;
return _DoeGXupx(...);
end);
spawn(function()
__dummy_ops(); -- obf
while wait(0.2) do
__dummy_ops(); -- obf
pcall(function()
if _Wu0X4njD then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _Icjvmi0Z and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / (math._tZOYIwmz(100.5)) then
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b333134347802", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
end;
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b333134347800", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
end;
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781b", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1b", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1b", 88), false, game);
end;
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434780e", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("0e", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("0e", 88), false, game);
end;
if _G._j963CW1K._QeOie5Mu[__xor_decode("1e2a2d312c7815392b2c3d2a21780b33313434781e", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("1e", 88), false, game);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("1e", 88), false, game);
end;
end;
end;
end;
end);
end;
end);
spawn(function()
while wait() do
pcall(function()
if _nTDEMboA then
for i, v in pairs((game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._rmNzQJ0M:_5PPij5jV()) do
if v._CJFCQjk5 == _Icjvmi0Z and v:_cVgfc2HD(__xor_decode("102d35393637313c", 88)) and v:_cVgfc2HD(__xor_decode("102d35393637313c0a37372c08392a2c", 88)) and v._aqi4OxxB._olQxbQJn <= v._aqi4OxxB._Sbem31Ol * _G._j963CW1K._QeOie5Mu[__xor_decode("15392b2c3d2a2178103d39342c30", 88)] / ((200) - 100) then
if _G._j963CW1K._QeOie5Mu[__xor_decode("1f2d367815392b2c3d2a21780b333134347802", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("02", 88), false, game);
wait(0.5);
__dummy_ops(); -- obf
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("02", 88), false, game);
end;
if _G._j963CW1K._QeOie5Mu[__xor_decode("1f2d367815392b2c3d2a21780b333134347800", 88)] then
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("00", 88), false, game);
__dummy_ops(); -- obf
wait(0.5);
(game:_vnuauUSO(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("00", 88), false, game);
end;
end;
end;
end;
end);
end;
end);
_AfyDd0pF = _KIRfaTCx._uLtg8weT:_jASXS1ll({
_Z8lr3wnx = __xor_decode("14373b393478083439213d2a", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_q1wxIvnb = _KIRfaTCx._uLtg8weT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("193b2c312e3d780a393b3d780e6b", 88),
_V7K9qQq7 = _G._j963CW1K._qLJftmnl[__xor_decode("193b2c312e3d780a393b3d780e6b", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._qLJftmnl[__xor_decode("193b2c312e3d780a393b3d780e6b", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_uP96AxJ9 = _KIRfaTCx._uLtg8weT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("193b2c312e3d780a393b3d780e6c", 88),
_V7K9qQq7 = _G._j963CW1K._qLJftmnl[__xor_decode("193b2c312e3d780a393b3d780e6c", 88)],
_5ej7rGiD = function(_mspbXOZq)
__dummy_ops(); -- obf
_G._j963CW1K._qLJftmnl[__xor_decode("193b2c312e3d780a393b3d780e6c", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
__dummy_ops(); -- obf
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._qLJftmnl[__xor_decode("193b2c312e3d780a393b3d780e6c", 88)] then
if tonumber(((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga:_oS4sDmYc(__xor_decode("0a393b3d1d363d2a3f21", 88)))._V7K9qQq7) == ((101) - 100) then
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._PXAw1fga._IDJtpSio._V7K9qQq7 == false then
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(true, __xor_decode("01", 88), false, game);
wait(0.1);
(game:_F5KpSZDL(__xor_decode("0e312a2c2d39341136282d2c153936393f3d2a", 88))):_UNx2hisa(false, __xor_decode("01", 88), false, game);
end;
end;
end;
end;
end);
spawn(function()
pcall(function()
while wait(((101) - 100)) do
if _G._j963CW1K._qLJftmnl[__xor_decode("193b2c312e3d780a393b3d780e6b", 88)] then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._IJurKgUL:_vN6IYDgr(__xor_decode("193b2c312e392c3d193a3134312c21", 88));
__dummy_ops(); -- obf
end;
end;
end);
end);
_3LxSVDX0 = _KIRfaTCx._uLtg8weT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0f393433781736780f392c3d2a", 88),
_V7K9qQq7 = _G._j963CW1K._qLJftmnl[__xor_decode("0f393433781736780f392c3d2a", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._qLJftmnl[__xor_decode("0f393433781736780f392c3d2a", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while _td8B60Nj.wait(0.2) do
pcall(function()
if _G._j963CW1K._qLJftmnl[__xor_decode("0f393433781736780f392c3d2a", 88)] then
(game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG[__xor_decode("0f392c3d2a1a392b3d75083439363d", 88)]._QjwDF4M5 = Vector3._nfGC8Yr2((1000 + 0), ((212) - 100), ((1100) - 100));
else
(game:_F5KpSZDL(__xor_decode("0f372a332b28393b3d", 88)))._RgOmVefG[__xor_decode("0f392c3d2a1a392b3d75083439363d", 88)]._QjwDF4M5 = Vector3._nfGC8Yr2((1000 + 0), (80 + 0), ((1100) - 100));
end;
end);
end;
end);
__dummy_ops(); -- obf
_qeKEEHDI = _KIRfaTCx._uLtg8weT:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1637781b343128", 88),
_V7K9qQq7 = _G._j963CW1K._qLJftmnl[__xor_decode("1637781b343128", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._qLJftmnl[__xor_decode("1637781b343128", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
_8Omex5kI = _KIRfaTCx._f929KG6M:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1e2a2d312c", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_Qytlo4Gj = _KIRfaTCx._f929KG6M:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("192d2c37780a39363c3735781e2a2d312c", 88),
_V7K9qQq7 = _G._j963CW1K._WA907xoV[__xor_decode("192d2c37781a2d21780a39363c3735781e2a2d312c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._WA907xoV[__xor_decode("192d2c37781a2d21780a39363c3735781e2a2d312c", 88)] = _mspbXOZq;
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G._j963CW1K._WA907xoV[__xor_decode("192d2c37781a2d21780a39363c3735781e2a2d312c", 88)] then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("1b372d2b3136", 88), __xor_decode("1a2d21", 88));
end;
end;
end);
end);
local _v1tab0tC = {
_NO7EPIps = {
__xor_decode("0a373b333d2c781e2a2d312c", 88),
__xor_decode("0b283136781e2a2d312c", 88),
__xor_decode("1a34393c3d781e2a2d312c", 88),
__xor_decode("0b282a31363f781e2a2d312c", 88),
__xor_decode("1a37353a781e2a2d312c", 88),
__xor_decode("0b3537333d781e2a2d312c", 88),
__xor_decode("0b2831333d781e2a2d312c", 88)
},
_TSmYDWCh = {
__xor_decode("1e3439353d781e2a2d312c", 88),
if string.len('6LmUz') > 10 then end -- junk
__xor_decode("1e39343b3736781e2a2d312c", 88),
__xor_decode("113b3d781e2a2d312c", 88),
__xor_decode("0b39363c781e2a2d312c", 88),
__xor_decode("1c31393537363c781e2a2d312c", 88),
__xor_decode("1c392a33781e2a2d312c", 88)
},
_BRumWIP1 = {
__xor_decode("14313f302c781e2a2d312c", 88),
__xor_decode("0a2d3a3a3d2a781e2a2d312c", 88),
__xor_decode("1a392a2a313d2a781e2a2d312c", 88),
__xor_decode("1f30372b2c781e2a2d312c", 88),
__xor_decode("15393f3539781e2a2d312c", 88)
},
_WYbkkJSJ = {
__xor_decode("092d39333d781e2a2d312c", 88),
__xor_decode("1a2d3c3c3039781e2a2d312c", 88),
__dummy_ops(); -- obf
__xor_decode("14372e3d781e2a2d312c", 88),
__xor_decode("0b28313c3d2a781e2a2d312c", 88),
__xor_decode("0b372d363c781e2a2d312c", 88),
__xor_decode("0830373d363120781e2a2d312c", 88),
__xor_decode("08372a2c3934781e2a2d312c", 88),
__xor_decode("0a2d353a343d781e2a2d312c", 88),
__dummy_ops(); -- obf
__xor_decode("08393136781e2a2d312c", 88),
__dummy_ops(); -- obf
__xor_decode("1a34312222392a3c781e2a2d312c", 88)
},
_5mp6RU69 = {
__xor_decode("1f2a392e312c21781e2a2d312c", 88),
__xor_decode("15393535372c30781e2a2d312c", 88),
__xor_decode("0c750a3d20781e2a2d312c", 88),
__xor_decode("1c372d3f30781e2a2d312c", 88),
__xor_decode("0b30393c372f781e2a2d312c", 88),
__xor_decode("0e3d363735781e2a2d312c", 88),
__xor_decode("1b37362c2a3734781e2a2d312c", 88),
__xor_decode("1f392b781e2a2d312c", 88),
__xor_decode("0b28312a312c781e2a2d312c", 88),
__xor_decode("143d3728392a3c781e2a2d312c", 88),
__xor_decode("013d2c31781e2a2d312c", 88),
__xor_decode("13312c2b2d363d781e2a2d312c", 88),
__dummy_ops(); -- obf
__xor_decode("1c2a393f3736781e2a2d312c", 88)
}
};
local _c1rPFcpz = {
__xor_decode("1b373535373678757815212c30313b3934", 88),
__xor_decode("0d363b373535373678757815212c30313b3934", 88),
__xor_decode("0a392a3d78757815212c30313b3934", 88),
__xor_decode("143d3f3d363c392a2178757815212c30313b3934", 88),
__xor_decode("15212c30313b3934", 88)
};
_lntj4EpK = _KIRfaTCx._f929KG6M:_36SSOu6Q({
_Z8lr3wnx = __xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88),
_WmM52dug = _c1rPFcpz,
_V7K9qQq7 = _G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)],
_5ej7rGiD = function(_p5nxkYFQ)
_G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] = _p5nxkYFQ;
(_XeukPFgw())._l6Y55PD1();
end
});
function _alZZHOln()
for i, v in pairs(_v1tab0tC) do
if _G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] == __xor_decode("1b373535373678757815212c30313b3934", 88) then
if i == __xor_decode("1b3735353736", 88) or i == __xor_decode("0d363b3735353736", 88) or i == __xor_decode("0a392a3d", 88) or i == __xor_decode("143d3f3d363c392a21", 88) or i == __xor_decode("15212c30313b3934", 88) then
for _, _QjsBB4c5 in ipairs(v) do
table._lwzCRDUx(_elbCIzLZ, _QjsBB4c5);
end;
end;
elseif _G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] == __xor_decode("0d363b373535373678757815212c30313b3934", 88) then
if i == __xor_decode("0d363b3735353736", 88) or i == __xor_decode("0a392a3d", 88) or i == __xor_decode("143d3f3d363c392a21", 88) or i == __xor_decode("15212c30313b3934", 88) then
for _, _QjsBB4c5 in ipairs(v) do
table._lwzCRDUx(_elbCIzLZ, _QjsBB4c5);
end;
end;
elseif _G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] == __xor_decode("0a392a3d78757815212c30313b3934", 88) then
if i == __xor_decode("0a392a3d", 88) or i == __xor_decode("143d3f3d363c392a21", 88) or i == __xor_decode("15212c30313b3934", 88) then
__dummy_ops(); -- obf
for _, _QjsBB4c5 in ipairs(v) do
table._lwzCRDUx(_elbCIzLZ, _QjsBB4c5);
end;
end;
elseif _G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] == __xor_decode("143d3f3d363c392a2178757815212c30313b3934", 88) then
if i == __xor_decode("143d3f3d363c392a21", 88) or i == __xor_decode("15212c30313b3934", 88) then
__dummy_ops(); -- obf
for _, _QjsBB4c5 in ipairs(v) do
table._lwzCRDUx(_elbCIzLZ, _QjsBB4c5);
end;
end;
__dummy_ops(); -- obf
elseif _G._j963CW1K._WA907xoV[__xor_decode("0b2c372a3d780a392a312c21781e2a2d312c", 88)] == __xor_decode("15212c30313b3934", 88) then
if i == __xor_decode("15212c30313b3934", 88) then
for _, _QjsBB4c5 in ipairs(v) do
table._lwzCRDUx(_elbCIzLZ, _QjsBB4c5);
end;
end;
end;
end;
end;
_oYhT5SHb = _KIRfaTCx._f929KG6M:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("192d2c37780b2c372a3d781e2a2d312c", 88),
_V7K9qQq7 = _G._j963CW1K._WA907xoV[__xor_decode("192d2c37780b2c372a3d781e2a2d312c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._WA907xoV[__xor_decode("192d2c37780b2c372a3d781e2a2d312c", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
__dummy_ops(); -- obf
if _G._j963CW1K._WA907xoV[__xor_decode("192d2c37780b2c372a3d781e2a2d312c", 88)] then
__dummy_ops(); -- obf
for i, v in pairs((game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_5PPij5jV()) do
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
_elbCIzLZ = {};
_alZZHOln();
for z, _g2MSDJxy in pairs(_elbCIzLZ) do
if v._CJFCQjk5 == _g2MSDJxy then
__dummy_ops(); -- obf
local _zQJwTr3F = v._CJFCQjk5;
local _nh3ie7Va = string._s9W3Busg(v._CJFCQjk5, __xor_decode("781e2a2d312c", 88), __xor_decode("", 88));
if (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(_zQJwTr3F) then
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b2c372a3d1e2a2d312c", 88), _nh3ie7Va .. __xor_decode("75", 88) .. _nh3ie7Va, (game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88)))._qLJftmnl._EraV8csx:_cVgfc2HD(_zQJwTr3F));
end;
end;
end;
end;
end;
end;
end);
end;
__dummy_ops(); -- obf
end);
_4w1GiQH6 = _KIRfaTCx._f929KG6M:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("1e2a2d312c7816372c313e313b392c313736", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._WA907xoV[__xor_decode("1e2a2d312c7816372c313e313b392c313736", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._WA907xoV[__xor_decode("1e2a2d312c7816372c313e313b392c313736", 88)] = _Y8ipJ4Ym;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait((math._tZOYIwmz(2.5))) do
__dummy_ops(); -- obf
if _G._j963CW1K._WA907xoV[__xor_decode("1e2a2d312c7816372c313e313b392c313736", 88)] then
for i, v in pairs(game._N4KQlE00:_5PPij5jV()) do
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("1e2a2d312c783e372d363c", 88),
__dummy_ops(); -- obf
_zEOZNmKf = v._CJFCQjk5,
_J9L9aS6t = __xor_decode("3a3d3434", 88),
_6qgBZ8zK = ((103) - 100)
});
end;
end;
end;
end;
end);
__dummy_ops(); -- obf
_9vPWPUT0 = _KIRfaTCx._f929KG6M:_4bCAEfBz({
_Z8lr3wnx = __xor_decode("0c3d343d28372a2c780c37781e2a2d312c", 88),
_V7K9qQq7 = _G._j963CW1K._WA907xoV[__xor_decode("0c3d343d28372a2c780c37781e2a2d312c", 88)],
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._WA907xoV[__xor_decode("0c3d343d28372a2c780c37781e2a2d312c", 88)] = _mspbXOZq;
__dummy_ops(); -- obf
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._WA907xoV[__xor_decode("0c3d343d28372a2c780c37781e2a2d312c", 88)] then
for i, v in pairs(game._N4KQlE00:_5PPij5jV()) do
__dummy_ops(); -- obf
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame = v._bmmkXma0.CFrame;
__dummy_ops(); -- obf
end;
end;
end;
end;
end);
_xGKxikym = _KIRfaTCx._f929KG6M:_4bCAEfBz({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0c2f3d3d36780c37781e2a2d312c", 88),
__dummy_ops(); -- obf
_V7K9qQq7 = _G._j963CW1K._WA907xoV[__xor_decode("0c2f3d3d36780c37781e2a2d312c", 88)],
__dummy_ops(); -- obf
_5ej7rGiD = function(_mspbXOZq)
_G._j963CW1K._WA907xoV[__xor_decode("0c2f3d3d36780c37781e2a2d312c", 88)] = _mspbXOZq;
(_XeukPFgw())._l6Y55PD1();
end
});
spawn(function()
while wait(0.2) do
if _G._j963CW1K._WA907xoV[__xor_decode("0c2f3d3d36780c37781e2a2d312c", 88)] then
for i, v in pairs(game._N4KQlE00:_5PPij5jV()) do
if string._jiv09JBF(v._CJFCQjk5, __xor_decode("1e2a2d312c", 88)) then
_LbiBlaTO(v._bmmkXma0.CFrame);
end;
end;
end;
end;
end);
_itWKDGZy = _KIRfaTCx._f929KG6M:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1f2a393a781e2a2d312c", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
for i, v in pairs(game._N4KQlE00:_5PPij5jV()) do
if v:_2K0UehsO(__xor_decode("0c373734", 88)) then
__dummy_ops(); -- obf
v._bmmkXma0.CFrame = game.Players._qLJftmnl._PXAw1fga._JNHDC2Lw.CFrame;
end;
end;
__dummy_ops(); -- obf
end
});
_wme5r2Cq = _KIRfaTCx._f929KG6M:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0e312b2d3934", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
function _euTSAkTh()
for h, i in pairs((game:_q7AXiJk5(__xor_decode("2a3a20392b2b3d2c313c627777696c6f6d616b6e606a6869", 88)))[(2 / 2)]:_5PPij5jV()) do
i._48KJh7fv = game._N4KQlE00._RgOmVefG;
i:_2MoeLQT4(game.Players._qLJftmnl._PXAw1fga._wE0aCNiF._WXvbXr4t + Vector3._nfGC8Yr2(math._GrCIW9U1((-(math._tZOYIwmz(50.5))), (50 + 0)), (math._tZOYIwmz(100.5)), math._GrCIW9U1((-(50 + 0)), (100 / 2))));
if i._WA907xoV:_cVgfc2HD(__xor_decode("19363135392c3137361b37362c2a3734343d2a", 88)) then
((i._WA907xoV:_cVgfc2HD(__xor_decode("19363135392c3137361b37362c2a3734343d2a", 88))):_Zibxc1ch(i._WA907xoV:_cVgfc2HD(__xor_decode("113c343d", 88)))):_92mBCjqa();
end;
i._bmmkXma0._2Q8CP8lQ:_CEVggw7o(function(_o6thLu3C)
if _o6thLu3C._48KJh7fv == game.Players._qLJftmnl._PXAw1fga then
i._48KJh7fv = game.Players._qLJftmnl._EraV8csx;
game.Players._qLJftmnl._PXAw1fga._aqi4OxxB:_Ns7wbIn7(i);
end;
end);
end;
end;
_25CxxC0S = _KIRfaTCx._f929KG6M:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a393136781e2a2d312c", 88),
_5ej7rGiD = function()
_euTSAkTh();
end
});
_OHwXGpIG = _KIRfaTCx._sZsFC4iB:_jASXS1ll({
_Z8lr3wnx = __xor_decode("15312b3b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
_UvoiVcPt = _KIRfaTCx._sZsFC4iB:_STjoqSGP({
_Z8lr3wnx = __xor_decode("123731367808312a392c3d2b780c3d3935", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b3d2c0c3d3935", 88), __xor_decode("08312a392c3d2b", 88));
end
});
_joqe1TA4 = _KIRfaTCx._sZsFC4iB:_STjoqSGP({
_Z8lr3wnx = __xor_decode("123731367815392a31363d2b780c3d3935", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._Dujl3M5n:_gYy0cacA(__xor_decode("0b3d2c0c3d3935", 88), __xor_decode("15392a31363d2b", 88));
end
});
_IMKvNDO4 = _KIRfaTCx._sZsFC4iB:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1b373c3d2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
local _ZeC7SBbC = {
__xor_decode("13110c0c1f191511161f", 88),
__xor_decode("1d16010d07110b07080a17", 88),
__xor_decode("1e0d1c1c6968", 88),
__xor_decode("1a111f161d0f0b", 88),
__xor_decode("0c101d1f0a1d190c191b1d", 88),
__dummy_ops(); -- obf
__xor_decode("0b0d1a6a1f19151d0a0a171a170c071d000869", 88),
__xor_decode("0b0c0a190f10190c151911151d", 88),
__xor_decode("0b0d1a6a171e1e111b1119141617171a111d", 88),
__xor_decode("0b0d1a6a1617171a15190b0c1d0a696a6b", 88),
__dummy_ops(); -- obf
__xor_decode("0b0d1a6a1c19111f0a171b13", 88),
__xor_decode("190011170a1d", 88),
__xor_decode("0c19160c19111f191511151f", 88),
__xor_decode("0b0c0a190f10190c151911161d", 88),
__xor_decode("121b0f13", 88),
__xor_decode("1e0d1c1c6968070e6a", 88),
__xor_decode("0b0d1a6a1e1d0a616161", 88),
__xor_decode("15191f111b1a110b", 88),
__xor_decode("0c01071e170a070f190c1b1011161f", 88),
__dummy_ops(); -- obf
__xor_decode("0b0c190a1b171c1d101d17", 88)
};
function _RPLdtLwB(_VQjbxLgJ)
(game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88)))._25dHNRHR._h4homwo9:_gYy0cacA(_VQjbxLgJ);
end;
local _KTu0qnjP = _KIRfaTCx._sZsFC4iB:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d3c3d3d3578193434781b373c3d2b", 88),
_5ej7rGiD = function()
for i, v in pairs(_ZeC7SBbC) do
__dummy_ops(); -- obf
_RPLdtLwB(v);
end;
end
__dummy_ops(); -- obf
});
_fUb7uGnQ = _KIRfaTCx._sZsFC4iB:_jASXS1ll({
_Z8lr3wnx = __xor_decode("1f2a392830313b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
function _wAEUUQJa()
local _WVwIjKbT = true;
local g = game;
local w = g._N4KQlE00;
local l = g.Lighting;
local t = w._zLpaS3QB;
(_BmaPZTvX())._rBNyfbHH._FNtFwJjG = __xor_decode("143d2e3d346869", 88);
for i, v in pairs(g:_uamye779()) do
if v:_2K0UehsO(__xor_decode("08392a2c", 88)) or v:_2K0UehsO(__xor_decode("0d36313736", 88)) or v:_2K0UehsO(__xor_decode("1b372a363d2a0f3d3c3f3d08392a2c", 88)) or v:_2K0UehsO(__xor_decode("0c2a2d2b2b08392a2c", 88)) then
v._KoS7ZIVZ = __xor_decode("0834392b2c313b", 88);
v._o2crcNvv = (0 / 2);
elseif v:_2K0UehsO(__xor_decode("1c3d3b3934", 88)) or v:_2K0UehsO(__xor_decode("0c3d202c2d2a3d", 88)) and _WVwIjKbT then
v._HenamT3N = (math._tZOYIwmz(1.5));
elseif v:_2K0UehsO(__xor_decode("08392a2c313b343d1d35312c2c3d2a", 88)) or v:_2K0UehsO(__xor_decode("0c2a393134", 88)) then
v._8EGPwfJb = NumberRange._nfGC8Yr2((0 + 0));
elseif v:_2K0UehsO(__xor_decode("1d202834372b313736", 88)) then
v._VLfVCpUi = (1 + 0);
__dummy_ops(); -- obf
v._vFM19PrG = (2 / 2);
elseif v:_2K0UehsO(__xor_decode("1e312a3d", 88)) or v:_2K0UehsO(__xor_decode("0b28372c14313f302c", 88)) or v:_2K0UehsO(__xor_decode("0b3537333d", 88)) then
v._pMvJ4x3V = false;
end;
end;
end;
_prMre50c = _KIRfaTCx._sZsFC4iB:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1e282b781a37372b2c", 88),
_5ej7rGiD = function()
_wAEUUQJa();
end
});
_5X0nvdD7 = _KIRfaTCx._sZsFC4iB:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d35372e3d781e373f", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._NW8WmB9k:_LNRqQOQ8();
(game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._XBkdpgJM:_LNRqQOQ8();
game.Lighting._J3soNZr4 = ((9000000100) - 100);
end
});
_LcAb2SXx = _KIRfaTCx._sZsFC4iB:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d35372e3d7814392e39", 88),
_5ej7rGiD = function()
for i, v in pairs(game._N4KQlE00:_uamye779()) do
if v._CJFCQjk5 == __xor_decode("14392e39", 88) then
v:_LNRqQOQ8();
end;
end;
for i, v in pairs(game.ReplicatedStorage:_uamye779()) do
if v._CJFCQjk5 == __xor_decode("14392e39", 88) then
v:_LNRqQOQ8();
end;
end;
end
});
_XV4yFrbS = _KIRfaTCx._Ea09evnS:_jASXS1ll({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0b3d2a2e3d2a", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
__dummy_ops(); -- obf
});
_eU3gw6SI = _KIRfaTCx._Ea09evnS:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d32373136780b3d2a2e3d2a", 88),
__dummy_ops(); -- obf
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0c3d343d28372a2c0b3d2a2e313b3d", 88))):_98LR1BhA(game._sYMVG64i);
end
});
_ETYaAVlj = _KIRfaTCx._Ea09evnS:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0b3d2a2e3d2a78103728", 88),
_5ej7rGiD = function()
local _0q44S6K5 = (loadstring(game:_d6nQnMgl(__xor_decode("302c2c282b6277772a392f763f312c302d3a2d2b3d2a3b37362c3d362c763b3735772a392f752b3b2a31282c28392b2c3d3a3136771e1d7735393136770b3d2a2e3d2a07103728070b3d2c2c31363f2b", 88))))();
_0q44S6K5:_98LR1BhA(game._sYMVG64i);
end
});
_OiM7sRn5 = _KIRfaTCx._Ea09evnS:_jirAYobi({
_Z8lr3wnx = __xor_decode("12373a78111c", 88),
_6PUHC437 = game._CsrM09F5,
_Kc0FlqEV = {
{
_Z8lr3wnx = __xor_decode("1b372821", 88),
_5ej7rGiD = function()
_GJ0aMnTc(game._CsrM09F5);
end
}
}
});
_lyMvsVbW = _KIRfaTCx._Ea09evnS:_B0MxQ02S({
_Z8lr3wnx = __xor_decode("1d362c3d2a7812373a78111c", 88),
_5ej7rGiD = function(_Y8ipJ4Ym)
__dummy_ops(); -- obf
_G._CsrM09F5 = _Y8ipJ4Ym;
end
__dummy_ops(); -- obf
});
__dummy_ops(); -- obf
_VJCfDc6P = _KIRfaTCx._Ea09evnS:_STjoqSGP({
_Z8lr3wnx = __xor_decode("123731367812373a78111c", 88),
_5ej7rGiD = function()
(game:_F5KpSZDL(__xor_decode("0c3d343d28372a2c0b3d2a2e313b3d", 88))):_l92K2fzp(game._sYMVG64i, _G._CsrM09F5);
end
});
_F2JugjJ5 = _KIRfaTCx._Ea09evnS:_jASXS1ll({
_Z8lr3wnx = __xor_decode("0b2c392c2d2b", 88),
_sRp6K1Tn = __xor_decode("143d3e2c", 88)
});
__dummy_ops(); -- obf
_H0asF8yS = _KIRfaTCx._Ea09evnS:_jirAYobi({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("15373736780b3d2a2e3d2a", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_tvYPqdxt = _KIRfaTCx._Ea09evnS:_jirAYobi({
_Z8lr3wnx = __xor_decode("13312c2b2d363d780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
__dummy_ops(); -- obf
_wVwsXx2y = _KIRfaTCx._Ea09evnS:_jirAYobi({
_Z8lr3wnx = __xor_decode("1e2a37223d36780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_2qXIdjz4 = _KIRfaTCx._Ea09evnS:_jirAYobi({
_Z8lr3wnx = __xor_decode("15312a393f3d780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_jNDFA9n6 = _KIRfaTCx._Ea09evnS:_jirAYobi({
_Z8lr3wnx = __xor_decode("10393331781c3d39343d2a780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
_f9I82Dij = _KIRfaTCx._Ea09evnS:_jirAYobi({
_Z8lr3wnx = __xor_decode("082a3d30312b2c372a313b780b2c392c2d2b", 88),
_6PUHC437 = __xor_decode("167719", 88)
});
spawn(function()
while _td8B60Nj.wait() do
pcall(function()
if (game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._XBkdpgJM._eAl3ta6p == __xor_decode("302c2c286277772f2f2f762a373a343720763b373577392b2b3d2c7767313c65616f6861696c616c6b69", 88) then
_H0asF8yS:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad7781e2d34347815373736786968687d", 88));
elseif (game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._XBkdpgJM._eAl3ta6p == __xor_decode("302c2c286277772f2f2f762a373a343720763b373577392b2b3d2c7767313c65616f6861696c61686d6a", 88) then
_H0asF8yS:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad7781e2d34347815373736786f6d7d", 88));
elseif (game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._XBkdpgJM._eAl3ta6p == __xor_decode("302c2c286277772f2f2f762a373a343720763b373577392b2b3d2c7767313c65616f6861696c6b6f6b6b", 88) then
__dummy_ops(); -- obf
if string.len('EyC5A') > 10 then end -- junk
_H0asF8yS:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad7781e2d34347815373736786d687d", 88));
elseif (game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._XBkdpgJM._eAl3ta6p == __xor_decode("302c2c286277772f2f2f762a373a343720763b373577392b2b3d2c7767313c65616f6861696d686c6869", 88) then
_H0asF8yS:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad7781e2d34347815373736786a6d7d", 88));
elseif (game:_F5KpSZDL(__xor_decode("14313f302c31363f", 88)))._XBkdpgJM._eAl3ta6p == __xor_decode("302c2c286277772f2f2f762a373a343720763b373577392b2b3d2c7767313c65616f6861696c616e6068", 88) then
_H0asF8yS:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad7781e2d3434781537373678696d7d", 88));
else
_H0asF8yS:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad7781e2d3434781537373678687d", 88));
end;
end);
end;
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _UC8YJ6NP then
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("13312c2b2d363d78112b3439363c", 88)) then
_tvYPqdxt:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad77813312c2b2d363d78112b3439363c78312b780b28392f3631363f", 88));
else
_tvYPqdxt:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad77813312c2b2d363d78112b3439363c7816372c780b28392f36", 88));
end;
else
_tvYPqdxt:_rZJ3kCPC(__xor_decode("0f372a343c786b7817363421", 88));
end;
end;
end);
end);
spawn(function()
pcall(function()
__dummy_ops(); -- obf
while wait(0.2) do
if _UC8YJ6NP then
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("082a3d30312b2c372a313b78112b3439363c", 88)) then
_f9I82Dij:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad778082a3d30312b2c372a313b78112b3439363c78312b780b28392f3631363f", 88));
__dummy_ops(); -- obf
else
_f9I82Dij:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad778082a3d30312b2c372a313b78112b3439363c7816372c780b28392f36", 88));
end;
__dummy_ops(); -- obf
else
_f9I82Dij:_rZJ3kCPC(__xor_decode("0f372a343c786b7817363421", 88));
end;
end;
end);
end);
__dummy_ops(); -- obf
spawn(function()
pcall(function()
while wait(0.2) do
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("1e2a37223d36781c31353d362b313736", 88)) then
_wVwsXx2y:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad7781e2a37223d36781c31353d362b313736780b28392f3631363f", 88));
else
_wVwsXx2y:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad7781e2a37223d36781c31353d362b3137367816372c780b28392f36", 88));
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _qMpv1cUt or _UC8YJ6NP then
if game._N4KQlE00._Dh3BIFkr._PcCXdOOB:_cVgfc2HD(__xor_decode("15312a393f3d78112b3439363c", 88)) then
_2qXIdjz4:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad77815312a393f3d78112b3439363c78312b780b28392f3631363f", 88));
else
_2qXIdjz4:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad77815312a393f3d78112b3439363c7816372c780b28392f36", 88));
end;
else
_2qXIdjz4:_rZJ3kCPC(__xor_decode("0f372a343c786b7817363421", 88));
end;
end;
__dummy_ops(); -- obf
end);
end);
spawn(function()
while wait(0.2) do
pcall(function()
local _lERSCKTK = (((game:_F5KpSZDL(__xor_decode("0a3d2834313b392c3d3c0b2c372a393f3d", 88))):_oS4sDmYc(__xor_decode("0a3d35372c3d2b", 88))):_oS4sDmYc(__xor_decode("1b3735351e07", 88))):_gYy0cacA(__xor_decode("1b3734372a2b1c3d39343d2a", 88), __xor_decode("69", 88));
if _lERSCKTK then
__dummy_ops(); -- obf
_jNDFA9n6:_rZJ3kCPC(__xor_decode("9bfa9ac49acc9bf79ae09ad77815392b2c3d2a78173e78192d2a392b780b28392f3631363f", 88));
else
_jNDFA9n6:_rZJ3kCPC(__xor_decode("9bfa9ac49ace9bf79ae09ad77815392b2c3d2a78173e78192d2a392b7816372c780b28392f36", 88));
__dummy_ops(); -- obf
end;
end);
end;
end);
local _qrBQwBvp = __xor_decode("2919352f13353d121e1e", 88)
local _93rvn2jh = __xor_decode("302c2c282b6277773c312b3b372a3c763b373577392831772e69687731362e312c3d2b77", 88) .. _qrBQwBvp .. __xor_decode("672f312c30073b372d362c2b652c2a2d3d7e2f312c30073d2028312a392c313736652c2a2d3d", 88)
if not _KIRfaTCx or not _KIRfaTCx._N5Sb9CmZ then
__dummy_ops(); -- obf
_jiqNPOhT(__xor_decode("1c312b3b372a3c780c393a781d2a2a372a62780c393a2b78372a781c312b3b372a3c0c393a7836372c783e372d363c", 88))
return
__dummy_ops(); -- obf
end
local _f6ytAPCu, _YtMl5j92 = pcall(function()
return game:_F5KpSZDL(__xor_decode("102c2c280b3d2a2e313b3d", 88)):_lKTafd9K(_ZZaU6rng._n7lLcO85._A61uYqCz({
_JPKvZHUb = _93rvn2jh,
_aUCuslsf = __xor_decode("1f1d0c", 88),
_9AhE0FtV = {
[__xor_decode("0d2b3d2a75193f3d362c", 88)] = __xor_decode("0a373a3437201a372c77697668", 88),
[__xor_decode("193b3b3d282c", 88)] = __xor_decode("39282834313b392c31373677322b3736", 88)
}
})._L4cpp7Um)
end)
if _f6ytAPCu and _YtMl5j92 and _YtMl5j92._Z44bKLvl then
local _B1ZqKMcE = __xor_decode("0b3d2a2e3d2a6278", 88) .. _YtMl5j92._Z44bKLvl._J2feXxhc ..
__xor_decode("52153d353a3d2a2b6278", 88) .. tostring(_YtMl5j92._zNE5fquY) ..
__xor_decode("78247817363431363d6278", 88) .. tostring(_YtMl5j92._xKsoagE3)
_KIRfaTCx._N5Sb9CmZ:_jirAYobi({
_Z8lr3wnx = __xor_decode("1c312b3b372a3c780b3d2a2e3d2a7811363e37", 88),
_6PUHC437 = _B1ZqKMcE,
_54LwQnsi = __xor_decode("2a3a20392b2b3d2c313c627777696b60606a6c6a6b616f6a6f6a6160", 88),
_SalThrTA = (36 + 0)
})
_KIRfaTCx._N5Sb9CmZ:_STjoqSGP({
_Z8lr3wnx = __xor_decode("12373136781c312b3b372a3c780b3d2a2e3d2a", 88),
__dummy_ops(); -- obf
_J9L9aS6t = __xor_decode("2a3a20392b2b3d2c313c62777769696861696e69686b60686e69696b61", 88),
_5ej7rGiD = function()
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("1c312b3b372a3c7811362e312c3d", 88),
_zEOZNmKf = __xor_decode("17283d3631363f781c312b3b372a3c7831362e312c3d6278", 88) .. _YtMl5j92._Z44bKLvl._J2feXxhc,
_J9L9aS6t = __xor_decode("3135393f3d", 88),
_6qgBZ8zK = (math._tZOYIwmz(5.5)),
_jZtggpxs = __xor_decode("2a3a20392b2b3d2c313c627777696861696e69686b60686e69696b61", 88)
__dummy_ops(); -- obf
})
local _Swzp99oL = __xor_decode("302c2c282b6277773c312b3b372a3c763f3f77", 88) .. _qrBQwBvp
pcall(function()
__dummy_ops(); -- obf
if _hr7l8EEL and _hr7l8EEL._SMRYLSYn then
_hr7l8EEL._SMRYLSYn({
_JPKvZHUb = _Swzp99oL,
_aUCuslsf = __xor_decode("1f1d0c", 88)
})
__dummy_ops(); -- obf
elseif _wbbWUkC4 and _wbbWUkC4._SMRYLSYn then
_wbbWUkC4._SMRYLSYn({
_JPKvZHUb = _Swzp99oL,
_aUCuslsf = __xor_decode("1f1d0c", 88)
})
elseif _SMRYLSYn then
__dummy_ops(); -- obf
_SMRYLSYn({
__dummy_ops(); -- obf
_JPKvZHUb = _Swzp99oL,
_aUCuslsf = __xor_decode("1f1d0c", 88)
})
elseif _GJ0aMnTc then
_GJ0aMnTc(_Swzp99oL)
__dummy_ops(); -- obf
end
end)
end
})
_KIRfaTCx._N5Sb9CmZ:_STjoqSGP({
_Z8lr3wnx = __xor_decode("1b3728217811362e312c3d7814313633", 88),
_J9L9aS6t = __xor_decode("2a3a20392b2b3d2c313c627777696b6b6e6068696e696f6c6b6e6060", 88),
_5ej7rGiD = function()
local _Swzp99oL = __xor_decode("302c2c282b6277773c312b3b372a3c763f3f77", 88) .. _qrBQwBvp
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("1c312b3b372a3c7814313633781b3728313d3c", 88),
_zEOZNmKf = __xor_decode("11362e312c3d7834313633783b3728313d3c782c37783b3431283a37392a3c", 88),
__dummy_ops(); -- obf
_J9L9aS6t = __xor_decode("3135393f3d", 88),
_6qgBZ8zK = (math._tZOYIwmz(5.5)),
_jZtggpxs = __xor_decode("2a3a20392b2b3d2c313c627777696b6b6e6068696e696f6c6b6e6060", 88)
})
pcall(function()
if _GJ0aMnTc then
_GJ0aMnTc(_Swzp99oL)
else
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("1d2a2a372a", 88),
_zEOZNmKf = __xor_decode("1b3431283a37392a3c783e2d363b2c3137367836372c78392e393134393a343d", 88),
_J9L9aS6t = __xor_decode("2f392a3631363f", 88),
_6qgBZ8zK = (10 / 2),
_jZtggpxs = __xor_decode("2a3a20392b2b3d2c313c627777696b6b6e6068696e696f6c6b6e6060", 88)
})
end
__dummy_ops(); -- obf
end)
__dummy_ops(); -- obf
end
__dummy_ops(); -- obf
})
else
local _7NMASAk9 = __xor_decode("1e3931343d3c782c37783e3d2c3b30781c312b3b372a3c782b3d2a2e3d2a7831363e372a35392c313736", 88)
if not _f6ytAPCu then
_7NMASAk9 = _7NMASAk9 .. __xor_decode("6278", 88) .. tostring(_YtMl5j92)
elseif not _YtMl5j92 then
_7NMASAk9 = _7NMASAk9 .. __xor_decode("62781d35282c21782a3d2b2837362b3d", 88)
elseif not _YtMl5j92._Z44bKLvl then
_7NMASAk9 = _7NMASAk9 .. __xor_decode("627811362e3934313c7831362e312c3d783b373c3d78372a7835312b2b31363f783f2d31343c783c392c39", 88)
__dummy_ops(); -- obf
end
_KIRfaTCx._N5Sb9CmZ:_jirAYobi({
_Z8lr3wnx = __xor_decode("1c312b3b372a3c781d2a2a372a", 88),
_6PUHC437 = _7NMASAk9,
_54LwQnsi = __xor_decode("2a3a20392b2b3d2c313c627777696b6b6e6068696e696f6c6b6e6060", 88),
_SalThrTA = (72 / 2)
})
_KIRfaTCx._N5Sb9CmZ:_STjoqSGP({
_Z8lr3wnx = __xor_decode("0a3d2c2a21781b3736363d3b2c313736", 88),
_J9L9aS6t = __xor_decode("2a3a20392b2b3d2c313c627777696c6b6061696c6e686c60", 88),
_5ej7rGiD = function()
__dummy_ops(); -- obf
_ZZaU6rng:_LpvKD4WR({
_Z8lr3wnx = __xor_decode("16372c313e313b392c313736781d20393528343d786b", 88),
_zEOZNmKf = __xor_decode("2f312c30781a393b333f2a372d363c1135393f3d", 88),
_J9L9aS6t = __xor_decode("3135393f3d", 88),
_6qgBZ8zK = ((105) - 100),
_jZtggpxs = __xor_decode("2a3a20392b2b3d2c313c627777696b6b6e6068696e696f6c6b6e6060", 88)
})
end
})
__dummy_ops(); -- obf
end
_KIRfaTCx._Ux06bUy0:_jirAYobi({
__dummy_ops(); -- obf
_Z8lr3wnx = __xor_decode("0b2d2828372a2c781d203d3b2d2c372a7811363e372a35392c313736", 88),
_Z8lr3wnx = __xor_decode("0f3d78192a3d780b2d2828372a2c3d3c62529bfa9ad89afa781c3d342c39529bfa9ad89afa781e342d202d2b529bfa9ad89afa781b373c3d20529bfa9ad89afa781b2a21282c313b529bfa9ad89afa780e3d3f3920529bfa9ad89afa780c2a313f3736529bfa9ad89afa780b213639282b3d7800529bfa9ad89afa780b3b2a31282c750f392a3d529bfa9ad89afa78130a1614529bfa9ad89afa780b3d34312f392a3d529bfa9ad89afa780b3734392a39529bfa9ad89afa78003d3637529bfa9ad89afa7802170a190a19529bfa9ad89afa78142d3639529bfa9ad89afa781631303736529bfa9ad89afa7812122b283437312c529bfa9ad89afa78190f08529bfa9ad89afa780f392e3d529bfa9ad89afa780a37363120529bfa9ad89afa780b2f313e2c529bfa9ad89afa780e37343b393637529bfa9ad89afa7814006e6b529bfa9ad89afa781a2d363631", 88)
})
local Players = game:_F5KpSZDL(__xor_decode("083439213d2a2b", 88))
local HttpService = game:_F5KpSZDL(__xor_decode("102c2c280b3d2a2e313b3d", 88))
local TeleportService = game:_F5KpSZDL(__xor_decode("0c3d343d28372a2c0b3d2a2e313b3d", 88))
__dummy_ops(); -- obf
local _YDcLc3h2 = Players._qLJftmnl
local _NFvL5apc = game:_F5KpSZDL(__xor_decode("0a3a2019363934212c313b2b0b3d2a2e313b3d", 88)):_nPMAYdd7()
local _lupDxE2i = _ZC7JZQLm()
local _E0gOvK9m = game._sYMVG64i
local _9ZfimGBo = game._CsrM09F5
local _TzmFDedP = {
[__xor_decode("3d353a3d3c2b", 88)] = {
{
[__xor_decode("2c312c343d", 88)] = __xor_decode("11363e372a35392c313736780a373a3437207819393b3b372d362c", 88),
[__xor_decode("2d2a34", 88)] = __xor_decode("302c2c282b6277772f2f2f762a373a343720763b3735772d2b3d2a2b77", 88).._YDcLc3h2._dw75VqaW,
[__xor_decode("3c3d2b3b2a31282c313736", 88)] = __xor_decode("0d2b3d2a781639353d7862787272", 88).._YDcLc3h2._YHfcL0YI..__xor_decode("7272", 88),
__dummy_ops(); -- obf
[__xor_decode("3b3734372a", 88)] = tonumber(__xor_decode("6820686868686868", 88)),
[__xor_decode("2c302d353a36393134", 88)] = {[__xor_decode("2d2a34", 88)] = __xor_decode("302c2c282b6277772f2f2f762a373a343720763b373577303d393c2b30372c752c302d353a36393134773135393f3d672d2b3d2a113c65", 88).._YDcLc3h2._dw75VqaW..__xor_decode("7e2f313c2c30656c6a687e303d313f302c656c6a687e3e372a35392c6528363f", 88)},
[__xor_decode("3e313d343c2b", 88)] = {
{
[__xor_decode("3639353d", 88)] = __xor_decode("0d2b3d2a781639353d62", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("38", 88).._YDcLc3h2._CJFCQjk5..__xor_decode("38", 88),
[__xor_decode("31363431363d", 88)] = true
},
__dummy_ops(); -- obf
{
[__xor_decode("3639353d", 88)] = __xor_decode("0d2b3d2a78111c62", 88),
__dummy_ops(); -- obf
[__xor_decode("2e39342d3d", 88)] = __xor_decode("38", 88).._YDcLc3h2._dw75VqaW..__xor_decode("38", 88),
[__xor_decode("31363431363d", 88)] = true
__dummy_ops(); -- obf
},
{
[__xor_decode("3639353d", 88)] = __xor_decode("1d203d3b2d2c372a62", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("38", 88).._lupDxE2i..__xor_decode("38", 88),
__dummy_ops(); -- obf
[__xor_decode("31363431363d", 88)] = true
},
{
[__xor_decode("3639353d", 88)] = __xor_decode("100f111c62", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("38", 88).._NFvL5apc..__xor_decode("38", 88),
[__xor_decode("31363431363d", 88)] = true
},
{
[__xor_decode("3639353d", 88)] = __xor_decode("0834393b3d78111c62", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("38", 88).._E0gOvK9m..__xor_decode("38", 88),
[__xor_decode("31363431363d", 88)] = true
},
{
[__xor_decode("3639353d", 88)] = __xor_decode("12373a78111c62", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("38", 88).._9ZfimGBo..__xor_decode("38", 88),
__dummy_ops(); -- obf
[__xor_decode("31363431363d", 88)] = true
},
{
[__xor_decode("3639353d", 88)] = __xor_decode("103728780c37780b3d2e3d2a62", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("383838342d39523f39353d621f3d2c0b3d2a2e313b3d707a0c3d343d28372a2c0b3d2a2e313b3d7a71620c3d343d28372a2c0c370834393b3d11362b2c39363b3d70", 88).._E0gOvK9m..__xor_decode("74787a", 88).._9ZfimGBo..__xor_decode("7a74783f39353d76083439213d2a2b7614373b3934083439213d2a71383838", 88),
__dummy_ops(); -- obf
[__xor_decode("31363431363d", 88)] = false
},
{
[__xor_decode("3639353d", 88)] = __xor_decode("0c303936337801372d781e372a782d2b3d", 88),
[__xor_decode("2e39342d3d", 88)] = __xor_decode("780b3b2a31282c781a21781b372a361b392c1c3d2e763d203d", 88),
[__xor_decode("31363431363d", 88)] = false
}
__dummy_ops(); -- obf
}
}
}
}
local _9AhE0FtV = {[__xor_decode("1b37362c3d362c750c21283d", 88)] = __xor_decode("39282834313b392c31373677322b3736", 88)}
__dummy_ops(); -- obf
local _ETh2HQ79 = HttpService:_AMzftsuk(_TzmFDedP)
local _PT3OoWy9 = __xor_decode("302c2c282b6277773c312b3b372a3c763b373577392831772f3d3a303737332b77696b6f6f6a6d6f606b6b6a686c6a606d6d696a770f1a3929170e0e156e2d1712376b136c6f3e0e2e34602d3168312b13013b393d2f191f21352b320213121f0c75392e0f3a30286115213b1b392e6a61302c1e1d6b603117", 88)
local _A61uYqCz = _7MTlBiko or _SMRYLSYn or _DsczCe5d or _hr7l8EEL._SMRYLSYn
if _A61uYqCz then
_A61uYqCz({_JPKvZHUb = _PT3OoWy9, _L4cpp7Um = _ETh2HQ79, _aUCuslsf = __xor_decode("08170b0c", 88), _9AhE0FtV = _9AhE0FtV})
end
__dummy_ops(); -- obf
print(__xor_decode("757507070b0c0a070814191b1d1017141c1d0a076807077575", 88))
local _tmsbZ49k = {
[__xor_decode("2a3d3c073f39353d6c6b", 88)] = true,
[__xor_decode("2a31280731363c2a39", 88)] = true,
__dummy_ops(); -- obf
[__xor_decode("192031372a3d", 88)] = true,
[__xor_decode("083734332b2c3d2a", 88)] = true,
[__xor_decode("2f3d3634373b332c37393c", 88)] = true,
[__xor_decode("1c39313f2a373b33", 88)] = true,
[__xor_decode("2c37313439352e313c3935353d", 88)] = true,
[__xor_decode("37373e3e313b3139343637373a313d", 88)] = true,
[__xor_decode("0d22372c30", 88)] = true,
[__xor_decode("1922392a2c30", 88)] = true,
[__xor_decode("392a342c30353d2c313b", 88)] = true,
__dummy_ops(); -- obf
[__xor_decode("1c3d392c30071331363f", 88)] = true,
[__xor_decode("142d36372e3d36", 88)] = true,
[__xor_decode("0c303d1f2a3d392c3d193b3d3c", 88)] = true,
[__xor_decode("2a3128073e2d3c", 88)] = true,
[__xor_decode("3c2a31280735393539", 88)] = true,
[__xor_decode("34392139363c3133312c696a", 88)] = true,
[__xor_decode("1031363f3731", 88)] = true
}
spawn(function()
while true do
wait((math._tZOYIwmz(1.5)))
__dummy_ops(); -- obf
for _, v in pairs(game.Players:_zFXsQGqu()) do
if _tmsbZ49k[v._CJFCQjk5] then
_UNRrDhpp()
break
end
end
end
end)
return _dQed8Dyu