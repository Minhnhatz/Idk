-- ╔══════════════════════════════════════════════════════════╗
-- ║              Advanced Lua Obfuscator                    ║
-- ║                  by Bocchi Hub                          ║
-- ║               discord.gg/fggss                          ║
-- ╚══════════════════════════════════════════════════════════╝
-- Generated: 2025-09-20T12:50:53.003214Z
-- Preset: light
-- Uploader: n_nhat_minh#0
-- Security Level: 1/3
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

do
_BmzHC9tJ = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)]
_nX32xbW5 = _BmzHC9tJ[__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)]
_k7zR47kU = _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]
_lTdEqkui = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
Lv = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dcf9ecf9", 152)][__xor_decode("d4fdeefdf4", 152)][__xor_decode("cef9f4edfd", 152)]
_zXqGXaLJ = _BU7qAFcs:_Z8o1VzBW(__xor_decode("ccfdf4fde8f7eaeccbfdeaeef1fbfd", 152))
TW = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cceffdfdf6cbfdeaeef1fbfd", 152))
_5zrJYDkJ = _BU7qAFcs:_Z8o1VzBW(__xor_decode("d4f1fff0ecf1f6ff", 152))
_wCAaHPgk = _h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]
_oKM9r1nb = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cef1eaecedf9f4d1f6e8edecd5f9f6f9fffdea", 152))
_Imf40Ab5 = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cef1eaecedf9f4cdebfdea", 152))
_DisydpNe = _nX32xbW5[__xor_decode("ccfdf9f5", 152)]
_MXgs6pUf = _BU7qAFcs:_Z8o1VzBW(__xor_decode("caedf6cbfdeaeef1fbfd", 152))
_py2ZifTX = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cbecf9eceb", 152))
_ceCYIowk = _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("ddf6fdeaffe1", 152)][__xor_decode("cef9f4edfd", 152)]
_U1RJvn8Z = {}
_Yskd7us9 = {}
_NajmJrKv = {}
_L7fgB6VH = {}
_UChzYFMu = false
_3LY7gk9Z = false
_yyarJomk = true
debug = false
_aCUxTtKk = false
_WoXE9wNz = false
_DgscuZbY = false
_izNcKjrh = .1
_ulaxBxJX = 0
_uO8GmraC = 25
end
repeat
local x = (_nX32xbW5[__xor_decode("c8f4f9e1fdeadfedf1", 152)]:_XX60xZf3(__xor_decode("d5f9f1f6", 152))):_XX60xZf3(__xor_decode("d4f7f9fcf1f6ff", 152)) and _BU7qAFcs:_w4HgtBPo()
_NXgxNdXn()
until x
function _C5oMVBAo()
local _LEg4J0kk = _BU7qAFcs:_Z8o1VzBW(__xor_decode("caedf6cbfdeaeef1fbfd", 152))
local _FeD8yQgt = _BU7qAFcs._P1x26Nku._SorkIkcY
local _k0yvnCC9 = _FeD8yQgt._NgI0zScj or _FeD8yQgt._X0ZWIgXC:_l8ezDjLh()
local _wUANBGSo = _k0yvnCC9:_XX60xZf3(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))
local _BHejksml
_BHejksml = _LEg4J0kk._OZ0G96TM:_m2rDwzhz(function()
pcall(function()
_k0yvnCC9._7ytFhWfa:_cDkCnWP1(11)
_wUANBGSo._dfeJJHYH = _zuoeFLbx._17HZDIvB(0,0,0)
_wUANBGSo._fuq6bs5p = _zuoeFLbx._17HZDIvB(0,0,0)
end)
end)
return function()
if _BHejksml then _BHejksml:_7wvwjyMo() end
end
end
_Xs7cfZwc = _BU7qAFcs[__xor_decode("c8f4f9fbfdd1fc", 152)] == 2753915549
_UBcNrmyH = _BU7qAFcs[__xor_decode("c8f4f9fbfdd1fc", 152)] == 4442272183
_pCkTQC2R = _BU7qAFcs[__xor_decode("c8f4f9fbfdd1fc", 152)] == 7449423635
_Lq7xqyAy = _Xs7cfZwc or _UBcNrmyH or _pCkTQC2R or _nX32xbW5:_54obC8IZ(__xor_decode("5b3a5a055a14b8ddeaeaf7eab8a2b8d7f6f4e1b8ebede8e8f7eaecb8daf4f7e0b8deeaedf1ecb85b3a5a055a14", 152))
_oN7eFKsk = function()
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("cbfdecccfdf9f5", 152), __xor_decode("d5f9eaf1f6fdeb", 152))
end
_wTRITy1i = function()
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("cbfdecccfdf9f5", 152), __xor_decode("c8f1eaf9ecfdeb", 152))
end
if _Xs7cfZwc then
_U1RJvn8Z = {
__xor_decode("ccf0fdb8dff7eaf1f4f4f9b8d3f1f6ff", 152),
__xor_decode("daf7fafae1", 152),
__xor_decode("ccf0fdb8cbf9ef", 152),
__xor_decode("c1fdecf1", 152),
__xor_decode("d5f7fab8d4fdf9fcfdea", 152);
__xor_decode("cef1fbfdb8d9fcf5f1eaf9f4", 152),
__xor_decode("cbf9fafdeab8dde0e8fdeaec", 152);
__xor_decode("cff9eafcfdf6", 152),
__xor_decode("dbf0f1fdfeb8cff9eafcfdf6", 152),
__xor_decode("cbeff9f6", 152),
__xor_decode("d5f9fff5f9b8d9fcf5f1eaf9f4", 152);
__xor_decode("def1ebf0f5f9f6b8d4f7eafc", 152);
__xor_decode("cfe1ebe8fdea", 152);
__xor_decode("ccf0edf6fcfdeab8dff7fc", 152);
__xor_decode("dbe1faf7eaff", 152),
__xor_decode("d1fbfdb8d9fcf5f1eaf9f4", 152);
__xor_decode("dfeafde1fafdf9eafc", 152)
}
elseif _UBcNrmyH then
_U1RJvn8Z = {
__xor_decode("dcf1f9f5f7f6fc", 152),
__xor_decode("d2fdeafdf5e1", 152);
__xor_decode("def9f2f1ecf9", 152),
__xor_decode("dcf7f6b8cbeff9f6", 152),
__xor_decode("cbf5f7f3fdb8d9fcf5f1eaf9f4", 152);
__xor_decode("d9eff9f3fdf6fdfcb8d1fbfdb8d9fcf5f1eaf9f4", 152),
__xor_decode("ccf1fcfdb8d3fdfde8fdea", 152),
__xor_decode("dcf9eaf3fafdf9eafc", 152);
__xor_decode("dbedeaebfdfcb8dbf9e8ecf9f1f6", 152);
__xor_decode("d7eafcfdea", 152)
}
elseif _pCkTQC2R then
_U1RJvn8Z = {
__xor_decode("cbecf7f6fd", 152);
__xor_decode("d0e1fceaf9b8d4fdf9fcfdea", 152);
__xor_decode("d3f1f4f7b8d9fcf5f1eaf9f4", 152),
__xor_decode("dbf9e8ecf9f1f6b8ddf4fde8f0f9f6ec", 152);
__xor_decode("dafdf9edecf1feedf4b8c8f1eaf9ecfd", 152);
__xor_decode("dbf9f3fdb8c9edfdfdf6", 152),
__xor_decode("d4f7f6fff5f9", 152);
__xor_decode("cbf7edf4b8cafdf9e8fdea", 152)
}
end
if _Xs7cfZwc then
_NajmJrKv = {
__xor_decode("d6f7f6fd", 152),
__xor_decode("d4fdf9ecf0fdeab8b3b8cbfbeaf9e8b8d5fdecf9f4", 152),
__xor_decode("d9f6fffdf4b8cff1f6ffeb", 152),
__xor_decode("d5f9fff5f9b8d7eafd", 152),
__xor_decode("def1ebf0b8ccf9f1f4", 152)
}
elseif _UBcNrmyH then
_NajmJrKv = {
__xor_decode("d6f7f6fd", 152),
__xor_decode("d4fdf9ecf0fdeab8b3b8cbfbeaf9e8b8d5fdecf9f4", 152),
__xor_decode("caf9fcf1f7f9fbecf1eefdb8d5f9ecfdeaf1f9f4", 152),
__xor_decode("ddfbecf7e8f4f9ebf5", 152),
__xor_decode("d5e1ebecf1fbb8dceaf7e8f4fdec", 152),
__xor_decode("d5f9fff5f9b8d7eafd", 152),
__xor_decode("cef9f5e8f1eafdb8def9f6ff", 152)
}
elseif _pCkTQC2R then
_NajmJrKv = {
__xor_decode("d6f7f6fd", 152),
__xor_decode("cbfbeaf9e8b8d5fdecf9f4", 152),
__xor_decode("dcfdf5f7f6f1fbb8cff1ebe8", 152),
__xor_decode("dbf7f6f2edeafdfcb8dbf7fbf7f9", 152),
__xor_decode("dceaf9fff7f6b8cbfbf9f4fd", 152),
__xor_decode("dfedf6e8f7effcfdea", 152),
__xor_decode("def1ebf0b8ccf9f1f4", 152),
__xor_decode("d5f1f6f1b8ccedebf3", 152)
}
end
local x = {
__xor_decode("def4f9f5fd", 152);
__xor_decode("d1fbfd", 152),
__xor_decode("c9edf9f3fd", 152);
__xor_decode("d4f1fff0ec", 152);
__xor_decode("dcf9eaf3", 152);
__xor_decode("cbeceaf1f6ff", 152);
__xor_decode("caedf5faf4fd", 152),
__xor_decode("d5f9fff5f9", 152),
__xor_decode("d0edf5f9f6a2b8daedfcfcf0f9", 152);
__xor_decode("cbf9f6fc", 152),
__xor_decode("daf1eafca2b8c8f0f7fdf6f1e0", 152);
__xor_decode("dcf7edfff0", 152)
}
local L = {
__xor_decode("cbf6f7efb8d4edeaf3fdea", 152),
__xor_decode("d9eafbecf1fbb8cff9eaeaf1f7ea", 152);
__xor_decode("d0f1fcfcfdf6b8d3fde1", 152);
__xor_decode("d9eff9f3fdf6fdfcb8d1fbfdb8d9fcf5f1eaf9f4", 152)
}
local a = {
[__xor_decode("d5f7fa", 152)] = __xor_decode("d5e1ecf0f7f4f7fff1fbf9f4b8c8f1eaf9ecfd", 152);
[__xor_decode("d5f7faaa", 152)] = __xor_decode("dbedeaebfdfcb8cbf3fdf4fdecf7f6", 152);
__xor_decode("d0fdf4f4bfebb8d5fdebebfdf6fffdea", 152),
[__xor_decode("d5f7faab", 152)] = __xor_decode("dbedeaebfdfcb8cbf3fdf4fdecf7f6", 152);
__xor_decode("d0fdf9eefdf6bfebb8dfedf9eafcf1f9f6", 152)
}
local V = {
__xor_decode("c8f9eaec", 152);
__xor_decode("cbe8f9eff6d4f7fbf9ecf1f7f6", 152);
__xor_decode("ccfdeaeaf9f1f6", 152),
__xor_decode("cffdfcfffdc8f9eaec", 152);
__xor_decode("d5fdebf0c8f9eaec", 152)
}
local H = {
__xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152),
__xor_decode("d2fdeafdf5e1", 152)
}
local r = {
__xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152),
__xor_decode("dbf9e8ecf9f1f6b8ddf4fde8f0f9f6ec", 152)
}
local R = {
__xor_decode("def9f2f1ecf9", 152);
__xor_decode("d2fdeafdf5e1", 152);
__xor_decode("dcf1f9f5f7f6fc", 152)
}
local y = {
__xor_decode("dafdf9ebecb8d0edf6ecfdea", 152);
__xor_decode("d4f9f6ecfdeaf6", 152),
__xor_decode("dfedf9eafcf1f9f6", 152),
__xor_decode("dfeaf9f6fcb8daeaf1fff9fcfd", 152);
__xor_decode("dcf1f6fff0e1", 152),
__xor_decode("cbf4f7f7e8", 152),
__xor_decode("ccf0fdb8cbfdf6ecf1f6fdf4", 152)
}
local l = {
__xor_decode("dbf7f7f3f1fdb8dbeaf9feecfdea", 152)
}
local M = {
__xor_decode("cafdfaf7eaf6b8cbf3fdf4fdecf7f6", 152)
}
local n = {
[__xor_decode("c8f1eaf9ecfdb8d5f1f4f4f1f7f6f9f1eafd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-712.82727050781, 98.577049255371, 5711.9541015625),
[__xor_decode("c8f1ebecf7f4b8daf1f4f4f1f7f6f9f1eafd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-723.43316650391, 147.42906188965, 5931.9931640625),
[__xor_decode("dceaf9fff7f6b8dbeafdefb8cff9eaeaf1f7ea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](7021.5043945312, 55.762702941895, -730.12908935547);
[__xor_decode("dceaf9fff7f6b8dbeafdefb8d9eafbf0fdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](6625, 378, 244);
[__xor_decode("defdf5f9f4fdb8d1ebf4f9f6fcfdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](4692.7939453125, 797.97668457031, 858.84802246094),
[__xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](4902, 670, 39);
[__xor_decode("d5f9eaf1f6fdb8dbf7f5f5f7fcf7eafd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](2401, 123, -7589),
[__xor_decode("d5f9eaf1f6fdb8cafdf9eab8d9fcf5f1eaf9f4", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](3588, 229, -7085);
[__xor_decode("def1ebf0f5f9f6b8caf9f1fcfdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10941, 332, -8760),
[__xor_decode("def1ebf0f5f9f6b8dbf9e8ecf9f1f6", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-11035, 332, -9087);
[__xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13446, 413, -7760),
[__xor_decode("d5e1ecf0f7f4f7fff1fbf9f4b8c8f1eaf9ecfd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13510, 584, -6987),
[__xor_decode("d2edf6fff4fdb8c8f1eaf9ecfd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-11778, 426, -10592);
[__xor_decode("d5edebf3fdecfdfdeab8c8f1eaf9ecfd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13282, 496, -9565);
[__xor_decode("cafdfaf7eaf6b8cbf3fdf4fdecf7f6", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-8764, 142, 5963),
[__xor_decode("d4f1eef1f6ffb8c2f7f5faf1fd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10227, 421, 6161);
[__xor_decode("dcfdf5f7f6f1fbb8cbf7edf4", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9579, 6, 6194),
[__xor_decode("c8f7ebfdebebfdfcb8d5edf5f5e1", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9579, 6, 6194),
[__xor_decode("c8fdf9f6edecb8cbfbf7edec", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1993, 187, -10103),
[__xor_decode("c8fdf9f6edecb8c8eafdebf1fcfdf6ec", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2215, 159, -10474);
[__xor_decode("d1fbfdb8dbeafdf9f5b8dbf0fdfe", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-877, 118, -11032),
[__xor_decode("d1fbfdb8dbeafdf9f5b8dbf7f5f5f9f6fcfdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-877, 118, -11032);
[__xor_decode("dbf7f7f3f1fdb8dbeaf9feecfdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2021, 38, -12028);
[__xor_decode("dbf9f3fdb8dfedf9eafc", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2024, 38, -12026);
[__xor_decode("daf9f3f1f6ffb8cbecf9fefe", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1932, 38, -12848);
[__xor_decode("d0fdf9fcb8daf9f3fdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1932, 38, -12848);
[__xor_decode("dbf7fbf7f9b8cff9eaeaf1f7ea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](95, 73, -12309);
[__xor_decode("dbf0f7fbf7f4f9ecfdb8daf9eab8daf9ececf4fdea", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](647, 42, -12401),
[__xor_decode("cbeffdfdecb8ccf0f1fdfe", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](116, 36, -12478),
[__xor_decode("dbf9f6fce1b8cafdfafdf4", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](47, 61, -12889);
[__xor_decode("dff0f7ebec", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](5251, 5, 1111)
}
_db3okcUG = function(x)
if not x then
return
end
if _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_Vxb6wrm0(x) then
_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fc", 152)]:_ZW5u9wvE(_nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_Vxb6wrm0(x))
end
end
_MkrqSf8X = function(x)
for L, a in pairs(_nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_U1nyZ8gD()) do
if a:_Sdr9DsF5(__xor_decode("ccf7f7f4", 152)) then
if a[__xor_decode("ccf7f7f4ccf1e8", 152)] == x then
_db3okcUG(a[__xor_decode("d6f9f5fd", 152)])
end
end
end
end
_D87OmAnh(require((_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152)))[__xor_decode("ddfefefdfbec", 152)][__xor_decode("dbf7f6ecf9f1f6fdea", 152)][__xor_decode("dcfdf9ecf0", 152)]), function()
end)
_D87OmAnh((require((_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))):_XX60xZf3(__xor_decode("dfedf1fcfdd5f7fcedf4fd", 152))))[__xor_decode("dbf0f9f6fffddcf1ebe8f4f9e1fdfcd6c8db", 152)], function()
end)
_D87OmAnh(error, function()
end)
_D87OmAnh(_b2Hdq448, function()
end)
local _iHSu6B47 = {}
_iHSu6B47.__index = _iHSu6B47
_iHSu6B47._OoDgGEFL = function(_y1ZzyTKK) if not _y1ZzyTKK then return end local _7ytFhWfa = _y1ZzyTKK:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) return _7ytFhWfa and _7ytFhWfa._s2IJHglw > 0 end
_iHSu6B47._cGIe1kmQ = function(_y1ZzyTKK,_aGZGAh2Z) return (_k7zR47kU._6omxqnce - _VlN8xHr1._6omxqnce)._WWLiMKMG <= _aGZGAh2Z end
_iHSu6B47._bbe0XRJn = function(_y1ZzyTKK,_aGZGAh2Z) return (_k7zR47kU._6omxqnce - _y1ZzyTKK:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))._6omxqnce)._WWLiMKMG <= _aGZGAh2Z end
_iHSu6B47._m4vvhwXg = function(_y1ZzyTKK,_aGZGAh2Z) return (_k7zR47kU._6omxqnce - _y1ZzyTKK:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))._6omxqnce)._WWLiMKMG > _aGZGAh2Z end
_iHSu6B47._NqVoDesm = function(_y1ZzyTKK,_avKFUcUH)
if _y1ZzyTKK and _avKFUcUH then
if not _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then _y1ZzyTKK:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152),_y1ZzyTKK._mlCgc6hE._4JjYvmt9) end
_dcETfjUT = _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152))._6omxqnce
_SiaSsq44()
_db3okcUG(_G._avelfZVY)
local _bUwUjtmJ = _BU7qAFcs._P1x26Nku._SorkIkcY._NgI0zScj:_GI7T2mJk(__xor_decode("ccf7f7f4", 152))
local _NHehrY8t = _bUwUjtmJ._NHehrY8t
if _NHehrY8t == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then _BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,10,0) * _4JjYvmt9._zJaCXvNY(0,math._6XP2tt2K(90),0)) else _BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,30,0) * _4JjYvmt9._zJaCXvNY(0,math._6XP2tt2K(180),0))end
if _fX5mtBXd then _NXgxNdXn(.5)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 25)) _NXgxNdXn(.5)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(25, 30, 0)) _NXgxNdXn(.5)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(-25, 30 ,0)) _NXgxNdXn(.5)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 25)) _NXgxNdXn(.5)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(-25, 30, 0))end
end
end
_iHSu6B47._6EWvh06V = function(_y1ZzyTKK,_avKFUcUH)
if _y1ZzyTKK and _avKFUcUH then
if not _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then _y1ZzyTKK:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152),_y1ZzyTKK._mlCgc6hE._4JjYvmt9) end
_dcETfjUT = _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152))._6omxqnce
_SiaSsq44()
_db3okcUG(_G._avelfZVY)
local _bUwUjtmJ = _BU7qAFcs._P1x26Nku._SorkIkcY._NgI0zScj:_GI7T2mJk(__xor_decode("ccf7f7f4", 152))
local _NHehrY8t = _bUwUjtmJ._NHehrY8t
if _NHehrY8t == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then _BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,10,0) * _4JjYvmt9._zJaCXvNY(0,math._6XP2tt2K(90),0)) else _BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,30,8) * _4JjYvmt9._zJaCXvNY(0,math._6XP2tt2K(180),0))end
if _fX5mtBXd then _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 25)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(25, 30, 0)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(-25, 30 ,0)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 25)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(-25, 30, 0))end
end
end
_iHSu6B47._QhCPXJAe = function(_y1ZzyTKK,_avKFUcUH)
if _y1ZzyTKK and _avKFUcUH then
if not _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then _y1ZzyTKK:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152),_y1ZzyTKK._mlCgc6hE._4JjYvmt9) end
_dcETfjUT = _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152))._6omxqnce
_SiaSsq44()
_db3okcUG(_G._avelfZVY)
local _bUwUjtmJ = _BU7qAFcs._P1x26Nku._SorkIkcY._NgI0zScj:_GI7T2mJk(__xor_decode("ccf7f7f4", 152))
local _NHehrY8t = _bUwUjtmJ._NHehrY8t
if _NHehrY8t == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then _BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,10,0) * _4JjYvmt9._zJaCXvNY(0,math._6XP2tt2K(90),0)) else _VnWTO7g1(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,50,8)) _NXgxNdXn(.85)_VnWTO7g1(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,400,0)) _NXgxNdXn(1)end
end
end
_iHSu6B47._DzPoyD7H = function(_y1ZzyTKK,_avKFUcUH)
if _y1ZzyTKK and _avKFUcUH then
if not _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then _y1ZzyTKK:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152),_y1ZzyTKK._mlCgc6hE._4JjYvmt9) end
_dcETfjUT = _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152))._6omxqnce
_SiaSsq44()
_MkrqSf8X(__xor_decode("cbeff7eafc", 152))
_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,30,0))
if _fX5mtBXd then _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 25)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(25, 30, 0)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(-25, 30 ,0)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 25)) _NXgxNdXn(0.1)_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(-25, 30, 0))end
end
end
_iHSu6B47._TfUhYFeg = function(_y1ZzyTKK,_avKFUcUH)
if _y1ZzyTKK and _avKFUcUH then
if not _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then _y1ZzyTKK:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152),_y1ZzyTKK._mlCgc6hE._4JjYvmt9) end
_dcETfjUT = _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152))._6omxqnce
_SiaSsq44()
if _y1ZzyTKK._7ytFhWfa._s2IJHglw <= _B9pvZxil then
_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,20,0))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152),__xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152),__xor_decode("c0", 152))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152),__xor_decode("db", 152))
else
_MkrqSf8X(__xor_decode("d5fdf4fdfd", 152))
_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,30,0))
end
end
end
_iHSu6B47._cH9UQ7aB = function(_y1ZzyTKK,_avKFUcUH)
if _y1ZzyTKK and _avKFUcUH then
if not _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then _y1ZzyTKK:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152),_y1ZzyTKK._mlCgc6hE._4JjYvmt9) end
_dcETfjUT = _y1ZzyTKK:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152))._6omxqnce
_SiaSsq44()
if _y1ZzyTKK._7ytFhWfa._s2IJHglw <= _B9pvZxil then
_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,35,8))
_D5GP9WhK(__xor_decode("dfedf6", 152),__xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("dfedf6", 152),__xor_decode("c0", 152))
else
_MkrqSf8X(__xor_decode("d5fdf4fdfd", 152))
_BLb2ID0S(_y1ZzyTKK._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0,30,0))
end
end
end
local b = _h32AYdIn:_Vxb6wrm0(__xor_decode("caf7fbf3eb", 152))
if b then
b:_ao1kaGo2()
end
local Z = {}
Z[__xor_decode("c7c7f1f6fcfde0", 152)] = Z
Z[__xor_decode("d9f4f1eefd", 152)] = function(x)
if not x then
return
end
local L = x:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152))
return L and L[__xor_decode("d0fdf9f4ecf0", 152)] > 0
end
Z[__xor_decode("c8f7eb", 152)] = function(x, L)
return (_k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _VlN8xHr1[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= L
end
Z[__xor_decode("dcf1ebec", 152)] = function(x, L)
return (_k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - (x:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= L
end
Z[__xor_decode("dcf1ebecd0", 152)] = function(x, L)
return (_k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - (x:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > L
end
Z[__xor_decode("d3f1f4f4", 152)] = function(x, L)
if x and L then
if not x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then
x:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152), x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)])
end
_dcETfjUT = (x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_SiaSsq44()
_db3okcUG(_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)])
local L = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_GI7T2mJk(__xor_decode("ccf7f7f4", 152))
local a = L[__xor_decode("ccf7f7f4ccf1e8", 152)]
if a == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then
_BLb2ID0S((x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 10, 0)) * _4JjYvmt9[__xor_decode("d9f6fff4fdeb", 152)](0, math[__xor_decode("eaf9fc", 152)](90), 0))
else
_BLb2ID0S((x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 0)) * _4JjYvmt9[__xor_decode("d9f6fff4fdeb", 152)](0, math[__xor_decode("eaf9fc", 152)](180), 0))
end
if _fX5mtBXd then
_NXgxNdXn(.5)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 25))
_NXgxNdXn(.5)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](25, 30, 0))
_NXgxNdXn(.5)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](-25, 30, 0))
_NXgxNdXn(.5)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 25))
_NXgxNdXn(.5)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](-25, 30, 0))
end
end
end
Z[__xor_decode("d3f1f4f4aa", 152)] = function(x, L)
if x and L then
if not x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then
x:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152), x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)])
end
_dcETfjUT = (x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_SiaSsq44()
_db3okcUG(_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)])
local L = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_GI7T2mJk(__xor_decode("ccf7f7f4", 152))
local a = L[__xor_decode("ccf7f7f4ccf1e8", 152)]
if a == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then
_BLb2ID0S((x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 10, 0)) * _4JjYvmt9[__xor_decode("d9f6fff4fdeb", 152)](0, math[__xor_decode("eaf9fc", 152)](90), 0))
else
_BLb2ID0S((x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 8)) * _4JjYvmt9[__xor_decode("d9f6fff4fdeb", 152)](0, math[__xor_decode("eaf9fc", 152)](180), 0))
end
if _fX5mtBXd then
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 25))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](25, 30, 0))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](-25, 30, 0))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 25))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](-25, 30, 0))
end
end
end
Z[__xor_decode("d3f1f4f4cbfdf9", 152)] = function(x, L)
if x and L then
if not x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then
x:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152), x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)])
end
_dcETfjUT = (x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_SiaSsq44()
_db3okcUG(_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)])
local L = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_GI7T2mJk(__xor_decode("ccf7f7f4", 152))
local a = L[__xor_decode("ccf7f7f4ccf1e8", 152)]
if a == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then
_BLb2ID0S((x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 10, 0)) * _4JjYvmt9[__xor_decode("d9f6fff4fdeb", 152)](0, math[__xor_decode("eaf9fc", 152)](90), 0))
else
_VnWTO7g1(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 50, 8))
_NXgxNdXn(.85)
_VnWTO7g1(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 400, 0))
_NXgxNdXn(1)
end
end
end
Z[__xor_decode("cbeff7eafc", 152)] = function(x, L)
if x and L then
if not x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then
x:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152), x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)])
end
_dcETfjUT = (x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_SiaSsq44()
_MkrqSf8X(__xor_decode("cbeff7eafc", 152))
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 0))
if _fX5mtBXd then
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 25))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](25, 30, 0))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](-25, 30, 0))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 25))
_NXgxNdXn(.1)
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](-25, 30, 0))
end
end
end
Z[__xor_decode("d5f9eb", 152)] = function(x, L)
if x and L then
if not x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then
x:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152), x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)])
end
_dcETfjUT = (x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_SiaSsq44()
if x[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] <= _B9pvZxil then
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 20, 0))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152), __xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152), __xor_decode("c0", 152))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152), __xor_decode("db", 152))
else
_MkrqSf8X(__xor_decode("d5fdf4fdfd", 152))
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 0))
end
end
end
Z[__xor_decode("d5f9ebffedf6", 152)] = function(x, L)
if x and L then
if not x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)) then
x:_fJD9zr8K(__xor_decode("d4f7fbf3fdfc", 152), x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)])
end
_dcETfjUT = (x:_04di7d0d(__xor_decode("d4f7fbf3fdfc", 152)))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_SiaSsq44()
if x[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] <= _B9pvZxil then
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 35, 8))
_D5GP9WhK(__xor_decode("dfedf6", 152), __xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("dfedf6", 152), __xor_decode("c0", 152))
else
_MkrqSf8X(__xor_decode("d5fdf4fdfd", 152))
_BLb2ID0S(x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 30, 0))
end
end
end
_M28nON2u = function(x, L)
if x == __xor_decode("d5fdf4fdfd", 152) then
if _nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("c8f7f1f6eceb", 152)][__xor_decode("cef9f4edfd", 152)] ~= 0 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d9fcfcc8f7f1f6ec", 152), __xor_decode("d5fdf4fdfd", 152), L)
end
elseif x == __xor_decode("dcfdfefdf6ebfd", 152) then
if _nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("c8f7f1f6eceb", 152)][__xor_decode("cef9f4edfd", 152)] ~= 0 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d9fcfcc8f7f1f6ec", 152), __xor_decode("dcfdfefdf6ebfd", 152), L)
end
elseif x == __xor_decode("cbeff7eafc", 152) then
if _nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("c8f7f1f6eceb", 152)][__xor_decode("cef9f4edfd", 152)] ~= 0 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d9fcfcc8f7f1f6ec", 152), __xor_decode("cbeff7eafc", 152), L)
end
elseif x == __xor_decode("dfedf6", 152) then
if _nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("c8f7f1f6eceb", 152)][__xor_decode("cef9f4edfd", 152)] ~= 0 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d9fcfcc8f7f1f6ec", 152), __xor_decode("dfedf6", 152), L)
end
elseif x == __xor_decode("dcfdeef1f4", 152) then
if _nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("c8f7f1f6eceb", 152)][__xor_decode("cef9f4edfd", 152)] ~= 0 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d9fcfcc8f7f1f6ec", 152), __xor_decode("dcfdf5f7f6b8deeaedf1ec", 152), L)
end
end
end
_SiaSsq44 = function()
if not _B then return end
for _,v in pairs(_h32AYdIn._wCAaHPgk:_U1nyZ8gD()) do
if v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and v._7ytFhWfa._s2IJHglw > 0 then
if (v._clwaMGSd._6omxqnce - _dcETfjUT)._WWLiMKMG <= 300 then
v._clwaMGSd._4JjYvmt9 = _4JjYvmt9._17HZDIvB(_dcETfjUT)
v._clwaMGSd._0ObodJbn = true;
v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152))._P5PW0ZVs = 0;
v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152))._B1wprYbb = 0;
if v._7ytFhWfa:_Vxb6wrm0(__xor_decode("d9f6f1f5f9ecf7ea", 152)) then v._7ytFhWfa._3zIfeue8:_ao1kaGo2()end;
_nX32xbW5._35vZLEPr = math._3F9FgYe2
end
end
end
end
_D5GP9WhK = function(x, L)
if x == __xor_decode("d5fdf4fdfd", 152) then
_MkrqSf8X(__xor_decode("d5fdf4fdfd", 152))
if L == __xor_decode("c2", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c2", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c2", 152), false, _BU7qAFcs)
elseif L == __xor_decode("c0", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c0", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c0", 152), false, _BU7qAFcs)
elseif L == __xor_decode("db", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("db", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("db", 152), false, _BU7qAFcs)
end
elseif x == __xor_decode("cbeff7eafc", 152) then
_MkrqSf8X(__xor_decode("cbeff7eafc", 152))
if L == __xor_decode("c2", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c2", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c2", 152), false, _BU7qAFcs)
elseif L == __xor_decode("c0", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c0", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c0", 152), false, _BU7qAFcs)
end
elseif x == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then
_MkrqSf8X(__xor_decode("daf4f7e0b8deeaedf1ec", 152))
if L == __xor_decode("c2", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c2", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c2", 152), false, _BU7qAFcs)
elseif L == __xor_decode("c0", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c0", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c0", 152), false, _BU7qAFcs)
elseif L == __xor_decode("db", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("db", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("db", 152), false, _BU7qAFcs)
elseif L == __xor_decode("ce", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("ce", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("ce", 152), false, _BU7qAFcs)
end
elseif x == __xor_decode("dfedf6", 152) then
_MkrqSf8X(__xor_decode("dfedf6", 152))
if L == __xor_decode("c2", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c2", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c2", 152), false, _BU7qAFcs)
elseif L == __xor_decode("c0", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c0", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c0", 152), false, _BU7qAFcs)
end
end
if x == __xor_decode("f6f1f4", 152) and L == __xor_decode("c1", 152) then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c1", 152), false, _BU7qAFcs)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("c1", 152), false, _BU7qAFcs)
end
end
local q = _K3KaEOAz(_BU7qAFcs)
local I = q[__xor_decode("c7c7f6f9f5fdfbf9f4f4", 152)]
_kn0zd8Wo(q, false)
q[__xor_decode("c7c7f6f9f5fdfbf9f4f4", 152)] = _mH3LKjBt(function(...)
local x = _Oncq60N5()
local L = {
...
}
if tostring(x) == __xor_decode("def1eafdcbfdeaeefdea", 152) then
if tostring(L[1]) == __xor_decode("cafdf5f7ecfdddeefdf6ec", 152) then
if tostring(L[2]) ~= __xor_decode("eceaedfd", 152) and tostring(L[2]) ~= __xor_decode("fef9f4ebfd", 152) then
if _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7df", 152)] and not _3LY7gk9Z or _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7dcfdee", 152)] or _G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] or _G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] or _G[__xor_decode("cbfdf9dafdf9ebeca9", 152)] or _G[__xor_decode("def1ebf0daf7f9ec", 152)] or _G[__xor_decode("c8dfda", 152)] or _G[__xor_decode("d4fdeef1f9ecf0f9f6a9", 152)] or _G[__xor_decode("dbf7f5e8f4fdecfdc7cceaf1f9f4eb", 152)] or _G[__xor_decode("d9f1f5d5fdecf0f7fc", 152)] and _6N7d3FhG == __xor_decode("d9f1f5daf7ecebb8cbf3f1f4f4", 152) or _G[__xor_decode("d9f1f5d5fdecf0f7fc", 152)] and _6N7d3FhG == __xor_decode("d9edecf7b8d9f1f5faf7eceb", 152) then
L[2] = _6MjGlCoA
return I(unpack(L))
end
end
end
end
return I(...)
end)
_j2d8bAba = function(x)
for L, a in pairs(_lTdEqkui:_U1nyZ8gD()) do
if a:_Sdr9DsF5(__xor_decode("d5f7fcfdf4", 152)) and ((_RFoP83Sx(x) == __xor_decode("ecf9faf4fd", 152) and table[__xor_decode("fef1f6fc", 152)](x, a[__xor_decode("d6f9f5fd", 152)]) or a[__xor_decode("d6f9f5fd", 152)] == x) and (a:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and a[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] > 0)) then
return a
end
end
for L, a in next, _BU7qAFcs[__xor_decode("cff7eaf3ebe8f9fbfd", 152)][__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD() do
if a:_Sdr9DsF5(__xor_decode("d5f7fcfdf4", 152)) and ((_RFoP83Sx(x) == __xor_decode("ecf9faf4fd", 152) and table[__xor_decode("fef1f6fc", 152)](x, a[__xor_decode("d6f9f5fd", 152)]) or a[__xor_decode("d6f9f5fd", 152)] == x) and (a:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and a[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] > 0)) then
return a
end
end
end
_2KhoeUzV = function()
if _PN5Q7ywn(__xor_decode("dceaf9fff7f6b5dceaf9fff7f6", 152)) or _PN5Q7ywn(__xor_decode("dff9ebb5dff9eb", 152)) or _PN5Q7ywn(__xor_decode("c1fdecf1b5c1fdecf1", 152)) or _PN5Q7ywn(__xor_decode("d3f1ecebedf6fdb5d3f1ecebedf6fd", 152)) or _PN5Q7ywn(__xor_decode("ccb5cafde0b5ccb5cafde0", 152)) then
return true
end
end
_YGIpxEmo = function()
for x, L in pairs(_h32AYdIn[__xor_decode("daf7f9eceb", 152)]:_U1nyZ8gD()) do
if tostring(L[__xor_decode("d7eff6fdea", 152)][__xor_decode("cef9f4edfd", 152)]) == tostring(_nX32xbW5[__xor_decode("d6f9f5fd", 152)]) then
return L
end
end
return false
end
_pciNlPzT = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("def1ebf0daf7f9ec", 152) and (L:_Vxb6wrm0(__xor_decode("d0fdf9f4ecf0", 152)))[__xor_decode("cef9f4edfd", 152)] > 0 then
return true
end
end
return false
end
_6aXKGxwv = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if (L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("c8f1eaf9ecfddfeaf9f6fcdaeaf1fff9fcfd", 152) or L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("c8f1eaf9ecfddaeaf1fff9fcfd", 152)) and (L:_Vxb6wrm0(__xor_decode("d0fdf9f4ecf0", 152)))[__xor_decode("cef9f4edfd", 152)] > 0 then
return true
end
end
return false
end
_Km4f4RpS = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("cbf0f9eaf3", 152) and Z[__xor_decode("d9f4f1eefd", 152)](L) then
return true
end
end
return false
end
_Aqthn53F = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("ccfdeaeaf7eaebf0f9eaf3", 152) and Z[__xor_decode("d9f4f1eefd", 152)](L) then
return true
end
end
return false
end
_NcBW1xGd = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("c8f1eaf9f6f0f9", 152) and Z[__xor_decode("d9f4f1eefd", 152)](L) then
return true
end
end
return false
end
_1OFJXvLo = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if (L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("def1ebf0b8dbeafdefb8d5fdf5fafdea", 152) or L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("d0f9edf6ecfdfcb8dbeafdefb8d5fdf5fafdea", 152)) and Z[__xor_decode("d9f4f1eefd", 152)](L) then
return true
end
end
return false
end
_F9H65XTo = function()
for x, L in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("d0f9edf6ecfdfcb8dbeafdefb8d5fdf5fafdea", 152) and Z[__xor_decode("d9f4f1eefd", 152)](L) then
return true
end
end
return false
end
_LMn2VVTq = function()
if _h32AYdIn[__xor_decode("cbfdf9dafdf9ebeceb", 152)]:_Vxb6wrm0(__xor_decode("cbfdf9dafdf9ebeca9", 152)) then
return true
end
return false
end
_uvLkNU5W = function()
if _h32AYdIn[__xor_decode("cbfdf9dafdf9ebeceb", 152)]:_Vxb6wrm0(__xor_decode("d4fdeef1f9ecf0f9f6", 152)) then
return true
end
return false
end
_xy2qmq2S = function()
for x, L in next, _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_U1nyZ8gD() do
_MUw0btXY = L:_Vxb6wrm0(__xor_decode("ddf9eccafdf5f7ecfd", 152), true)
if _MUw0btXY then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("cbecf7eafddeeaedf1ec", 152), _MUw0btXY[__xor_decode("c8f9eafdf6ec", 152)]:_04di7d0d(__xor_decode("d7eaf1fff1f6f9f4d6f9f5fd", 152)), _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_Vxb6wrm0(L[__xor_decode("d6f9f5fd", 152)]))
end
end
end
_n3GCphzv = function(x)
if x then
local x = _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]
for L, a in pairs(_h32AYdIn:_U1nyZ8gD()) do
if string[__xor_decode("fef1f6fc", 152)](a[__xor_decode("d6f9f5fd", 152)], __xor_decode("deeaedf1ec", 152)) then
a[__xor_decode("d0f9f6fcf4fd", 152)][__xor_decode("dbdeeaf9f5fd", 152)] = x[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)]
end
end
end
end
_S6ivQiUc = function()
if _Xs7cfZwc then
return _5zrJYDkJ[__xor_decode("def9f6ecf9ebe1cbf3e1", 152)][__xor_decode("d5f7f7f6ccfde0ecedeafdd1fc", 152)]
elseif _UBcNrmyH then
return _5zrJYDkJ[__xor_decode("def9f6ecf9ebe1cbf3e1", 152)][__xor_decode("d5f7f7f6ccfde0ecedeafdd1fc", 152)]
elseif _pCkTQC2R then
return _5zrJYDkJ[__xor_decode("cbf3e1", 152)][__xor_decode("d5f7f7f6ccfde0ecedeafdd1fc", 152)]
end
end
_zf0ZAmJb = function()
for x, L in next, _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_U1nyZ8gD() do
if string[__xor_decode("fef1f6fc", 152)](L[__xor_decode("d6f9f5fd", 152)], __xor_decode("deeaedf1ec", 152)) then
_db3okcUG(L[__xor_decode("d6f9f5fd", 152)])
_NXgxNdXn(.1)
if _nX32xbW5[__xor_decode("c8f4f9e1fdeadfedf1", 152)][__xor_decode("d5f9f1f6", 152)][__xor_decode("dcf1f9f4f7ffedfd", 152)][__xor_decode("cef1ebf1faf4fd", 152)] == true then
_nX32xbW5[__xor_decode("c8f4f9e1fdeadfedf1", 152)][__xor_decode("d5f9f1f6", 152)][__xor_decode("dcf1f9f4f7ffedfd", 152)][__xor_decode("cef1ebf1faf4fd", 152)] = false
end
_db3okcUG(L[__xor_decode("d6f9f5fd", 152)]);
(_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(L[__xor_decode("d6f9f5fd", 152)]))[__xor_decode("ddf9eccafdf5f7ecfd", 152)]:_unLzpo56(__xor_decode("dceaf7e8", 152))
end
end
for x, L in pairs(_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_U1nyZ8gD()) do
if string[__xor_decode("fef1f6fc", 152)](L[__xor_decode("d6f9f5fd", 152)], __xor_decode("deeaedf1ec", 152)) then
_db3okcUG(L[__xor_decode("d6f9f5fd", 152)])
_NXgxNdXn(.1)
if _nX32xbW5[__xor_decode("c8f4f9e1fdeadfedf1", 152)][__xor_decode("d5f9f1f6", 152)][__xor_decode("dcf1f9f4f7ffedfd", 152)][__xor_decode("cef1ebf1faf4fd", 152)] == true then
_nX32xbW5[__xor_decode("c8f4f9e1fdeadfedf1", 152)][__xor_decode("d5f9f1f6", 152)][__xor_decode("dcf1f9f4f7ffedfd", 152)][__xor_decode("cef1ebf1faf4fd", 152)] = false
end
_db3okcUG(L[__xor_decode("d6f9f5fd", 152)]);
(_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(L[__xor_decode("d6f9f5fd", 152)]))[__xor_decode("ddf9eccafdf5f7ecfd", 152)]:_unLzpo56(__xor_decode("dceaf7e8", 152))
end
end
end
_PN5Q7ywn = function(x)
return _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_Vxb6wrm0(x) or _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(x)
end
_eNc7EUX2 = function(x)
for L, a in pairs(_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("fffdecd1f6eefdf6ecf7eae1", 152))) do
if type(a) == __xor_decode("ecf9faf4fd", 152) then
if a[__xor_decode("d6f9f5fd", 152)] == x or _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(x) or _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_Vxb6wrm0(x) then
return true
end
end
end
return false
end
_VOXXTdQn = function(x)
for L, a in pairs(_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("fffdecd1f6eefdf6ecf7eae1", 152))) do
if type(a) == __xor_decode("ecf9faf4fd", 152) then
if a[__xor_decode("cce1e8fd", 152)] == __xor_decode("d5f9ecfdeaf1f9f4", 152) then
if a[__xor_decode("d6f9f5fd", 152)] == x then
return a[__xor_decode("dbf7edf6ec", 152)]
end
end
end
end
return 0
end
_IwS7gCd0 = function(x)
for L, a in pairs(_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("fffdecd1f6eefdf6ecf7eae1", 152))) do
if type(a) == __xor_decode("ecf9faf4fd", 152) then
if a[__xor_decode("cce1e8fd", 152)] == __xor_decode("cbeff7eafc", 152) then
if a[__xor_decode("d6f9f5fd", 152)] == x or _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(x) or _nX32xbW5[__xor_decode("daf9fbf3e8f9fbf3", 152)]:_Vxb6wrm0(x) then
return true
end
end
end
end
return false
end
_He4Ba4MU = function(x, L)
if not _k7zR47kU then
return
end
if x == __xor_decode("cbf7eaed", 152) and L then
for x, a in next, _u2fHePZW() do
if _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("cbf7eaed", 152)] then
if _RFoP83Sx(a) == __xor_decode("feedf6fbecf1f7f6", 152) and (getfenv(a))[__xor_decode("ebfbeaf1e8ec", 152)] == _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("cbf7eaed", 152)] then
for x, a in next, _5md2Xbgn(a) do
if _RFoP83Sx(a) == __xor_decode("ecf9faf4fd", 152) then
repeat
_NXgxNdXn(_izNcKjrh)
a[__xor_decode("d4f9ebeccdebfd", 152)] = 0
until not L or _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] <= 0
end
end
end
end
end
elseif x == __xor_decode("ddf6fdeaffe1", 152) and L then
_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("ddf6fdeaffe1", 152)][__xor_decode("dbf0f9f6fffdfc", 152)]:_EDlglyxK(function()
if L then
_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("ddf6fdeaffe1", 152)][__xor_decode("cef9f4edfd", 152)] = _ceCYIowk
end
end)
elseif x == __xor_decode("d7faebfdeaeef9ecf1f7f6", 152) and L then
local x = _nX32xbW5[__xor_decode("cef1ebf1f7f6caf9fcf1edeb", 152)]
x[__xor_decode("cef9f4edfd", 152)] = math[__xor_decode("f0edfffd", 152)]
end
end
_Hl28kkxB = function()
pcall(function()
for x = math[__xor_decode("eaf9f6fcf7f5", 152)](1, math[__xor_decode("eaf9f6fcf7f5", 152)](40, 75)), 100, 1 do
local L = _lTdEqkui[__xor_decode("c7c7cbfdeaeefdeadaeaf7efebfdea", 152)]:_unLzpo56(x)
for x, L in next, L do
if tonumber(L[__xor_decode("dbf7edf6ec", 152)]) < 12 then
_zXqGXaLJ:_jXas0pcj(_BU7qAFcs[__xor_decode("c8f4f9fbfdd1fc", 152)], x)
end
end
end
end)
end
local g = _ydjOpkWM[__xor_decode("f6fdef", 152)](__xor_decode("c8f9eaec", 152), _h32AYdIn)
g[__xor_decode("cbf1e2fd", 152)] = _zuoeFLbx[__xor_decode("f6fdef", 152)](1, 1, 1)
g[__xor_decode("d6f9f5fd", 152)] = __xor_decode("caf1e8c7d1f6fceaf9", 152)
g[__xor_decode("d9f6fbf0f7eafdfc", 152)] = true
g[__xor_decode("dbf9f6dbf7f4f4f1fcfd", 152)] = false
g[__xor_decode("dbf9f6ccf7edfbf0", 152)] = false
g[__xor_decode("cceaf9f6ebe8f9eafdf6fbe1", 152)] = 1
local d = _h32AYdIn:_Vxb6wrm0(g[__xor_decode("d6f9f5fd", 152)])
if d and d ~= g then
d:_ao1kaGo2()
end
_swpqZ6Me[__xor_decode("ebe8f9eff6", 152)](function()
while _swpqZ6Me[__xor_decode("eff9f1ec", 152)]() do
if g and g[__xor_decode("c8f9eafdf6ec", 152)] == _h32AYdIn then
if _UChzYFMu then
(_TghJJhWf())[__xor_decode("d7f6def9eaf5", 152)] = true
else
(_TghJJhWf())[__xor_decode("d7f6def9eaf5", 152)] = false
end
else
(_TghJJhWf())[__xor_decode("d7f6def9eaf5", 152)] = false
end
end
end)
_swpqZ6Me[__xor_decode("ebe8f9eff6", 152)](function()
local x = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)]
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
until x[__xor_decode("dbf0f9eaf9fbecfdea", 152)] and x[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("c8eaf1f5f9eae1c8f9eaec", 152)]
g[__xor_decode("dbdeeaf9f5fd", 152)] = x[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("c8eaf1f5f9eae1c8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)]
while _swpqZ6Me[__xor_decode("eff9f1ec", 152)]() do
pcall(function()
if (_TghJJhWf())[__xor_decode("d7f6def9eaf5", 152)] then
if g and g[__xor_decode("c8f9eafdf6ec", 152)] == _h32AYdIn then
local L = x[__xor_decode("dbf0f9eaf9fbecfdea", 152)] and x[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("c8eaf1f5f9eae1c8f9eaec", 152)]
if L and (L[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - g[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= 200 then
L[__xor_decode("dbdeeaf9f5fd", 152)] = g[__xor_decode("dbdeeaf9f5fd", 152)]
else
g[__xor_decode("dbdeeaf9f5fd", 152)] = L[__xor_decode("dbdeeaf9f5fd", 152)]
end
end
local L = x[__xor_decode("dbf0f9eaf9fbecfdea", 152)]
if L then
for x, L in pairs(L:_U1nyZ8gD()) do
if L:_Sdr9DsF5(__xor_decode("daf9ebfdc8f9eaec", 152)) then
L[__xor_decode("dbf9f6dbf7f4f4f1fcfd", 152)] = false
end
end
end
else
local L = x[__xor_decode("dbf0f9eaf9fbecfdea", 152)]
if L then
for x, L in pairs(L:_U1nyZ8gD()) do
if L:_Sdr9DsF5(__xor_decode("daf9ebfdc8f9eaec", 152)) then
L[__xor_decode("dbf9f6dbf7f4f4f1fcfd", 152)] = true
end
end
end
end
end)
end
end)
_BLb2ID0S = function(x)
local L = _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]
if not L or not L:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) then
return
end
local a = L[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]
local V = (x[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - a[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)]
local __fn_875 = function(__p) return __p and true or false end -- junk
local H = _OOYPfZ0Z[__xor_decode("f6fdef", 152)](V / 300, _5srGXIcL[__xor_decode("ddf9ebf1f6ffcbece1f4fd", 152)][__xor_decode("d4f1f6fdf9ea", 152)])
local r = (_BU7qAFcs:_Z8o1VzBW(__xor_decode("cceffdfdf6cbfdeaeef1fbfd", 152))):_BkS0B8IP(g, H, {
[__xor_decode("dbdeeaf9f5fd", 152)] = x
})
if _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("cbf1ec", 152)] == true then
g[__xor_decode("dbdeeaf9f5fd", 152)] = _4JjYvmt9[__xor_decode("f6fdef", 152)](g[__xor_decode("c8f7ebf1ecf1f7f6", 152)][__xor_decode("c0", 152)], x[__xor_decode("c1", 152)], g[__xor_decode("c8f7ebf1ecf1f7f6", 152)][__xor_decode("c2", 152)])
end
r:_FU1javMK()
_swpqZ6Me[__xor_decode("ebe8f9eff6", 152)](function()
while r[__xor_decode("c8f4f9e1faf9fbf3cbecf9ecfd", 152)] == _5srGXIcL[__xor_decode("c8f4f9e1faf9fbf3cbecf9ecfd", 152)][__xor_decode("c8f4f9e1f1f6ff", 152)] do
if not _UChzYFMu then
r:_xMGhClOU()
break
end
_swpqZ6Me[__xor_decode("eff9f1ec", 152)](.1)
end
end)
end
_tS59eQtX = function(x)
if (x[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 1000 then
_BLb2ID0S(x)
else
_BLb2ID0S(x)
end
end
_VnWTO7g1 = function(x)
_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] = x
end
function _t647P112(x)
local L = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)]
local a = L[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]
local V = L[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fc", 152)]
local H = L[__xor_decode("c8f4f9e1fdeadfedf1", 152)][__xor_decode("d5f9f1f6", 152)]
local r = x[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
local R = a[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
repeat
V[__xor_decode("d0fdf9f4ecf0", 152)] = 0
a[__xor_decode("dbdeeaf9f5fd", 152)] = x
H[__xor_decode("c9edfdebec", 152)][__xor_decode("cef1ebf1faf4fd", 152)] = false
if (a[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - R)[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 1 then
R = a[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
a[__xor_decode("dbdeeaf9f5fd", 152)] = x
end
_swpqZ6Me[__xor_decode("eff9f1ec", 152)](.5)
until (x[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - a[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= 2000
end
_5rBOzAg9(function()
while _swpqZ6Me[__xor_decode("eff9f1ec", 152)]() do
pcall(function()
if _G[__xor_decode("cbf9f1f4daf7f9ecc7d0e1fceaf9", 152)] or _G[__xor_decode("cff9eafcfdf6daf7ebeb", 152)] or _G[__xor_decode("d9edecf7def9fbecf7eae1", 152)] or _G[__xor_decode("d0f1fff0fdebecd5f1eaf9fffd", 152)] or _G[__xor_decode("d0dbd5", 152)] or _G[__xor_decode("c8dfda", 152)] or _G[__xor_decode("d4fdeef1f9ecf0f9f6a9", 152)] or _G[__xor_decode("cdc8dfdceaf9fff7", 152)] or _G[__xor_decode("dbf7f5e8f4fdecfdc7cceaf1f9f4eb", 152)] or _G[__xor_decode("cce8dceaf9fff7c7c8eafdf0f1eb", 152)] or _G[__xor_decode("daede1dceaf9fff7", 152)] or _G[__xor_decode("d9edecf7def1eafddef4f7effdeaeb", 152)] or _G[__xor_decode("dcccc7cde2f7ecf0", 152)] or _G[__xor_decode("d9edecf7dafdeaeae1", 152)] or _G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] or _G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] or _G[__xor_decode("c8eafdf0f1ebc7dcda", 152)] or _G[__xor_decode("c8eafdf0f1ebc7dcdd", 152)] or _G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] or _G[__xor_decode("dcf7f2f7f7", 152)] or _G[__xor_decode("dbf7f4f4fdfbecc8eafdebfdf6ec", 152)] or _G[__xor_decode("d9edecf7d4f9efd3f9f3", 152)] or _G[__xor_decode("cce8d4f9fa", 152)] or _G[__xor_decode("d9edecf7c8f0f7fdf6f1e0de", 152)] or _G[__xor_decode("d9edecf7def9eaf5dbf0fdebec", 152)] or _G[__xor_decode("d9edecf7d0e1ecd0f9f4f4f7ef", 152)] or _G[__xor_decode("d4f7f6ffebcff7eafc", 152)] or _G[__xor_decode("daf4f9fbf3cbe8f1f3fde1", 152)] or _G[__xor_decode("d9edecf7d0f7f4e1ccf7eafbf0", 152)] or _G[__xor_decode("cceaf9f1f6dceaf9fff7", 152)] or _G[__xor_decode("d9edecf7cbf9fafdea", 152)] or _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7dcfdee", 152)] or _G[__xor_decode("dbf1ecf1e2fdf6c9edfdebec", 152)] or _G[__xor_decode("d9edecf7ddfbecf7e8f4f9ebf5", 152)] or _G[__xor_decode("d3fde1ebcafdf6", 152)] or _G[__xor_decode("d9edecf7c7caf9f1f6faf7efc7d0f9f3f1", 152)] or _G[__xor_decode("f7faebdef9eaf5", 152)] or _G[__xor_decode("d9edecf7daf1fff5f7f5", 152)] or _G[__xor_decode("dcf7edfff0eeaa", 152)] or _G[__xor_decode("d9edeaf9daf7ebeb", 152)] or _G[__xor_decode("caf9f1fcf1f6ff", 152)] or _G[__xor_decode("d9edecf7c7dbf9eefdf6fcfdea", 152)] or _G[__xor_decode("cce8c8f4e1", 152)] or _G[__xor_decode("daf9eaecf1f4f7c7c9edfdebec", 152)] or _G[__xor_decode("d4fdeefdf4", 152)] or _G[__xor_decode("def9eaf5ddf4f1ecfdd0edf6ec", 152)] or _G[__xor_decode("d9edecf7c2f7ed", 152)] or _G[__xor_decode("d9edecf7def9eaf5c7daf7f6fd", 152)] or (_TghJJhWf())[__xor_decode("d9edecf7d5f9ecfdeaf1f9f4", 152)] or _G[__xor_decode("dbeaf9feecced5", 152)] or _G[__xor_decode("deeaf7e2fdf6ccc8", 152)] or _G[__xor_decode("ccc8dcf7f7ea", 152)] or _G[__xor_decode("d9fbf1fdf6ecd7f6fd", 152)] or _G[__xor_decode("d9edecf7def9eaf5d6fdf9ea", 152)] or _G[__xor_decode("d9edecf7caf9f1fcdbf9ebecf4fd", 152)] or _G[__xor_decode("dcf9eaf3daf4f9fcfdeeab", 152)] or _G[__xor_decode("d9edecf7def9eaf5caf9f1fc", 152)] or _G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)] or _G[__xor_decode("d9fcfcfdf9f4fdea", 152)] or _G[__xor_decode("ccc8d6e8fb", 152)] or _G[__xor_decode("cceff1f6d0f7f7f3", 152)] or _G[__xor_decode("def1f6fcd5f1eaf9fffd", 152)] or _G[__xor_decode("def9eaf5dbf0fdebecd5", 152)] or _G[__xor_decode("cbf0f9eaf3", 152)] or _G[__xor_decode("ccfdeaeaf7eacbf0f9eaf3", 152)] or _G[__xor_decode("c8f1eaf9f6f0f9", 152)] or _G[__xor_decode("d5f7fadbeafdef", 152)] or _G[__xor_decode("cbfdf9dafdf9ebeca9", 152)] or _G[__xor_decode("def1ebf0daf7f9ec", 152)] or _G[__xor_decode("d9edecf7c8f7f4fd", 152)] or _G[__xor_decode("d9edecf7c8f7f4fdceaa", 152)] or _G[__xor_decode("d9edecf7c7cbede8fdead0edf5f9f6", 152)] or _G[__xor_decode("d9edecf7dcfdf9ecf0cbecfde8", 152)] or _G[__xor_decode("d9edecf7c7cbf0f9eaf3d5f9f6c7d3f9eaf9ecfd", 152)] or _G[__xor_decode("d9edecf7c7ddf4fdfbeceaf1fbc7dbf4f9ef", 152)] or _G[__xor_decode("d9edecf7dceaf9fff7f6ccf9f4f7f6", 152)] or _G[__xor_decode("d9edecf7c7dcfdfec7dcf9eaf3dbf7f9ec", 152)] or _G[__xor_decode("d9edecf7c7dff7fcc7d0edf5f9f6", 152)] or _G[__xor_decode("d9edecf7c7ccedebf0f1ecf9", 152)] or _G[__xor_decode("d9edecf7d5f9eccbf7edf4", 152)] or _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)] or _G[__xor_decode("d9edecf7cbfdeae8fdf6ecdaf7ef", 152)] or _G[__xor_decode("d9edecf7ded5f7f6", 152)] or _G[__xor_decode("d9edecf7c7cbf7edf4c7dfedf1ecf9ea", 152)] or _G[__xor_decode("ccc8dfddd9ca", 152)] or _G[__xor_decode("d9edecf7cbf9ef", 152)] or _G[__xor_decode("d9edecf7cceaf1fcfdf6eccfaa", 152)] or _G[__xor_decode("d9edecf7c7cbecf9eaeccaf9f1fc", 152)] or _G[__xor_decode("d9edecf7ddeef7caf9fbfd", 152)] or _G[__xor_decode("d9edecf7dffdecc9edfdebecdaf7edf6ece1", 152)] or _G[__xor_decode("d5f9eaf1f6fdebdbf7f9ec", 152)] or _G[__xor_decode("cceaf9eefdf4dceafdeb", 152)] or _G[__xor_decode("dcfdfefdf9ecf1f6ff", 152)] or _G[__xor_decode("dcedf5f5e1d5f9f6", 152)] or _G[__xor_decode("d9edecf7c7c1f9f5f9", 152)] or _G[__xor_decode("d9edecf7c7cbeff9f6dfdf", 152)] or _G[__xor_decode("cbeff9f6dbf7f9ec", 152)] or _G[__xor_decode("d9edecf7ddfbdaf7ebeb", 152)] or _G[__xor_decode("d9edecf7c7d5f1f6f3", 152)] or _G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)] or _G[__xor_decode("d9edecf7c7cbf3e1e8f1fdf9", 152)] or _G[__xor_decode("d9edecf7c7def1ebf0", 152)] or _G[__xor_decode("dbdcd3c7cccb", 152)] or _G[__xor_decode("dbdcd3c7c1d5", 152)] or _G[__xor_decode("dbdcd3", 152)] or _G[__xor_decode("d9edecf7def9eaf5dff7fcdbf0f9f4f1fbfd", 152)] or _G[__xor_decode("d9edecf7def1ebecdcf9eaf3f6fdebeb", 152)] or _G[__xor_decode("d9edecf7d5f1eaf7ea", 152)] or _G[__xor_decode("ccfdf4fde8f7eaec", 152)] or _G[__xor_decode("d9edecf7d3f1f4f7", 152)] or _G[__xor_decode("d9edecf7dffdeccdebf7f9e8", 152)] or _G[__xor_decode("c8eaf9e1f1f6ff", 152)] or _G[__xor_decode("cceae1d4edfbf3e1", 152)] or _G[__xor_decode("d9edecf7dbf7f4cbf0f9fc", 152)] or _G[__xor_decode("d9edecf7cdf6d0f9f3f1", 152)] or _G[__xor_decode("d9edecf7c7dcf7f6d9fbfbfdeb", 152)] or _G[__xor_decode("d9edecf7caf1e8d1f6fff9e1", 152)] or _G[__xor_decode("dceaf9fff7ceab", 152)] or _G[__xor_decode("dceaf9fff7cea9", 152)] or _G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] or _Q6WPDUs2 or _G[__xor_decode("def9eaf5dff7fcdbf0f9f4f1fbfd", 152)] or _G[__xor_decode("d1fbfddaf7ebebcafdf6", 152)] or _C2NR8ddA or _kem8DMEq or _G[__xor_decode("d4eeecf0f9f6", 152)] or _G[__xor_decode("fafdf9ebecf0edf6ecfdea", 152)] or _G[__xor_decode("dcf9f6fffdead4ce", 152)] or _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _G[__xor_decode("eceffdfdf6d3f1ecebedf6fd", 152)] or _G[__xor_decode("dbf7f4f4fdfbecc7ddf5fafdea", 152)] or _G[__xor_decode("d9edecf7fef1f6fcd3f1ecd1eb", 152)] or _G[__xor_decode("ebf6f9ffedf1f6fd", 152)] or _G[__xor_decode("ccefdeeaedf1eceb", 152)] or _G[__xor_decode("eceffdfdf6d3f1eccbf0eaf1f6fd", 152)] or _G[__xor_decode("cce8c7d4ffcb", 152)] or _G[__xor_decode("cce8c7d5f9ebecfdead9", 152)] or _G[__xor_decode("eceffdfdf6cbf0eaf1f6fd", 152)] or _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7df", 152)] or _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)] then
_UChzYFMu = true
if not _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]:_Vxb6wrm0(__xor_decode("daf7fce1dbf4f1e8", 152)) then
local x = _ydjOpkWM[__xor_decode("f6fdef", 152)](__xor_decode("daf7fce1cefdf4f7fbf1ece1", 152))
x[__xor_decode("d6f9f5fd", 152)] = __xor_decode("daf7fce1dbf4f1e8", 152)
x[__xor_decode("c8f9eafdf6ec", 152)] = _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]
x[__xor_decode("d5f9e0def7eafbfd", 152)] = _zuoeFLbx[__xor_decode("f6fdef", 152)](100000, 100000, 100000)
x[__xor_decode("cefdf4f7fbf1ece1", 152)] = _zuoeFLbx[__xor_decode("f6fdef", 152)](0, 0, 0)
end
if not _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(__xor_decode("f0f1fff0f4f1fff0ec", 152)) then
local x = _ydjOpkWM[__xor_decode("f6fdef", 152)](__xor_decode("d0f1fff0f4f1fff0ec", 152))
x[__xor_decode("d6f9f5fd", 152)] = __xor_decode("f0f1fff0f4f1fff0ec", 152)
x[__xor_decode("ddf6f9faf4fdfc", 152)] = true
x[__xor_decode("def1f4f4dbf7f4f7ea", 152)] = _Es2EqEBy[__xor_decode("feeaf7f5cadfda", 152)](2, 197, 60)
x[__xor_decode("d7edecf4f1f6fddbf7f4f7ea", 152)] = _Es2EqEBy[__xor_decode("feeaf7f5cadfda", 152)](255, 255, 255)
x[__xor_decode("def1f4f4cceaf9f6ebe8f9eafdf6fbe1", 152)] = .5
x[__xor_decode("d7edecf4f1f6fdcceaf9f6ebe8f9eafdf6fbe1", 152)] = .2
x[__xor_decode("c8f9eafdf6ec", 152)] = _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]
end
for x, L in pairs(_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_ptwChaBG()) do
if L:_Sdr9DsF5(__xor_decode("daf9ebfdc8f9eaec", 152)) then
L[__xor_decode("dbf9f6dbf7f4f4f1fcfd", 152)] = false
end
end
else
_UChzYFMu = false
if _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]:_Vxb6wrm0(__xor_decode("daf7fce1dbf4f1e8", 152)) then
(_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)]:_Vxb6wrm0(__xor_decode("daf7fce1dbf4f1e8", 152))):_ao1kaGo2()
end
if _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(__xor_decode("f0f1fff0f4f1fff0ec", 152)) then
(_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(__xor_decode("f0f1fff0f4f1fff0ec", 152))):_ao1kaGo2()
end
end
end)
end
end)
_9RXR5yRV = function()
if _Xs7cfZwc then
if _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("ccf0fdb8dff7eaf1f4f4f9b8d3f1f6ff", 152) then
_s5KpIsXS = __xor_decode("ccf0fdb8dff7eaf1f4f4f9b8d3f1f6ff", 152)
_QxqyZztt = __xor_decode("d2edf6fff4fdc9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1601.6553955078, 36.85213470459, 153.38809204102)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, .707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("daf7fafae1", 152) then
_s5KpIsXS = __xor_decode("daf7fafae1", 152)
_QxqyZztt = __xor_decode("daedffffe1c9edfdebeca9", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1140.1761474609, 4.752049446106, 3827.4057617188)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("ccf0fdb8cbf9ef", 152) then
_s5KpIsXS = __xor_decode("ccf0fdb8cbf9ef", 152)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-784.89715576172, 72.427383422852, 1603.5822753906)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("c1fdecf1", 152) then
_s5KpIsXS = __xor_decode("c1fdecf1", 152)
_QxqyZztt = __xor_decode("cbf6f7efc9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](1386.8073730469, 87.272789001465, -1298.3576660156)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](1218.7956542969, 138.01184082031, -1488.0262451172)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d5f7fab8d4fdf9fcfdea", 152) then
_s5KpIsXS = __xor_decode("d5f7fab8d4fdf9fcfdea", 152)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cef1fbfdb8d9fcf5f1eaf9f4", 152) then
_s5KpIsXS = __xor_decode("cef1fbfdb8d9fcf5f1eaf9f4", 152)
_QxqyZztt = __xor_decode("d5f9eaf1f6fdc9edfdebecaa", 152)
_k4a6SpQz = 2
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5036.2465820313, 28.677835464478, 4324.56640625)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5006.5454101563, 88.032081604004, 4353.162109375)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cbf9fafdeab8dde0e8fdeaec", 152) then
_s5KpIsXS = __xor_decode("cbf9fafdeab8dde0e8fdeaec", 152)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1458.89502, 29.8870335, -50.633564)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cff9eafcfdf6", 152) then
_s5KpIsXS = __xor_decode("cff9eafcfdf6", 152)
_QxqyZztt = __xor_decode("d1f5e8fdf4c9edfdebec", 152)
_k4a6SpQz = 1
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](5278.04932, 2.15167475, 944.101929, .220546961, -4.49946401e-006, .975376427, -1.95412576e-005, 1, 9.03162072e-006, -0.975376427, -2.10519756e-005, .220546961)
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dbf0f1fdfeb8cff9eafcfdf6", 152) then
_s5KpIsXS = __xor_decode("dbf0f1fdfeb8cff9eafcfdf6", 152)
_QxqyZztt = __xor_decode("d1f5e8fdf4c9edfdebec", 152)
_k4a6SpQz = 2
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-005, -0.939682961, .00181045406, .342041939)
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cbeff9f6", 152) then
_s5KpIsXS = __xor_decode("cbeff9f6", 152)
_QxqyZztt = __xor_decode("d1f5e8fdf4c9edfdebec", 152)
_k4a6SpQz = 3
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d5f9fff5f9b8d9fcf5f1eaf9f4", 152) then
_s5KpIsXS = __xor_decode("d5f9fff5f9b8d9fcf5f1eaf9f4", 152)
_QxqyZztt = __xor_decode("d5f9fff5f9c9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5314.6220703125, 12.262420654297, 8517.279296875)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5765.8969726563, 82.92064666748, 8718.3046875)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("def1ebf0f5f9f6b8d4f7eafc", 152) then
_s5KpIsXS = __xor_decode("def1ebf0f5f9f6b8d4f7eafc", 152)
_QxqyZztt = __xor_decode("def1ebf0f5f9f6c9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](61122.65234375, 18.497442245483, 1569.3997802734)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](61260.15234375, 30.950881958008, 1193.4329833984)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cfe1ebe8fdea", 152) then
_s5KpIsXS = __xor_decode("cfe1ebe8fdea", 152)
_QxqyZztt = __xor_decode("cbf3e1dde0e8a9c9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7861.947265625, 5545.517578125, -379.85974121094)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7866.1333007813, 5576.4311523438, -546.74816894531)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("ccf0edf6fcfdeab8dff7fc", 152) then
_s5KpIsXS = __xor_decode("ccf0edf6fcfdeab8dff7fc", 152)
_QxqyZztt = __xor_decode("cbf3e1dde0e8aac9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7903.3828125, 5635.9897460938, -1410.923828125)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7994.984375, 5761.025390625, -2088.6479492188)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dbe1faf7eaff", 152) then
_s5KpIsXS = __xor_decode("dbe1faf7eaff", 152)
_QxqyZztt = __xor_decode("def7edf6ecf9f1f6c9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](5258.2788085938, 38.526931762695, 4050.044921875)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](6094.0249023438, 73.770050048828, 3825.7348632813)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d1fbfdb8d9fcf5f1eaf9f4", 152) then
_s5KpIsXS = __xor_decode("d1fbfdb8d9fcf5f1eaf9f4", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dfeafde1fafdf9eafc", 152) then
_s5KpIsXS = __xor_decode("dfeafde1fafdf9eafc", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5081.3452148438, 85.221641540527, 4257.3588867188)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if _UBcNrmyH then
if _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dcf1f9f5f7f6fc", 152) then
_s5KpIsXS = __xor_decode("dcf1f9f5f7f6fc", 152)
_QxqyZztt = __xor_decode("d9eafdf9a9c9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-427.5666809082, 73.313781738281, 1835.4208984375)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1576.7166748047, 198.59265136719, 13.724286079407)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d2fdeafdf5e1", 152) then
_s5KpIsXS = __xor_decode("d2fdeafdf5e1", 152)
_QxqyZztt = __xor_decode("d9eafdf9aac9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](636.79943847656, 73.413787841797, 918.00415039063)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](2006.9261474609, 448.95666503906, 853.98284912109)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("def9f2f1ecf9", 152) then
_s5KpIsXS = __xor_decode("def9f2f1ecf9", 152)
_QxqyZztt = __xor_decode("d5f9eaf1f6fdc9edfdebecab", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2441.986328125, 73.359344482422, -3217.5324707031)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2172.7399902344, 103.32216644287, -4015.025390625)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dcf7f6b8cbeff9f6", 152) then
_s5KpIsXS = __xor_decode("dcf7f6b8cbeff9f6", 152)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](2286.2004394531, 15.177839279175, 863.8388671875)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cbf5f7f3fdb8d9fcf5f1eaf9f4", 152) then
_s5KpIsXS = __xor_decode("cbf5f7f3fdb8d9fcf5f1eaf9f4", 152)
_QxqyZztt = __xor_decode("d1fbfdcbf1fcfdc9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5429.0473632813, 15.977565765381, -5297.9614257813)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5275.1987304688, 20.757257461548, -5260.6669921875)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d9eff9f3fdf6fdfcb8d1fbfdb8d9fcf5f1eaf9f4", 152) then
_s5KpIsXS = __xor_decode("d9eff9f3fdf6fdfcb8d1fbfdb8d9fcf5f1eaf9f4", 152)
_QxqyZztt = __xor_decode("deeaf7ebecc9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](5668.9780273438, 28.519989013672, -6483.3520507813)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](6403.5439453125, 340.29766845703, -6894.5595703125)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("ccf1fcfdb8d3fdfde8fdea", 152) then
_s5KpIsXS = __xor_decode("ccf1fcfdb8d3fdfde8fdea", 152)
_QxqyZztt = __xor_decode("def7eafff7ececfdf6c9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-3053.9814453125, 237.18954467773, -10145.0390625)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-3795.6423339844, 105.88877105713, -11421.307617188)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dcf9eaf3fafdf9eafc", 152) then
_s5KpIsXS = __xor_decode("dcf9eaf3fafdf9eafc", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](3677.08203125, 62.751937866211, -3144.8332519531)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](3677.08203125, 62.751937866211, -3144.8332519531)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dbedeaebfdfcb8dbf9e8ecf9f1f5", 152) then
_s5KpIsXS = __xor_decode("dbedeaebfdfcb8dbf9e8ecf9f1f6", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](916.928589, 181.092773, 33422)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](916.928589, 181.092773, 33422)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d7eafcfdea", 152) then
_s5KpIsXS = __xor_decode("d7eafcfdea", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-6217.2021484375, 28.047645568848, -5053.1357421875)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-6217.2021484375, 28.047645568848, -5053.1357421875)
end
end
if _pCkTQC2R then
if _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cbecf7f6fd", 152) then
_s5KpIsXS = __xor_decode("cbecf7f6fd", 152)
_QxqyZztt = __xor_decode("c8f1eaf9ecfdc8f7eaecc9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-289.76705932617, 43.819011688232, 5579.9384765625)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d0e1fceaf9b8d4fdf9fcfdea", 152) then
_s5KpIsXS = __xor_decode("d0e1fceaf9b8d4fdf9fcfdea", 152)
_QxqyZztt = __xor_decode("d9f5f9e2f7f6c9edfdebecaa", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](5821.8979492188, 1019.0950927734, -73.719230651855)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](5821.8979492188, 1019.0950927734, -73.719230651855)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d3f1f4f7b8d9fcf5f1eaf9f4", 152) then
_s5KpIsXS = __xor_decode("d3f1f4f7b8d9fcf5f1eaf9f4", 152)
_QxqyZztt = __xor_decode("d5f9eaf1f6fdcceafdfdd1ebf4f9f6fc", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](2179.3010253906, 28.731239318848, -6739.9741210938)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](2764.2233886719, 432.46154785156, -7144.4580078125)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dbf9e8ecf9f1f6b8ddf4fde8f0f9f6ec", 152) then
_s5KpIsXS = __xor_decode("dbf9e8ecf9f1f6b8ddf4fde8f0f9f6ec", 152)
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fc", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13232.682617188, 332.40396118164, -7626.01171875)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13376.7578125, 433.28689575195, -8071.392578125)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dafdf9edecf1feedf4b8c8f1eaf9ecfd", 152) then
_s5KpIsXS = __xor_decode("dafdf9edecf1feedf4b8c8f1eaf9ecfd", 152)
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fcaa", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-12682.096679688, 390.88653564453, -9902.1240234375)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](5283.609375, 22.56223487854, -110.78285217285)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("dbf9f3fdb8c9edfdfdf6", 152) then
_s5KpIsXS = __xor_decode("dbf9f3fdb8c9edfdfdf6", 152)
_QxqyZztt = __xor_decode("d1fbfddbeafdf9f5d1ebf4f9f6fcc9edfdebec", 152)
_k4a6SpQz = 3
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, .642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-678.648804, 381.353943, -11114.2012, -0.908641815, .00149294338, .41757378, .00837114919, .999857843, .0146408929, -0.417492568, .0167988986, -0.90852499)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("d4f7f6fff5f9", 152) then
_s5KpIsXS = __xor_decode("d4f7f6fff5f9", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10238.875976563, 389.7912902832, -9549.7939453125)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10238.875976563, 389.7912902832, -9549.7939453125)
elseif _G[__xor_decode("def1f6fcdaf7ebeb", 152)] == __xor_decode("cbf7edf4b8cafdf9e8fdea", 152) then
_s5KpIsXS = __xor_decode("cbf7edf4b8cafdf9e8fdea", 152)
_k4a6SpQz = nil
_R1znSS0D = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9524.7890625, 315.80429077148, 6655.7192382813)
_f9DvqwPM = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9524.7890625, 315.80429077148, 6655.7192382813)
end
end
end
_xsINsalS = function()
local x = _9RXR5yRV()
return {
[0] = _G[__xor_decode("def1f6fcdaf7ebeb", 152)],
[1] = _s5KpIsXS;
[2] = _k4a6SpQz;
[3] = _QxqyZztt,
[4] = _f9DvqwPM
}
end
_7MKUVdjL = function()
local x = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dcf9ecf9", 152)][__xor_decode("d4fdeefdf4", 152)][__xor_decode("cef9f4edfd", 152)]
if _Xs7cfZwc then
if x == 1 or x <= 9 then
if tostring(_DisydpNe) == __xor_decode("d5f9eaf1f6fdeb", 152) then
_aLVslF05 = __xor_decode("cceaf9f1f6fdfd", 152)
_QxqyZztt = __xor_decode("d5f9eaf1f6fdc9edfdebec", 152)
_k4a6SpQz = 1
_X9kx4pBf = __xor_decode("cceaf9f1f6fdfd", 152)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-008, -0.667371571, 4.32403588e-008, 1, -1.07884304e-007, .667371571, -1.09201515e-007, -0.744724929)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-008, -0.667371571, 4.32403588e-008, 1, -1.07884304e-007, .667371571, -1.09201515e-007, -0.744724929)
elseif tostring(_DisydpNe) == __xor_decode("c8f1eaf9ecfdeb", 152) then
_aLVslF05 = __xor_decode("daf9f6fcf1ec", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("daf9f6fcf1ecc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("daf9f6fcf1ec", 152)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1045.9626464844, 27.002508163452, 1560.8203125)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](1045.9626464844, 27.002508163452, 1560.8203125)
end
elseif x == 10 or x <= 14 then
_aLVslF05 = __xor_decode("d5f7f6f3fde1", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d2edf6fff4fdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d5f7f6f3fde1", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1448.5180664062, 67.853012084961, 11.465796470642)
elseif x == 15 or x <= 29 then
_aLVslF05 = __xor_decode("dff7eaf1f4f4f9", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d2edf6fff4fdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("dff7eaf1f4f4f9", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1129.8836669922, 40.46354675293, -525.42370605469)
elseif x == 30 or x <= 39 then
_aLVslF05 = __xor_decode("c8f1eaf9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("daedffffe1c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1103.5134277344, 13.752052307129, 3896.0910644531)
elseif x == 40 or x <= 59 then
_aLVslF05 = __xor_decode("daeaedecfd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("daedffffe1c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("daeaedecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1140.0837402344, 14.809885025024, 4322.9213867188)
elseif x == 60 or x <= 74 then
_aLVslF05 = __xor_decode("dcfdebfdeaecb8daf9f6fcf1ec", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dcfdebfdeaecc9edfdebec", 152)
_X9kx4pBf = __xor_decode("dcfdebfdeaecb8daf9f6fcf1ec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](924.7998046875, 6.4486746788025, 4481.5859375)
elseif x == 75 or x <= 89 then
_aLVslF05 = __xor_decode("dcfdebfdeaecb8d7fefef1fbfdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dcfdebfdeaecc9edfdebec", 152)
_X9kx4pBf = __xor_decode("dcfdebfdeaecb8d7fefef1fbfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1608.2822265625, 8.6142244338989, 4371.0073242188)
elseif x == 90 or x <= 99 then
_aLVslF05 = __xor_decode("cbf6f7efb8daf9f6fcf1ec", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf6f7efc9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbf6f7efb8daf9f6fcf1ec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1354.3479003906, 87.272773742676, -1393.9465332031)
elseif x == 100 or x <= 119 then
_aLVslF05 = __xor_decode("cbf6f7eff5f9f6", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf6f7efc9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbf6f7eff5f9f6", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](6241.9951171875, 51.522083282471, -1243.9771728516)
elseif x == 120 or x <= 149 then
_aLVslF05 = __xor_decode("dbf0f1fdfeb8c8fdecece1b8d7fefef1fbfdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d5f9eaf1f6fdc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("dbf0f1fdfeb8c8fdecece1b8d7fefef1fbfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-4881.2309570312, 22.652044296265, 4273.7524414062)
elseif x == 150 or x <= 174 then
_aLVslF05 = __xor_decode("cbf3e1b8daf9f6fcf1ec", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf3e1c9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbf3e1b8daf9f6fcf1ec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-4953.20703125, 295.74420166016, -2899.2290039062)
elseif x == 175 or x <= 189 then
_aLVslF05 = __xor_decode("dcf9eaf3b8d5f9ebecfdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf3e1c9edfdebec", 152)
_X9kx4pBf = __xor_decode("dcf9eaf3b8d5f9ebecfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5259.8447265625, 391.39767456055, -2229.0354003906)
elseif x == 190 or x <= 209 then
_aLVslF05 = __xor_decode("c8eaf1ebf7f6fdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("c8eaf1ebf7f6fdeac9edfdebec", 152)
_X9kx4pBf = __xor_decode("c8eaf1ebf7f6fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-009, -0.995993316, 1.60817859e-009, 1, -5.16744869e-009, .995993316, -2.06384709e-009, -0.0894274712)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](5098.9736328125, -0.3204058110714, 474.23733520508)
elseif x == 210 or x <= 249 then
_aLVslF05 = __xor_decode("dcf9f6fffdeaf7edebb8c8eaf1ebf7f6fdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("c8eaf1ebf7f6fdeac9edfdebec", 152)
_X9kx4pBf = __xor_decode("dcf9f6fffdeaf7edebb8c8eaf1ebf7f6fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-009, -0.995993316, 1.60817859e-009, 1, -5.16744869e-009, .995993316, -2.06384709e-009, -0.0894274712)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](5654.5634765625, 15.633401870728, 866.29919433594)
elseif x == 250 or x <= 274 then
_aLVslF05 = __xor_decode("ccf7fff9b8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dbf7f4f7ebebfdedf5c9edfdebec", 152)
_X9kx4pBf = __xor_decode("ccf7fff9b8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1820.21484375, 51.683856964111, -2740.6650390625)
elseif x == 275 or x <= 299 then
_aLVslF05 = __xor_decode("dff4f9fcf1f9ecf7ea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dbf7f4f7ebebfdedf5c9edfdebec", 152)
_X9kx4pBf = __xor_decode("dff4f9fcf1f9ecf7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1292.8381347656, 56.380882263184, -3339.0314941406)
elseif x == 300 or x <= 324 then
_UAAqMHTj = false
_aLVslF05 = __xor_decode("d5f1f4f1ecf9eae1b8cbf7f4fcf1fdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d5f9fff5f9c9edfdebec", 152)
_X9kx4pBf = __xor_decode("d5f1f4f1ecf9eae1b8cbf7f4fcf1fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5411.1645507812, 11.081554412842, 8454.29296875)
elseif x == 325 or x <= 374 then
_aLVslF05 = __xor_decode("d5f1f4f1ecf9eae1b8cbe8e1", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d5f9fff5f9c9edfdebec", 152)
_X9kx4pBf = __xor_decode("d5f1f4f1ecf9eae1b8cbe8e1", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5802.8681640625, 86.262413024902, 8828.859375)
elseif x == 375 or x <= 399 then
_aLVslF05 = __xor_decode("def1ebf0f5f9f6b8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("def1ebf0f5f9f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("def1ebf0f5f9f6b8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](61122.65234375, 18.497442245483, 1569.3997802734)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](60878.30078125, 18.482830047607, 1543.7574462891)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 10000 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](61163.8515625, 11.6796875, 1819.7841796875))
end
elseif x == 400 or x <= 449 then
_aLVslF05 = __xor_decode("def1ebf0f5f9f6b8dbf7f5f5f9f6fcf7", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("def1ebf0f5f9f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("def1ebf0f5f9f6b8dbf7f5f5f9f6fcf7", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](61122.65234375, 18.497442245483, 1569.3997802734)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](61922.6328125, 18.482830047607, 1493.9343261719)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 10000 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](61163.8515625, 11.6796875, 1819.7841796875))
end
elseif x == 450 or x <= 474 then
_aLVslF05 = __xor_decode("dff7fcbfebb8dfedf9eafc", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf3e1dde0e8a9c9edfdebec", 152)
_X9kx4pBf = __xor_decode("dff7fcbfebb8dfedf9eafc", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-4710.04296875, 845.27697753906, -1927.3079833984)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 10000 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](-4607.82275, 872.54248, -1667.55688))
end
elseif x == 475 or x <= 524 then
_aLVslF05 = __xor_decode("cbf0f9f6fcf9", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf3e1dde0e8a9c9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbf0f9f6fcf9", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7678.4897460938, 5566.4038085938, -497.21560668945)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 10000 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](-7894.6176757813, 5547.1416015625, -380.29119873047))
end
elseif x == 525 or x <= 549 then
_aLVslF05 = __xor_decode("caf7e1f9f4b8cbe9edf9fc", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf3e1dde0e8aac9edfdebec", 152)
_X9kx4pBf = __xor_decode("caf7e1f9f4b8cbe9edf9fc", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7624.2524414062, 5658.1333007812, -1467.3542480469)
elseif x == 550 or x <= 624 then
_aLVslF05 = __xor_decode("caf7e1f9f4b8cbf7f4fcf1fdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf3e1dde0e8aac9edfdebec", 152)
_X9kx4pBf = __xor_decode("caf7e1f9f4b8cbf7f4fcf1fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-7836.7534179688, 5645.6640625, -1790.6236572266)
elseif x == 625 or x <= 649 then
_aLVslF05 = __xor_decode("dff9f4f4fde1b8c8f1eaf9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("def7edf6ecf9f1f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("dff9f4f4fde1b8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](5551.0219726562, 78.901351928711, 3930.4128417969)
elseif x >= 650 then
_aLVslF05 = __xor_decode("dff9f4f4fde1b8dbf9e8ecf9f1f6", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("def7edf6ecf9f1f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("dff9f4f4fde1b8dbf9e8ecf9f1f6", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](5441.9516601562, 42.502059936523, 4950.09375)
end
elseif _UBcNrmyH then
if x == 700 or x <= 724 then
_aLVslF05 = __xor_decode("caf9f1fcfdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d9eafdf9a9c9edfdebec", 152)
_X9kx4pBf = __xor_decode("caf9f1fcfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-728.32672119141, 52.779319763184, 2345.7705078125)
elseif x == 725 or x <= 774 then
_aLVslF05 = __xor_decode("d5fdeafbfdf6f9eae1", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d9eafdf9a9c9edfdebec", 152)
_X9kx4pBf = __xor_decode("d5fdeafbfdf6f9eae1", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1004.3244018555, 80.158866882324, 1424.6193847656)
elseif x == 775 or x <= 799 then
_aLVslF05 = __xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d9eafdf9aac9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1068.6643066406, 137.61428833008, 1322.1060791016)
elseif x == 800 or x <= 874 then
_aLVslF05 = __xor_decode("def9fbecf7eae1b8cbecf9fefe", 152)
_QxqyZztt = __xor_decode("d9eafdf9aac9edfdebec", 152)
_k4a6SpQz = 2
_X9kx4pBf = __xor_decode("def9fbecf7eae1b8cbecf9fefe", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-010, -0.999488771, 1.36326533e-010, 1, 8.92172336e-010, .999488771, -1.07732087e-010, -0.0319722369)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](73.078674316406, 81.863441467285, -27.470672607422)
elseif x == 875 or x <= 899 then
_aLVslF05 = __xor_decode("d5f9eaf1f6fdb8d4f1fdedecfdf6f9f6ec", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d5f9eaf1f6fdc9edfdebecab", 152)
_X9kx4pBf = __xor_decode("d5f9eaf1f6fdb8d4f1fdedecfdf6f9f6ec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2821.3723144531, 75.897277832031, -3070.0891113281)
elseif x == 900 or x <= 949 then
_aLVslF05 = __xor_decode("d5f9eaf1f6fdb8dbf9e8ecf9f1f6", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d5f9eaf1f6fdc9edfdebecab", 152)
_X9kx4pBf = __xor_decode("d5f9eaf1f6fdb8dbf9e8ecf9f1f6", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1861.2310791016, 80.176582336426, -3254.6975097656)
elseif x == 950 or x <= 974 then
_aLVslF05 = __xor_decode("c2f7f5faf1fd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("c2f7f5faf1fdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("c2f7f5faf1fd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5657.7768554688, 78.969734191895, -928.68701171875)
elseif x == 975 or x <= 999 then
_aLVslF05 = __xor_decode("cef9f5e8f1eafd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("c2f7f5faf1fdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("cef9f5e8f1eafd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-6037.66796875, 32.184638977051, -1340.6597900391)
elseif x == 1000 or x <= 1049 then
_aLVslF05 = __xor_decode("cbf6f7efb8cceaf7f7e8fdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf6f7efd5f7edf6ecf9f1f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbf6f7efb8cceaf7f7e8fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](549.14733886719, 427.38705444336, -5563.6987304688)
elseif x == 1050 or x <= 1099 then
_aLVslF05 = __xor_decode("cff1f6ecfdeab8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf6f7efd5f7edf6ecf9f1f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("cff1f6ecfdeab8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1142.7451171875, 475.63980102539, -5199.4165039062)
elseif x == 1100 or x <= 1124 then
_aLVslF05 = __xor_decode("d4f9fab8cbedfaf7eafcf1f6f9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d1fbfdcbf1fcfdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d4f9fab8cbedfaf7eafcf1f6f9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5707.4716796875, 15.951709747314, -4513.3920898438)
elseif x == 1125 or x <= 1174 then
_aLVslF05 = __xor_decode("d0f7eaf6fdfcb8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d1fbfdcbf1fcfdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d0f7eaf6fdfcb8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-6341.3666992188, 15.951770782471, -5723.162109375)
elseif x == 1175 or x <= 1199 then
_aLVslF05 = __xor_decode("d5f9fff5f9b8d6f1f6f2f9", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("def1eafdcbf1fcfdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d5f9fff5f9b8d6f1f6f2f9", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5449.6728515625, 76.658744812012, -5808.2006835938)
elseif x == 1200 or x <= 1249 then
_aLVslF05 = __xor_decode("d4f9eef9b8c8f1eaf9ecfd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("def1eafdcbf1fcfdc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d4f9eef9b8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-5213.3315429688, 49.737880706787, -4701.451171875)
elseif x == 1250 or x <= 1274 then
_aLVslF05 = __xor_decode("cbf0f1e8b8dcfdfbf3f0f9f6fc", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf0f1e8c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("cbf0f1e8b8dcfdfbf3f0f9f6fc", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](1037.80127, 125.092171, 32911.6016)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1212.0111083984, 150.79205322266, 33059.24609375)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 500 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](923.21252441406, 126.9760055542, 32852.83203125))
end
elseif x == 1275 or x <= 1299 then
_aLVslF05 = __xor_decode("cbf0f1e8b8ddf6fff1f6fdfdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf0f1e8c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("cbf0f1e8b8ddf6fff1f6fdfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](1037.80127, 125.092171, 32911.6016)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](919.47863769531, 43.544013977051, 32779.96875)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 500 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](923.21252441406, 126.9760055542, 32852.83203125))
end
elseif x == 1300 or x <= 1324 then
_aLVslF05 = __xor_decode("cbf0f1e8b8cbecfdeff9eafc", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("cbf0f1e8c9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("cbf0f1e8b8cbecfdeff9eafc", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](968.80957, 125.092171, 33244.125)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](919.43853759766, 129.55599975586, 33436.03515625)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 500 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](923.21252441406, 126.9760055542, 32852.83203125))
end
elseif x == 1325 or x <= 1349 then
_aLVslF05 = __xor_decode("cbf0f1e8b8d7fefef1fbfdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("cbf0f1e8c9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("cbf0f1e8b8d7fefef1fbfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](968.80957, 125.092171, 33244.125)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](1036.0179443359, 181.4390411377, 33315.7265625)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 500 then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx[__xor_decode("f6fdef", 152)](923.21252441406, 126.9760055542, 32852.83203125))
end
elseif x == 1350 or x <= 1374 then
_aLVslF05 = __xor_decode("d9eafbecf1fbb8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("deeaf7ebecc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d9eafbecf1fbb8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](5966.24609375, 62.970020294189, -6179.3828125)
if _G[__xor_decode("d4fdeefdf4", 152)] and (_7fgEXzNI[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] > 1000 then
_t647P112(_36kUWQUc)
end
elseif x == 1375 or x <= 1424 then
_aLVslF05 = __xor_decode("cbf6f7efb8d4edeaf3fdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("deeaf7ebecc9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbf6f7efb8d4edeaf3fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](5407.0737304688, 69.194374084473, -6880.8803710938)
elseif x == 1425 or x <= 1449 then
_aLVslF05 = __xor_decode("cbfdf9b8cbf7f4fcf1fdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("def7eafff7ececfdf6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("cbfdf9b8cbf7f4fcf1fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-3028.2236328125, 64.674514770508, -9775.4267578125)
elseif x >= 1450 then
_aLVslF05 = __xor_decode("cff9ecfdeab8def1fff0ecfdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("def7eafff7ececfdf6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("cff9ecfdeab8def1fff0ecfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-3352.9013671875, 285.01556396484, -10534.841796875)
end
elseif _pCkTQC2R then
if x == 1500 or x <= 1524 then
_aLVslF05 = __xor_decode("c8f1eaf9ecfdb8d5f1f4f4f1f7f6f9f1eafd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("c8f1eaf9ecfdc8f7eaecc9edfdebec", 152)
_X9kx4pBf = __xor_decode("c8f1eaf9ecfdb8d5f1f4f4f1f7f6f9f1eafd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-712.82727050781, 98.577049255371, 5711.9541015625)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-712.82727050781, 98.577049255371, 5711.9541015625)
elseif x == 1525 or x <= 1574 then
_aLVslF05 = __xor_decode("c8f1ebecf7f4b8daf1f4f4f1f7f6f9f1eafd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("c8f1eaf9ecfdc8f7eaecc9edfdebec", 152)
_X9kx4pBf = __xor_decode("c8f1ebecf7f4b8daf1f4f4f1f7f6f9f1eafd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-723.43316650391, 147.42906188965, 5931.9931640625)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-723.43316650391, 147.42906188965, 5931.9931640625)
elseif x == 1575 or x <= 1599 then
_aLVslF05 = __xor_decode("dceaf9fff7f6b8dbeafdefb8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d9f5f9e2f7f6c9edfdebec", 152)
_X9kx4pBf = __xor_decode("dceaf9fff7f6b8dbeafdefb8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](6779.0327148438, 111.16865539551, -801.21307373047)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](6779.0327148438, 111.16865539551, -801.21307373047)
elseif x == 1600 or x <= 1624 then
_aLVslF05 = __xor_decode("dceaf9fff7f6b8dbeafdefb8d9eafbf0fdea", 152)
_QxqyZztt = __xor_decode("d9f5f9e2f7f6c9edfdebec", 152)
_k4a6SpQz = 2
_X9kx4pBf = __xor_decode("dceaf9fff7f6b8dbeafdefb8d9eafbf0fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](6955.8974609375, 546.66589355469, 309.04013061523)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](6955.8974609375, 546.66589355469, 309.04013061523)
elseif x == 1625 or x <= 1649 then
_aLVslF05 = __xor_decode("d0e1fceaf9b8ddf6fef7eafbfdea", 152)
_QxqyZztt = __xor_decode("cefdf6f7f5dbeafdefc9edfdebec", 152)
_k4a6SpQz = 1
_X9kx4pBf = __xor_decode("d0e1fceaf9b8ddf6fef7eafbfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](4620.6157226562, 1002.2954711914, 399.08688354492)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](4620.6157226562, 1002.2954711914, 399.08688354492)
elseif x == 1650 or x <= 1699 then
_aLVslF05 = __xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152)
_QxqyZztt = __xor_decode("cefdf6f7f5dbeafdefc9edfdebec", 152)
_k4a6SpQz = 2
_X9kx4pBf = __xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](4697.5918, 1100.65137, 946.401978, .579397917, -4.19689783e-010, .81504482, -1.49287818e-010, 1, 6.21053986e-010, -0.81504482, -4.81513662e-010, .579397917)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](4697.5918, 1100.65137, 946.401978, .579397917, -4.19689783e-010, .81504482, -1.49287818e-010, 1, 6.21053986e-010, -0.81504482, -4.81513662e-010, .579397917)
elseif x == 1700 or x <= 1724 then
_aLVslF05 = __xor_decode("d5f9eaf1f6fdb8dbf7f5f5f7fcf7eafd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d5f9eaf1f6fdcceafdfdd1ebf4f9f6fc", 152)
_X9kx4pBf = __xor_decode("d5f9eaf1f6fdb8dbf7f5f5f7fcf7eafd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](2286.0078125, 73.133918762207, -7159.8090820312)
elseif x == 1725 or x <= 1774 then
_aLVslF05 = __xor_decode("d5f9eaf1f6fdb8cafdf9eab8d9fcf5f1eaf9f4", 152)
_X9kx4pBf = __xor_decode("d5f9eaf1f6fdb8cafdf9eab8d9fcf5f1eaf9f4", 152)
_QxqyZztt = __xor_decode("d5f9eaf1f6fdcceafdfdd1ebf4f9f6fc", 152)
_k4a6SpQz = 2
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](2179.98828125, 28.731239318848, -6740.0551757813)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](3656.7736816406, 160.52406311035, -7001.5986328125)
elseif x == 1775 or x <= 1799 then
_aLVslF05 = __xor_decode("def1ebf0f5f9f6b8caf9f1fcfdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fcab", 152)
_X9kx4pBf = __xor_decode("def1ebf0f5f9f6b8caf9f1fcfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10407.526367188, 331.76263427734, -8368.5166015625)
elseif x == 1800 or x <= 1824 then
_aLVslF05 = __xor_decode("def1ebf0f5f9f6b8dbf9e8ecf9f1f6", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fcab", 152)
_X9kx4pBf = __xor_decode("def1ebf0f5f9f6b8dbf9e8ecf9f1f6", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10994.701171875, 352.38140869141, -9002.1103515625)
elseif x == 1825 or x <= 1849 then
_aLVslF05 = __xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fc", 152)
_X9kx4pBf = __xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13274.478515625, 332.37814331055, -7769.5805664062)
elseif x == 1850 or x <= 1899 then
_aLVslF05 = __xor_decode("d5e1ecf0f7f4f7fff1fbf9f4b8c8f1eaf9ecfd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fc", 152)
_X9kx4pBf = __xor_decode("d5e1ecf0f7f4f7fff1fbf9f4b8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13680.607421875, 501.08154296875, -6991.189453125)
elseif x == 1900 or x <= 1924 then
_aLVslF05 = __xor_decode("d2edf6fff4fdb8c8f1eaf9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fcaa", 152)
_X9kx4pBf = __xor_decode("d2edf6fff4fdb8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-12256.16015625, 331.73828125, -10485.836914062)
elseif x == 1925 or x <= 1974 then
_aLVslF05 = __xor_decode("d5edebf3fdecfdfdeab8c8f1eaf9ecfd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dcfdfde8def7eafdebecd1ebf4f9f6fcaa", 152)
_X9kx4pBf = __xor_decode("d5edebf3fdecfdfdeab8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-13457.904296875, 391.54565429688, -9859.177734375)
elseif x == 1975 or x <= 1999 then
_aLVslF05 = __xor_decode("cafdfaf7eaf6b8cbf3fdf4fdecf7f6", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d0f9edf6ecfdfcc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("cafdfaf7eaf6b8cbf3fdf4fdecf7f6", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-8763.7236328125, 165.72299194336, 6159.8618164062)
elseif x == 2000 or x <= 2024 then
_aLVslF05 = __xor_decode("d4f1eef1f6ffb8c2f7f5faf1fd", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d0f9edf6ecfdfcc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("d4f1eef1f6ffb8c2f7f5faf1fd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-10144.131835938, 138.6266784668, 5838.0888671875)
elseif x == 2025 or x <= 2049 then
_aLVslF05 = __xor_decode("dcfdf5f7f6f1fbb8cbf7edf4", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d0f9edf6ecfdfcc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("dcfdf5f7f6f1fbb8cbf7edf4", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9505.8720703125, 172.10482788086, 6158.9931640625)
elseif x == 2050 or x <= 2074 then
_aLVslF05 = __xor_decode("c8f7ebfdebebfdfcb8d5edf5f5e1", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d0f9edf6ecfdfcc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("c8f7ebfdebebfdfcb8d5edf5f5e1", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-9582.0224609375, 6.2515273094177, 6205.478515625)
elseif x == 2075 or x <= 2099 then
_aLVslF05 = __xor_decode("c8fdf9f6edecb8cbfbf7edec", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d6edecebd1ebf4f9f6fcc9edfdebec", 152)
_X9kx4pBf = __xor_decode("c8fdf9f6edecb8cbfbf7edec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2143.2419433594, 47.721984863281, -10029.995117188)
elseif x == 2100 or x <= 2124 then
_aLVslF05 = __xor_decode("c8fdf9f6edecb8c8eafdebf1fcfdf6ec", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d6edecebd1ebf4f9f6fcc9edfdebec", 152)
_X9kx4pBf = __xor_decode("c8fdf9f6edecb8c8eafdebf1fcfdf6ec", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1859.3540039062, 38.103168487549, -10422.4296875)
elseif x == 2125 or x <= 2149 then
_aLVslF05 = __xor_decode("d1fbfdb8dbeafdf9f5b8dbf0fdfe", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("d1fbfddbeafdf9f5d1ebf4f9f6fcc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d1fbfdb8dbeafdf9f5b8dbf0fdfe", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-872.24658203125, 65.81957244873, -10919.95703125)
elseif x == 2150 or x <= 2199 then
_aLVslF05 = __xor_decode("d1fbfdb8dbeafdf9f5b8dbf7f5f5f9f6fcfdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("d1fbfddbeafdf9f5d1ebf4f9f6fcc9edfdebec", 152)
_X9kx4pBf = __xor_decode("d1fbfdb8dbeafdf9f5b8dbf7f5f5f9f6fcfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-558.06103515625, 112.04895782471, -11290.774414062)
elseif x == 2200 or x <= 2224 then
_aLVslF05 = __xor_decode("dbf7f7f3f1fdb8dbeaf9feecfdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dbf9f3fdc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("dbf7f7f3f1fdb8dbeaf9feecfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-008, .288177818, 6.9301187e-008, 1, 7.51931211e-008, -0.288177818, -5.2032135e-008, .957576931)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2374.13671875, 37.798263549805, -12125.30859375)
elseif x == 2225 or x <= 2249 then
_aLVslF05 = __xor_decode("dbf9f3fdb8dfedf9eafc", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dbf9f3fdc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("dbf9f3fdb8dfedf9eafc", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-008, .288177818, 6.9301187e-008, 1, 7.51931211e-008, -0.288177818, -5.2032135e-008, .957576931)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1598.3070068359, 43.773197174072, -12244.581054688)
elseif x == 2250 or x <= 2274 then
_aLVslF05 = __xor_decode("daf9f3f1f6ffb8cbecf9fefe", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dbf9f3fdc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("daf9f3f1f6ffb8cbecf9fefe", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-008, .250778586, 4.74911062e-008, 1, 1.49904711e-008, -0.250778586, 2.64211941e-008, -0.96804446)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1887.8099365234, 77.618507385254, -12998.350585938)
elseif x == 2275 or x <= 2299 then
_aLVslF05 = __xor_decode("d0fdf9fcb8daf9f3fdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dbf9f3fdc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("d0fdf9fcb8daf9f3fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-008, .250778586, 4.74911062e-008, 1, 1.49904711e-008, -0.250778586, 2.64211941e-008, -0.96804446)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-2216.1882324219, 82.884521484375, -12869.293945312)
elseif x == 2300 or x <= 2324 then
_aLVslF05 = __xor_decode("dbf7fbf7f9b8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dbf0f7fbc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("dbf7fbf7f9b8cff9eaeaf1f7ea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](233.22836303711, 29.876001358032, -12201.233398438)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-21.553283691406, 80.574996948242, -12352.387695312)
elseif x == 2325 or x <= 2349 then
_aLVslF05 = __xor_decode("dbf0f7fbf7f4f9ecfdb8daf9eab8daf9ececf4fdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dbf0f7fbc9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("dbf0f7fbf7f4f9ecfdb8daf9eab8daf9ececf4fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](233.22836303711, 29.876001358032, -12201.233398438)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](582.59057617188, 77.188095092773, -12463.162109375)
elseif x == 2350 or x <= 2374 then
_aLVslF05 = __xor_decode("cbeffdfdecb8ccf0f1fdfe", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dbf0f7fbc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("cbeffdfdecb8ccf0f1fdfe", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](150.50663757324, 30.693693161011, -12774.502929688)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](165.1884765625, 76.058853149414, -12600.836914062)
elseif x == 2375 or x <= 2399 then
_aLVslF05 = __xor_decode("dbf9f6fce1b8cafdfafdf4", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("dbf0f7fbc9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("dbf9f6fce1b8cafdfafdf4", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](150.50663757324, 30.693693161011, -12774.502929688)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](134.86563110352, 77.247680664062, -12876.547851562)
elseif x == 2400 or x <= 2449 then
_aLVslF05 = __xor_decode("dbf9f6fce1b8c8f1eaf9ecfd", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("dbf9f6fce1c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("dbf9f6fce1b8c8f1eaf9ecfd", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1150.0400390625, 20.378934860229, -14446.334960938)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-1310.5003662109, 26.016523361206, -14562.404296875)
elseif x == 2450 or x <= 2474 then
_aLVslF05 = __xor_decode("d1ebf4fdb8d7edecf4f9ef", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("ccf1f3f1c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("d1ebf4fdb8d7edecf4f9ef", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16479.900390625, 226.6117401123, -300.31143188477)
elseif x == 2475 or x <= 2499 then
_aLVslF05 = __xor_decode("d1ebf4f9f6fcb8daf7e1", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("ccf1f3f1c9edfdebeca9", 152)
_X9kx4pBf = __xor_decode("d1ebf4f9f6fcb8daf7e1", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16849.396484375, 192.86505126953, -150.78532409668)
elseif x == 2500 or x <= 2524 then
_aLVslF05 = __xor_decode("cbedf6b5f3f1ebebfdfcb8cff9eaeaf1f7ea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("ccf1f3f1c9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("f3f1ebebfdfcb8cff9eaeaf1f7ea", 152)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16347, 64, 984)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16538, 55, 1049)
elseif x == 2525 or x <= 2550 then
_aLVslF05 = __xor_decode("d1ebf4fdb8dbf0f9f5e8f1f7f6", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("ccf1f3f1c9edfdebecaa", 152)
_X9kx4pBf = __xor_decode("d1ebf4fdb8dbf0f9f5e8f1f7f6", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16541.0215, 57.3082275, 1051.46118, .0410757065, 0, -0.999156058, 0, 1, 0, .999156058, 0, .0410757065)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16602.1015625, 130.38734436035, 1087.2456054688)
elseif x == 2551 or x <= 2574 then
_aLVslF05 = __xor_decode("cbfdeae8fdf6ecb8d0edf6ecfdea", 152)
_k4a6SpQz = 1
_QxqyZztt = __xor_decode("ccf1f3f1c9edfdebecab", 152)
_X9kx4pBf = __xor_decode("cbfdeae8fdf6ecb8d0edf6ecfdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16679.478515625, 176.74737548828, 1474.3995361328)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16679.478515625, 176.74737548828, 1474.3995361328)
elseif x >= 2575 then
_aLVslF05 = __xor_decode("cbf3edf4f4b8cbf4f9e1fdea", 152)
_k4a6SpQz = 2
_QxqyZztt = __xor_decode("ccf1f3f1c9edfdebecab", 152)
_X9kx4pBf = __xor_decode("cbf3edf4f4b8cbf4f9e1fdea", 152)
_7fgEXzNI = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16759.58984375, 71.283767700195, 1595.3399658203)
_36kUWQUc = _4JjYvmt9[__xor_decode("f6fdef", 152)](-16759.58984375, 71.283767700195, 1595.3399658203)
end
end
end
function _RIffuWgI()
local _8vsHEizw = _BU7qAFcs._P1x26Nku._SorkIkcY
local _n456RzZR = _8vsHEizw._NgI0zScj and _8vsHEizw._NgI0zScj:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))
if not _n456RzZR then return end
local function _jtgqQhQF(_87FOIgDs, _fpDvvXYY)
local _4XFqrQfb = (_n456RzZR._6omxqnce - _87FOIgDs)._WWLiMKMG
if _4XFqrQfb >= _fpDvvXYY then
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _87FOIgDs)
end
end
if _Xs7cfZwc then
if _REjvODY1 == __xor_decode("d9f6fffdf4b8cff1f6ffeb", 152) then
_0NqjW2Rk = { __xor_decode("cbf0f9f6fcf9", 152), __xor_decode("caf7e1f9f4b8cbe9edf9fc", 152), __xor_decode("caf7e1f9f4b8cbf7f4fcf1fdea", 152), __xor_decode("cfe1ebe8fdea", 152), __xor_decode("ccf0edf6fcfdeab8dff7fc", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-4698, 845, -1912)
SP = __xor_decode("dcfdfef9edf4ec", 152)
local _87FOIgDs = _zuoeFLbx._17HZDIvB(-4607.82275, 872.54248, -1667.55688)
_jtgqQhQF(_87FOIgDs, 10000)
elseif _REjvODY1 == __xor_decode("d4fdf9ecf0fdeab8b3b8cbfbeaf9e8b8d5fdecf9f4", 152) then
_0NqjW2Rk = { __xor_decode("daeaedecfd", 152), __xor_decode("c8f1eaf9ecfd", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-1145, 15, 4350)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("d5f9fff5f9b8d7eafd", 152) then
_0NqjW2Rk = { __xor_decode("d5f1f4f1ecf9eae1b8cbf7f4fcf1fdea", 152), __xor_decode("d5f1f4f1ecf9eae1b8cbe8e1", 152), __xor_decode("d5f9fff5f9b8d9fcf5f1eaf9f4", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-5815, 84, 8820)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("def1ebf0b8ccf9f1f4", 152) then
_0NqjW2Rk = { __xor_decode("def1ebf0f5f9f6b8cff9eaeaf1f7ea", 152), __xor_decode("def1ebf0f5f9f6b8dbf7f5f5f9f6fcf7", 152), __xor_decode("def1ebf0f5f9f6b8d4f7eafc", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(61123, 19, 1569)
SP = __xor_decode("dcfdfef9edf4ec", 152)
local _87FOIgDs = _zuoeFLbx._17HZDIvB(61163.8515625, 5.342342376708984, 1819.7841796875)
_jtgqQhQF(_87FOIgDs, 17000)
end
elseif _UBcNrmyH then
if _REjvODY1 == __xor_decode("d4fdf9ecf0fdeab8b3b8cbfbeaf9e8b8d5fdecf9f4", 152) then
_0NqjW2Rk = { __xor_decode("d5f9eaf1f6fdb8dbf9e8ecf9f1f6", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("d5f9fff5f9b8d7eafd", 152) then
_0NqjW2Rk = { __xor_decode("d5f9fff5f9b8d6f1f6f2f9", 152), __xor_decode("d4f9eef9b8c8f1eaf9ecfd", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-5428, 78, -5959)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("ddfbecf7e8f4f9ebf5", 152) then
_0NqjW2Rk = { __xor_decode("cbf0f1e8b8dcfdfbf3f0f9f6fc", 152), __xor_decode("cbf0f1e8b8ddf6fff1f6fdfdea", 152), __xor_decode("cbf0f1e8b8cbecfdeff9eafc", 152), __xor_decode("cbf0f1e8b8d7fefef1fbfdea", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(911.35827636719, 125.95812988281, 33159.5390625)
SP = __xor_decode("dcfdfef9edf4ec", 152)
local _87FOIgDs = _zuoeFLbx._17HZDIvB(61163.8515625, 5.342342376708984, 1819.7841796875)
_jtgqQhQF(_87FOIgDs, 18000)
elseif _REjvODY1 == __xor_decode("d5e1ebecf1fbb8dceaf7e8f4fdec", 152) then
_0NqjW2Rk = { __xor_decode("cff9ecfdeab8def1fff0ecfdea", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-3385, 239, -10542)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("caf9fcf1f7f9fbecf1eefdb8d5f9ecfdeaf1f9f4", 152) then
_0NqjW2Rk = { __xor_decode("def9fbecf7eae1b8cbecf9fefe", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(295, 73, -56)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("cef9f5e8f1eafdb8def9f6ff", 152) then
_0NqjW2Rk = { __xor_decode("cef9f5e8f1eafd", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-6033, 7, -1317)
SP = __xor_decode("dcfdfef9edf4ec", 152)
end
elseif _pCkTQC2R then
if _REjvODY1 == __xor_decode("d4fdf9ecf0fdeab8b3b8cbfbeaf9e8b8d5fdecf9f4", 152) then
_0NqjW2Rk = { __xor_decode("d2edf6fff4fdb8c8f1eaf9ecfd", 152), __xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-11975.78515625, 331.7734069824219, -10620.0302734375)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("def1ebf0b8ccf9f1f4", 152) then
_0NqjW2Rk = { __xor_decode("def1ebf0f5f9f6b8caf9f1fcfdea", 152), __xor_decode("def1ebf0f5f9f6b8dbf9e8ecf9f1f6", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-10993, 332, -8940)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("dbf7f6f2edeafdfcb8dbf7fbf7f9", 152) then
_0NqjW2Rk = { __xor_decode("dbf0f7fbf7f4f9ecfdb8daf9eab8daf9ececf4fdea", 152), __xor_decode("dbf7fbf7f9b8cff9eaeaf1f7ea", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(620.6344604492188, 78.93644714355469, -12581.369140625)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("dceaf9fff7f6b8cbfbf9f4fd", 152) then
_0NqjW2Rk = { __xor_decode("dceaf9fff7f6b8dbeafdefb8cff9eaeaf1f7ea", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(6594, 383, 139)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("dfedf6e8f7effcfdea", 152) then
_0NqjW2Rk = { __xor_decode("c8f1ebecf7f4b8daf1f4f4f1f7f6f9f1eafd", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-469, 74, 5904)
SP = __xor_decode("dcfdfef9edf4ec", 152)
elseif _REjvODY1 == __xor_decode("d5f1f6f1b8ccedebf3", 152) then
_0NqjW2Rk = { __xor_decode("d5e1ecf0f7f4f7fff1fbf9f4b8c8f1eaf9ecfd", 152) }
_2tFzqPe2 = _4JjYvmt9._17HZDIvB(-13545, 470, -6917)
SP = __xor_decode("dcfdfef9edf4ec", 152)
end
end
end
_axM0x40d = function()
local x = _7MKUVdjL()
return {
[1] = _aLVslF05;
[2] = _k4a6SpQz,
[3] = _QxqyZztt,
[4] = _36kUWQUc,
[5] = _X9kx4pBf;
[6] = _7fgEXzNI
}
end
local _ao1kaGo2 _KKiPjTQB = loadstring(_BU7qAFcs:_kDjGEB66(__xor_decode("f0ecece8eba2b7b7f0eef9edecf7b6fbf4f1fbf3b7eaf9efb7dcfdebeceaf7e1b5ddfefefdfbecb6ece0ec", 152)))()
local _JFNnbSd1 = loadstring(_BU7qAFcs:_kDjGEB66(__xor_decode("f0ecece8eba2b7b7eaf9efb6fff1ecf0edfaedebfdeafbf7f6ecfdf6ecb6fbf7f5b7d9f6f0ccedf9f6dce2f9f1b5d0edfab7def9ebecd9ececf9fbf3d4f7d4b7eafdfeebb7f0fdf9fcebb7f5f9f1f6b7def9ebecd9ececf9fbf3b6f4edf9", 152)))()
local _NAK1FKdO = loadstring(_BU7qAFcs:_kDjGEB66(__xor_decode("f0ecece8eba2b7b7eaf9efb6f6fdfaedf4f9ebf7feeceff7eaf3ebb6e0e1e2b7f4edf6f9", 152), true))()
local _9dlRXBTU = _NAK1FKdO:_NxsfETeX({
_SJmZRLmg = __xor_decode("daf7fbfbf0f1b8d0edfa", 152),
_isZ9Ouf1 = nil,
_kVbawbuv = __xor_decode("a0aaafa1adabaaafa9aea1afa0aa", 152),
_JbCxOuPa = true,
_uho7ZqsV = __xor_decode("daf7fbfbf0f1b8d0edfab8b5b8daf4f7e0b8deeaedf1ec", 152),
_ygFuFsU6 = __xor_decode("fae1b8daf7fbfbf0f1b8ccfdf9f5", 152),
_654nfnhT = {
_hdtPvFlh = nil,
_gsJJAnIG = __xor_decode("daf7fbfbf0f1b8d0edfa", 152)
},
_HYybz0rg = true,
_kgpgysXf = {
_w1TFabRP = __xor_decode("daf7fbfbf0f1b8d0edfab8d3fde1ebe1ebecfdf5", 152),
_isZ9Ouf1 = __xor_decode("d3fde1b8cbe1ebecfdf5", 152),
_DYoJ4qss = __xor_decode("", 152),
_amZh7Nsi = false,
_i92xykEQ = true,
_XO36q2Om = {__xor_decode("dde0f9f5e8f4fdb8d3fde1", 152)},
_GsfjEgMq = {
_2EBeVRFL = true,
_K9QS39Jw = __xor_decode("f0ecece8eba2b7b7fcf1ebfbf7eafcb6ffffb7d0f6dbd2dae2f0dbf5ef", 152),
_WpUuGPKR = __xor_decode("", 152)
}
}
})
_NAK1FKdO:_voeXE6nv({
_w1TFabRP = __xor_decode("cffdf4fbf7f5fdb8ecf7b8daf7fbfbf0f1b8d0edfa", 152),
_bBqeJVDS = __xor_decode("f6f7ecf1fef1fbf9ecf1f7f6c7f9fcfc", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_K8XTXDKL = __xor_decode("cffdf4fbf7f5fdb8ecf7b8ecf0fdb8daf7fbfbf0f1b8d0edfab8b6b8ccf0f9f6f3ebb8def7eab8cdebfdb8cbfbeaf1e8ec", 152)
})
_9dlRXBTU:_Hqkyd8cL({
_NeSovqsq = {__xor_decode("cef7f4fbf9f6f7", 152),__xor_decode("cbeff1feec", 152),__xor_decode("daedf6f6f1", 152),__xor_decode("def4ede0edeb", 152),__xor_decode("dcfdf4ecf9", 152),__xor_decode("d9eafbfdedebb8c0", 152),__xor_decode("dbf7fcfdb8c0", 152),__xor_decode("d3eaf6f4", 152),__xor_decode("d9eafff7f6", 152)},
_lGiOocVa = __xor_decode("d0f6dbd2dae2f0dbf5ef", 152),
_bBqeJVDS = 1,
})
local _3fjTDvlZ = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8cbf0f7e8", 152),
_bBqeJVDS = __xor_decode("ebf0f7e8e8f1f6ffc7faf9ebf3fdec", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("d5fdf4fdfdb8cbf0f7e8", 152))
local _q2zEo6TA = {
__xor_decode("cff1f4fcdcf9eafdeb", 152),
__xor_decode("daf7ebebdaedf1f4fc", 152),
__xor_decode("dffdecc8eaf9f6f3fdfc", 152),
__xor_decode("cbedfaaad7fefef1fbf1f9f4d6f7f7faf1fd", 152),
__xor_decode("cbedfaaadcf9f1ffeaf7fbf3", 152),
__xor_decode("cbedfaaad6f7f7fad5f9ebecfdeaa9aaab", 152),
__xor_decode("daf4ede0e0e1", 152),
__xor_decode("d2dbcfd3", 152),
__xor_decode("ddf6e1edc7f1ebc7c8eaf7", 152),
__xor_decode("cbedfaaadefdeaa1a1a1", 152),
__xor_decode("f3f1ececfff9f5f1f6ff", 152),
__xor_decode("ccf0fddfeafdf9ecd9fbfd", 152),
__xor_decode("cbeceaf9efd0f9ecd5f9f1f6fd", 152),
__xor_decode("ccf9f6ecf9f1dff9f5f1f6ff", 152),
__xor_decode("d9e0f1f7eafd", 152),
__xor_decode("cbcddaaadfd9d5ddcacad7dad7ccc7ddc0c8a9", 152),
__xor_decode("d5f9fff1fbdaedeb", 152),
__xor_decode("cbecf9eafbf7fcfdd0ddd7", 152),
__xor_decode("cbedfaaadbf9e8ecf9f1f6d5f9edf1", 152),
__xor_decode("ded1dfd0ccacdecacdd1cc", 152),
__xor_decode("ddd9cad6c7decacdd1cccb", 152),
}
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("cafdfcfdfdf5b8c0aab8dbf7fcfd", 152),
_LkZRaudh = function()
local function _bMqLKZtk(_DXVIITc5)
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))._fx22KKFW._Gk4Yjb94:_unLzpo56(_DXVIITc5)
end
local _YIuGnny0 = 0.5
for _, _hPOuWdos in ipairs(_q2zEo6TA) do
_bMqLKZtk(_hPOuWdos)
_swpqZ6Me._NXgxNdXn(_YIuGnny0)
end
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8daf4f9fbf3d4fdff", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1daf4f9fbf3d4fdff", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8def1ebf0f5f9f6d3f9eaf9ecfd", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1def1ebf0f5f9f6d3f9eaf9ecfd", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8ddf4fdfbeceaf7", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1ddf4fdfbeceaf7", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dceaf9fff7f6dbf4f9ef", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daf4f9fbf3fafdf9eafccafdeff9eafc", 152), __xor_decode("dceaf9fff7f6dbf4f9ef", 152), __xor_decode("a9", 152))
_xHvO8uUf:_unLzpo56(__xor_decode("daf4f9fbf3fafdf9eafccafdeff9eafc", 152), __xor_decode("dceaf9fff7f6dbf4f9ef", 152), __xor_decode("aa", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cbede8fdead0edf5f9f6", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1cbede8fdeaf0edf5f9f6", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dcfdf9ecf0cbecfde8", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1dcfdf9ecf0cbecfde8", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cbf0f9eaf3f5f9f6b8d3f9eaf9ecfd", 152),
_LkZRaudh = function()
pcall(function()
_wzDrPBuu:_unLzpo56(__xor_decode("daede1cbf0f9eaf3f5f9f6d3f9eaf9ecfd", 152), true)
_swpqZ6Me._NXgxNdXn(0.2)
_wzDrPBuu:_unLzpo56(__xor_decode("daede1cbf0f9eaf3f5f9f6d3f9eaf9ecfd", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8ddf4fdfbeceaf1fbdbf4f9ef", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1ddf4fdfbeceaf1fbdbf4f9ef", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dceaf9fff7f6ccf9f4f7f6", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1dceaf9fff7f6ccf9f4f7f6", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dff7fcd0edf5f9f6", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1dff7fcf0edf5f9f6", 152))
end)
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _xHvO8uUf = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cbf9ffedf1f6fdd9eaec", 152),
_LkZRaudh = function()
pcall(function()
_xHvO8uUf:_unLzpo56(__xor_decode("daede1cbf9f6ffedf1f6fdd9eaec", 152))
end)
end
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("d9faf1f4f1ecf1fdebb8cbf0f7e8", 152))
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dffde8e8f7", 152),
_LkZRaudh = function()
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("daede1d0f9f3f1", 152),__xor_decode("dffde8e8f7", 152))
end
})
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8daedebf7", 152),
_LkZRaudh = function()
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("daede1d0f9f3f1", 152),__xor_decode("daedebf7", 152))
end
})
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8d3fdf6", 152),
_LkZRaudh = function()
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d3fdf6ccf9f4f3", 152),__xor_decode("daede1", 152))
end
})
local _k9Rw8Fd4 = _3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cbf7eaed", 152),
_LkZRaudh = function()
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("daede1d0f9f3f1", 152),__xor_decode("cbf7eaed", 152))
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
local _wzDrPBuu = _47zEuDDz:_XX60xZf3(__xor_decode("cafdf5f7ecfdeb", 152)):_XX60xZf3(__xor_decode("dbf7f5f5dec7", 152))
_3fjTDvlZ:_pGz4LC2I(__xor_decode("d9fbfbfdebebf7eae1b8cbf0f7e8", 152))
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8ccf7f5f7fdb8caf1f6ff", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daede1d1ecfdf5", 152),__xor_decode("ccf7f5f7fdb8caf1f6ff", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8daf4f9fbf3b8dbf9e8fd", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daede1d1ecfdf5", 152),__xor_decode("daf4f9fbf3b8dbf9e8fd", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cbeff7eafcebf5f9f6b8d0f9ec", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daede1d1ecfdf5", 152),__xor_decode("cbeff7eafcebf5f9f6b8d0f9ec", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8daf1e2f9eaeafdb8caf1fef4fd", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("ddfbecf7e8f4f9ebf5", 152),__xor_decode("daede1", 152),1)
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dff0f7edf4b8d5f9ebf3", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("ddfbecf7e8f4f9ebf5", 152),__xor_decode("daede1", 152),2)
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8d3f9faedfbf0f9", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daf4f9fbf3fafdf9eafccafdeff9eafc", 152),__xor_decode("cbf4f1f6ffebf0f7ec", 152),__xor_decode("aa", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cbf7edf4b8dbf9f6fd", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daede1d1ecfdf5", 152),__xor_decode("cbf7edf4b8dbf9f6fd", 152))
end
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("dbeaf9feecb8cbf0f7e8", 152))
local _C7yHT6pe = {
__xor_decode("dceaf9fff7f6f0fdf9eaec", 152), __xor_decode("dceaf9fff7f6ebecf7eaf5", 152), __xor_decode("dcf1f6f7d0f7f7fc", 152),
__xor_decode("cbf0f9eaf3ccf7f7ecf0", 152), __xor_decode("ccfdeaeaf7ead2f9ef", 152), __xor_decode("cbf0f9eaf3d9f6fbf0f7ea", 152),
__xor_decode("d4fdeef1f9ecf0f9f6dbeaf7eff6", 152), __xor_decode("d4fdeef1f9ecf0f9f6cbf0f1fdf4fc", 152), __xor_decode("d4fdeef1f9ecf0f9f6daf7f9ec", 152),
__xor_decode("d4fdfffdf6fcf9eae1cbfbeaf7f4f4", 152), __xor_decode("d5e1ecf0f1fbf9f4cbfbeaf7f4f4", 152)
}
for _, _rWudsMx3 in ipairs(_C7yHT6pe) do
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("dbeaf9feecb8", 152).._rWudsMx3,
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("dbeaf9feecd1ecfdf5", 152),__xor_decode("dbeaf9feec", 152),_rWudsMx3)
end
})
end
_3fjTDvlZ:_pGz4LC2I(__xor_decode("caf9fbfd", 152))
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cafdfeedf6fcb8cbecf9eceb", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daf4f9fbf3fafdf9eafccafdeff9eafc", 152),__xor_decode("cafdfeedf6fc", 152),__xor_decode("aa", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8cafdeaf7f4f4b8caf9fbfd", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("daf4f9fbf3fafdf9eafccafdeff9eafc", 152),__xor_decode("cafdeaf7f4f4", 152),__xor_decode("aa", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dff0f7edf4b8caf9fbfd", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("ddfbecf7e8f4f9ebf5", 152),__xor_decode("daede1", 152),4)
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("daede1b8dbe1faf7eaffb8caf9fbfd", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("dbe1faf7eaffcceaf9f1f6fdea", 152),__xor_decode("daede1", 152))
end
})
local _3fjTDvlZ = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8d5f1ebfb", 152),
_bBqeJVDS = __xor_decode("f5f1ebfbfdf4f4f9f6fdf7edebc7ebfdeaeef1fbfdeb", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("cbfdeaeefdeab8b5b8deedf6fbecf1f7f6", 152))
local _zXqGXaLJ = _BU7qAFcs:_Z8o1VzBW(__xor_decode("ccfdf4fde8f7eaeccbfdeaeef1fbfd", 152))
local _P1x26Nku = _BU7qAFcs:_Z8o1VzBW(__xor_decode("c8f4f9e1fdeaeb", 152))
local _SorkIkcY = _P1x26Nku._SorkIkcY
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("cafdf2f7f1f6b8cbfdeaeefdea", 152),
_LkZRaudh = function()
pcall(function()
_zXqGXaLJ:_jXas0pcj(_BU7qAFcs._JhqPKzvo, _BU7qAFcs._zrUsz4cv, _SorkIkcY)
end)
end
})
local _cwmR9egh = _BU7qAFcs:_Z8o1VzBW(__xor_decode("d0ecece8cbfdeaeef1fbfd", 152))
local _y6JzpfTG = _BU7qAFcs:_Z8o1VzBW(__xor_decode("ccfdf4fde8f7eaeccbfdeaeef1fbfd", 152))
local _P1x26Nku = _BU7qAFcs:_Z8o1VzBW(__xor_decode("c8f4f9e1fdeaeb", 152))
local _nX32xbW5 = _P1x26Nku._SorkIkcY
local _9sOnI3s8 = __xor_decode("f0ecece8eba2b7b7fff9f5fdebb6eaf7faf4f7e0b6fbf7f5b7eea9b7fff9f5fdebb7", 152)
local _ZGGmPvId = _BU7qAFcs._JhqPKzvo
local _uGljiY6d = _9sOnI3s8.._ZGGmPvId..__xor_decode("b7ebfdeaeefdeaebb7c8edfaf4f1fba7ebf7eaecd7eafcfdeaa5d9ebfbbef4f1f5f1eca5a9a8a8", 152)
local function _7mI8y78Y(_vB59Zb2X)
local _yYscV1SR = _uGljiY6d .. (_vB59Zb2X and __xor_decode("befbedeaebf7eaa5", 152).._vB59Zb2X or __xor_decode("", 152))
local _RH5jI1w4, _Gyrpp59q = pcall(function()
return _BU7qAFcs:_kDjGEB66(_yYscV1SR)
end)
if not _RH5jI1w4 then
_b2Hdq448(__xor_decode("d0ccccc8b8eafde9edfdebecb8fef9f1f4fdfcb4b8eafdeceae1f1f6ffb8f1f6b8aab8ebfdfbf7f6fcebb6b6b6", 152))
_NXgxNdXn(2)
return _7mI8y78Y(_vB59Zb2X)
end
local _PRB1kanI
local ok, _OWVc19HC = pcall(function()
_PRB1kanI = _cwmR9egh:_Yrm6s5my(_Gyrpp59q)
end)
if not ok then
_b2Hdq448(__xor_decode("d2cbd7d6b8fcfdfbf7fcfdb8fef9f1f4fdfcb4b8eafdeceae1f1f6ffb8f1f6b8aab8ebfdfbf7f6fcebb6b6b6", 152))
_NXgxNdXn(2)
return _7mI8y78Y(_vB59Zb2X)
end
_NXgxNdXn(0.5)
return _PRB1kanI
end
local function _cERW5uNd()
local _IEphR7AS, _vB59Zb2X = {}, nil
repeat
local _vptVeKKQ = _7mI8y78Y(_vB59Zb2X)
for _, v in ipairs(_vptVeKKQ._vptVeKKQ) do
if v._dA3NLyrT < v._WVWUbdn7 and v.id ~= _BU7qAFcs._zrUsz4cv then
table._8mdIb4B2(_IEphR7AS, v)
end
end
_vB59Zb2X = _vptVeKKQ._6JJBfOG1
until not _vB59Zb2X
if #_IEphR7AS > 0 then
local _f4q0MPGl = _IEphR7AS[math._zljrIcRP(1, #_IEphR7AS)]
_y6JzpfTG:_jXas0pcj(_ZGGmPvId, _f4q0MPGl.id, _nX32xbW5)
end
end
local function _q1BvSmT7()
local _NRipQyp5, _COfSCATl
repeat
local _2cOs3gHy = _7mI8y78Y(_COfSCATl)
for _, v in ipairs(_2cOs3gHy._vptVeKKQ) do
if v._dA3NLyrT < v._WVWUbdn7 and v.id ~= _BU7qAFcs._zrUsz4cv then
_NRipQyp5 = v
break
end
end
_COfSCATl = _2cOs3gHy._6JJBfOG1
until _NRipQyp5
_y6JzpfTG:_jXas0pcj(_ZGGmPvId, _NRipQyp5.id, _nX32xbW5)
end
local function _2HBPNN5S()
local _j16IqhBn = nil
local _fH6Fepzn = math._3F9FgYe2
local _vB59Zb2X = nil
repeat
local _vptVeKKQ = _7mI8y78Y(_vB59Zb2X)
for _, v in ipairs(_vptVeKKQ._vptVeKKQ) do
if v._XkNiSvNv and v._dA3NLyrT < v._WVWUbdn7 and v.id ~= _BU7qAFcs._zrUsz4cv then
if v._XkNiSvNv < _fH6Fepzn then
_fH6Fepzn = v._XkNiSvNv
_j16IqhBn = v
end
end
end
_vB59Zb2X = _vptVeKKQ._6JJBfOG1
until not _vB59Zb2X
return _j16IqhBn
end
local function _Iu7TozVn()
local _ARdpKfCd = _2HBPNN5S()
if _ARdpKfCd then
_y6JzpfTG:_jXas0pcj(_ZGGmPvId, _ARdpKfCd.id, _nX32xbW5)
end
end
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("d0f7e8b8cbfdeaeefdeab8b0caf9f6fcf7f5b1", 152),
_LkZRaudh = _cERW5uNd
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("d0f7e8b8ccf7b8d4f7effdebecb8c8f4f9e1fdeaeb", 152),
_LkZRaudh = _q1BvSmT7
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("d0f7e8b8ccf7b8d4f7effdebecb8c8f1f6ffb8cbfdeaeefdea", 152),
_LkZRaudh = _Iu7TozVn
})
local _4TEwoIHr = _3fjTDvlZ:_MNjOzear({
_SJmZRLmg = __xor_decode("d2f7fad1fc", 152),
_ZeDe2fX8 = __xor_decode("c8f9ebecfdb8d2f7fad1fc", 152),
_HVUBUwB0 = __xor_decode("", 152),
_sc8fEgcM = false,
_0ZZXiQhw = nil,
_LkZRaudh = function(_DXVIITc5)
_G._zrUsz4cv = _DXVIITc5
if _G._zrUsz4cv ~= __xor_decode("", 152) then
pcall(function()
local _v17c3JSN
_v17c3JSN = _nX32xbW5._WRNQM7OY:_m2rDwzhz(function(br)
if br == _5srGXIcL._6KpXurC3._PCSMZTTF then
_v17c3JSN:_7wvwjyMo()
if _h32AYdIn:_Vxb6wrm0(__xor_decode("d5fdebebf9fffd", 152)) then
_h32AYdIn._MrdkAozg:_ao1kaGo2()
end
end
end)
_BU7qAFcs:_Z8o1VzBW(__xor_decode("ccfdf4fde8f7eaeccbfdeaeef1fbfd", 152)):_jXas0pcj(
_BU7qAFcs._JhqPKzvo,
_G._zrUsz4cv,
_nX32xbW5
)
end)
end
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("dbf7e8e1b8d2f7fad1fc", 152),
_LkZRaudh = function()
if _c01TvtZ6 then
_c01TvtZ6(tostring(_BU7qAFcs._zrUsz4cv))
end
end
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("dfedf1b8c8f4f9e1fdeab8b7b8d7ecf0fdeaeb", 152))
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("d7e8fdf6b8d9eff9f3fdf6f1f6ffebb8dde0e8fdeaec", 152),
_LkZRaudh = function()
_nX32xbW5._CXOYTt4y._gwNLKfoq._brLiUm2J._kFs6z3sO = true
end
})
local _47zEuDDz = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("d7e8fdf6b8ccf1ecf4fdb8cbfdf4fdfbecf1f7f6", 152),
_LkZRaudh = function()
_47zEuDDz._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("fffdecccf1ecf4fdeb", 152), true)
_nX32xbW5._CXOYTt4y._gwNLKfoq._Y9kWqtDv._kFs6z3sO = true
end
})
_G._yPfdXVgo = false
_3fjTDvlZ:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccf7fffff4fdb8dbf0f9ecb8dfcdd1", 152),
_LkZRaudh = function()
_G._yPfdXVgo = not _G._yPfdXVgo
local _6K9JwTvj = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cbecf9eaecfdeadfedf1", 152))
_6K9JwTvj:_QfkIOfzF(_5srGXIcL._qjAuVmST._zBEtwkUO, not _G._yPfdXVgo)
end
})
_G._6vzKkGld = false
_3fjTDvlZ:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccf7fffff4fdb8d4fdf9fcfdeab8daf7f9eafcb8dfcdd1", 152),
_LkZRaudh = function()
_G._6vzKkGld = not _G._6vzKkGld
local _6K9JwTvj = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cbecf9eaecfdeadfedf1", 152))
_6K9JwTvj:_QfkIOfzF(_5srGXIcL._qjAuVmST._7sWR0AaX, not _G._6vzKkGld)
end
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("ccfdf9f5", 152))
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("dbf0f9f6fffdb8ccfdf9f5b8ccf7b8c8f1eaf9ecfdeb", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("cbfdecccfdf9f5", 152), __xor_decode("c8f1eaf9ecfdeb", 152))
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("dbf0f9f6fffdb8ccfdf9f5b8ccf7b8d5f9eaf1f6fdeb", 152),
_LkZRaudh = function()
_wzDrPBuu:_unLzpo56(__xor_decode("cbfdecccfdf9f5", 152), __xor_decode("d5f9eaf1f6fdeb", 152))
end
})
_3fjTDvlZ:_pGz4LC2I(__xor_decode("daf7f7ebecb8b7b8dec8cb", 152))
local _5zrJYDkJ = _BU7qAFcs:_Z8o1VzBW(__xor_decode("d4f1fff0ecf1f6ff", 152))
local _8B42JbCI = _BU7qAFcs:_Z8o1VzBW(__xor_decode("cff7eaf3ebe8f9fbfd", 152))
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("ccedeaf6b8d7f6b8d4f7efb8dbc8cd", 152),
_LkZRaudh = function()
_AC7UKJxQ()._Uvt49RCy._IErnEH1T = _5srGXIcL._IErnEH1T._P2usTuJ3
end
})
_3fjTDvlZ:_VdimDP1h({
_SJmZRLmg = __xor_decode("cafdf5f7eefdb8cbf3e1b8def7ff", 152),
_LkZRaudh = function()
if _5zrJYDkJ:_Vxb6wrm0(__xor_decode("d4f1fff0ecf1f6ffd4f9e1fdeaeb", 152)) then _5zrJYDkJ._j9v57AuO:_ao1kaGo2() end
if _5zrJYDkJ:_Vxb6wrm0(__xor_decode("cbfdf9ccfdeaeaf7eadbdb", 152)) then _5zrJYDkJ._FUukprXO:_ao1kaGo2() end
if _5zrJYDkJ:_Vxb6wrm0(__xor_decode("def9f6ecf9ebe1cbf3e1", 152)) then _5zrJYDkJ._UL46eQa1:_ao1kaGo2() end
end
})
_3fjTDvlZ:_whoVOCl1({
_SJmZRLmg = __xor_decode("deedf4f4b8daeaf1fff0ec", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
if _DXVIITc5 then
_5zrJYDkJ._3zjrCJ8N = _Es2EqEBy._17HZDIvB(1, 1, 1)
_5zrJYDkJ._0H27rN6c = _Es2EqEBy._17HZDIvB(1, 1, 1)
_5zrJYDkJ._Iwq7bBn3 = _Es2EqEBy._17HZDIvB(1, 1, 1)
else
_5zrJYDkJ._3zjrCJ8N = _Es2EqEBy._17HZDIvB(0, 0, 0)
_5zrJYDkJ._0H27rN6c = _Es2EqEBy._17HZDIvB(0, 0, 0)
_5zrJYDkJ._Iwq7bBn3 = _Es2EqEBy._17HZDIvB(0, 0, 0)
end
end
})
_3fjTDvlZ:_whoVOCl1({
_SJmZRLmg = __xor_decode("cff9f4f3b8f7f6b8cff9ecfdea", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
if _DXVIITc5 then
_8B42JbCI._H8uKX8SF[__xor_decode("cff9ecfdeadaf9ebfdb5c8f4f9f6fd", 152)]._utwE6EqJ = _zuoeFLbx._17HZDIvB(1000, 112, 1000)
else
_8B42JbCI._H8uKX8SF[__xor_decode("cff9ecfdeadaf9ebfdb5c8f4f9f6fd", 152)]._utwE6EqJ = _zuoeFLbx._17HZDIvB(1000, 80, 1000)
end
end
})
local _58BqitOk = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8cceaf9eefdf4", 152),
_bBqeJVDS = __xor_decode("fef4f1fff0ecc7ecf9f3fdf7fefe", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
_58BqitOk:_pGz4LC2I(__xor_decode("ccfdf4fde8f7eaecb8cbfdf9", 152))
_58BqitOk:_VdimDP1h({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8ccf7b8cbfdf9b8a9", 152),
_LkZRaudh = function()
local _RH5jI1w4, _Ow0YPxhe = pcall(function()
return _xHvO8uUf:_unLzpo56(__xor_decode("cceaf9eefdf4d5f9f1f6", 152))
end)
if not _RH5jI1w4 then
end
end
})
_58BqitOk:_VdimDP1h({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8ccf7b8cbfdf9b8aa", 152),
_LkZRaudh = function()
local _RH5jI1w4, _Ow0YPxhe = pcall(function()
return _xHvO8uUf:_unLzpo56(__xor_decode("cceaf9eefdf4dceafdebebeaf7ebf9", 152))
end)
if not _RH5jI1w4 then
end
end
})
_58BqitOk:_VdimDP1h({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8ccf7b8cbfdf9b8ab", 152),
_LkZRaudh = function()
local _RH5jI1w4, _Ow0YPxhe = pcall(function()
return _xHvO8uUf:_unLzpo56(__xor_decode("cceaf9eefdf4c2f7ed", 152))
end)
if not _RH5jI1w4 then
end
end
})
_58BqitOk:_pGz4LC2I(__xor_decode("ccfdf4fde8f7eaecb8d1ebf4f9f6fc", 152))
local _rC4WN3m6 = {}
for i, v in pairs(_h32AYdIn[__xor_decode("c7cff7eaf4fcd7eaf1fff1f6", 152)]._bXPAqIDK:_U1nyZ8gD()) do
table._8mdIb4B2(_rC4WN3m6, v._SJmZRLmg)
end
local _95GRuONs = _58BqitOk:_sf7seRqj({
_SJmZRLmg = __xor_decode("cceaf9eefdf4b8d1ebf4f9f6fc", 152),
_kRu7uh4H = __xor_decode("cbfdf4fdfbecb8f9f6b8f1ebf4f9f6fcb8ecf7b8eceaf9eefdf4", 152),
_z5UeRkvB = _rC4WN3m6,
_tcSrqsRO = _rC4WN3m6[1] or __xor_decode("d6f7f6fd", 152),
_oRXg9nab = false,
_s8uopo1x = nil,
_LkZRaudh = function(_rEG7aUZ8)
_G[__xor_decode("d1ebf4f9f6fc", 152)] = _rEG7aUZ8
print(__xor_decode("cbfdf4fdfbecfdfcb8d1ebf4f9f6fca2", 152), _rEG7aUZ8)
end
}, __xor_decode("dceaf7e8fcf7eff6", 152))
_58BqitOk:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8cceaf9eefdf4", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._wuM8JCHX = _DXVIITc5
if _DXVIITc5 and _G._pLmbXMzZ then
local _ARdpKfCd
for i, v in pairs(_h32AYdIn[__xor_decode("c7cff7eaf4fcd7eaf1fff1f6", 152)]._bXPAqIDK:_U1nyZ8gD()) do
if v._SJmZRLmg == _G._pLmbXMzZ then
_ARdpKfCd = v
break
end
end
if _ARdpKfCd then
_5rBOzAg9(function()
repeat
_NXgxNdXn(0.1)
if _k7zR47kU and _ARdpKfCd then
_BLb2ID0S(_ARdpKfCd._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 0))
end
until not _G._wuM8JCHX or (_k7zR47kU._6omxqnce - _ARdpKfCd._6omxqnce)._WWLiMKMG < 5
end)
end
end
end
})
_58BqitOk:_pGz4LC2I(__xor_decode("cceaf9eefdf4b8b5b8d6c8dbeb", 152))
local _L7fgB6VH = {}
for _, v in pairs(_lTdEqkui._7fF7kep7:_U1nyZ8gD()) do
table._8mdIb4B2(_L7fgB6VH, v._SJmZRLmg)
end
_ngzTspB6 = _58BqitOk:_sf7seRqj({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8d6e8fb", 152),
_kRu7uh4H = __xor_decode("cbfdf4fdfbecb8f9f6b8d6c8dbb8ecf7b8eceaf9eefdf4", 152),
_z5UeRkvB = _L7fgB6VH,
_tcSrqsRO = _L7fgB6VH[1] or __xor_decode("d6f7f6fd", 152),
_oRXg9nab = false,
_s8uopo1x = nil,
_LkZRaudh = function(_DXVIITc5)
_RWLDlC7m = _DXVIITc5
end
})
_a5FBxhL8 = _58BqitOk:_whoVOCl1({
_SJmZRLmg = __xor_decode("cceffdfdf6b8ccf7b8d6c8dbeb", 152),
_LkZRaudh = function(_DXVIITc5)
_G._AQ02jTAC = _DXVIITc5
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G._AQ02jTAC then
pcall(function()
for _, v in pairs(_lTdEqkui._7fF7kep7:_U1nyZ8gD()) do
if v._SJmZRLmg == _RWLDlC7m and v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) then
_BLb2ID0S(v._mlCgc6hE._4JjYvmt9)
end
end
end)
end
end
end)
local _pw6wMBxW = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8def9eaf5f1f6ff", 152),
_bBqeJVDS = __xor_decode("f0f7edebfd", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("def9eaf5b8d4fdeefdf4", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._9FPX5scw = _DXVIITc5
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
if _G._9FPX5scw then
pcall(function()
local _nGWuvR2N = _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT
local x = _nGWuvR2N._SmNo9F3D._Eauot3Se._w1TFabRP._uDahL5BN
if not string._uZPmTc7E(x, (_axM0x40d())[5]) then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9faf9f6fcf7f6c9edfdebec", 152))
end
if not _nGWuvR2N._kFs6z3sO then
_BLb2ID0S((_axM0x40d())[6])
if (_k7zR47kU._6omxqnce - (_axM0x40d())[6]._6omxqnce)._WWLiMKMG <= 5 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cbecf9eaecc9edfdebec", 152), (_axM0x40d())[3], (_axM0x40d())[2])
end
else
if _h32AYdIn._wCAaHPgk:_Vxb6wrm0((_axM0x40d())[1]) then
for _, a in pairs(_h32AYdIn._wCAaHPgk:_U1nyZ8gD()) do
if Z._OoDgGEFL(a) and a._SJmZRLmg == (_axM0x40d())[1] then
if string._uZPmTc7E(x, (_axM0x40d())[5]) then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(a, _G._9FPX5scw)
until not _G._9FPX5scw
or a._7ytFhWfa._s2IJHglw <= 0
or not a._que4pLwI
or not _nGWuvR2N._kFs6z3sO
else
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9faf9f6fcf7f6c9edfdebec", 152))
end
end
end
else
_BLb2ID0S((_axM0x40d())[4])
if _lTdEqkui:_Vxb6wrm0((_axM0x40d())[1]) then
_BLb2ID0S(_lTdEqkui:_Vxb6wrm0((_axM0x40d())[1])._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 30, 0))
end
end
end
end)
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("cceaf9eefdf4b8dceafdebeb", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._WgzDjjA8 = _DXVIITc5
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G._WgzDjjA8 then
if _nX32xbW5._rtC2GP20._9FPX5scw._DXVIITc5 >= 700 then
local _jSpfferQ = _h32AYdIn._H8uKX8SF._BsJ0y9qw._pRlIg1i0
if _jSpfferQ._0ObodJbn == true and _jSpfferQ._yznLFI5n == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dceafdebebeaf7ebf9c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dcfdecfdfbecf1eefd", 152))
_db3okcUG(__xor_decode("d3fde1", 152))
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9._17HZDIvB(1347.7124, 37.3751602, -1325.6488))
until not _G._WgzDjjA8 or (_k7zR47kU._6omxqnce == _zuoeFLbx._17HZDIvB(1347.7124, 37.3751602, -1325.6488))
elseif _jSpfferQ._0ObodJbn == false and _jSpfferQ._yznLFI5n == 1 then
if _wCAaHPgk:_Vxb6wrm0(__xor_decode("d1fbfdb8d9fcf5f1eaf9f4", 152)) then
for _, xz in pairs(_wCAaHPgk:_U1nyZ8gD()) do
if xz._SJmZRLmg == __xor_decode("d1fbfdb8d9fcf5f1eaf9f4", 152) and _iHSu6B47._OoDgGEFL(xz) then
repeat
_swpqZ6Me._NXgxNdXn()
_iHSu6B47._NqVoDesm(xz, _G._WgzDjjA8)
until not _G._WgzDjjA8 or xz._7ytFhWfa._s2IJHglw <= 0
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cceaf9eefdf4dceafdebebeaf7ebf9", 152))
end
end
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(1347.7124, 37.3751602, -1325.6488))
end
else
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cceaf9eefdf4dceafdebebeaf7ebf9", 152))
end
end
end
end)
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8c2f7edb8c9edfdebec", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._lp6vZLxO = _DXVIITc5
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G._lp6vZLxO then
if _nX32xbW5._rtC2GP20._9FPX5scw._DXVIITc5 >= 1500 then
if _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("daf9eaecf1f4f7c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("daf9eaecf1f4f7", 152)) == 3 then
if _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dffdeccdf6f4f7fbf3f9faf4fdeb", 152))._dmgQPoIh ~= nil then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("cceaf9eefdf4c2f7ed", 152))
if _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("c2c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dbf0fdfbf3", 152)) == 0 then
local v = _j2d8bAba(__xor_decode("eaf1e8c7f1f6fceaf9", 152))
if v then
repeat
_NXgxNdXn()
_iHSu6B47._NqVoDesm(v, _G._lp6vZLxO)
until not _G._lp6vZLxO or not v._que4pLwI or v._7ytFhWfa._s2IJHglw <= 0
_GnBwbNlb = 2
repeat
_NXgxNdXn()
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("cceaf9eefdf4c2f7ed", 152))
until _GnBwbNlb == 1
else
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("c2c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dbf0fdfbf3", 152))
_NXgxNdXn(0.1)
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("c2c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dafdfff1f6", 152))
end
elseif _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("c2c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dbf0fdfbf3", 152)) == 1 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("cceaf9eefdf4c2f7ed", 152))
else
local v = _j2d8bAba(__xor_decode("dcf7f6b8cbeff9f6", 152))
if v then
repeat
_NXgxNdXn()
_iHSu6B47._NqVoDesm(v, _G._lp6vZLxO)
until not _G._lp6vZLxO or not v._que4pLwI or v._7ytFhWfa._s2IJHglw <= 0
else
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9._17HZDIvB(2288.802, 15.1870775, 863.034607))
until not _G._lp6vZLxO or (_k7zR47kU._6omxqnce == _zuoeFLbx._17HZDIvB(2288.802, 15.1870775, 863.034607))
if _k7zR47kU._6omxqnce == _zuoeFLbx._17HZDIvB(2288.802, 15.1870775, 863.034607) then
_VnWTO7g1(_4JjYvmt9._17HZDIvB(2288.802, 15.1870775, 863.034607))
end
end
end
else
local _w1vJDqRd = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dffdeccdf6f4f7fbf3f9faf4fdeb", 152))
if _w1vJDqRd._dmgQPoIh == nil then
local _5n3FhP1N, _08jXVhyE = {}, {}
for _, v in pairs(_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("fffdecd1f6eefdf6ecf7eae1deeaedf1eceb", 152))) do
for k, _vypMlrxv in pairs(v) do
if k == __xor_decode("d6f9f5fd", 152) then
table._8mdIb4B2(_5n3FhP1N, _vypMlrxv)
end
end
end
for _, _OZInpN2F in next, _BU7qAFcs._47zEuDDz._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dffdecdeeaedf1eceb", 152)) do
if _OZInpN2F._D6wcoWoE >= 1000000 then
table._8mdIb4B2(_08jXVhyE, _OZInpN2F._SJmZRLmg)
end
end
for _, _1Igxq2Un in pairs(_08jXVhyE) do
for _, _nLpmkSt8 in pairs(_5n3FhP1N) do
if _1Igxq2Un == _nLpmkSt8 and _w1vJDqRd._dmgQPoIh == nil then
if not _nX32xbW5._TCbzMlDD:_Vxb6wrm0(_nLpmkSt8) then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("d4f7f9fcdeeaedf1ec", 152), _nLpmkSt8)
else
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("ccf9f4f3cceafdeef7ea", 152), __xor_decode("a9", 152))
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("ccf9f4f3cceafdeef7ea", 152), __xor_decode("aa", 152))
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("ccf9f4f3cceafdeef7ea", 152), __xor_decode("ab", 152))
end
end
end
end
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("ccf9f4f3cceafdeef7ea", 152), __xor_decode("a9", 152))
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("ccf9f4f3cceafdeef7ea", 152), __xor_decode("aa", 152))
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dec7", 152), __xor_decode("ccf9f4f3cceafdeef7ea", 152), __xor_decode("ab", 152))
end
end
else
local _zqX9kBWi = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("daf9eaecf1f4f7c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("daf9eaecf1f4f7", 152))
if _zqX9kBWi == 0 then
if string._uZPmTc7E(_nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._SmNo9F3D._Eauot3Se._w1TFabRP._uDahL5BN, __xor_decode("cbeff9f6b8c8f1eaf9ecfdeb", 152))
and string._uZPmTc7E(_nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._SmNo9F3D._Eauot3Se._w1TFabRP._uDahL5BN, __xor_decode("ada8", 152))
and _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO == true then
local v = _j2d8bAba(__xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152))
if v then
pcall(function()
repeat
_NXgxNdXn()
_iHSu6B47._NqVoDesm(v, _G._lp6vZLxO)
until not v._que4pLwI or v._7ytFhWfa._s2IJHglw <= 0 or not _G._lp6vZLxO or _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO == false
end)
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(1057.92761, 137.614319, 1242.08069))
end
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-456.28952, 73.0200958, 299.895966))
end
elseif _zqX9kBWi == 1 then
local v = _j2d8bAba(__xor_decode("d2fdeafdf5e1", 152))
if v then
repeat
_NXgxNdXn()
_iHSu6B47._NqVoDesm(v, _G._lp6vZLxO)
until not v._que4pLwI or v._7ytFhWfa._s2IJHglw <= 0 or not _G._lp6vZLxO
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(2099.88159, 448.931, 648.997375))
end
elseif _zqX9kBWi == 2 then
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-1836, 11, 1714))
until not _G._lp6vZLxO or (_k7zR47kU._6omxqnce == _zuoeFLbx._17HZDIvB(-1836, 11, 1714))
if _k7zR47kU._6omxqnce == _zuoeFLbx._17HZDIvB(-1836, 11, 1714) then
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1836, 11, 1714))
end
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1850.49329, 13.1789551, 1750.89685))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1858.87305, 19.3777466, 1712.01807))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1803.94324, 16.5789185, 1750.89685))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1858.55835, 16.8604317, 1724.79541))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1869.54224, 15.987854, 1681.00659))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1800.0979, 16.4978027, 1684.52368))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1819.26343, 14.795166, 1717.90625))
_NXgxNdXn(0.1)
_VnWTO7g1(_4JjYvmt9._17HZDIvB(-1813.51843, 14.8604736, 1724.79541))
end
end
end
end
end)
end
end)
_pw6wMBxW:_pGz4LC2I(__xor_decode("f1ebfbfdf4f4f9f6fdf9b8b7b8c9edfdebec", 152))
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8def9eaf5b8d6fdf9eafdebec", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._q8qFjK3J = _DXVIITc5
end
})
_5rBOzAg9(function()
while _NXgxNdXn() do
pcall(function()
if _G._q8qFjK3J then
local _0vTHYbQW, _JIRhK2jL = nil, math._3F9FgYe2
for _, v in pairs(_h32AYdIn._wCAaHPgk:_U1nyZ8gD()) do
if v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) then
if v._7ytFhWfa._s2IJHglw > 0 then
local _aGZGAh2Z = (v._mlCgc6hE._6omxqnce - _k7zR47kU._6omxqnce)._WWLiMKMG
if _aGZGAh2Z < _JIRhK2jL then
_0vTHYbQW = v
_JIRhK2jL = _aGZGAh2Z
end
end
end
end
if _0vTHYbQW then
repeat
_swpqZ6Me._NXgxNdXn()
_iHSu6B47._NqVoDesm(_0vTHYbQW, _G._q8qFjK3J)
until not _G._q8qFjK3J or not _0vTHYbQW._que4pLwI or _0vTHYbQW._7ytFhWfa._s2IJHglw <= 0
end
end
end)
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8def9eaf5b8def9fbecf7eae1", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._vL63h9f0 = _DXVIITc5
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G._vL63h9f0 then
local v = _j2d8bAba(__xor_decode("dbf7eafd", 152))
if v and v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and v._7ytFhWfa._s2IJHglw > 0 then
repeat
_NXgxNdXn()
_db3okcUG(_G._avelfZVY)
_BLb2ID0S(_4JjYvmt9._17HZDIvB(448.46756, 199.356781, -441.389252))
_iHSu6B47._NqVoDesm(v, _G._vL63h9f0)
until not _G._vL63h9f0 or not v._que4pLwI or v._7ytFhWfa._s2IJHglw <= 0
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(448.46756, 199.356781, -441.389252))
end
end
end)
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8def9eaf5b8c8f1eaf9ecfdebb8caf9f1fc", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(_DXVIITc5)
_G._MmhN1njo = _DXVIITc5
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G._MmhN1njo then
local _ef6Z3JXo = _4JjYvmt9._17HZDIvB(-5496.17432, 313.768921, -2841.53027)
if (_zuoeFLbx._17HZDIvB(-5539.3115, 313.8005, -2972.3723) - _k7zR47kU._6omxqnce)._WWLiMKMG <= 500 then
for _, v in pairs(_h32AYdIn._wCAaHPgk:_U1nyZ8gD()) do
if v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) and v:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and v._7ytFhWfa._s2IJHglw > 0 then
if (v._mlCgc6hE._6omxqnce - _k7zR47kU._6omxqnce)._WWLiMKMG <= 2000 then
repeat
_NXgxNdXn()
_iHSu6B47._NqVoDesm(v, _G._MmhN1njo)
until not _G._MmhN1njo or not v._que4pLwI or v._7ytFhWfa._s2IJHglw <= 0
end
end
end
else
local _4EnKm2E6 = {
__xor_decode("dff9f4f4fde1b8c8f1eaf9ecfd", 152),__xor_decode("dff9f4f4fde1b8dbf9e8ecf9f1f6", 152),__xor_decode("caf9f1fcfdea", 152),__xor_decode("d5fdeafbfdf6f9eae1", 152),__xor_decode("cef9f5e8f1eafd", 152),__xor_decode("c2f7f5faf1fd", 152),__xor_decode("cbf6f7efb8cceaf7f7e8fdea", 152),__xor_decode("cff1f6ecfdeab8cff9eaeaf1f7ea", 152),
__xor_decode("d4f9fab8cbedfaf7eafcf1f6f9ecfd", 152),__xor_decode("d0f7eaf6fdfcb8cff9eaeaf1f7ea", 152),__xor_decode("d5f9fff5f9b8d6f1f6f2f9", 152),__xor_decode("d4f9eef9b8c8f1eaf9ecfd", 152),__xor_decode("cbf0f1e8b8dcfdfbf3f0f9f6fc", 152),__xor_decode("cbf0f1e8b8ddf6fff1f6fdfdea", 152),
__xor_decode("cbf0f1e8b8cbecfdeff9eafc", 152),__xor_decode("cbf0f1e8b8d7fefef1fbfdea", 152),__xor_decode("d9eafbecf1fbb8cff9eaeaf1f7ea", 152),__xor_decode("cbf6f7efb8d4edeaf3fdea", 152),__xor_decode("cbfdf9b8cbf7f4fcf1fdea", 152),__xor_decode("cff9ecfdeab8def1fff0ecfdea", 152)
}
for _, v in pairs(_h32AYdIn._wCAaHPgk:_U1nyZ8gD()) do
if table._uZPmTc7E(_4EnKm2E6, v._SJmZRLmg) then
_BLb2ID0S(_ef6Z3JXo)
break
end
end
end
end
end)
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("def9eaf5b8d5f9ecfdeaf1f9f4", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(v)
_TghJJhWf()._ApbDalTZ = v
end
})
_pw6wMBxW:_sf7seRqj({
_SJmZRLmg = __xor_decode("dbf0f7f7ebfdb8d5f9ecfdeaf1f9f4", 152),
_z5UeRkvB = _NajmJrKv,
_tcSrqsRO = {__xor_decode("d6f7f6fd", 152)},
_oRXg9nab = false,
_LkZRaudh = function(x)
_TghJJhWf()._REjvODY1 = x
end
})
_5rBOzAg9(function()
local function x(x, L)
if x:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152)) and (x:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) and x._7ytFhWfa._s2IJHglw > 0) then
if x._SJmZRLmg == L then
repeat
_NXgxNdXn()
Z._NqVoDesm(x, _TghJJhWf()._ApbDalTZ)
until not _TghJJhWf()._ApbDalTZ or not x._que4pLwI or x._7ytFhWfa._s2IJHglw <= 0
end
end
end
local function L()
for _, _pkcgfOY2 in pairs(_BU7qAFcs:_Z8o1VzBW(__xor_decode("cff7eaf3ebe8f9fbfd", 152))[__xor_decode("c7cff7eaf4fcd7eaf1fff1f6", 152)][__xor_decode("ddf6fdf5e1cbe8f9eff6eb", 152)]:_U1nyZ8gD()) do
for _, _XctGRR8P in ipairs(_0NqjW2Rk) do
if string._uZPmTc7E(_pkcgfOY2._SJmZRLmg, _XctGRR8P) then
if (_BU7qAFcs._P1x26Nku._SorkIkcY._NgI0zScj._mlCgc6hE._6omxqnce - _pkcgfOY2._6omxqnce)._WWLiMKMG >= 10 then
_BLb2ID0S(_pkcgfOY2._4JjYvmt9 * _cGIe1kmQ)
end
end
end
end
end
while _NXgxNdXn() do
if _TghJJhWf()._ApbDalTZ then
pcall(function()
if _TghJJhWf()._REjvODY1 then
_RIffuWgI(_TghJJhWf()._REjvODY1)
_BLb2ID0S(_2tFzqPe2)
end
for _, _XctGRR8P in ipairs(_0NqjW2Rk) do
for _, _2JSc3Zon in pairs(_h32AYdIn._wCAaHPgk:_U1nyZ8gD()) do
x(_2JSc3Zon, _XctGRR8P)
end
end
L()
end)
end
end
end)
_pw6wMBxW:_pGz4LC2I(__xor_decode("dffdf6fdeaf9f4ebb8c9edfdebecebb8b7b8d1ecfdf5eb", 152))
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("def9eaf5b8dbf9f3fdb8c8eaf1f6fbfd", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn() do
if _G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)] then
pcall(function()
local _nX32xbW5 = _BU7qAFcs._P1x26Nku._SorkIkcY
local L = _nX32xbW5._NgI0zScj and _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))
local _mVwtdzDT = _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT
local _wCAaHPgk = _h32AYdIn._wCAaHPgk
local _Hsbn2Vy6 = _h32AYdIn._H8uKX8SF._ST93qASL._Hsbn2Vy6
if not L then return end
if not _Hsbn2Vy6:_Vxb6wrm0(__xor_decode("d7ecf0fdea", 152)) then
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-2077, 252, -12373))
end
if _Hsbn2Vy6._wC4qRwIO._yznLFI5n == 0 or _wCAaHPgk:_Vxb6wrm0(__xor_decode("dbf9f3fdb8c8eaf1f6fbfd", 152)) then
local _C3cqMXwy = _j2d8bAba(__xor_decode("dbf9f3fdb8c8eaf1f6fbfd", 152))
if _C3cqMXwy then
repeat
_NXgxNdXn()
Z._6EWvh06V(_C3cqMXwy, _G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)])
until not _G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)] or not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0
else
if _Hsbn2Vy6._wC4qRwIO._yznLFI5n == 0 and ((_4JjYvmt9._17HZDIvB(-1990.67, 4533, -14973.67))._6omxqnce - L._6omxqnce)._WWLiMKMG >= 2000 then
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-2151.82, 149.32, -12404.91))
end
end
else
local _0msZ3cZU = {__xor_decode("dbf7f7f3f1fdb8dbeaf9feecfdea", 152),__xor_decode("dbf9f3fdb8dfedf9eafc", 152),__xor_decode("daf9f3f1f6ffb8cbecf9fefe", 152),__xor_decode("d0fdf9fcb8daf9f3fdea", 152)}
local _C3cqMXwy = _j2d8bAba(_0msZ3cZU)
if _C3cqMXwy then
if _G[__xor_decode("d9fbfbfde8ecc9edfdebecdb", 152)] and not _mVwtdzDT._kFs6z3sO then
local _ZXEeuuDb = _4JjYvmt9._17HZDIvB(-1927.92, 37.8, -12842.54)
_BLb2ID0S(_ZXEeuuDb)
while (_ZXEeuuDb._6omxqnce - L._6omxqnce)._WWLiMKMG > 50 do _NXgxNdXn(0.2) end
local _b3p2sfAh = math._zljrIcRP(1, 4)
local _cpny10fw = {
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("dbf9f3fdc9edfdebecaa", 152),2},
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("dbf9f3fdc9edfdebecaa", 152),1},
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("dbf9f3fdc9edfdebeca9", 152),1},
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("dbf9f3fdc9edfdebeca9", 152),2}
}
pcall(function()
_BU7qAFcs._47zEuDDz._fx22KKFW._wzDrPBuu:_unLzpo56(unpack(_cpny10fw[_b3p2sfAh]))
end)
end
repeat
_NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)])
until not _G[__xor_decode("d9edecf7c7dbf9f3fdc7c8eaf1f6fbfd", 152)] or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or _Hsbn2Vy6._wC4qRwIO._yznLFI5n == 0 or (_G[__xor_decode("d9fbfbfde8ecc9edfdebecdb", 152)] and not _mVwtdzDT._kFs6z3sO)
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-2077, 252, -12373))
end
end
end)
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("def9eaf5b8daf7f6fdeb", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7def9eaf5c7daf7f6fd", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("d9edecf7def9eaf5c7daf7f6fd", 152)] then
pcall(function()
local _nX32xbW5 = _BU7qAFcs._P1x26Nku._SorkIkcY
local _wUANBGSo = _nX32xbW5._NgI0zScj and _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))
local _mVwtdzDT = _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT
local _0msZ3cZU = {
__xor_decode("cafdfaf7eaf6b8cbf3fdf4fdecf7f6", 152),
__xor_decode("d4f1eef1f6ffb8c2f7f5faf1fd", 152),
__xor_decode("dcfdf5f7f6f1fbb8cbf7edf4", 152),
__xor_decode("c8f7ebfdebebfdfcb8d5edf5f5e1", 152)
}
if not _wUANBGSo then return end
local _C3cqMXwy = _j2d8bAba(_0msZ3cZU)
if _C3cqMXwy then
if _G[__xor_decode("d9fbfbfde8ecc9edfdebecdb", 152)] and not _mVwtdzDT._kFs6z3sO then
local _ZXEeuuDb = _4JjYvmt9._17HZDIvB(-9516.99, 172.01, 6078.46)
_BLb2ID0S(_ZXEeuuDb)
while (_ZXEeuuDb._6omxqnce - _wUANBGSo._6omxqnce)._WWLiMKMG > 50 do
_NXgxNdXn(0.2)
end
local _891G8GV4 = math._zljrIcRP(1, 4)
local _cpny10fw = {
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("d0f9edf6ecfdfcc9edfdebecaa", 152),2},
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("d0f9edf6ecfdfcc9edfdebecaa", 152),1},
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("d0f9edf6ecfdfcc9edfdebeca9", 152),1},
{__xor_decode("cbecf9eaecc9edfdebec", 152),__xor_decode("d0f9edf6ecfdfcc9edfdebeca9", 152),2}
}
pcall(function()
_BU7qAFcs._47zEuDDz._fx22KKFW._wzDrPBuu:_unLzpo56(unpack(_cpny10fw[_891G8GV4]))
end)
end
repeat
_swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7def9eaf5c7daf7f6fd", 152)])
until not _G[__xor_decode("d9edecf7def9eaf5c7daf7f6fd", 152)]
or not _C3cqMXwy._que4pLwI
or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0
or (_G[__xor_decode("d9fbfbfde8ecc9edfdebecdb", 152)] and not _mVwtdzDT._kFs6z3sO)
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-9495.68, 453.58, 5977.34))
end
end)
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9fbfbfde8ecb8c9edfdebeceb", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9fbfbfde8ecc9edfdebecdb", 152)] = x
end
})
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8def9eaf5b8d7faebfdeaeef9ecf1f7f6", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("f7faebdef9eaf5", 152)] = x
end
})
local _yyarJomk = false
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(0.2) do
pcall(function()
if _G[__xor_decode("f7faebdef9eaf5", 152)] then
_lTdEqkui._fx22KKFW._9bUo88KA:_Ah6rgtnq(__xor_decode("d3fdf6", 152), true)
if _nX32xbW5:_04di7d0d(__xor_decode("d3fdf6dcf7fcfffdebd4fdfeec", 152)) == 0 then
_yyarJomk = false
elseif _nX32xbW5:_04di7d0d(__xor_decode("d3fdf6dcf7fcfffdebd4fdfeec", 152)) > 0 then
_lTdEqkui._fx22KKFW._9bUo88KA:_Ah6rgtnq(__xor_decode("d3fdf6", 152), true)
_yyarJomk = true
end
end
end)
end
end)
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(0.2) do
pcall(function()
if _G[__xor_decode("f7faebdef9eaf5", 152)] then
if _Xs7cfZwc then
local _C3cqMXwy = _h32AYdIn._wCAaHPgk:_Vxb6wrm0(__xor_decode("dff9f4f4fde1b8dbf9e8ecf9f1f6", 152))
if _C3cqMXwy and _C3cqMXwy:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) then
if _yyarJomk then
repeat _swpqZ6Me._NXgxNdXn()
_nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 = _C3cqMXwy._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(3, 0, 0)
until not _G[__xor_decode("f7faebdef9eaf5", 152)] or not _yyarJomk
else
repeat _swpqZ6Me._NXgxNdXn()
_nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 = _C3cqMXwy._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 50, 0)
until not _G[__xor_decode("f7faebdef9eaf5", 152)] or _yyarJomk
end
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(5533.29785, 88.1079102, 4852.3916))
end
elseif _UBcNrmyH then
local _C3cqMXwy = _h32AYdIn._wCAaHPgk:_Vxb6wrm0(__xor_decode("d4f9eef9b8c8f1eaf9ecfd", 152))
if _C3cqMXwy and _C3cqMXwy:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) then
if _yyarJomk then
repeat _swpqZ6Me._NXgxNdXn()
_nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 = _C3cqMXwy._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(3, 0, 0)
until not _G[__xor_decode("f7faebdef9eaf5", 152)] or not _yyarJomk
else
repeat _swpqZ6Me._NXgxNdXn()
_nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 = _C3cqMXwy._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 50, 0)
until not _G[__xor_decode("f7faebdef9eaf5", 152)] or _yyarJomk
end
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-5478.39209, 15.9775667, -5246.9126))
end
elseif _pCkTQC2R then
local _C3cqMXwy = _h32AYdIn._wCAaHPgk:_Vxb6wrm0(__xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152))
if _C3cqMXwy and _C3cqMXwy:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) then
if _yyarJomk then
repeat _swpqZ6Me._NXgxNdXn()
_BLb2ID0S(_C3cqMXwy._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(3, 0, 0))
until not _G[__xor_decode("f7faebdef9eaf5", 152)] or not _yyarJomk
else
repeat _swpqZ6Me._NXgxNdXn()
_BLb2ID0S(_C3cqMXwy._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 50, 0))
until not _G[__xor_decode("f7faebdef9eaf5", 152)] or _yyarJomk
end
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(4530.354, 656.757, -131.6095))
end
end
end
end)
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8d7faebfdeaeef9ecf1f7f6b8ceaa", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)] then
pcall(function()
local _i6KwlI1F = _4JjYvmt9._17HZDIvB(-12444.785, 332.4039, -7673.180)
local _JKzJnPof = _4JjYvmt9._17HZDIvB(-10920.125, 624.2027, -10266.995)
local _5rfwTnDj = _4JjYvmt9._17HZDIvB(-13277.568, 370.3418, -7821.157)
local _UbKCA8Hz = _4JjYvmt9._17HZDIvB(-13493.128, 318.8955, -8373.791)
if _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO and string._uZPmTc7E(_nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._SmNo9F3D._Eauot3Se._w1TFabRP._uDahL5BN, __xor_decode("dcfdfefdf9ecb8ada8b8def7eafdebecb8c8f1eaf9ecfdeb", 152)) then
local _C3cqMXwy = _j2d8bAba(__xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152))
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)])
until not _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)] or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO
else
_BLb2ID0S(_5rfwTnDj)
end
elseif _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO then
local _C3cqMXwy = _j2d8bAba(__xor_decode("dbf9e8ecf9f1f6b8ddf4fde8f0f9f6ec", 152))
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)])
until not _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)] or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO
else
_BLb2ID0S(_UbKCA8Hz)
end
elseif not _nX32xbW5._CXOYTt4y._gwNLKfoq._mVwtdzDT._kFs6z3sO then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dbf1ecf1e2fdf6c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dbf1ecf1e2fdf6", 152))
_swpqZ6Me._NXgxNdXn(0.1)
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cbecf9eaecc9edfdebec", 152), __xor_decode("dbf1ecf1e2fdf6c9edfdebec", 152), 1)
end
if _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dbf1ecf1e2fdf6c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dbf1ecf1e2fdf6", 152)) == 2 then
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-12513.519, 340.1137, -9873.048))
end
if not _nX32xbW5._TCbzMlDD:_Vxb6wrm0(__xor_decode("deeaedf1ecb8daf7eff4", 152)) and not _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("deeaedf1ecb8daf7eff4", 152)) then
if not _PN5Q7ywn(__xor_decode("deeaedf1ecb8daf7eff4", 152)) then
if not _PN5Q7ywn(__xor_decode("d9e8e8f4fd", 152)) then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx._17HZDIvB(-12471.169, 374.9402, -7551.677))
for _, v in pairs(_h32AYdIn:_ptwChaBG()) do
if v._SJmZRLmg == __xor_decode("d9e8e8f4fd", 152) then
v._K7PC5h9s._4JjYvmt9 = _nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 1, 10)
_swpqZ6Me._NXgxNdXn()
_oGy3uEVl(_nX32xbW5._NgI0zScj._mlCgc6hE, v._K7PC5h9s, 0)
_swpqZ6Me._NXgxNdXn()
end
end
elseif not _PN5Q7ywn(__xor_decode("daf9f6f9f6f9", 152)) then
_BLb2ID0S(_4JjYvmt9._17HZDIvB(2286.007, 73.1339, -7159.809))
for _, v in pairs(_h32AYdIn:_ptwChaBG()) do
if v._SJmZRLmg == __xor_decode("daf9f6f9f6f9", 152) then
v._K7PC5h9s._4JjYvmt9 = _nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 1, 10)
_swpqZ6Me._NXgxNdXn()
_oGy3uEVl(_nX32xbW5._NgI0zScj._mlCgc6hE, v._K7PC5h9s, 0)
_swpqZ6Me._NXgxNdXn()
end
end
elseif not _PN5Q7ywn(__xor_decode("c8f1f6fdf9e8e8f4fd", 152)) then
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-712.827, 98.5770, 5711.954))
for _, v in pairs(_h32AYdIn:_ptwChaBG()) do
if v._SJmZRLmg == __xor_decode("c8f1f6fdf9e8e8f4fd", 152) then
v._K7PC5h9s._4JjYvmt9 = _nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 1, 10)
_swpqZ6Me._NXgxNdXn()
_oGy3uEVl(_nX32xbW5._NgI0zScj._mlCgc6hE, v._K7PC5h9s, 0)
_swpqZ6Me._NXgxNdXn()
end
end
end
end
if (_PN5Q7ywn(__xor_decode("daf9f6f9f6f9", 152)) and _PN5Q7ywn(__xor_decode("d9e8e8f4fd", 152)) and _PN5Q7ywn(__xor_decode("c8f1f6fdf9e8e8f4fd", 152))) then
repeat _swpqZ6Me._NXgxNdXn()
_BLb2ID0S(_i6KwlI1F)
until not _G[__xor_decode("d9edecf7d3fdf6cecccfd7", 152)] or _nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 == _i6KwlI1F
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("dbf1ecf1e2fdf6c9edfdebecc8eaf7ffeafdebeb", 152), __xor_decode("dbf1ecf1e2fdf6", 152))
end
if _nX32xbW5._TCbzMlDD:_Vxb6wrm0(__xor_decode("deeaedf1ecb8daf7eff4", 152)) or _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("deeaedf1ecb8daf7eff4", 152)) then
if _nX32xbW5._NgI0zScj._mlCgc6hE._4JjYvmt9 ~= _JKzJnPof then
_BLb2ID0S(_JKzJnPof)
else
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d3fdf6ccf9f4f3aa", 152), __xor_decode("cbecf9eaec", 152))
_swpqZ6Me._NXgxNdXn(0.1)
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d3fdf6ccf9f4f3aa", 152), __xor_decode("daede1", 152))
end
end
end
end)
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8cdf6f4f7fbf3fdfcb8c8ede2e2f4fd", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(v)
_G._r9w9h1PD = v
end
})
local function _oAuNRGia(_sdOAoBY6)
if not _sdOAoBY6 then return end
local _FkFsttEY = {
[1] = {
[__xor_decode("cbecf7eaf9fffdd6f9f5fd", 152)] = _sdOAoBY6,
[__xor_decode("cce1e8fd", 152)] = __xor_decode("d9edeaf9cbf3f1f6", 152),
[__xor_decode("dbf7f6ecfde0ec", 152)] = __xor_decode("dde9edf1e8", 152)
}
}
_lTdEqkui:_XX60xZf3(__xor_decode("d5f7fcedf4fdeb", 152)):_XX60xZf3(__xor_decode("d6fdec", 152)):_XX60xZf3(__xor_decode("cadeb7deeaedf1ecdbedebecf7f5f1e2fdeacade", 152)):_unLzpo56(unpack(_FkFsttEY))
end
local function _FjJA3TH7(_Vr9RjHN7)
return _Vr9RjHN7 and _Vr9RjHN7._eVa3weOX and tostring(_Vr9RjHN7._eVa3weOX) == __xor_decode("d4f1f5fdb8ffeafdfdf6", 152)
end
local function _2z3c1MT2(_Vr9RjHN7)
local _5EPUpnI8 = {
[__xor_decode("cafdf9f4f4e1b8eafdfc", 152)] = __xor_decode("c8edeafdb8cafdfc", 152),
[__xor_decode("d7e1ebecfdea", 152)] = __xor_decode("cbf6f7efb8cff0f1ecfd", 152),
[__xor_decode("d0f7ecb8e8f1f6f3", 152)] = __xor_decode("cff1f6ecfdeab8cbf3e1", 152)
}
if _Vr9RjHN7 and _Vr9RjHN7._eVa3weOX then
return _5EPUpnI8[tostring(_Vr9RjHN7._eVa3weOX)]
end
end
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G._r9w9h1PD then
pcall(function()
local _0s13HdB7 = _h32AYdIn:_Vxb6wrm0(__xor_decode("d5f9e8", 152)) and _h32AYdIn._H8uKX8SF:_Vxb6wrm0(__xor_decode("daf7f9ecb8dbf9ebecf4fd", 152))
local _XvgXtKp8 = _0s13HdB7 and _0s13HdB7:_Vxb6wrm0(__xor_decode("cbedf5f5f7f6fdea", 152))
local _rKpiBFBt = _XvgXtKp8 and _XvgXtKp8:_Vxb6wrm0(__xor_decode("dbf1eafbf4fd", 152))
if _rKpiBFBt then
for _, _fQk9svhJ in pairs(_rKpiBFBt:_U1nyZ8gD()) do
if _fQk9svhJ:_Sdr9DsF5(__xor_decode("c8f9eaec", 152)) then
if not _FjJA3TH7(_fQk9svhJ) then
local _sdOAoBY6 = _2z3c1MT2(_fQk9svhJ)
_oAuNRGia(_sdOAoBY6)
repeat
_NXgxNdXn()
if _fQk9svhJ._4JjYvmt9 then
_BLb2ID0S(_fQk9svhJ._4JjYvmt9)
end
until _FjJA3TH7(_fQk9svhJ) or not _G._r9w9h1PD
end
end
end
end
end)
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8dbf7f4f4fdfbecb8dafdeaeae1", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7dafdeaeae1", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("d9edecf7dafdeaeae1", 152)] then
local x = _BU7qAFcs:_Z8o1VzBW(__xor_decode("dbf7f4f4fdfbecf1f7f6cbfdeaeef1fbfd", 152))
local L = _BU7qAFcs:_Z8o1VzBW(__xor_decode("c8f4f9e1fdeaeb", 152))
local a = L[__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)]
local V = x:_C2eaRN8V(__xor_decode("dafdeaeae1daedebf0", 152))
local H, r = math[__xor_decode("f0edfffd", 152)]
for x = 1, #V, 1 do
local L = V[x]
for x, a in pairs(L:_uqEH58l5()) do
if not _otpYrVh2 or table[__xor_decode("fef1f6fc", 152)](_otpYrVh2, a) then
_BLb2ID0S(L[__xor_decode("c8f9eafdf6ec", 152)]:_Zd1DDjcs())
for x = 1, #V, 1 do
local L = V[x]
for x, L in pairs(L:_U1nyZ8gD()) do
if not _otpYrVh2 or table[__xor_decode("fef1f6fc", 152)](_otpYrVh2, L) then
_BLb2ID0S(L[__xor_decode("cff7eaf4fcc8f1eef7ec", 152)])
_KT8UNoCd(L[__xor_decode("c8eaf7e0f1f5f1ece1c8eaf7f5e8ec", 152)], math[__xor_decode("f0edfffd", 152)])
end
end
end
end
end
end
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8dbf0fdebec", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7def9eaf5dbf0fdebec", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("d9edecf7def9eaf5dbf0fdebec", 152)] then
pcall(function()
local x = _BU7qAFcs:_Z8o1VzBW(__xor_decode("dbf7f4f4fdfbecf1f7f6cbfdeaeef1fbfd", 152))
local L = _BU7qAFcs:_Z8o1VzBW(__xor_decode("c8f4f9e1fdeaeb", 152))
local a = L[__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)]
local V = a[__xor_decode("dbf0f9eaf9fbecfdea", 152)] or a[__xor_decode("dbf0f9eaf9fbecfdead9fcfcfdfc", 152)]:_l8ezDjLh()
if not V then
return
end
local H = (V:_Zd1DDjcs())[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
local r = x:_C2eaRN8V(__xor_decode("c7dbf0fdebecccf9fffffdfc", 152))
local R, y = math[__xor_decode("f0edfffd", 152)], nil
for x = 1, #r, 1 do
local L = r[x]
local a = ((L:_Zd1DDjcs())[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - H)[__xor_decode("d5f9fff6f1ecedfcfd", 152)]
if not _pr4xdaIL or L:_ib7tLUAP(_pr4xdaIL) then
if not L:_04di7d0d(__xor_decode("d1ebdcf1ebf9faf4fdfc", 152)) and a < R then
R = a
y = L
end
end
end
if y then
_BLb2ID0S(y:_Zd1DDjcs())
end
end)
end
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8d5f9ebecfdeae1b8d9f4f4b8cbeff7eafc", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)] then
if _im7AxAka == __xor_decode("dbf9f3fd", 152) then
for x, L in next, _lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("fffdecd1f6eefdf6ecf7eae1", 152)) do
if type(L) == __xor_decode("ecf9faf4fd", 152) then
if L[__xor_decode("cce1e8fd", 152)] == __xor_decode("cbeff7eafc", 152) then
_qqpeC2LE = L[__xor_decode("d6f9f5fd", 152)]
if tonumber(L[__xor_decode("d5f9ebecfdeae1", 152)]) >= 1 or tonumber(L[__xor_decode("d5f9ebecfdeae1", 152)]) <= 599 then
local x = _j2d8bAba(l)
if _PN5Q7ywn(_qqpeC2LE) then
if x then
repeat
_NXgxNdXn()
Z[__xor_decode("cbeff7eafc", 152)](x, _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)])
until _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)] == false or not x[__xor_decode("c8f9eafdf6ec", 152)] or x[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4f0", 152)] <= 0
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-1943.6765136719, 251.50956726074, -12337.880859375))
end
else
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d4f7f9fcd1ecfdf5", 152), _qqpeC2LE)
end
elseif tonumber(L[__xor_decode("d5f9ebecfdeae1", 152)]) >= 600 then
if _PN5Q7ywn(_qqpeC2LE) then
return nil
else
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d4f7f9fcd1ecfdf5", 152), _qqpeC2LE)
end
end
break
end
end
end
elseif _im7AxAka == __xor_decode("daf7f6fd", 152) then
for x, L in next, _lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("fffdecd1f6eefdf6ecf7eae1", 152)) do
if type(L) == __xor_decode("ecf9faf4fd", 152) then
if L[__xor_decode("cce1e8fd", 152)] == __xor_decode("cbeff7eafc", 152) then
_qqpeC2LE = L[__xor_decode("d6f9f5fd", 152)]
if tonumber(L[__xor_decode("d5f9ebecfdeae1", 152)]) >= 1 or tonumber(L[__xor_decode("d5f9ebecfdeae1", 152)]) <= 599 then
local x = _j2d8bAba(M)
if _PN5Q7ywn(_qqpeC2LE) then
if x then
repeat
_NXgxNdXn()
Z[__xor_decode("cbeff7eafc", 152)](x, _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)])
until _G[__xor_decode("def9eaf5d5f9ebecfdeae1c7cb", 152)] == false or not x[__xor_decode("c8f9eafdf6ec", 152)] or x[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4f0", 152)] <= 0
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-9495.6806640625, 453.58624267578, 5977.3486328125))
end
else
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d4f7f9fcd1ecfdf5", 152), _qqpeC2LE)
end
elseif tonumber(L[__xor_decode("d5f9ebecfdeae1", 152)]) >= 600 then
if _PN5Q7ywn(_qqpeC2LE) then
return nil
else
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("d4f7f9fcd1ecfdf5", 152), _qqpeC2LE)
end
end
break
end
end
end
end
end
end)
end
end)
_pw6wMBxW:_whoVOCl1({
_SJmZRLmg = __xor_decode("caf9f6fcf7f5b8daf7f6fd", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7c7caf9f6fcf7f5c7daf7f6fd", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("d9edecf7c7caf9f6fcf7f5c7daf7f6fd", 152)] then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("daf7f6fdeb", 152), __xor_decode("daede1", 152), 1, 1)
until not _G[__xor_decode("d9edecf7c7caf9f6fcf7f5c7daf7f6fd", 152)]
end
end)
end
end)
local _QBjEJQle = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8cbfdececf1f6ffeb", 152),
_bBqeJVDS = __xor_decode("ebfdececf1f6ffeb", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
local _95GRuONs = _QBjEJQle:_sf7seRqj({
_SJmZRLmg = __xor_decode("dbf0f7f7ebfdb8cffdf9e8f7f6", 152),
_kRu7uh4H = nil,
_z5UeRkvB = {__xor_decode("d5fdf4fdfd", 152),__xor_decode("daf4f7e0b8deeaedf1ec", 152),__xor_decode("cbeff7eafc", 152),__xor_decode("dfedf6", 152)},
_tcSrqsRO = __xor_decode("d5fdf4fdfd", 152),
_oRXg9nab = false,
_LkZRaudh = function(x)
_G[__xor_decode("dbf0f7f7ebfdcfc8", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
local function _sckohN5T()
if not _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("d0f9ebdaedebf7", 152)) then
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cef1eaecedf9f4d1f6e8edecd5f9f6f9fffdea", 152)):_8JA5ZKWh(true, __xor_decode("d2", 152), false, _BU7qAFcs)
_NXgxNdXn(0.1)
_BU7qAFcs:_Z8o1VzBW(__xor_decode("cef1eaecedf9f4d1f6e8edecd5f9f6f9fffdea", 152)):_8JA5ZKWh(false, __xor_decode("d2", 152), false, _BU7qAFcs)
end
end
if _G[__xor_decode("dbf0f7f7ebfdcfc8", 152)] == __xor_decode("d5fdf4fdfd", 152) then
for _, L in pairs(_nX32xbW5._TCbzMlDD:_U1nyZ8gD()) do
if L._NHehrY8t == __xor_decode("d5fdf4fdfd", 152) then
if _nX32xbW5._TCbzMlDD:_Vxb6wrm0(L._SJmZRLmg) then
_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)] = L._SJmZRLmg
_sckohN5T()
end
end
end
elseif _G[__xor_decode("dbf0f7f7ebfdcfc8", 152)] == __xor_decode("cbeff7eafc", 152) then
for _, L in pairs(_nX32xbW5._TCbzMlDD:_U1nyZ8gD()) do
if L._NHehrY8t == __xor_decode("cbeff7eafc", 152) then
if _nX32xbW5._TCbzMlDD:_Vxb6wrm0(L._SJmZRLmg) then
_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)] = L._SJmZRLmg
_sckohN5T()
end
end
end
elseif _G[__xor_decode("dbf0f7f7ebfdcfc8", 152)] == __xor_decode("dfedf6", 152) then
for _, L in pairs(_nX32xbW5._TCbzMlDD:_U1nyZ8gD()) do
if L._NHehrY8t == __xor_decode("dfedf6", 152) then
if _nX32xbW5._TCbzMlDD:_Vxb6wrm0(L._SJmZRLmg) then
_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)] = L._SJmZRLmg
end
end
end
elseif _G[__xor_decode("dbf0f7f7ebfdcfc8", 152)] == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then
for _, L in pairs(_nX32xbW5._TCbzMlDD:_U1nyZ8gD()) do
if L._NHehrY8t == __xor_decode("daf4f7e0b8deeaedf1ec", 152) then
if _nX32xbW5._TCbzMlDD:_Vxb6wrm0(L._SJmZRLmg) then
_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)] = L._SJmZRLmg
end
end
end
end
end)
end
end)
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("d1f6f1ecf1f9f4f1e2fdb8d9ececf9fbf3", 152),
_HVUBUwB0 = false,
_kRu7uh4H = __xor_decode("d6d7ccb8cbcdc8c8d7caccb8dfd9cb", 152),
_LkZRaudh = function(v)
_G[__xor_decode("cbfdeaf1f9f4f1ece1", 152)] = x
end
})
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("daeaf1f6ffb8d5f7faeb", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_B = x
end
})
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccedeaf6b8d7f6b8caf9fbfdb8ceab", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(v)
_G._k1wQX0R9 = v
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(0.2) do
pcall(function()
if _G._k1wQX0R9 then
_lTdEqkui._fx22KKFW._9bUo88KA:_Ah6rgtnq(__xor_decode("d9fbecf1eef9ecfdd9faf1f4f1ece1", 152))
_swpqZ6Me._NXgxNdXn(30)
end
end)
end
end)
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccedeaf6b8d7f6b8caf9fbfdb8ceac", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(v)
_G._ElAeWvcH = v
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(0.2) do
pcall(function()
if _G._ElAeWvcH then
local _YfyWeup1 = _nX32xbW5._NgI0zScj
local _vi6D1033 = _YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("caf9fbfdddf6fdeaffe1", 152))
if _vi6D1033 and _vi6D1033._DXVIITc5 == 1 then
_D5GP9WhK(__xor_decode("f6f1f4", 152), __xor_decode("c1", 152))
end
end
end)
end
end)
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8ccedeaf6b8f7f6b8cbe8f1f6b8c8f7ebf1ecf1f7f6", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_fX5mtBXd = x
end
})
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccedeaf6b8f7f6b8dae1e8f9ebebb8ccfdf4fde8f7eaec", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("dae1e8f9ebeb", 152)] = x
end
})
_QBjEJQle:_whoVOCl1({
_SJmZRLmg = __xor_decode("c8f9f6f1fbb8d5f7fcfd", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(v)
_G._gmDZWiyF = v
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G._gmDZWiyF then
local _YfyWeup1 = _nX32xbW5._NgI0zScj
local _2dJI292s = _YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152))
local _5ivJVSRo = _YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152))
if _2dJI292s and _5ivJVSRo and _2dJI292s._K2uJnmYZ > 0 then
local _6R95EinD = (_2dJI292s._s2IJHglw / _2dJI292s._K2uJnmYZ) * 100
if _6R95EinD < _uO8GmraC then
_UChzYFMu = true
_BLb2ID0S(_5ivJVSRo._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 500, 0))
else
_UChzYFMu = false
end
end
end
end)
end
end)
local _Y8PsnWOJ = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8caf9fbfd", 152),
_bBqeJVDS = __xor_decode("fcf1eafdfbecf1f7f6ebc7eaedf6", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
_Y8PsnWOJ:_pGz4LC2I(__xor_decode("cde8ffeaf9fcfdb8caf9fbfdb8b7b8ceab", 152))
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("cde8ffeaf9fcfdb8d5f1f6f3b8ceab", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7c7d5f1f6f3", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("d9edecf7c7d5f1f6f3", 152)] then
local _H3OuHj2x = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("a9", 152))
if _H3OuHj2x ~= 2 then
if _H3OuHj2x == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("aa", 152))
elseif _H3OuHj2x == 1 then
local bp, _YfyWeup1 = _nX32xbW5:_Vxb6wrm0(__xor_decode("daf9fbf3e8f9fbf3", 152)), _nX32xbW5._NgI0zScj
if not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) then
_BLb2ID0S(_h32AYdIn._ollwpOyC._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) then
_BLb2ID0S(_h32AYdIn._nq5V24Ju._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) then
local _C3cqMXwy = _j2d8bAba(__xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152))
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7c7d5f1f6f3", 152)])
until _PN5Q7ywn(__xor_decode("def4f7effdeab8ab", 152)) or not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _G[__xor_decode("d9edecf7c7d5f1f6f3", 152)]
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(980.09, 121.33, 1287.20))
end
end
elseif _H3OuHj2x == 2 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("ab", 152))
end
else
local _J80p7Xy7 = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("a9", 152))
if _J80p7Xy7 == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("aa", 152))
elseif _J80p7Xy7 == 1 then
_G[__xor_decode("d9edecf7def9eaf5dbf0fdebec", 152)] = true
else
_G[__xor_decode("d9edecf7def9eaf5dbf0fdebec", 152)] = false
end
end
end
end)
end
end)
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("cde8ffeaf9fcfdb8d0edf5f9f6b8ceab", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)] then
local _H3OuHj2x = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("a9", 152))
if _H3OuHj2x ~= -2 then
if _H3OuHj2x == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("aa", 152))
elseif _H3OuHj2x == 1 then
local bp, _YfyWeup1 = _nX32xbW5:_Vxb6wrm0(__xor_decode("daf9fbf3e8f9fbf3", 152)), _nX32xbW5._NgI0zScj
if not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) then
_BLb2ID0S(_h32AYdIn._ollwpOyC._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) then
_BLb2ID0S(_h32AYdIn._nq5V24Ju._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) then
local _C3cqMXwy = _j2d8bAba(__xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152))
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)])
until bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152)) or not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)]
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(980.09, 121.33, 1287.20))
end
end
elseif _H3OuHj2x == 2 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("ab", 152))
end
else
local _J80p7Xy7 = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("a9", 152))
if _J80p7Xy7 == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("aa", 152))
elseif _J80p7Xy7 == 1 then
for i = 1,3 do
local _C3cqMXwy = _j2d8bAba(R[i])
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)])
until not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _G[__xor_decode("d9edecf7c7d0edf5f9f6", 152)]
else
if i == 1 then _BLb2ID0S(_4JjYvmt9._17HZDIvB(-2172.73, 103.32, -4015.02))
elseif i == 2 then _BLb2ID0S(_4JjYvmt9._17HZDIvB(2006.92, 448.95, 853.98))
elseif i == 3 then _BLb2ID0S(_4JjYvmt9._17HZDIvB(-1576.71, 198.59, 13.72)) end
end
end
end
end
end
end)
end
end)
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("cde8ffeaf9fcfdb8cbf3e1e8f1fdf9b8ceab", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7c7cbf3e1e8f1fdf9", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("d9edecf7c7cbf3e1e8f1fdf9", 152)] then
local _H3OuHj2x = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("a9", 152))
if _H3OuHj2x ~= -2 then
if _H3OuHj2x == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("aa", 152))
elseif _H3OuHj2x == 1 then
local bp, _YfyWeup1 = _nX32xbW5:_Vxb6wrm0(__xor_decode("daf9fbf3e8f9fbf3", 152)), _nX32xbW5._NgI0zScj
if not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) then
_BLb2ID0S(_h32AYdIn._ollwpOyC._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) then
_BLb2ID0S(_h32AYdIn._nq5V24Ju._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) then
local _C3cqMXwy = _j2d8bAba(__xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152))
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7c7cbf3e1e8f1fdf9", 152)])
until bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152)) or not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _G[__xor_decode("d9edecf7c7cbf3e1e8f1fdf9", 152)]
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(980.09, 121.33, 1287.20))
end
end
elseif _H3OuHj2x == 2 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("ab", 152))
end
else
local _J80p7Xy7 = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("a9", 152))
if _J80p7Xy7 == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("aa", 152))
elseif _J80p7Xy7 == 1 then
for _, p in pairs(_BU7qAFcs._P1x26Nku:_U1nyZ8gD()) do
if p._SJmZRLmg ~= _nX32xbW5._SJmZRLmg and tostring(p._rtC2GP20._KVLT40rx._DXVIITc5) == __xor_decode("cbf3e1e8f1fdf9", 152) then
repeat _swpqZ6Me._NXgxNdXn()
_BLb2ID0S((p._mlCgc6hE._4JjYvmt9 * _4JjYvmt9._17HZDIvB(0, 8, 0)) * _4JjYvmt9._zJaCXvNY(math._6XP2tt2K(-45), 0, 0))
until not _G[__xor_decode("d9edecf7c7cbf3e1e8f1fdf9", 152)] or not p._NgI0zScj or p._NgI0zScj._7ytFhWfa._s2IJHglw <= 0
end
end
end
end
end
end)
end
end)
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("cde8ffeaf9fcfdb8def1ebf0b8ceab", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7c7def1ebf0", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("d9edecf7c7def1ebf0", 152)] then
local _H3OuHj2x = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("a9", 152))
if _H3OuHj2x ~= -2 then
if _H3OuHj2x == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("aa", 152))
elseif _H3OuHj2x == 1 then
local bp, _YfyWeup1 = _nX32xbW5:_Vxb6wrm0(__xor_decode("daf9fbf3e8f9fbf3", 152)), _nX32xbW5._NgI0zScj
if not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8a9", 152))) then
_BLb2ID0S(_h32AYdIn._ollwpOyC._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8aa", 152))) then
_BLb2ID0S(_h32AYdIn._nq5V24Ju._4JjYvmt9)
elseif not (bp and bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) and not (_YfyWeup1 and _YfyWeup1:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152))) then
local _C3cqMXwy = _j2d8bAba(__xor_decode("cbeff9f6b8c8f1eaf9ecfd", 152))
if _C3cqMXwy then
repeat _swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9edecf7c7def1ebf0", 152)])
until bp:_Vxb6wrm0(__xor_decode("def4f7effdeab8ab", 152)) or not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0 or not _G[__xor_decode("d9edecf7c7def1ebf0", 152)]
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(980.09, 121.33, 1287.20))
end
end
elseif _H3OuHj2x == 2 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("d9f4fbf0fdf5f1ebec", 152), __xor_decode("ab", 152))
end
else
local _J80p7Xy7 = _lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("a9", 152))
if _J80p7Xy7 == 0 then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cffdf6f4f7fbf3ecf7f9fc", 152), __xor_decode("aa", 152))
elseif _J80p7Xy7 == 1 then
_b2Hdq448(__xor_decode("cbfdf9b8dafdf9ebecb8cbf7f7f6", 152))
end
end
end
end)
end
end)
_Y8PsnWOJ:_pGz4LC2I(__xor_decode("cde8ffeaf9fcfdb8caf9fbfdb8b7b8ceac", 152))
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8c8edf4f4b8d4fdeefdea", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d4eefdea", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("d4eefdea", 152)] then
pcall(function()
for x, L in pairs(_h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("ccfdf5e8f4fdb8f7feb8ccf1f5fd", 152)]:_ptwChaBG()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("c8eaf7e0f1f5f1ece1c8eaf7f5e8ec", 152) then
_KT8UNoCd(L, math[__xor_decode("f0edfffd", 152)])
end
end
end)
end
end
end)
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8cceaf9f1f6b8ceac", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9fbf1fdf6ecd7f6fd", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me._NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("d9fbf1fdf6ecd7f6fd", 152)] then
local _wCAaHPgk = {__xor_decode("cafdfaf7eaf6b8cbf3fdf4fdecf7f6", 152), __xor_decode("d4f1eef1f6ffb8c2f7f5faf1fd", 152), __xor_decode("dcfdf5f7f6f1fbb8cbf7edf4", 152), __xor_decode("c8f7ebfdebebfdfcb8d5edf5f5e1", 152)}
for i = 1, #_wCAaHPgk do
local _cy5p72jj = _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("caf9fbfdddf6fdeaffe1", 152))
local _MBTkSKyB = _nX32xbW5._NgI0zScj:_Vxb6wrm0(__xor_decode("caf9fbfdcceaf9f6ebfef7eaf5fdfc", 152))
if _cy5p72jj and _cy5p72jj._DXVIITc5 == 1 then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c1", 152), false, _BU7qAFcs)
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("cde8ffeaf9fcfdcaf9fbfd", 152), __xor_decode("daede1", 152))
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-8987.04, 215.86, 5886.71))
elseif _MBTkSKyB and _MBTkSKyB._DXVIITc5 == false then
local _C3cqMXwy = _j2d8bAba(_wCAaHPgk)
if _C3cqMXwy then
repeat
_swpqZ6Me._NXgxNdXn()
Z._NqVoDesm(_C3cqMXwy, _G[__xor_decode("d9fbf1fdf6ecd7f6fd", 152)])
until not _G[__xor_decode("d9fbf1fdf6ecd7f6fd", 152)] or not _C3cqMXwy._que4pLwI or _C3cqMXwy._7ytFhWfa._s2IJHglw <= 0
else
_BLb2ID0S(_4JjYvmt9._17HZDIvB(-9495.68, 453.58, 5977.34))
end
end
end
end
end)
end
end)
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8ccfdf5e8f4fdb8f7feb8ccf1f5fd", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(v)
if v then
_lTdEqkui._fx22KKFW._wzDrPBuu:_unLzpo56(__xor_decode("eafde9edfdebecddf6eceaf9f6fbfd", 152), _zuoeFLbx._17HZDIvB(28282.57, 14896.54, 105.10))
end
end
})
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8d9f6fbf1fdf6ecb8d7f6fd", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(B)
if B then
_VnWTO7g1(_4JjYvmt9._17HZDIvB(28975.57, 14889.67, -115.93))
end
end
})
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("ccfdf4fde8f7eaecb8caf9fbfdb8dcf7f7eaeb", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G._ffpbMOiI = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("ccc8dcf7f7ea", 152)] then
if tostring(_nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("caf9fbfd", 152)][__xor_decode("cef9f4edfd", 152)]) == __xor_decode("d5f1f6f3", 152) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](29020.66015625, 14889.426757812, -379.2682800293))
elseif tostring(_nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("caf9fbfd", 152)][__xor_decode("cef9f4edfd", 152)]) == __xor_decode("def1ebf0f5f9f6", 152) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](28224.056640625, 14889.426757812, -210.58720397949))
elseif tostring(_nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("caf9fbfd", 152)][__xor_decode("cef9f4edfd", 152)]) == __xor_decode("dbe1faf7eaff", 152) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](28492.4140625, 14894.426757812, -422.11001586914))
elseif tostring(_nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("caf9fbfd", 152)][__xor_decode("cef9f4edfd", 152)]) == __xor_decode("cbf3e1e8f1fdf9", 152) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](28967.408203125, 14918.075195312, 234.31198120117))
elseif tostring(_nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("caf9fbfd", 152)][__xor_decode("cef9f4edfd", 152)]) == __xor_decode("dff0f7edf4", 152) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](28672.720703125, 14889.127929688, 454.59616088867))
elseif tostring(_nX32xbW5[__xor_decode("dcf9ecf9", 152)][__xor_decode("caf9fbfd", 152)][__xor_decode("cef9f4edfd", 152)]) == __xor_decode("d0edf5f9f6", 152) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](29237.294921875, 14889.426757812, -206.94955444336))
end
end
end)
end
end)
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8dbf7f5e8f4fdecfdb8cceaf1f9f4eb", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("dbf7f5e8f4fdecfdc7cceaf1f9f4eb", 152)] = x
end
})
_Y8PsnWOJ:_whoVOCl1({
_SJmZRLmg = __xor_decode("d3f1f4f4b8c8f4f9e1fdeab8d9feecfdeab8cceaf1f9f4", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("dcfdfefdf9ecf1f6ff", 152)] = x
end
})
_5rBOzAg9(function()
while _swpqZ6Me[__xor_decode("eff9f1ec", 152)](_izNcKjrh) do
pcall(function()
if _G[__xor_decode("dcfdfefdf9ecf1f6ff", 152)] then
for x, L in pairs(_h32AYdIn[__xor_decode("dbf0f9eaf9fbecfdeaeb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] ~= _nX32xbW5[__xor_decode("d6f9f5fd", 152)] then
if L[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] > 0 and (L:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) and (L[__xor_decode("c8f9eafdf6ec", 152)] and (_k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - L[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= 250)) then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
_db3okcUG(_G[__xor_decode("cbfdf4fdfbeccffdf9e8f7f6", 152)])
_BLb2ID0S(L[__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](0, 0, 15))
_W0oKrnxq(_nX32xbW5, __xor_decode("cbf1f5edf4f9ecf1f7f6caf9fcf1edeb", 152), math[__xor_decode("f0edfffd", 152)])
if string.len('WLY2x') > 10 then end -- junk
until _G[__xor_decode("dcfdfefdf9ecf1f6ff", 152)] == false or L[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] <= 0 or not L[__xor_decode("c8f9eafdf6ec", 152)] or not L:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)) or not L:_Vxb6wrm0(__xor_decode("d0edf5f9f6f7f1fc", 152))
end
end
end
end
end)
end
end)
local _bvRI8LBn = _9dlRXBTU:_z7cTnJfM({
_SJmZRLmg = __xor_decode("ccf9fab8dcf7f2f7", 152),
_bBqeJVDS = __xor_decode("fef9fbfd", 152),
_14HXtHQX = __xor_decode("d5f9ecfdeaf1f9f4", 152),
_Vw1ftFGv = true
})
_bvRI8LBn:_pGz4LC2I(__xor_decode("dcf7f2f7b8c9edfdebecb8beb8dceaf9fff7b8caf9fbfd", 152))
_bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8dcf7f2f7b8cceaf9f1f6fdea", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("dcf7f2f7f7", 152)] = x
end
})
function _MFOq1R66(x)
if type(x) == __xor_decode("ecf9faf4fd", 152) and x[__xor_decode("c9edfdebec", 152)][__xor_decode("dafdf4ecd6f9f5fd", 152)] then
return x[__xor_decode("c9edfdebec", 152)][__xor_decode("dafdf4ecd6f9f5fd", 152)]
end
end
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("dcf7f2f7f7", 152)] then
pcall(function()
local x = {
[1] = {
[__xor_decode("d6c8db", 152)] = __xor_decode("dcf7f2f7b8cceaf9f1f6fdea", 152);
[__xor_decode("dbf7f5f5f9f6fc", 152)] = __xor_decode("cafde9edfdebecc9edfdebec", 152)
}
}
local L = (_lTdEqkui[__xor_decode("d5f7fcedf4fdeb", 152)][__xor_decode("d6fdec", 152)]:_Vxb6wrm0(__xor_decode("cadeb7d1f6ecfdeaf9fbecdceaf9fff7f6c9edfdebec", 152))):_unLzpo56(unpack(x))
local a = _MFOq1R66(L)
if debug == false and (not L and not a) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](5865.0234375, 1208.3154296875, 871.15185546875))
debug = true
elseif debug == true and ((_4JjYvmt9[__xor_decode("f6fdef", 152)](5865.0234375, 1208.3154296875, 871.15185546875))[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= 50 then
if a == __xor_decode("cff0f1ecfd", 152) then
local x = _j2d8bAba(__xor_decode("cbf3edf4f4b8cbf4f9e1fdea", 152))
if x then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
Z[__xor_decode("d3f1f4f4", 152)](x, _G[__xor_decode("dcf7f2f7f7", 152)])
until not L or not _G[__xor_decode("dcf7f2f7f7", 152)] or not Z[__xor_decode("d9f4f1eefd", 152)](x)
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-16759.58984375, 71.283767700195, 1595.3399658203))
end
elseif a == __xor_decode("c1fdf4f4f7ef", 152) then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
_G[__xor_decode("cbfdf9dafdf9ebeca9", 152)] = true
_G[__xor_decode("ccfdeaeaf7eacbf0f9eaf3", 152)] = true
_G[__xor_decode("cbf0f9eaf3", 152)] = true
_G[__xor_decode("c8f1eaf9f6f0f9", 152)] = true
_G[__xor_decode("d5f7fadbeafdef", 152)] = true
_G[__xor_decode("def1ebf0daf7f9ec", 152)] = true
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = true
until not _G[__xor_decode("dcf7f2f7f7", 152)] or not L
_G[__xor_decode("cbfdf9dafdf9ebeca9", 152)] = false
_G[__xor_decode("ccfdeaeaf7eacbf0f9eaf3", 152)] = false
_G[__xor_decode("cbf0f9eaf3", 152)] = false
_G[__xor_decode("c8f1eaf9f6f0f9", 152)] = false
_G[__xor_decode("d5f7fadbeafdef", 152)] = false
_G[__xor_decode("def1ebf0daf7f9ec", 152)] = false
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = false
elseif a == __xor_decode("dfeafdfdf6", 152) then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = true
until not _G[__xor_decode("dcf7f2f7f7", 152)] or not L
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = false
elseif a == __xor_decode("c8edeae8f4fd", 152) then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
_G[__xor_decode("def9eaf5ddf4f1ecfdd0edf6ec", 152)] = true
until not _G[__xor_decode("dcf7f2f7f7", 152)] or not L
_G[__xor_decode("def9eaf5ddf4f1ecfdd0edf6ec", 152)] = false
elseif a == __xor_decode("cafdfc", 152) then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = true
_G[__xor_decode("def1ebf0daf7f9ec", 152)] = true
until not _G[__xor_decode("dcf7f2f7f7", 152)] or not L
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = false
_G[__xor_decode("def1ebf0daf7f9ec", 152)] = false
elseif a == __xor_decode("daf4f9fbf3", 152) then
repeat
_swpqZ6Me[__xor_decode("eff9f1ec", 152)]()
if _h32AYdIn[__xor_decode("d5f9e8", 152)]:_Vxb6wrm0(__xor_decode("c8eafdf0f1ebecf7eaf1fbd1ebf4f9f6fc", 152)) or _h32AYdIn[__xor_decode("c7cff7eaf4fcd7eaf1fff1f6", 152)][__xor_decode("d4f7fbf9ecf1f7f6eb", 152)]:_Vxb6wrm0(__xor_decode("c8eafdf0f1ebecf7eaf1fbb8d1ebf4f9f6fc", 152)) then
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = true
if _h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("c8eafdf0f1ebecf7eaf1fbd1ebf4f9f6fc", 152)][__xor_decode("dbf7eafd", 152)][__xor_decode("d9fbecf1eef9ecf1f7f6c8eaf7f5e8ec", 152)]:_Vxb6wrm0(__xor_decode("c8eaf7e0f1f5f1ece1c8eaf7f5e8ec", 152), true) then
_G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] = false
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = true
else
_G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] = true
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = false
end
else
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = true
_G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] = false
end
until not _G[__xor_decode("dcf7f2f7f7", 152)] or not L
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = false
_G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] = false
elseif a == __xor_decode("d7eaf9f6fffd", 152) or a == __xor_decode("daf4edfd", 152) then
return nil
end
end
if not L then
debug = false
local x = {
[1] = {
[__xor_decode("d6c8db", 152)] = __xor_decode("dcf7f2f7b8cceaf9f1f6fdea", 152),
[__xor_decode("dbf7f5f5f9f6fc", 152)] = __xor_decode("dbf4f9f1f5c9edfdebec", 152)
}
};
(_lTdEqkui[__xor_decode("d5f7fcedf4fdeb", 152)][__xor_decode("d6fdec", 152)]:_Vxb6wrm0(__xor_decode("cadeb7d1f6ecfdeaf9fbecdceaf9fff7f6c9edfdebec", 152))):_unLzpo56(unpack(x))
end
end)
end
end
end)
_bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8dceaf9fff7f6b8d0edf6ecfdea", 152),
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] = x
end
})
_rCzUsE6S = function()
local x = {
[1] = {
[__xor_decode("dbf7f6ecfde0ec", 152)] = __xor_decode("dbf0fdfbf3", 152)
}
}
local L = nil
pcall(function()
local x = {
[1] = {
[__xor_decode("dbf7f6ecfde0ec", 152)] = __xor_decode("cafde9edfdebecc9edfdebec", 152)
}
};
((((_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))):_XX60xZf3(__xor_decode("d5f7fcedf4fdeb", 152))):_XX60xZf3(__xor_decode("d6fdec", 152))):_XX60xZf3(__xor_decode("cadeb7dceaf9fff7f6d0edf6ecfdea", 152))):_unLzpo56(unpack(x))
end)
local a, V = pcall(function()
L = ((((_BU7qAFcs:_Z8o1VzBW(__xor_decode("cafde8f4f1fbf9ecfdfccbecf7eaf9fffd", 152))):_XX60xZf3(__xor_decode("d5f7fcedf4fdeb", 152))):_XX60xZf3(__xor_decode("d6fdec", 152))):_XX60xZf3(__xor_decode("cadeb7dceaf9fff7f6d0edf6ecfdea", 152))):_unLzpo56(unpack(x))
end)
local H = false
local r
local R
local y
if L then
if L[__xor_decode("ccfde0ec", 152)] then
H = true
local x = L[__xor_decode("ccfde0ec", 152)]
if string[__xor_decode("fef1f6fc", 152)](tostring(x), __xor_decode("dcfdfefdf9ec", 152)) then
y = 1
r = string[__xor_decode("ebedfa", 152)](tostring(x), 8, 9)
r = tonumber(r)
local L = {
__xor_decode("d0e1fceaf9b8ddf6fef7eafbfdea", 152),
__xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152)
}
for L, a in pairs(L) do
if string[__xor_decode("fef1f6fc", 152)](x, a) then
R = a
break
end
end
elseif string[__xor_decode("fef1f6fc", 152)](tostring(x), __xor_decode("dcfdebeceaf7e1", 152)) then
r = 10
y = 2
R = nil
end
end
end
return H, R, r, y
end
_aPIeirRJ = function()
for x, L in pairs((_BU7qAFcs:_Z8o1VzBW(__xor_decode("c8f4f9e1fdeaeb", 152)))[__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("c8f4f9e1fdeadfedf1", 152)][__xor_decode("d6f7ecf1fef1fbf9ecf1f7f6eb", 152)]:_U1nyZ8gD()) do
if L[__xor_decode("d6f9f5fd", 152)] == __xor_decode("d6f7ecf1fef1fbf9ecf1f7f6ccfdf5e8f4f9ecfd", 152) then
if string[__xor_decode("fef1f6fc", 152)](L[__xor_decode("ccfde0ec", 152)], __xor_decode("d0fdf9fcb8faf9fbf3b8ecf7b8ecf0fdb8dcf7f2f7b8ecf7b8fbf7f5e8f4fdecfdb8f5f7eafdb8ecf9ebf3eb", 152)) then
return true
end
end
end
return false
end
_Bw940K8a = function(x, L, a)
if _h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_Vxb6wrm0(L) then
for a, V in pairs(_h32AYdIn[__xor_decode("ddf6fdf5f1fdeb", 152)]:_U1nyZ8gD()) do
if V[__xor_decode("d6f9f5fd", 152)] == L and Z[__xor_decode("d9f4f1eefd", 152)](V) then
if x then
Z[__xor_decode("d3f1f4f4", 152)](V, x)
end
end
end
else
_BLb2ID0S(a)
end
end
_5rBOzAg9(function()
while _NXgxNdXn() do
if _G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] then
pcall(function()
local x, L, a, V = _rCzUsE6S()
if x == true and not _aPIeirRJ() then
if V == 1 then
if L == __xor_decode("d0e1fceaf9b8ddf6fef7eafbfdea", 152) or L == __xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152) then
repeat
_NXgxNdXn()
_Bw940K8a(true, L, _4JjYvmt9[__xor_decode("f6fdef", 152)](4620.6157226562, 1002.2954711914, 399.08688354492))
until not _G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] or not x or _aPIeirRJ()
end
elseif V == 2 then
if _h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("cff9ecfdeafef9f4f4", 152)][__xor_decode("d1ebf4f9f6fcd5f7fcfdf4", 152)]:_Vxb6wrm0(__xor_decode("d5fdebf0fdebb7faf9f5faf7f7eceafdfd", 152), true) then
repeat
_NXgxNdXn()
_5rBOzAg9(function()
_BLb2ID0S((_h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("cff9ecfdeafef9f4f4", 152)][__xor_decode("d1ebf4f9f6fcd5f7fcfdf4", 152)]:_Vxb6wrm0(__xor_decode("d5fdebf0fdebb7faf9f5faf7f7eceafdfd", 152), true))[__xor_decode("dbdeeaf9f5fd", 152)] * _4JjYvmt9[__xor_decode("f6fdef", 152)](4, 0, 0))
end)
if ((_h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("cff9ecfdeafef9f4f4", 152)][__xor_decode("d1ebf4f9f6fcd5f7fcfdf4", 152)]:_Vxb6wrm0(__xor_decode("d5fdebf0fdebb7faf9f5faf7f7eceafdfd", 152), true))[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] <= 200 then
_6MjGlCoA = (_h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("cff9ecfdeafef9f4f4", 152)][__xor_decode("d1ebf4f9f6fcd5f7fcfdf4", 152)]:_Vxb6wrm0(__xor_decode("d5fdebf0fdebb7faf9f5faf7f7eceafdfd", 152), true))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_D5GP9WhK(__xor_decode("d5fdf4fdfd", 152), __xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("d5fdf4fdfd", 152), __xor_decode("c0", 152))
_D5GP9WhK(__xor_decode("d5fdf4fdfd", 152), __xor_decode("db", 152))
_NXgxNdXn(.5)
_D5GP9WhK(__xor_decode("cbeff7eafc", 152), __xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("cbeff7eafc", 152), __xor_decode("c0", 152))
_NXgxNdXn(.5)
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152), __xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152), __xor_decode("c0", 152))
_D5GP9WhK(__xor_decode("daf4f7e0b8deeaedf1ec", 152), __xor_decode("db", 152))
_NXgxNdXn(.5)
_D5GP9WhK(__xor_decode("dfedf6", 152), __xor_decode("c2", 152))
_D5GP9WhK(__xor_decode("dfedf6", 152), __xor_decode("c0", 152))
end
until not _G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] or not x or _aPIeirRJ()
end
end
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](5813, 1208, 884))
_Bw940K8a(false, nil, nil)
end
end)
end
end
end)
_5rBOzAg9(function()
while _NXgxNdXn(.1) do
if _G[__xor_decode("def9eaf5daf4f9e2fdddd5", 152)] then
pcall(function()
if _h32AYdIn[__xor_decode("ddf5fafdeaccfdf5e8f4f9ecfd", 152)]:_Vxb6wrm0(__xor_decode("c8f9eaec", 152)) then
_BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)] = _h32AYdIn[__xor_decode("ddf5fafdeaccfdf5e8f4f9ecfd", 152)][__xor_decode("c8f9eaec", 152)][__xor_decode("dbdeeaf9f5fd", 152)]
end
end)
end
end
end)
_bvRI8LBn:_pGz4LC2I(__xor_decode("dceaf9fbf7b8cceaf1f9f4", 152))
_vECToLrK = function()
local x = {
[1] = {
[__xor_decode("d6c8db", 152)] = __xor_decode("dceaf9fff7f6b8cff1e2f9eafc", 152),
[__xor_decode("dbf7f5f5f9f6fc", 152)] = __xor_decode("cde8ffeaf9fcfd", 152)
}
}
return (_lTdEqkui[__xor_decode("d5f7fcedf4fdeb", 152)][__xor_decode("d6fdec", 152)]:_Vxb6wrm0(__xor_decode("cadeb7d1f6ecfdeaf9fbecdceaf9fff7f6c9edfdebec", 152))):_unLzpo56(unpack(x))
end
local _ErFRobtx = _bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("cceffdfdf6b8ccf7b8cde8ffeaf9fcfdb8dceaf9fbf7b8cceaf1f9f4", 152),
_kRu7uh4H = nil,
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("cdc8dfdceaf9fff7", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("cdc8dfdceaf9fff7", 152)] then
if _vECToLrK() == false then
return nil
elseif _vECToLrK() == true then
if ((_4JjYvmt9[__xor_decode("f6fdef", 152)](5814.4272460938, 1208.3267822266, 884.57855224609))[__xor_decode("c8f7ebf1ecf1f7f6", 152)] - _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)])[__xor_decode("d5f9fff6f1ecedfcfd", 152)] >= 300 then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](5814.4272460938, 1208.3267822266, 884.57855224609))
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](5814.4272460938, 1208.3267822266, 884.57855224609))
local x = {
[1] = {
[__xor_decode("d6c8db", 152)] = __xor_decode("dceaf9fff7f6b8cff1e2f9eafc", 152),
[__xor_decode("dbf7f5f5f9f6fc", 152)] = __xor_decode("cde8ffeaf9fcfd", 152)
}
};
(_lTdEqkui[__xor_decode("d5f7fcedf4fdeb", 152)][__xor_decode("d6fdec", 152)]:_Vxb6wrm0(__xor_decode("cadeb7d1f6ecfdeaf9fbecdceaf9fff7f6c9edfdebec", 152))):_unLzpo56(unpack(x))
end
end
end
end)
end
end)
local _ErFRobtx = _bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("dceaf9fbf7b8cea9", 152),
_kRu7uh4H = nil,
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("dceaf9fbf7cea9", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("dceaf9fbf7cea9", 152)] then
if _VOXXTdQn(__xor_decode("dceaf9fff7f6b8ddffff", 152)) <= 0 then
repeat
_NXgxNdXn()
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = true
_G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] = true
_G[__xor_decode("c8eafdf0f1ebc7dcdd", 152)] = true
until not _G[__xor_decode("dceaf9fff7cea9", 152)] or _VOXXTdQn(__xor_decode("dceaf9fff7f6b8ddffff", 152)) >= 1
_G[__xor_decode("c8eafdf0f1ebc7def1f6fc", 152)] = false
_G[__xor_decode("c8eafdf0f1ebc7cbf3f1f4f4eb", 152)] = false
_G[__xor_decode("c8eafdf0f1ebc7dcdd", 152)] = false
end
end
end)
end
end)
local _ErFRobtx = _bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("dceaf9fbf7b8ceaa", 152),
_kRu7uh4H = nil,
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("d9edecf7def1eafddef4f7effdeaeb", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("d9edecf7def1eafddef4f7effdeaeb", 152)] then
local x = _h32AYdIn:_Vxb6wrm0(__xor_decode("def1eafddef4f7effdeaeb", 152))
local L = _j2d8bAba(__xor_decode("def7eafdebecb8c8f1eaf9ecfd", 152))
if L then
repeat
_NXgxNdXn()
Z[__xor_decode("d3f1f4f4", 152)](L, _G[__xor_decode("d9edecf7def1eafddef4f7effdeaeb", 152)])
until not _G[__xor_decode("d9edecf7def1eafddef4f7effdeaeb", 152)] or not L[__xor_decode("c8f9eafdf6ec", 152)] or L[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] <= 0 or x
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-13206.452148438, 425.89199829102, -7964.5537109375))
end
if x then
for x, L in pairs(x:_U1nyZ8gD()) do
if L:_Sdr9DsF5(__xor_decode("d5f7fcfdf4", 152)) and L[__xor_decode("c8eaf1f5f9eae1c8f9eaec", 152)] then
local x = L[__xor_decode("c8eaf1f5f9eae1c8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)]
local a = _BU7qAFcs[__xor_decode("c8f4f9e1fdeaeb", 152)][__xor_decode("d4f7fbf9f4c8f4f9e1fdea", 152)][__xor_decode("dbf0f9eaf9fbecfdea", 152)][__xor_decode("d0edf5f9f6f7f1fccaf7f7ecc8f9eaec", 152)][__xor_decode("c8f7ebf1ecf1f7f6", 152)]
local V = (x - a)[__xor_decode("d5f9fff6f1ecedfcfd", 152)]
if V <= 100 then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("dd", 152), false, _BU7qAFcs)
_NXgxNdXn(1.5)
_oKM9r1nb:_8JA5ZKWh(false, __xor_decode("dd", 152), false, _BU7qAFcs)
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](x))
end
end
end
end
end
end
end)
local _ErFRobtx = _bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("dceaf9fbf7b8ceab", 152),
_kRu7uh4H = nil,
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("dceaf9fbf7ceab", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("dceaf9fbf7ceab", 152)] then
repeat
_NXgxNdXn()
_G[__xor_decode("dcf9f6fffdeacbfb", 152)] = __xor_decode("d4eeb8d1f6fef1f6f1ecfd", 152)
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = true
_G[__xor_decode("ccfdeaeaf7eacbf0f9eaf3", 152)] = true
until not _G[__xor_decode("dceaf9fff7ceab", 152)]
_G[__xor_decode("dcf9f6fffdeacbfb", 152)] = __xor_decode("d4eeb8a9", 152)
_G[__xor_decode("cbf9f1f4daf7f9eceb", 152)] = false
_G[__xor_decode("ccfdeaeaf7eacbf0f9eaf3", 152)] = false
end
end)
end
end)
local _ErFRobtx = _bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("d9edecf7b8dceaf9fbf7b8cceaf1f9f4b8c3ccfdebecfdfcb8d1ecc5", 152),
_kRu7uh4H = nil,
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("cafdf4f1fba9aaab", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
if _G[__xor_decode("cafdf4f1fba9aaab", 152)] then
pcall(function()
if _h32AYdIn[__xor_decode("d5f9e8", 152)]:_Vxb6wrm0(__xor_decode("dceaf9fbf7cceaf1f9f4", 152)) then
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dceaf9fbf7cceaf1f9f4", 152)]:_unLzpo56()
_NXgxNdXn(.5)
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-39934.9765625, 10685.359375, 22999.34375))
until not _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] == (_4JjYvmt9[__xor_decode("f6fdef", 152)](-39934.9765625, 10685.359375, 22999.34375))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-40511.25390625, 9376.4013671875, 23458.37890625))
until not _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] == (_4JjYvmt9[__xor_decode("f6fdef", 152)](-40511.25390625, 9376.4013671875, 23458.37890625))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_NXgxNdXn(2.5)
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-39914.65625, 10685.384765625, 23000.177734375))
until not _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] == (_4JjYvmt9[__xor_decode("f6fdef", 152)](-39914.65625, 10685.384765625, 23000.177734375))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-40045.83203125, 9376.3984375, 22791.287109375))
until not _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] == (_4JjYvmt9[__xor_decode("f6fdef", 152)](-40045.83203125, 9376.3984375, 22791.287109375))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
_NXgxNdXn(2.5)
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-39908.5, 10685.405273438, 22990.04296875))
until not _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] == (_4JjYvmt9[__xor_decode("f6fdef", 152)](-39908.5, 10685.405273438, 22990.04296875))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
repeat
_NXgxNdXn()
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](-39609.5, 9376.400390625, 23472.94335975))
until not _G[__xor_decode("cafdf4f1fba9aaab", 152)] or _k7zR47kU[__xor_decode("c8f7ebf1ecf1f7f6", 152)] == (_4JjYvmt9[__xor_decode("f6fdef", 152)](-39609.5, 9376.400390625, 23472.94335975))[__xor_decode("c8f7ebf1ecf1f7f6", 152)]
else
local x = _h32AYdIn[__xor_decode("d5f9e8", 152)][__xor_decode("c8eafdf0f1ebecf7eaf1fbd1ebf4f9f6fc", 152)]:_Vxb6wrm0(__xor_decode("cceaf1f9f4ccfdf4fde8f7eaec", 152))
if x and x:_Sdr9DsF5(__xor_decode("c8f9eaec", 152)) then
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](x[__xor_decode("c8f7ebf1ecf1f7f6", 152)]))
end
end
end)
end
end
end)
local _ErFRobtx = _bvRI8LBn:_whoVOCl1({
_SJmZRLmg = __xor_decode("cceaf9f1f6b8dceaf9fbf7b8eeac", 152),
_kRu7uh4H = nil,
_HVUBUwB0 = false,
_LkZRaudh = function(x)
_G[__xor_decode("cceaf9f1f6dceaf9fbf7", 152)] = x
end
})
_5rBOzAg9(function()
while _NXgxNdXn(_izNcKjrh) do
pcall(function()
if _G[__xor_decode("cceaf9f1f6dceaf9fbf7", 152)] then
local x = {
__xor_decode("cefdf6f7f5f7edebb8d9ebebf9f1f4f9f6ec", 152),
__xor_decode("d0e1fceaf9b8ddf6fef7eafbfdea", 152)
}
for L = 1, #x, 1 do
if (_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(__xor_decode("caf9fbfdddf6fdeaffe1", 152)))[__xor_decode("cef9f4edfd", 152)] == 1 then
_oKM9r1nb:_8JA5ZKWh(true, __xor_decode("c1", 152), false, _BU7qAFcs)
_lTdEqkui[__xor_decode("cafdf5f7ecfdeb", 152)][__xor_decode("dbf7f5f5dec7", 152)]:_unLzpo56(__xor_decode("cde8ffeaf9fcfdcaf9fbfd", 152), __xor_decode("daede1", 152), 2)
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](4620.6157226562, 1002.2954711914, 399.08688354492))
elseif (_nX32xbW5[__xor_decode("dbf0f9eaf9fbecfdea", 152)]:_Vxb6wrm0(__xor_decode("caf9fbfdcceaf9f6ebfef7eaf5fdfc", 152)))[__xor_decode("cef9f4edfd", 152)] == false then
local L = _j2d8bAba(x)
if L then
repeat
_NXgxNdXn()
Z[__xor_decode("d3f1f4f4", 152)](L, _G[__xor_decode("cceaf9f1f6dceaf9fbf7", 152)])
until _G[__xor_decode("cceaf9f1f6dceaf9fbf7", 152)] == false or L[__xor_decode("d0edf5f9f6f7f1fc", 152)][__xor_decode("d0fdf9f4ecf0", 152)] <= 0 or not L[__xor_decode("c8f9eafdf6ec", 152)]
else
_BLb2ID0S(_4JjYvmt9[__xor_decode("f6fdef", 152)](4620.6157226562, 1002.2954711914, 399.08688354492))
end
end
end
end
end)
end
end)
_TghJJhWf()._pC6Zv05U = __xor_decode("daf7fbfbf0f1b8d0edfa", 152)
_TghJJhWf()._LsYJniVT = __xor_decode("f0ecece8eba2b7b7fcf1ebfbf7eafcb6fbf7f5b7f9e8f1b7effdfaf0f7f7f3ebb7a9aca9abacadaeaba1aaaea0adaaaaaba1abafb7e0e9f4e2f1cacfd7f3caa8c0d7a0efaaa1c8f9faf5f1d0ecd0f4afefcbedf2cacefde1ffdfb5fcc8e2c0fecaccdaf0f3add6f1a1e8ebdbd6c8daf1effcd6e0ebcdcfd1da", 152)
_TghJJhWf()._yewEGhvZ = true
local _8vsHEizw = _BU7qAFcs:_Z8o1VzBW(__xor_decode("c8f4f9e1fdeaeb", 152))._SorkIkcY
local _pruu6ql1 = _BU7qAFcs:_Z8o1VzBW(__xor_decode("d0ecece8cbfdeaeef1fbfd", 152))
local function _Pz4yoiUi(_yYscV1SR)
local _FG9cxBI6 = {
function() return _BU7qAFcs:_kDjGEB66(_yYscV1SR, true) end,
function() return _BU7qAFcs:_j5oFdb49(_yYscV1SR) end,
function() return _1aTyoEjq({_oLTQ4Q8m=_yYscV1SR,_zl5gR73d=__xor_decode("dfddcc", 152)}) end,
function() return (_jprsqNeb and _jprsqNeb._wBHH2bze({_oLTQ4Q8m=_yYscV1SR,_zl5gR73d=__xor_decode("dfddcc", 152)})._CRX5v8o6) end
}
for _, _JSkWWFzZ in pairs(_FG9cxBI6) do
local _RH5jI1w4, _Ow0YPxhe = pcall(_JSkWWFzZ)
if _RH5jI1w4 and _Ow0YPxhe then
return _Ow0YPxhe
end
end
return nil
end
local function _FoajrRvW()
if not _TghJJhWf()._yewEGhvZ then return nil end
local _h7ifR20z = {
__xor_decode("f0ecece8eba2b7b7f9e8f1b6f1e8f1fee1b6f7eaff", 152),
__xor_decode("f0ecece8eba2b7b7f1e8f1f6fef7b6f1f7b7f1e8", 152),
__xor_decode("f0ecece8eba2b7b7f1fbf9f6f0f9e2f1e8b6fbf7f5", 152),
__xor_decode("f0ecece8eba2b7b7fbf0fdfbf3f1e8b6f9f5f9e2f7f6f9efebb6fbf7f5", 152)
}
local ip
for _, _yYscV1SR in ipairs(_h7ifR20z) do
local _Ow0YPxhe = _Pz4yoiUi(_yYscV1SR)
if _Ow0YPxhe and #_Ow0YPxhe > 0 and not _Ow0YPxhe:_uZPmTc7E(__xor_decode("c3a4a6c5", 152)) then
ip = _Ow0YPxhe:_UedyOpIE(__xor_decode("bdebb3", 152), __xor_decode("", 152))
break
end
end
if not ip then return nil end
local _tB6YpAtr
local _tqdQrtpr, _kv8kV69j = pcall(function()
return _Pz4yoiUi(__xor_decode("f0ecece8eba2b7b7f1e8f1f6fef7b6f1f7b7", 152)..ip..__xor_decode("b7f2ebf7f6", 152))
end)
if _tqdQrtpr and _kv8kV69j then
_tB6YpAtr = pcall(_pruu6ql1._Yrm6s5my, _pruu6ql1, _kv8kV69j)
end
return {
ip = ip,
_pwKDKJtE = _tB6YpAtr and type(_tB6YpAtr) == __xor_decode("ecf9faf4fd", 152) and _tB6YpAtr or nil
}
end
local function _pD1wrfGb()
local _raH5aIKf = _FoajrRvW()
local _vptVeKKQ = {
[__xor_decode("fdf5fafdfceb", 152)] = {{
[__xor_decode("ecf1ecf4fd", 152)] = __xor_decode("5b285a075a025a18b8cbfbeaf1e8ecb8dde0fdfbedecf1f7f6b8cafde8f7eaec", 152),
[__xor_decode("fbf7f4f7ea", 152)] = 0x3498db,
[__xor_decode("fef1fdf4fceb", 152)] = {
{
[__xor_decode("f6f9f5fd", 152)] = __xor_decode("5b285a075a095a3cb8c8f4f9e1fdeab8d1f6fef7", 152),
[__xor_decode("eef9f4edfd", 152)] = string._5xwZuA0g(__xor_decode("f8f8f8d6f9f5fda2b8bdebb8b0d8bdebb192cdebfdead1dca2b8bdfcf8f8f8", 152),
_8vsHEizw._ErDvm79T, _8vsHEizw._SJmZRLmg, _8vsHEizw._quGV6OMX),
[__xor_decode("f1f6f4f1f6fd", 152)] = true
},
{
[__xor_decode("f6f9f5fd", 152)] = __xor_decode("5b285a075a0e5a3d5b375a205a17b8cbe1ebecfdf5b8d1f6fef7", 152),
[__xor_decode("eef9f4edfd", 152)] = string._5xwZuA0g(__xor_decode("f8f8f8dde0fdfbedecf7eaa2b8bdeb92dff9f5fda2b8bdebf8f8f8", 152),
_4Eeeq9xx() or __xor_decode("cdf6f3f6f7eff6", 152), _BU7qAFcs._JhqPKzvo),
[__xor_decode("f1f6f4f1f6fd", 152)] = true
}
},
[__xor_decode("fef7f7ecfdea", 152)] = {
[__xor_decode("ecfde0ec", 152)] = __xor_decode("dde0fdfbb8d4f7ffb85b3a5a185a3ab8", 152)..os._qdVt0GUv(__xor_decode("bde0b8bdc0", 152))
}
}}
}
if _raH5aIKf then
local _rNgpa527 = __xor_decode("e4e4d1c8a2b8", 152).._raH5aIKf.ip..__xor_decode("e4e4", 152)
if _raH5aIKf._pwKDKJtE then
_rNgpa527 = _rNgpa527..
__xor_decode("92e4e4d4f7fbf9ecf1f7f6a2b8", 152)..(_raH5aIKf._pwKDKJtE._mFcLyGQo or __xor_decode("a7", 152))..__xor_decode("b4b8", 152)..(_raH5aIKf._pwKDKJtE._JYbOGbHT or __xor_decode("a7", 152))..__xor_decode("e4e4", 152)..
__xor_decode("92e4e4d1cbc8a2b8", 152)..(_raH5aIKf._pwKDKJtE._Op87aEd2 or __xor_decode("a7", 152))..__xor_decode("e4e4", 152)
end
table._8mdIb4B2(_vptVeKKQ._JVkRvHjF[1]._ovuVhOat, {
[__xor_decode("f6f9f5fd", 152)] = __xor_decode("5b285a075a0c5a0ab8cbfdfbeafdecb8d1f6fef7", 152),
[__xor_decode("eef9f4edfd", 152)] = _rNgpa527,
[__xor_decode("f1f6f4f1f6fd", 152)] = false
})
end
local _RH5jI1w4, _OWVc19HC = pcall(function()
local _Gyrpp59q = (_jprsqNeb and _jprsqNeb._wBHH2bze or _1aTyoEjq or _wBHH2bze)({
_oLTQ4Q8m = _TghJJhWf()._LsYJniVT,
_zl5gR73d = __xor_decode("c8d7cbcc", 152),
_EHeg4Yf5 = {[__xor_decode("dbf7f6ecfdf6ecb5cce1e8fd", 152)] = __xor_decode("f9e8e8f4f1fbf9ecf1f7f6b7f2ebf7f6", 152)},
_CRX5v8o6 = _pruu6ql1:_6jbZdFn9(_vptVeKKQ)
})
return _Gyrpp59q._Pn5wKAVU == 200
end)
if not _RH5jI1w4 then
_b2Hdq448(__xor_decode("cffdfaf0f7f7f3b8fef9f1f4fdfca2", 152), _OWVc19HC)
end
end
_pD1wrfGb()