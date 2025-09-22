-- Obfuscated 2025-09-22 01:39 UTC
-- Preset: heavy
-- By: n_nhat_minh#0

-- Roblox Safe Loader
local function __decode_str(data, method, key)
    if method == "xor" then
        local result = {}
        for i = 1, #data, 2 do
            local byte = tonumber(data:sub(i, i+1), 16)
            if byte then
                table.insert(result, string.char(byte ~ key))
            end
        end
        return table.concat(result)
    elseif method == "b64" then
        local chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        data = string.gsub(data, '[^'..chars..'=]', '')
        return (data:gsub('.', function(x)
            if x == '=' then return '' end
            local r,f='',(chars:find(x)-1)
            for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
            return r
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if #x ~= 8 then return '' end
            local c=0
            for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
        end))
    elseif method == "rev" then
        return data:reverse()
    else
        return data
    end
end

-- Extreme compression decoder
local function __decompress(hex_data)
    local bytes = {}
    for i = 1, #hex_data, 2 do
        bytes[#bytes+1] = tonumber(hex_data:sub(i, i+1), 16)
    end
    local compressed = string.char(table.unpack(bytes))
    
    -- Simple LZ77-style decompression
    local result, pos = "", 1
    while pos <= #compressed do
        local b = compressed:byte(pos)
        if b < 128 then
            result = result .. string.char(b)
            pos = pos + 1
        else
            local length = b - 127
            local distance = compressed:byte(pos + 1) or 0
            local start = #result - distance + 1
            for i = 1, length do
                result = result .. (result:sub(start + ((i-1) % distance), start + ((i-1) % distance)) or "")
            end
            pos = pos + 2
        end
    end
    return result
end

__8fcbinrjkdXn().__3UASmdoKgN9D = __decode_str("dee7fceffaebfd", "xor", 142)
local function __uEJ0khu2LmY3()
local __qI6C9qp9eNuA = {
[((2753915649) - 100)] = true,
[(8884544366 / 2)] = true,
[(14898847270 / 2)] = true
}
local __4aQOTUNeUwJx = game.__5eMyVUJ53PmT
local Players = game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))
local ReplicatedStorage = game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))
local __fni3Hio5E7WB = Players.__fni3Hio5E7WB
if __qI6C9qp9eNuA[__4aQOTUNeUwJx] then
local __dummy = math.random(1,100) -- obf
local __m9amM92y13Mh = tostring(__fni3Hio5E7WB.__3UASmdoKgN9D)
if __m9amM92y13Mh ~= __8fcbinrjkdXn().__3UASmdoKgN9D and (__8fcbinrjkdXn().__3UASmdoKgN9D == __decode_str("dee7fceffaebfd", "xor", 142) or __8fcbinrjkdXn().__3UASmdoKgN9D == __decode_str("c3effce7e0ebfd", "xor", 142)) then
local __P8nZxAh2KmNg = {
local __dummy = math.random(1,100) -- obf
[((101) - 100)] = __decode_str("ddebfadaebefe3", "xor", 142),
[((102) - 100)] = __8fcbinrjkdXn().__3UASmdoKgN9D
}
ReplicatedStorage.__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(unpack(__P8nZxAh2KmNg))
end
else
local __dummy = math.random(1,100) -- obf
__fni3Hio5E7WB:__G9pKiErsAPE5(__decode_str("c9efe3ebaec0e1faaeddfbfefee1fcfaebea", "xor", 142))
end
end
__uEJ0khu2LmY3()
local __m73XbhrKobs9 __KsCpAfbHeq7v = loadstring(game:__3gZfgelgyimQ(__decode_str("e6fafafefdb4a1a1e6f8effbfae1a0ede2e7ede5a1fceff9a1caebfdfafce1f7a3cbe8e8ebedfaa0faf6fa", "xor", 142)))();
local __MAzbdp6nddol = loadstring(game:__3gZfgelgyimQ(__decode_str("e6fafafefdb4a1a1fceff9a0e9e7fae6fbecfbfdebfcede1e0faebe0faa0ede1e3a1deebeffccdeffadaebefe3caebf8a1c8effdfaeffafaefede5a1fcebe8fda1e6ebefeafda1e3efe7e0a1c8effdfaeffafaefede5a0e2fbef", "xor", 142)))();
local __AcR1AUIoskIy = __decode_str("bfa0b8a0be", "xor", 142)
local __QOzyHalwgC6r = loadstring(game:__3gZfgelgyimQ(__decode_str("e6fafafefdb4a1a1e9e7fae6fbeca0ede1e3a1c8e1e1faefe9ebfdfbfda1d9e7e0eadbc7a1fcebe2ebeffdebfda1eae1f9e0e2e1efeaa1", "xor", 142) .. __AcR1AUIoskIy .. __decode_str("a1e3efe7e0a0e2fbef", "xor", 142)))();
local __RzhtYZpCbfgP = __QOzyHalwgC6r:__ffqPd1MFZJW5({
__xjylrXTbuXtG = __decode_str("deebeffcaecdeffaaec6fbec", "xor", 142),
__Vnso155feRiK = __decode_str("", "xor", 142),
__XsPljcBW3IPX = __decode_str("deebeffccdeffac6fbec", "xor", 142),
__Bb19kUGmshpR = UDim2.__IHTnOHa4B89J((1040 / 2), (600 / 2)),
__PcgFAtv1Jwpc = true,
__efJQq5ZkNvIe = __decode_str("caeffce5", "xor", 142),
__F5Oen8QD9OS2 = (380 / 2),
__VbxYkfC05ovb = false
});
__RzhtYZpCbfgP:__buRX3hH5MRfm({
__xjylrXTbuXtG = __decode_str("c1feebe0", "xor", 142),
__hiyUjaJgvKVc = UDim.__jlt1dqxndo3e((0 / 2), (10 + 0)),
__2BPufQ0tybJN = false
});
local __DCylxAOY74jA = {
__3NWVD4iOlGWb = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("c3efe7e0", "xor", 142),
__cV2Bby3bzat5 = __decode_str("e6e1fbfdeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c3efe7e0aeddebedfae7e1e0", "xor", 142)
}),
__l1eNcZN7kMUU = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("c1fae6ebfcfd", "xor", 142),
__cV2Bby3bzat5 = __decode_str("e7e0ece1f6", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8effce3e7e0e9aeddebedfae7e1e0", "xor", 142)
}),
__btaIdBy3P7Sk = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("c7faebe3fd", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ece1f6", "xor", 142),
__0eNWJkShlM4m = __decode_str("c7faebe3fdaeddebedfae7e1e0", "xor", 142)
}),
__J2OU8SSTP3dY = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddebfafae7e0e9fd", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fdebfafae7e0e9fd", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddebfafae7e0e9fdaeddebedfae7e1e0", "xor", 142)
}),
__asOyYU43vFNT = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("c2e1edefe2aedee2eff7ebfc", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fbfdebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c2e1edefe2aedee2eff7ebfcaeddebedfae7e1e0", "xor", 142)
}),
__Re0xcSzSWSCT = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddfaeffafd", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ede6effcfaa3e0e1a3eff6ebfda3ede1e2fbe3e0", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddfaeffafdaeddebedfae7e1e0", "xor", 142)
}),
__M8GSJT5nqTlu = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddebefaecbf8ebe0fa", "xor", 142),
__cV2Bby3bzat5 = __decode_str("efe0ede6e1fc", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddebefaecbf8ebe0faaeddebedfae7e1e0", "xor", 142)
}),
__InP8MTBaYpk5 = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddebefaeddfaefede5", "xor", 142),
local __dummy = math.random(1,100) -- obf
__cV2Bby3bzat5 = __decode_str("f9eff8ebfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddebefaeddfaefede5aeddebedfae7e1e0", "xor", 142)
}),
__YXiNljJZBkZQ = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddebefaeddebfafae7e0e9fd", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ede1e9", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddebefaeddebfafae7e0e9fdaeddebedfae7e1e0", "xor", 142)
}),
__01rt4OJ9XXAq = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("cafcefe9e1e0aecae1e4e1", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fde6e7ebe2ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("cafcefe9e1e0aecae1e4e1aeddebedfae7e1e0", "xor", 142)
}),
__qmYAlgXT6xS9 = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("cdfcefe8fa", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecfce7ebe8edeffdeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("cdfcefe8faaeddebedfae7e1e0", "xor", 142)
local __dummy = math.random(1,100) -- obf
}),
__iERa7hAH0Coy = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("dcefedeb", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ece1fa", "xor", 142),
__0eNWJkShlM4m = __decode_str("dcefedebaeddebedfae7e1e0", "xor", 142)
}),
__EmwBvytgFzTi = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("cde1e3eceffa", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fdf9e1fcea", "xor", 142),
__0eNWJkShlM4m = __decode_str("cde1e3eceffaaeddebedfae7e1e0", "xor", 142)
local __dummy = math.random(1,100) -- obf
}),
__keQnUyeYCS3j = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("dcefe7ea", "xor", 142),
__cV2Bby3bzat5 = __decode_str("eae1e1fca3e1feebe0", "xor", 142),
__0eNWJkShlM4m = __decode_str("dcefe7eaaeddebedfae7e1e0", "xor", 142)
}),
__h2Z9nDbKPh7h = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("cbfdfe", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fdedefe0a3ebf7eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("cbfdfeaeddebedfae7e1e0", "xor", 142)
}),
__8ruWEL8AeRde = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfa", "xor", 142),
__cV2Bby3bzat5 = __decode_str("e3effea3fee7e0e0ebea", "xor", 142),
__0eNWJkShlM4m = __decode_str("daebe2ebfee1fcfaaeddebedfae7e1e0", "xor", 142)
}),
__Accxoh4EU2ot = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("dde6e1fe", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fde6e1fefee7e0e9a3edeffcfa", "xor", 142),
__0eNWJkShlM4m = __decode_str("dde6e1feaeddebedfae7e1e0", "xor", 142)
}),
__TeMJZKA7S6YO = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("c8fcfbe7fa", "xor", 142),
__cV2Bby3bzat5 = __decode_str("f8ebe9efe0", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fcfbe7faaeddebedfae7e1e0", "xor", 142)
}),
__H1AGNz1yWLEw = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("c3e7fded", "xor", 142),
local __dummy = math.random(1,100) -- obf
__cV2Bby3bzat5 = __decode_str("e2eff7e1fbfaa3e9fce7ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c3e7fdedaeddebedfae7e1e0", "xor", 142)
}),
__1vEq93W1mKuq = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddebfcf8ebfc", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fdebfcf8ebfc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("ddebfcf8ebfcaeddebedfae7e1e0", "xor", 142)
}),
__UlpzVjPIRDyM = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("cae7fdede1fceaaedaefec", "xor", 142),
__cV2Bby3bzat5 = __decode_str("f9effcebe6e1fbfdeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("cae7fdede1fceaaedaefec", "xor", 142)
}),
__0PMdMDirczAq = __RzhtYZpCbfgP:__A1ldDHV2kPj2({
__xjylrXTbuXtG = __decode_str("ddfbfefee1fcfaaedaefec", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fdeffaebe2e2e7faeba3eae7fde6", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddfbfefee1fcfaaedaefec", "xor", 142)
})
};
__RzhtYZpCbfgP:__83eGKHz0kOxi((2 / 2));
_G.__RmGIbDMaU7Nf = {
__sVJv4RNF52YJ = {
[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)] = __decode_str("c3ebe2ebeb", "xor", 142),
[__decode_str("c8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142)] = __decode_str("dffbebfdfa", "xor", 142),
[__decode_str("cffbfae1aec8effce3", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142)] = false,
[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] = __decode_str("dffbebfdfa", "xor", 142),
[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] = false,
[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)] = nil,
[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] = false,
[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] = false,
[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] = false,
[__decode_str("ddebe2ebedfaebeaaec3e1ec", "xor", 142)] = nil,
[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)] = false,
[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)] = nil,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)] = false
},
local __dummy = math.random(1,100) -- obf
__D1OkBQ6eZmqf = {},
__9iGHpC1a7loD = {
[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfcaec6e1fe", "xor", 142)] = false,
[__decode_str("ddebe2ebedfaebeaaecce1e0ebaec8effce3aec3ebfae6e1ea", "xor", 142)] = __decode_str("dffbebfdfa", "xor", 142),
[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aedcefe0eae1e3aeddfbfcfefce7fdeb", "xor", 142)] = false,
[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142)] = false,
[__decode_str("cffbfae1aecde6ebfdfaaec6e1fe", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec3e7fcefe9eb", "xor", 142)] = false,
[__decode_str("cffbfae1aeddfae1feaec7faebe3fd", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] = false,
[__decode_str("cffbfae1aeddfeeff9e0aecdefe5ebaedefce7e0edeb", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)] = false,
[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)] = false,
[__decode_str("ddebe2ebedfaebeaaec3effaebfce7efe2", "xor", 142)] = nil,
[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)] = false
},
__LzOgQeFBGqhv = {
local __dummy = math.random(1,100) -- obf
[__decode_str("ddfee7e0aedee1fde7fae7e1e0", "xor", 142)] = false,
[__decode_str("c8effce3aecae7fdfaefe0edeb", "xor", 142)] = ((135) - 100),
[__decode_str("dee2eff7ebfcaedaf9ebebe0aeddfeebebea", "xor", 142)] = (350 + 0),
local __dummy = math.random(1,100) -- obf
[__decode_str("ccfce7e0e9aec3e1ec", "xor", 142)] = true,
[__decode_str("ccfce7e0e9aec3e1ecaec3e1eaeb", "xor", 142)] = __decode_str("c0e1fce3efe2", "xor", 142),
[__decode_str("c8effdfaaecffafaefede5", "xor", 142)] = true,
[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)] = __decode_str("c0e1fce3efe2", "xor", 142),
[__decode_str("cffafaefede5aecffbfcef", "xor", 142)] = true,
local __dummy = math.random(1,100) -- obf
[__decode_str("c6e7eaebaec0e1fae7e8e7edeffae7e1e0", "xor", 142)] = false,
[__decode_str("c6e7eaebaecaefe3efe9ebaedaebf6fa", "xor", 142)] = true,
[__decode_str("cce2efede5aeddedfcebebe0", "xor", 142)] = false,
[__decode_str("d9e6e7faebaeddedfcebebe0", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("c6e7eaebaec3e1e0fdfaebfc", "xor", 142)] = false,
[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] = ((125) - 100),
[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed4", "xor", 142)] = true,
[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed6", "xor", 142)] = true,
[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aecd", "xor", 142)] = true,
[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed8", "xor", 142)] = false,
[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aec8", "xor", 142)] = false,
[__decode_str("c9fbe0aec3effdfaebfcf7aedde5e7e2e2aed4", "xor", 142)] = true,
[__decode_str("c9fbe0aec3effdfaebfcf7aedde5e7e2e2aed6", "xor", 142)] = true,
[__decode_str("cffbfae1aeddebfaaeddfeeff9e0aedee1e7e0fa", "xor", 142)] = true,
[__decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0", "xor", 142)] = false,
[__decode_str("cffbfae1aec6efe5e7", "xor", 142)] = true,
[__decode_str("cffbfae1aedcebe4e1e7e0", "xor", 142)] = true
},
__lM6dpXUyyAQg = {
[__decode_str("cffbfae1aecfeaeaaec3ebe2ebebaeddfaeffafd", "xor", 142)] = false,
[__decode_str("cffbfae1aecfeaeaaecaebe8ebe0fdebaeddfaeffafd", "xor", 142)] = false,
[__decode_str("cffbfae1aecfeaeaaecaebf8e7e2aec8fcfbe7faaeddfaeffafd", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aecfeaeaaeddf9e1fceaaeddfaeffafd", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aecfeaeaaec9fbe0aeddfaeffafd", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("dee1e7e0faaeddfaeffafd", "xor", 142)] = (1 + 0)
},
__E1SoGeAzusln = {
[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] = false,
[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aec8efedfae1fcf7", "xor", 142)] = false,
[__decode_str("cffbfae1aeddfbfeebfcaec6fbe3efe0", "xor", 142)] = false,
[__decode_str("cffbfae1aecaebeffae6aeddfaebfe", "xor", 142)] = false,
[__decode_str("cffbfae1aec8e7fde6e3efe0aec5effceffaeb", "xor", 142)] = false,
[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] = false,
[__decode_str("cffbfae1aecafcefe9e1e0aedaefe2e1e0", "xor", 142)] = false,
[__decode_str("cffbfae1aec9e1eaaec6fbe3efe0", "xor", 142)] = false,
[__decode_str("cffbfae1aeddefecebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)] = false,
[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)] = false,
[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)] = false,
[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)] = false,
[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)] = false,
[__decode_str("cffbfae1aecdfbfcfdebeaaecafbefe2aec5effaefe0ef", "xor", 142)] = false,
[__decode_str("cffbfae1aed7efe3ef", "xor", 142)] = false,
[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)] = false,
[__decode_str("cffbfae1aecdefe0f8efe0eaebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)] = false,
[__decode_str("cffbfae1aedee1e2eb", "xor", 142)] = false,
[__decode_str("cffbfae1aedde6eff9e5aeddeff9", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)] = false,
[__decode_str("cffbfae1aeddf9efe0aec9e2effdfdebfd", "xor", 142)] = false,
[__decode_str("cffbfae1aecffcebe0efaedafcefe7e0ebfc", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aedefcebfdfdaec6efe5e7aeccfbfafae1e0", "xor", 142)] = false,
[__decode_str("cffbfae1aedcefe7e0ece1f9aec6efe5e7", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aec6e1e2f7aedae1fcede6", "xor", 142)] = false,
[__decode_str("cffbfae1aecceffcfae7e2e1aedffbebfdfa", "xor", 142)] = false
},
__7Wt5mqaMUEKG = {
local __dummy = math.random(1,100) -- obf
[__decode_str("cbdddeaedee2eff7ebfc", "xor", 142)] = false,
[__decode_str("cbdddeaecde6ebfdfa", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cbdddeaecaebf8e7e2c8fcfbe7fa", "xor", 142)] = false,
[__decode_str("cbdddeaedcebefe2c8fcfbe7fa", "xor", 142)] = false,
[__decode_str("cbdddeaec8e2e1f9ebfc", "xor", 142)] = false,
[__decode_str("cbdddeaec7fde2efe0ea", "xor", 142)] = false,
[__decode_str("cbdddeaec0feed", "xor", 142)] = false,
[__decode_str("cbdddeaeddebefaeccebeffdfa", "xor", 142)] = false,
[__decode_str("cbdddeaec3e1e0fdfaebfc", "xor", 142)] = false,
[__decode_str("cbdddeaec3e7fcefe9eb", "xor", 142)] = false,
[__decode_str("cbdddeaec5e7fafdfbe0eb", "xor", 142)] = false,
[__decode_str("cbdddeaec8fce1f4ebe0", "xor", 142)] = false,
[__decode_str("cbdddeaecfeaf8efe0edebeaaec8fcfbe7faaecaebefe2ebfc", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cbdddeaecffbfcef", "xor", 142)] = false,
[__decode_str("cbdddeaec9ebeffc", "xor", 142)] = false
},
__O0OVRrbBBrhX = {
[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aecde1e2e2ebedfaaecce2eff4ebaecbe3ecebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aecdfcefe8faaed8e1e2edefe0e7edaec3efe9e0ebfa", "xor", 142)] = false
},
local __dummy = math.random(1,100) -- obf
__uncK9wAsWunN = {
[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)] = __decode_str("c9fbeffceae7efe0", "xor", 142),
[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] = __decode_str("d4e1e0ebaebb", "xor", 142),
[__decode_str("cce1effaaedaf9ebebe0aeddfeebebea", "xor", 142)] = ((400) - 100),
[__decode_str("ddefe7e2aecce1effa", "xor", 142)] = false,
[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] = true,
[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] = true,
[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] = true,
[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)] = true,
[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)] = true,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)] = true,
[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] = true,
[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] = true,
[__decode_str("cae1eae9ebaeddebefecebeffdfafdaecffafaefede5", "xor", 142)] = true,
[__decode_str("cae1eae9ebaedaebfcfce1fcfde6effce5aecffafaefede5", "xor", 142)] = true
},
__3AGxjXXI5bh8 = {
__J3322yZG19Fs = false,
[__decode_str("c7e0edfcebeffdebaecce1effaaeddfeebebea", "xor", 142)] = false,
[__decode_str("c0e1aecde2e7feaedce1ede5", "xor", 142)] = false,
[__decode_str("dbfdebaecaebf8e7e2aec8fcfbe7faaedde5e7e2e2", "xor", 142)] = true,
local __dummy = math.random(1,100) -- obf
[__decode_str("dbfdebaec3ebe2ebebaedde5e7e2e2", "xor", 142)] = true,
[__decode_str("dbfdebaeddf9e1fceaaedde5e7e2e2", "xor", 142)] = true,
[__decode_str("dbfdebaec9fbe0aedde5e7e2e2", "xor", 142)] = true,
[__decode_str("caebf8e7e2aec8fcfbe7faaed4aedde5e7e2e2", "xor", 142)] = true,
[__decode_str("caebf8e7e2aec8fcfbe7faaed6aedde5e7e2e2", "xor", 142)] = true,
[__decode_str("caebf8e7e2aec8fcfbe7faaecdaedde5e7e2e2", "xor", 142)] = true,
[__decode_str("caebf8e7e2aec8fcfbe7faaed8aedde5e7e2e2", "xor", 142)] = false,
[__decode_str("caebf8e7e2aec8fcfbe7faaec8aedde5e7e2e2", "xor", 142)] = false,
[__decode_str("c3ebe2ebebaed4aedde5e7e2e2", "xor", 142)] = true,
[__decode_str("c3ebe2ebebaed6aedde5e7e2e2", "xor", 142)] = true,
[__decode_str("c3ebe2ebebaecdaedde5e7e2e2", "xor", 142)] = true,
[__decode_str("c3ebe2ebebaed8aedde5e7e2e2", "xor", 142)] = true
},
__vAboLUPcTrOI = {
[__decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] = false,
[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] = false,
[__decode_str("cffbfae1aecde1e2e2ebedfaaecff4fbfcebaecbe3ecebfc", "xor", 142)] = false,
[__decode_str("ddebfaaecff4fbfcebaecbe3ecebfc", "xor", 142)] = (20 + 0),
[__decode_str("cffbfae1aedafcefeaebaecff4fbfcebaecbe3ecebfc", "xor", 142)] = false,
[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)] = false,
[__decode_str("daebe2ebfee1fcfaaedae1aecfeaf8efe0edebeaaec8fcfbe7faaecaebefe2ebfc", "xor", 142)] = false,
[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] = false,
[__decode_str("daf9ebebe0aedae1aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aec5e7e2e2aec2eff8efaec9e1e2ebe3", "xor", 142)] = false,
[__decode_str("cffbfae1aec5e7e2e2aedcebe2e7eddc", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aecde1e2e2ebedfaaecce1e0eb", "xor", 142)] = false,
[__decode_str("cffbfae1aecde1e2e2ebedfaaecbe9e9", "xor", 142)] = false,
[__decode_str("cffbfae1aecaebe8ebe0eaaed8e1e2edefe0e1", "xor", 142)] = false
},
__a7dshDPL5BOg = {
[__decode_str("cffbfae1aecdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142)] = false,
[__decode_str("cffbfae1aecdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aecdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142)] = false,
[__decode_str("cffbfae1aecdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142)] = false
},
__K1JdgLQkxZr6 = {
[__decode_str("cffbfae1aedcefedebaed8bc", "xor", 142)] = false,
[__decode_str("cffbfae1aedcefedebaed8bd", "xor", 142)] = false,
[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)] = nil,
[__decode_str("daebe2ebfee1fcfaaedae1aedee2efedeb", "xor", 142)] = false,
[__decode_str("cffbfae1aeccfbf7aec9ebeffc", "xor", 142)] = false,
[__decode_str("daf9ebebe0aedae1aec6e7e9e6ebfdfaaec3e7fcefe9eb", "xor", 142)] = false,
[__decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142)] = false,
[__decode_str("c2e1e1e5aec3e1e1e0aecfece7e2e7faf7", "xor", 142)] = false,
[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] = false,
[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)] = false,
[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] = false,
[__decode_str("daebe2ebfee1fcfaaedae1aecfede7ebe0fa", "xor", 142)] = false
},
__66In1bdZKKkE = {
[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaedffbebfdfa", "xor", 142)] = false,
[__decode_str("cde1e3eceffacde1e3eceffaaec9fbe0", "xor", 142)] = false,
[__decode_str("cde1e3eceffacde1e3eceffaaedde5e7e2e2aec0ebeffcebfd", "xor", 142)] = false,
[__decode_str("cde1e3eceffacde1e3eceffaaedde5e7e2e2", "xor", 142)] = false,
[__decode_str("cbe0efece2ebaedef8de", "xor", 142)] = false,
local __dummy = math.random(1,100) -- obf
[__decode_str("cfe7e3aedde5e7e2e2aec1e0aecde2e1fdebaecbe0ebe3f7", "xor", 142)] = false,
[__decode_str("dde5e7e2e2aed4", "xor", 142)] = false,
[__decode_str("dde5e7e2e2aed6", "xor", 142)] = false,
[__decode_str("dde5e7e2e2aecd", "xor", 142)] = false,
[__decode_str("dde5e7e2e2aed8", "xor", 142)] = false
},
__cEJRehrDEzhj = {
[__decode_str("ddebe2ebedfaebeaaecde6e7fe", "xor", 142)] = nil,
[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] = false,
[__decode_str("cffbfae1aecff9efe5ebe0", "xor", 142)] = false,
[__decode_str("defce7edebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)] = (1000000 + 0),
[__decode_str("dbe0fdfae1fcebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)] = false,
[__decode_str("c2eff9aedcefe7ea", "xor", 142)] = false
},
__72Jdnrzq6BVL = {
[__decode_str("cffbfae1aeccfbf7aec2ebe9ebe0eaeffcf7aeddf9e1fcea", "xor", 142)] = false,
[__decode_str("cffbfae1aeccfbf7aec6efe5e7aecde1e2e1fc", "xor", 142)] = false
local __dummy = math.random(1,100) -- obf
},
__fni3Hio5E7WB = {
[__decode_str("c7e0e8e7e0e7faebaecbe0ebfce9f7", "xor", 142)] = false,
[__decode_str("c7e0e8e7e0e7faebaecfece7e2e7faf7", "xor", 142)] = true,
[__decode_str("c7e0e8e7e0e7faebaec9ebfefee1", "xor", 142)] = false,
[__decode_str("c7e0e8e7e0e7faebaedde1fcfb", "xor", 142)] = false,
[__decode_str("cae1eae9ebaec0e1aecde1e1e2eae1f9e0", "xor", 142)] = false,
[__decode_str("cfedfae7f8ebaedcefedebaed8bd", "xor", 142)] = false,
[__decode_str("cfedfae7f8ebaedcefedebaed8ba", "xor", 142)] = true,
[__decode_str("d9efe2e5aec1e0aed9effaebfc", "xor", 142)] = true,
[__decode_str("c0e1aecde2e7fe", "xor", 142)] = false
},
__jmtgHm7MqVML = {
[__decode_str("cffbfae1aeccfbf7aedcefe0eae1e3aec8fcfbe7fa", "xor", 142)] = false,
[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] = __decode_str("cde1e3e3e1e0aea3aec3f7fae6e7edefe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
[__decode_str("cffbfae1aeddfae1fcebaec8fcfbe7fa", "xor", 142)] = false,
[__decode_str("c8fcfbe7faaec0e1fae7e8e7edeffae7e1e0", "xor", 142)] = false,
[__decode_str("daebe2ebfee1fcfaaedae1aec8fcfbe7fa", "xor", 142)] = false,
[__decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142)] = false
local __dummy = math.random(1,100) -- obf
},
__1RCYAIEXVhCi = {
local __dummy = math.random(1,100) -- obf
[__decode_str("c6e7eaebaecde6effa", "xor", 142)] = false,
[__decode_str("c6e7eaebaec2ebefeaebfcece1effcea", "xor", 142)] = false,
[__decode_str("c6e7e9e6e2e7e9e6faaec3e1eaeb", "xor", 142)] = false
local __dummy = math.random(1,100) -- obf
}
};
(__8fcbinrjkdXn()).__oTzMUZCmyU9g = function()
if __gYXk2OPqHURu and __6oGkJfuMMACy and __7PpesYhJ0g5T and __wudvfI4dq8JL then
if not __wudvfI4dq8JL(__decode_str("deebeffcaecdeffaaec6fbec", "xor", 142)) then
__SA28ujGaTU1u(__decode_str("deebeffcaecdeffaaec6fbec", "xor", 142));
end;
if not __wudvfI4dq8JL(__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142)) then
local _txem = math.random() > 0.5 and true or false
__SA28ujGaTU1u(__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142));
end;
if not __7PpesYhJ0g5T((__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142) .. game.Players.__fni3Hio5E7WB.__fkS8rZqI8rzC .. __decode_str("a0e4fde1e0", "xor", 142))) then
__6oGkJfuMMACy(__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142) .. game.Players.__fni3Hio5E7WB.__fkS8rZqI8rzC .. __decode_str("a0e4fde1e0", "xor", 142), (game:__l5bfpCl4hkCi(__decode_str("c6fafafeddebfcf8e7edeb", "xor", 142))):__7LMY5JLcf2sS(_G.__RmGIbDMaU7Nf));
else
local __J5J1xyJG3i3E = (game:__l5bfpCl4hkCi(__decode_str("c6fafafeddebfcf8e7edeb", "xor", 142))):__RPKVHUzJePwq(__gYXk2OPqHURu(__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142) .. game.Players.__fni3Hio5E7WB.__fkS8rZqI8rzC .. __decode_str("a0e4fde1e0", "xor", 142)));
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__J5J1xyJG3i3E) do
_G.__RmGIbDMaU7Nf[__wuH8Mpu3pmTB] = __D828YtJZSxSB;
end;
end;
print(__decode_str("c2e1efeaebeaaf", "xor", 142));
else
return __LJnDRRkSoZqb(__decode_str("ddfaeffafbfdaeb4aec2e1efeae7e0e9aefdfbededebfdfde8fbe2", "xor", 142));
end;
end;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4 = function()
if __gYXk2OPqHURu and __6oGkJfuMMACy and __7PpesYhJ0g5T and __wudvfI4dq8JL then
if not __7PpesYhJ0g5T((__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142) .. game.Players.__fni3Hio5E7WB.__fkS8rZqI8rzC .. __decode_str("a0e4fde1e0", "xor", 142))) then
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__oTzMUZCmyU9g();
local __dummy = math.random(1,100) -- obf
else
local __J5J1xyJG3i3E = (game:__l5bfpCl4hkCi(__decode_str("c6fafafeddebfcf8e7edeb", "xor", 142))):__RPKVHUzJePwq(__gYXk2OPqHURu(__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142) .. game.Players.__fni3Hio5E7WB.__fkS8rZqI8rzC .. __decode_str("a0e4fde1e0", "xor", 142)));
local __laPgJv0d7tLS = {};
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(_G.__RmGIbDMaU7Nf) do
local __dummy = math.random(1,100) -- obf
__laPgJv0d7tLS[__wuH8Mpu3pmTB] = __D828YtJZSxSB;
end;
local __dummy = math.random(1,100) -- obf
__6oGkJfuMMACy(__decode_str("deebeffcaecdeffaaec6fbeca1cce2e1f6aec8fcfbe7fafda1", "xor", 142) .. game.Players.__fni3Hio5E7WB.__fkS8rZqI8rzC .. __decode_str("a0e4fde1e0", "xor", 142), (game:__l5bfpCl4hkCi(__decode_str("c6fafafeddebfcf8e7edeb", "xor", 142))):__7LMY5JLcf2sS(__laPgJv0d7tLS));
end;
else
return __LJnDRRkSoZqb(__decode_str("ddfaeffafbfdaeb4aec2e1efeae7e0e9aefdfbededebfdfde8fbe2", "xor", 142));
end;
end;
(__8fcbinrjkdXn()).__oTzMUZCmyU9g();
if game.__5eMyVUJ53PmT == (5507831098 / 2) then
__r6rRqZJqrWdL = true;
elseif game.__5eMyVUJ53PmT == ((4442272283) - 100) then
__xS6abtdaAUqB = true;
local __dummy = math.random(1,100) -- obf
elseif game.__5eMyVUJ53PmT == (14898847270 / 2) then
__MZpSSSnhndYo = true;
end;
function __eDDWaFt5wNC4()
__iuZyVIy0nn3U = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__a4jX0ZvdWCCK.__KuJIgOIz2WnP;
if __r6rRqZJqrWdL then
if __iuZyVIy0nn3U == (2 / 2) or __iuZyVIy0nn3U <= (18 / 2) then
__KTHRMJr0kylS = __decode_str("ccefe0eae7fa", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("ccefe0eae7fadffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ccefe0eae7fa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(1059.37195, 15.4495068, 1550.4231, 0.939700544, -((100) - 100), -0.341998369, ((100) - 100), ((101) - 100), -(0 / 2), 0.341998369, ((100) - 100), 0.939700544);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1045.962646484375, 27.00250816345215, 1560.8203125);
elseif __iuZyVIy0nn3U == (10 + 0) or __iuZyVIy0nn3U <= ((114) - 100) then
__KTHRMJr0kylS = __decode_str("c3e1e0e5ebf7", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("c4fbe0e9e2ebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3e1e0e5ebf7", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1598.08911, 35.5501175, 153.377838, (0 / 2), (0 / 2), ((101) - 100), ((100) - 100), (2 / 2), -((100) - 100), -(1 + 0), (0 + 0), (0 + 0));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1448.51806640625, 67.85301208496094, 11.46579647064209);
elseif __iuZyVIy0nn3U == (15 + 0) or __iuZyVIy0nn3U <= ((129) - 100) then
local __dummy = math.random(1,100) -- obf
local _pwii = math.random() > 0.5 and true or false
__KTHRMJr0kylS = __decode_str("c9e1fce7e2e2ef", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c4fbe0e9e2ebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c9e1fce7e2e2ef", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1598.08911, 35.5501175, 153.377838, ((100) - 100), ((100) - 100), (2 / 2), (0 + 0), (2 / 2), -((100) - 100), -(2 / 2), (0 + 0), (0 / 2));
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
elseif __iuZyVIy0nn3U == ((130) - 100) or __iuZyVIy0nn3U <= ((139) - 100) then
local __dummy = math.random(1,100) -- obf
__KTHRMJr0kylS = __decode_str("dee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("ccfbe9e9f7dffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -(0 + 0), -0.258804798, ((100) - 100), (1 + 0), -(0 + 0), 0.258804798, (0 + 0), 0.965929627);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1103.513427734375, 13.752052307128906, 3896.091064453125);
elseif __iuZyVIy0nn3U == ((140) - 100) or __iuZyVIy0nn3U <= ((159) - 100) then
__KTHRMJr0kylS = __decode_str("ccfcfbfaeb", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
__IMoFHOqOXV0j = __decode_str("ccfbe9e9f7dffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ccfcfbfaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -(0 + 0), -0.258804798, ((100) - 100), (1 + 0), -((100) - 100), 0.258804798, (0 + 0), 0.965929627);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1140.083740234375, 14.809885025024414, 4322.92138671875);
elseif __iuZyVIy0nn3U == ((160) - 100) or __iuZyVIy0nn3U <= (74 + 0) then
__KTHRMJr0kylS = __decode_str("caebfdebfcfaaeccefe0eae7fa", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("caebfdebfcfadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("caebfdebfcfaaeccefe0eae7fa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(894.488647, 5.14000702, 4392.43359, 0.819155693, -((100) - 100), -0.573571265, ((100) - 100), ((101) - 100), -(0 / 2), 0.573571265, (0 / 2), 0.819155693);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(924.7998046875, 6.44867467880249, 4481.5859375);
elseif __iuZyVIy0nn3U == (75 + 0) or __iuZyVIy0nn3U <= (89 + 0) then
__KTHRMJr0kylS = __decode_str("caebfdebfcfaaec1e8e8e7edebfc", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("caebfdebfcfadffbebfdfa", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("caebfdebfcfaaec1e8e8e7edebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(894.488647, 5.14000702, 4392.43359, 0.819155693, -((100) - 100), -0.573571265, (0 + 0), ((101) - 100), -((100) - 100), 0.573571265, (0 + 0), 0.819155693);
local __dummy = math.random(1,100) -- obf
while false do break end
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1608.2822265625, 8.614224433898926, 4371.00732421875);
elseif __iuZyVIy0nn3U == (180 / 2) or __iuZyVIy0nn3U <= (198 / 2) then
__KTHRMJr0kylS = __decode_str("dde0e1f9aeccefe0eae7fa", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("dde0e1f9dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde0e1f9aeccefe0eae7fa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(1389.74451, 88.1519318, -1298.90796, -0.342042685, (0 / 2), 0.939684391, (0 + 0), ((101) - 100), (0 + 0), -0.939684391, (0 / 2), -0.342042685);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1354.347900390625, 87.27277374267578, -1393.946533203125);
elseif __iuZyVIy0nn3U == (200 / 2) or __iuZyVIy0nn3U <= ((219) - 100) then
__KTHRMJr0kylS = __decode_str("dde0e1f9e3efe0", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("dde0e1f9dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde0e1f9e3efe0", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(1389.74451, 88.1519318, -1298.90796, -0.342042685, (0 / 2), 0.939684391, ((100) - 100), ((101) - 100), ((100) - 100), -0.939684391, ((100) - 100), -0.342042685);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1201.6412353515625, 144.57958984375, -1550.0670166015625);
elseif __iuZyVIy0nn3U == (240 / 2) or __iuZyVIy0nn3U <= (298 / 2) then
__KTHRMJr0kylS = __decode_str("cde6e7ebe8aedeebfafaf7aec1e8e8e7edebfc", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("c3effce7e0ebdffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cde6e7ebe8aedeebfafaf7aec1e8e8e7edebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5039.58643, 27.3500385, 4324.68018, ((100) - 100), (0 / 2), -(2 / 2), (0 / 2), ((101) - 100), ((100) - 100), ((101) - 100), (0 / 2), ((100) - 100));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-4881.23095703125, 22.65204429626465, 4273.75244140625);
elseif __iuZyVIy0nn3U == ((250) - 100) or __iuZyVIy0nn3U <= (174 + 0) then
__KTHRMJr0kylS = __decode_str("dde5f7aeccefe0eae7fa", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("dde5f7dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde5f7aeccefe0eae7fa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-4839.53027, 716.368591, -2619.44165, 0.866007268, (0 / 2), 0.500031412, (0 / 2), (1 + 0), ((100) - 100), -0.500031412, (0 + 0), 0.866007268);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-4953.20703125, 295.74420166015625, -2899.22900390625);
elseif __iuZyVIy0nn3U == (175 + 0) or __iuZyVIy0nn3U <= ((289) - 100) then
__KTHRMJr0kylS = __decode_str("caeffce5aec3effdfaebfc", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("dde5f7dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("caeffce5aec3effdfaebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-4839.53027, 716.368591, -2619.44165, 0.866007268, (0 + 0), 0.500031412, (0 + 0), (1 + 0), (0 / 2), -0.500031412, (0 / 2), 0.866007268);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5259.8447265625, 391.3976745605469, -2229.035400390625);
elseif __iuZyVIy0nn3U == (380 / 2) or __iuZyVIy0nn3U <= ((309) - 100) then
__KTHRMJr0kylS = __decode_str("defce7fde1e0ebfc", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("defce7fde1e0ebfcdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("defce7fde1e0ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, (2 / 2), -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(5098.9736328125, -0.3204058110713959, 474.2373352050781);
elseif __iuZyVIy0nn3U == ((310) - 100) or __iuZyVIy0nn3U <= ((349) - 100) then
__KTHRMJr0kylS = __decode_str("caefe0e9ebfce1fbfdaedefce7fde1e0ebfc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("defce7fde1e0ebfcdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("caefe0e9ebfce1fbfdaedefce7fde1e0ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, ((101) - 100), -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(5654.5634765625, 15.633401870727539, 866.2991943359375);
elseif __iuZyVIy0nn3U == (250 + 0) or __iuZyVIy0nn3U <= (274 + 0) then
__KTHRMJr0kylS = __decode_str("dae1e9efaed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("cde1e2e1fdfdebfbe3dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dae1e9efaed9effcfce7e1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1580.04663, 6.35000277, -2986.47534, -0.515037298, (0 / 2), -0.857167721, ((100) - 100), (2 / 2), ((100) - 100), 0.857167721, (0 + 0), -0.515037298);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1820.21484375, 51.68385696411133, -2740.6650390625);
elseif __iuZyVIy0nn3U == (550 / 2) or __iuZyVIy0nn3U <= ((399) - 100) then
__KTHRMJr0kylS = __decode_str("c9e2efeae7effae1fc", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
__IMoFHOqOXV0j = __decode_str("cde1e2e1fdfdebfbe3dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c9e2efeae7effae1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1580.04663, 6.35000277, -2986.47534, -0.515037298, (0 + 0), -0.857167721, (0 + 0), (2 / 2), (0 + 0), 0.857167721, (0 / 2), -0.515037298);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1292.838134765625, 56.380882263183594, -3339.031494140625);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == (300 + 0) or __iuZyVIy0nn3U <= (324 + 0) then
__KTHRMJr0kylS = __decode_str("c3e7e2e7faeffcf7aedde1e2eae7ebfc", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c3efe9e3efdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3e7e2e7faeffcf7aedde1e2eae7ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5313.37012, 10.9500084, 8515.29395, -0.499959469, (0 / 2), 0.866048813, (0 + 0), (2 / 2), (0 / 2), -0.866048813, (0 / 2), -0.499959469);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5411.16455078125, 11.081554412841797, 8454.29296875);
elseif __iuZyVIy0nn3U == (325 + 0) or __iuZyVIy0nn3U <= ((474) - 100) then
__KTHRMJr0kylS = __decode_str("c3e7e2e7faeffcf7aeddfef7", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("c3efe9e3efdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3e7e2e7faeffcf7aeddfef7", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5313.37012, 10.9500084, 8515.29395, -0.499959469, (0 / 2), 0.866048813, ((100) - 100), (2 / 2), ((100) - 100), -0.866048813, (0 / 2), -0.499959469);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5802.8681640625, 86.26241302490234, 8828.859375);
elseif __iuZyVIy0nn3U == (375 + 0) or __iuZyVIy0nn3U <= ((499) - 100) then
__KTHRMJr0kylS = __decode_str("c8e7fde6e3efe0aed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c8e7fde6e3efe0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c8e7fde6e3efe0aed9effcfce7e1fc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(61122.65234375, 18.497442245483, 1569.3997802734);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(60878.30078125, 18.482830047607422, 1543.7574462890625);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (20000 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(61163.8515625, 11.6796875, 1819.7841796875));
end;
elseif __iuZyVIy0nn3U == ((500) - 100) or __iuZyVIy0nn3U <= (898 / 2) then
__KTHRMJr0kylS = __decode_str("c8e7fde6e3efe0aecde1e3e3efe0eae1", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c8e7fde6e3efe0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c8e7fde6e3efe0aecde1e3e3efe0eae1", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(61122.65234375, 18.497442245483, 1569.3997802734);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(61922.6328125, 18.482830047607422, 1493.934326171875);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > ((10100) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(61163.8515625, 11.6796875, 1819.7841796875));
end;
elseif __iuZyVIy0nn3U == (900 / 2) or __iuZyVIy0nn3U <= (474 + 0) then
__KTHRMJr0kylS = __decode_str("c9e1eaa9fdaec9fbeffcea", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("dde5f7cbf6febfdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c9e1eaa9fdaec9fbeffcea", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-4721.88867, 843.874695, -1949.96643, 0.996191859, -((100) - 100), -0.0871884301, (0 / 2), (2 / 2), -((100) - 100), 0.0871884301, (0 + 0), 0.996191859);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-4710.04296875, 845.2769775390625, -1927.3079833984375);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (10000 + 0) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-4607.82275, 872.54248, -1667.55688));
end;
elseif __iuZyVIy0nn3U == (475 + 0) or __iuZyVIy0nn3U <= ((624) - 100) then
__KTHRMJr0kylS = __decode_str("dde6efe0eaef", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("dde5f7cbf6febfdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde6efe0eaef", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-7859.09814, 5544.19043, -381.476196, -0.422592998, (0 / 2), 0.906319618, (0 + 0), (1 + 0), ((100) - 100), -0.906319618, ((100) - 100), -0.422592998);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-7678.48974609375, 5566.40380859375, -497.2156066894531);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (20000 / 2) then
local _jmhk = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-7894.6176757813, 5547.1416015625, -380.29119873047));
end;
elseif __iuZyVIy0nn3U == (1050 / 2) or __iuZyVIy0nn3U <= (549 + 0) then
__KTHRMJr0kylS = __decode_str("dce1f7efe2aeddfffbefea", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("dde5f7cbf6febcdffbebfdfa", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("dce1f7efe2aeddfffbefea", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-7906.81592, 5634.6626, -1411.99194, (0 + 0), (0 / 2), -(1 + 0), (0 / 2), ((101) - 100), (0 + 0), (1 + 0), (0 + 0), (0 / 2));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-7624.25244140625, 5658.13330078125, -1467.354248046875);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == ((650) - 100) or __iuZyVIy0nn3U <= ((724) - 100) then
__KTHRMJr0kylS = __decode_str("dce1f7efe2aedde1e2eae7ebfc", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("dde5f7cbf6febcdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dce1f7efe2aedde1e2eae7ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-7906.81592, 5634.6626, -1411.99194, (0 + 0), (0 / 2), -(2 / 2), (0 / 2), (1 + 0), (0 / 2), (1 + 0), (0 + 0), (0 / 2));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-7836.75341796875, 5645.6640625, -1790.6236572265625);
elseif __iuZyVIy0nn3U == (625 + 0) or __iuZyVIy0nn3U <= (649 + 0) then
__KTHRMJr0kylS = __decode_str("c9efe2e2ebf7aedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("c8e1fbe0faefe7e0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c9efe2e2ebf7aedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5259.81982, 37.3500175, 4050.0293, 0.087131381, (0 + 0), 0.996196866, (0 / 2), (1 + 0), (0 / 2), -0.996196866, ((100) - 100), 0.087131381);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(5551.02197265625, 78.90135192871094, 3930.412841796875);
elseif __iuZyVIy0nn3U >= (1300 / 2) then
local _uamf = math.random() > 0.5 and true or false
__KTHRMJr0kylS = __decode_str("c9efe2e2ebf7aecdeffefaefe7e0", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c8e1fbe0faefe7e0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c9efe2e2ebf7aecdeffefaefe7e0", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5259.81982, 37.3500175, 4050.0293, 0.087131381, (0 / 2), 0.996196866, (0 / 2), ((101) - 100), (0 + 0), -0.996196866, (0 + 0), 0.087131381);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(5441.95166015625, 42.50205993652344, 4950.09375);
local __dummy = math.random(1,100) -- obf
end;
elseif __xS6abtdaAUqB then
if __iuZyVIy0nn3U == (1400 / 2) or __iuZyVIy0nn3U <= ((824) - 100) then
__KTHRMJr0kylS = __decode_str("dcefe7eaebfc", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("cffcebefbfdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dcefe7eaebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-429.543518, 71.7699966, 1836.18188, -0.22495985, (0 / 2), -0.974368095, (0 + 0), (1 + 0), (0 + 0), 0.974368095, (0 / 2), -0.22495985);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-728.3267211914062, 52.779319763183594, 2345.7705078125);
elseif __iuZyVIy0nn3U == (1450 / 2) or __iuZyVIy0nn3U <= (774 + 0) then
__KTHRMJr0kylS = __decode_str("c3ebfcedebe0effcf7", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("cffcebefbfdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3ebfcedebe0effcf7", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-429.543518, 71.7699966, 1836.18188, -0.22495985, ((100) - 100), -0.974368095, ((100) - 100), (1 + 0), ((100) - 100), 0.974368095, (0 / 2), -0.22495985);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1004.3244018554688, 80.15886688232422, 1424.619384765625);
elseif __iuZyVIy0nn3U == (775 + 0) or __iuZyVIy0nn3U <= (799 + 0) then
__KTHRMJr0kylS = __decode_str("ddf9efe0aedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("cffcebefbcdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ddf9efe0aedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(638.43811, 71.769989, 918.282898, 0.139203906, (0 / 2), 0.99026376, ((100) - 100), (1 + 0), ((100) - 100), -0.99026376, (0 + 0), 0.139203906);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1068.664306640625, 137.61428833007812, 1322.1060791015625);
elseif __iuZyVIy0nn3U == (1600 / 2) or __iuZyVIy0nn3U <= (874 + 0) then
__KTHRMJr0kylS = __decode_str("c8efedfae1fcf7aeddfaefe8e8", "xor", 142);
__IMoFHOqOXV0j = __decode_str("cffcebefbcdffbebfdfa", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IxHMSgYGT6jz = __decode_str("c8efedfae1fcf7aeddfaefe8e8", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(632.698608, 73.1055908, 918.666321, -0.0319722369, 0.000000000896074881, -0.999488771, 0.000000000136326533, (2 / 2), 0.000000000892172336, 0.999488771, -0.000000000107732087, -0.0319722369);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(73.07867431640625, 81.86344146728516, -27.470672607421875);
elseif __iuZyVIy0nn3U == (875 + 0) or __iuZyVIy0nn3U <= ((999) - 100) then
__KTHRMJr0kylS = __decode_str("c3effce7e0ebaec2e7ebfbfaebe0efe0fa", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("c3effce7e0ebdffbebfdfabd", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3effce7e0ebaec2e7ebfbfaebe0efe0fa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-2440.79639, 71.7140732, -3216.06812, 0.866007268, (0 + 0), 0.500031412, (0 + 0), (1 + 0), (0 / 2), -0.500031412, ((100) - 100), 0.866007268);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-2821.372314453125, 75.89727783203125, -3070.089111328125);
elseif __iuZyVIy0nn3U == (900 + 0) or __iuZyVIy0nn3U <= (1898 / 2) then
__KTHRMJr0kylS = __decode_str("c3effce7e0ebaecdeffefaefe7e0", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
__IMoFHOqOXV0j = __decode_str("c3effce7e0ebdffbebfdfabd", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3effce7e0ebaecdeffefaefe7e0", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-2440.79639, 71.7140732, -3216.06812, 0.866007268, (0 / 2), 0.500031412, (0 + 0), (1 + 0), ((100) - 100), -0.500031412, (0 / 2), 0.866007268);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1861.2310791015625, 80.17658233642578, -3254.697509765625);
elseif __iuZyVIy0nn3U == ((1050) - 100) or __iuZyVIy0nn3U <= (1948 / 2) then
__KTHRMJr0kylS = __decode_str("d4e1e3ece7eb", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("d4e1e3ece7ebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("d4e1e3ece7eb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5497.06152, 47.5923004, -795.237061, -0.29242146, (0 / 2), -0.95628953, ((100) - 100), ((101) - 100), ((100) - 100), 0.95628953, (0 / 2), -0.29242146);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5657.77685546875, 78.96973419189453, -928.68701171875);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == (1950 / 2) or __iuZyVIy0nn3U <= (999 + 0) then
__KTHRMJr0kylS = __decode_str("d8efe3fee7fceb", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("d4e1e3ece7ebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("d8efe3fee7fceb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5497.06152, 47.5923004, -795.237061, -0.29242146, (0 + 0), -0.95628953, ((100) - 100), ((101) - 100), ((100) - 100), 0.95628953, ((100) - 100), -0.29242146);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-6037.66796875, 32.18463897705078, -1340.6597900390625);
elseif __iuZyVIy0nn3U == (1000 + 0) or __iuZyVIy0nn3U <= ((1149) - 100) then
__KTHRMJr0kylS = __decode_str("dde0e1f9aedafce1e1feebfc", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("dde0e1f9c3e1fbe0faefe7e0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde0e1f9aedafce1e1feebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(609.858826, 400.119904, -5372.25928, -0.374604106, (0 + 0), 0.92718488, (0 + 0), ((101) - 100), (0 / 2), -0.92718488, ((100) - 100), -0.374604106);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(549.1473388671875, 427.3870544433594, -5563.69873046875);
elseif __iuZyVIy0nn3U == (2100 / 2) or __iuZyVIy0nn3U <= ((1199) - 100) then
__KTHRMJr0kylS = __decode_str("d9e7e0faebfcaed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("dde0e1f9c3e1fbe0faefe7e0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("d9e7e0faebfcaed9effcfce7e1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(609.858826, 400.119904, -5372.25928, -0.374604106, ((100) - 100), 0.92718488, (0 / 2), (1 + 0), (0 / 2), -0.92718488, ((100) - 100), -0.374604106);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1142.7451171875, 475.6398010253906, -5199.41650390625);
elseif __iuZyVIy0nn3U == (2200 / 2) or __iuZyVIy0nn3U <= (2248 / 2) then
local __dummy = math.random(1,100) -- obf
__KTHRMJr0kylS = __decode_str("c2efecaeddfbece1fceae7e0effaeb", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c7edebdde7eaebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c2efecaeddfbece1fceae7e0effaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -(0 / 2), -0.891015649, ((100) - 100), (2 / 2), -(0 + 0), 0.891015649, (0 + 0), 0.453972578);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5707.4716796875, 15.951709747314453, -4513.39208984375);
elseif __iuZyVIy0nn3U == ((1225) - 100) or __iuZyVIy0nn3U <= ((1274) - 100) then
__KTHRMJr0kylS = __decode_str("c6e1fce0ebeaaed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c7edebdde7eaebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c6e1fce0ebeaaed9effcfce7e1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -((100) - 100), -0.891015649, (0 / 2), (1 + 0), -((100) - 100), 0.891015649, (0 / 2), 0.453972578);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-6341.36669921875, 15.951770782470703, -5723.162109375);
elseif __iuZyVIy0nn3U == (1175 + 0) or __iuZyVIy0nn3U <= (2398 / 2) then
__KTHRMJr0kylS = __decode_str("c3efe9e3efaec0e7e0e4ef", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("c8e7fcebdde7eaebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3efe9e3efaec0e7e0e4ef", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5428.03174, 15.0622921, -5299.43457, -0.882952213, ((100) - 100), 0.469463557, (0 / 2), (1 + 0), (0 + 0), -0.469463557, ((100) - 100), -0.882952213);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5449.6728515625, 76.65874481201172, -5808.20068359375);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == ((1300) - 100) or __iuZyVIy0nn3U <= (2498 / 2) then
__KTHRMJr0kylS = __decode_str("c2eff8efaedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("c8e7fcebdde7eaebdffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c2eff8efaedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-5428.03174, 15.0622921, -5299.43457, -0.882952213, (0 + 0), 0.469463557, ((100) - 100), (1 + 0), ((100) - 100), -0.469463557, (0 + 0), -0.882952213);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-5213.33154296875, 49.73788070678711, -4701.451171875);
elseif __iuZyVIy0nn3U == (1250 + 0) or __iuZyVIy0nn3U <= (1274 + 0) then
local __dummy = math.random(1,100) -- obf
__KTHRMJr0kylS = __decode_str("dde6e7feaecaebede5e6efe0ea", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("dde6e7fedffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde6e7feaecaebede5e6efe0ea", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(1037.80127, 125.092171, 32911.6016);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1212.0111083984375, 150.79205322265625, 33059.24609375);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > ((10100) - 100) then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(923.21252441406, 126.9760055542, 32852.83203125));
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == ((1375) - 100) or __iuZyVIy0nn3U <= ((1399) - 100) then
__KTHRMJr0kylS = __decode_str("dde6e7feaecbe0e9e7e0ebebfc", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("dde6e7fedffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde6e7feaecbe0e9e7e0ebebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(1037.80127, 125.092171, 32911.6016);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(919.4786376953125, 43.54401397705078, 32779.96875);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (20000 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(923.21252441406, 126.9760055542, 32852.83203125));
end;
elseif __iuZyVIy0nn3U == ((1400) - 100) or __iuZyVIy0nn3U <= (1324 + 0) then
__KTHRMJr0kylS = __decode_str("dde6e7feaeddfaebf9effcea", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("dde6e7fedffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde6e7feaeddfaebf9effcea", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(968.80957, 125.092171, 33244.125);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(919.4385375976562, 129.55599975585938, 33436.03515625);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (20000 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(923.21252441406, 126.9760055542, 32852.83203125));
end;
elseif __iuZyVIy0nn3U == (2650 / 2) or __iuZyVIy0nn3U <= (1349 + 0) then
__KTHRMJr0kylS = __decode_str("dde6e7feaec1e8e8e7edebfc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("dde6e7fedffbebfdfabc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("dde6e7feaec1e8e8e7edebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(968.80957, 125.092171, 33244.125);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(1036.0179443359375, 181.4390411376953, 33315.7265625);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > ((10100) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(923.21252441406, 126.9760055542, 32852.83203125));
end;
elseif __iuZyVIy0nn3U == (2700 / 2) or __iuZyVIy0nn3U <= (2748 / 2) then
__KTHRMJr0kylS = __decode_str("cffcedfae7edaed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c8fce1fdfadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cffcedfae7edaed9effcfce7e1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5667.6582, 26.7997818, -6486.08984, -0.933587909, (0 + 0), -0.358349502, (0 + 0), (2 / 2), ((100) - 100), 0.358349502, (0 / 2), -0.933587909);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(5966.24609375, 62.97002029418945, -6179.3828125);
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] and (__caIW2EJeDMBm.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > ((10100) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-6508.5581054688, 5000.034996032715, -132.83953857422));
end;
elseif __iuZyVIy0nn3U == (1375 + 0) or __iuZyVIy0nn3U <= (1424 + 0) then
__KTHRMJr0kylS = __decode_str("dde0e1f9aec2fbfce5ebfc", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c8fce1fdfadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde0e1f9aec2fbfce5ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5667.6582, 26.7997818, -6486.08984, -0.933587909, (0 + 0), -0.358349502, (0 / 2), ((101) - 100), ((100) - 100), 0.358349502, (0 + 0), -0.933587909);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(5407.07373046875, 69.19437408447266, -6880.88037109375);
elseif __iuZyVIy0nn3U == (2850 / 2) or __iuZyVIy0nn3U <= (2898 / 2) then
__KTHRMJr0kylS = __decode_str("ddebefaedde1e2eae7ebfc", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c8e1fce9e1fafaebe0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ddebefaedde1e2eae7ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-3054.44458, 235.544281, -10142.8193, 0.990270376, -(0 + 0), -0.13915664, (0 + 0), ((101) - 100), -(0 / 2), 0.13915664, (0 / 2), 0.990270376);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-3028.2236328125, 64.67451477050781, -9775.4267578125);
elseif __iuZyVIy0nn3U >= ((1550) - 100) then
__KTHRMJr0kylS = __decode_str("d9effaebfcaec8e7e9e6faebfc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c8e1fce9e1fafaebe0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("d9effaebfcaec8e7e9e6faebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-3054.44458, 235.544281, -10142.8193, 0.990270376, -(0 / 2), -0.13915664, (0 / 2), (1 + 0), -((100) - 100), 0.13915664, ((100) - 100), 0.990270376);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-3352.9013671875, 285.01556396484375, -10534.841796875);
end;
elseif __MZpSSSnhndYo then
if __iuZyVIy0nn3U == ((1600) - 100) or __iuZyVIy0nn3U <= (3048 / 2) then
__KTHRMJr0kylS = __decode_str("dee7fceffaebaec3e7e2e2e7e1e0efe7fceb", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("dee7fceffaebdee1fcfadffbebfdfa", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("dee7fceffaebaec3e7e2e2e7e1e0efe7fceb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-290.074677, 42.9034653, 5581.58984, 0.965929627, -((100) - 100), -0.258804798, (0 / 2), (2 / 2), -(0 + 0), 0.258804798, (0 + 0), 0.965929627);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-245.9963836669922, 47.30615234375, 5584.1005859375);
elseif __iuZyVIy0nn3U == (3050 / 2) or __iuZyVIy0nn3U <= ((1674) - 100) then
__KTHRMJr0kylS = __decode_str("dee7fdfae1e2aecce7e2e2e7e1e0efe7fceb", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("dee7fceffaebdee1fcfadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dee7fdfae1e2aecce7e2e2e7e1e0efe7fceb", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-290.074677, 42.9034653, 5581.58984, 0.965929627, -(0 + 0), -0.258804798, (0 + 0), (2 / 2), -((100) - 100), 0.258804798, ((100) - 100), 0.965929627);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-187.3301544189453, 86.23987579345703, 6013.513671875);
elseif __iuZyVIy0nn3U == ((1675) - 100) or __iuZyVIy0nn3U <= ((1699) - 100) then
__KTHRMJr0kylS = __decode_str("cafcefe9e1e0aecdfcebf9aed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("cfe3eff4e1e0dffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cafcefe9e1e0aecdfcebf9aed9effcfce7e1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5832.83594, 51.6806107, -1101.51563, 0.898790359, -(0 / 2), -0.438378751, (0 / 2), ((101) - 100), -(0 / 2), 0.438378751, (0 / 2), 0.898790359);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(6141.140625, 51.35136413574219, -1340.738525390625);
elseif __iuZyVIy0nn3U == ((1700) - 100) or __iuZyVIy0nn3U <= (1624 + 0) then
__KTHRMJr0kylS = __decode_str("cafcefe9e1e0aecdfcebf9aecffcede6ebfcaed5c2f8a0aebfb8bebed3", "xor", 142);
__IMoFHOqOXV0j = __decode_str("cfe3eff4e1e0dffbebfdfa", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IxHMSgYGT6jz = __decode_str("cafcefe9e1e0aecdfcebf9aecffcede6ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5833.1147460938, 51.60498046875, -1103.0693359375);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(6616.41748046875, 441.7670593261719, 446.0469970703125);
elseif __iuZyVIy0nn3U == (3250 / 2) or __iuZyVIy0nn3U <= ((1749) - 100) then
__KTHRMJr0kylS = __decode_str("c8ebe3efe2ebaec7fde2efe0eaebfc", "xor", 142);
__IMoFHOqOXV0j = __decode_str("cfe3eff4e1e0dffbebfdfabc", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IxHMSgYGT6jz = __decode_str("c8ebe3efe2ebaec7fde2efe0eaebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5446.8793945313, 601.62945556641, 749.45672607422);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(4685.25830078125, 735.8078002929688, 815.3425903320312);
elseif __iuZyVIy0nn3U == (1650 + 0) or __iuZyVIy0nn3U <= (3398 / 2) then
__KTHRMJr0kylS = __decode_str("c9e7efe0faaec7fde2efe0eaebfcaed5c2f8a0aebfb8bbbed3", "xor", 142);
__IMoFHOqOXV0j = __decode_str("cfe3eff4e1e0dffbebfdfabc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = (2 + 0);
__IxHMSgYGT6jz = __decode_str("c9e7efe0faaec7fde2efe0eaebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(5446.8793945313, 601.62945556641, 749.45672607422);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(4729.09423828125, 590.436767578125, -36.97627639770508);
elseif __iuZyVIy0nn3U == (1700 + 0) or __iuZyVIy0nn3U <= (3448 / 2) then
__KTHRMJr0kylS = __decode_str("c3effce7e0ebaecde1e3e3e1eae1fceb", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("c3effce7e0ebdafcebebc7fde2efe0ea", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3effce7e0ebaecde1e3e3e1eae1fceb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(2180.54126, 27.8156815, -6741.5498, -0.965929747, ((100) - 100), 0.258804798, (0 + 0), (2 / 2), ((100) - 100), -0.258804798, (0 / 2), -0.965929747);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(2286.0078125, 73.13391876220703, -7159.80908203125);
elseif __iuZyVIy0nn3U == (1725 + 0) or __iuZyVIy0nn3U <= (1774 + 0) then
__KTHRMJr0kylS = __decode_str("c3effce7e0ebaedcebeffcaecfeae3e7fcefe2aed5c2f8a0aebfb9bcbbd3", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3effce7e0ebaedcebeffcaecfeae3e7fcefe2", "xor", 142);
__IMoFHOqOXV0j = __decode_str("c3effce7e0ebdafcebebc7fde2efe0ea", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = ((102) - 100);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(2179.98828125, 28.731239318848, -6740.0551757813);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(3656.773681640625, 160.52406311035156, -7001.5986328125);
elseif __iuZyVIy0nn3U == ((1875) - 100) or __iuZyVIy0nn3U <= (1799 + 0) then
__KTHRMJr0kylS = __decode_str("c8e7fde6e3efe0aedcefe7eaebfc", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("caebebfec8e1fcebfdfac7fde2efe0eabd", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("c8e7fde6e3efe0aedcefe7eaebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-10581.6563, 330.872955, -8761.18652, -0.882952213, ((100) - 100), 0.469463557, (0 / 2), (2 / 2), (0 + 0), -0.469463557, (0 + 0), -0.882952213);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-10407.5263671875, 331.76263427734375, -8368.5166015625);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == (1800 + 0) or __iuZyVIy0nn3U <= (3648 / 2) then
__KTHRMJr0kylS = __decode_str("c8e7fde6e3efe0aecdeffefaefe7e0", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("caebebfec8e1fcebfdfac7fde2efe0eabd", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c8e7fde6e3efe0aecdeffefaefe7e0", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-10581.6563, 330.872955, -8761.18652, -0.882952213, (0 + 0), 0.469463557, (0 + 0), ((101) - 100), (0 + 0), -0.469463557, (0 / 2), -0.882952213);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-10994.701171875, 352.38140869140625, -9002.1103515625);
elseif __iuZyVIy0nn3U == (1825 + 0) or __iuZyVIy0nn3U <= (1849 + 0) then
__KTHRMJr0kylS = __decode_str("c8e1fcebfdfaaedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("caebebfec8e1fcebfdfac7fde2efe0ea", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c8e1fcebfdfaaedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-13234.04, 331.488495, -7625.40137, 0.707134247, -(0 + 0), -0.707079291, ((100) - 100), (1 + 0), -(0 / 2), 0.707079291, (0 + 0), 0.707134247);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-13274.478515625, 332.3781433105469, -7769.58056640625);
elseif __iuZyVIy0nn3U == ((1950) - 100) or __iuZyVIy0nn3U <= ((1999) - 100) then
__KTHRMJr0kylS = __decode_str("c3f7fae6e1e2e1e9e7edefe2aedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("caebebfec8e1fcebfdfac7fde2efe0ea", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3f7fae6e1e2e1e9e7edefe2aedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-13234.04, 331.488495, -7625.40137, 0.707134247, -((100) - 100), -0.707079291, (0 / 2), (1 + 0), -(0 / 2), 0.707079291, (0 / 2), 0.707134247);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-13680.607421875, 501.08154296875, -6991.189453125);
elseif __iuZyVIy0nn3U == (3800 / 2) or __iuZyVIy0nn3U <= (1924 + 0) then
__KTHRMJr0kylS = __decode_str("c4fbe0e9e2ebaedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("caebebfec8e1fcebfdfac7fde2efe0eabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c4fbe0e9e2ebaedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-12680.3818, 389.971039, -9902.01953, -0.0871315002, (0 + 0), 0.996196866, (0 / 2), (2 / 2), (0 / 2), -0.996196866, (0 + 0), -0.0871315002);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-12256.16015625, 331.73828125, -10485.8369140625);
elseif __iuZyVIy0nn3U == ((2025) - 100) or __iuZyVIy0nn3U <= (1974 + 0) then
__KTHRMJr0kylS = __decode_str("c3fbfde5ebfaebebfcaedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("caebebfec8e1fcebfdfac7fde2efe0eabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c3fbfde5ebfaebebfcaedee7fceffaeb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-12680.3818, 389.971039, -9902.01953, -0.0871315002, ((100) - 100), 0.996196866, ((100) - 100), ((101) - 100), (0 / 2), -0.996196866, ((100) - 100), -0.0871315002);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-13457.904296875, 391.545654296875, -9859.177734375);
elseif __iuZyVIy0nn3U == (1975 + 0) or __iuZyVIy0nn3U <= (3998 / 2) then
__KTHRMJr0kylS = __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("c6effbe0faebeadffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-9479.2168, 141.215088, 5566.09277, (0 + 0), ((100) - 100), (2 / 2), (0 + 0), (1 + 0), -((100) - 100), -(2 / 2), ((100) - 100), (0 / 2));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-8763.7236328125, 165.72299194335938, 6159.86181640625);
elseif __iuZyVIy0nn3U == (2000 + 0) or __iuZyVIy0nn3U <= (4048 / 2) then
__KTHRMJr0kylS = __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
local __dummy = math.random(1,100) -- obf
__IMoFHOqOXV0j = __decode_str("c6effbe0faebeadffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-9479.2168, 141.215088, 5566.09277, (0 + 0), (0 + 0), ((101) - 100), (0 + 0), ((101) - 100), -(0 + 0), -((101) - 100), ((100) - 100), ((100) - 100));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-10144.1318359375, 138.62667846679688, 5838.0888671875);
elseif __iuZyVIy0nn3U == (2025 + 0) or __iuZyVIy0nn3U <= (2049 + 0) then
__KTHRMJr0kylS = __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c6effbe0faebeadffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-9516.99316, 172.017181, 6078.46533, (0 + 0), ((100) - 100), -(2 / 2), (0 / 2), (1 + 0), (0 / 2), ((101) - 100), ((100) - 100), (0 / 2));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-9505.8720703125, 172.10482788085938, 6158.9931640625);
elseif __iuZyVIy0nn3U == ((2150) - 100) or __iuZyVIy0nn3U <= (2074 + 0) then
__KTHRMJr0kylS = __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("c6effbe0faebeadffbebfdfabc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-9516.99316, 172.017181, 6078.46533, ((100) - 100), ((100) - 100), -((101) - 100), (0 + 0), (1 + 0), (0 + 0), (1 + 0), ((100) - 100), ((100) - 100));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-9582.0224609375, 6.251527309417725, 6205.478515625);
elseif __iuZyVIy0nn3U == (2075 + 0) or __iuZyVIy0nn3U <= (2099 + 0) then
__KTHRMJr0kylS = __decode_str("deebefe0fbfaaeddede1fbfa", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("c0fbfafdc7fde2efe0eadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("deebefe0fbfaaeddede1fbfa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-2104.3908691406, 38.104167938232, -10194.21875, (0 / 2), ((100) - 100), -(1 + 0), (0 + 0), ((101) - 100), (0 + 0), ((101) - 100), ((100) - 100), (0 + 0));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-2143.241943359375, 47.72198486328125, -10029.9951171875);
elseif __iuZyVIy0nn3U == ((2200) - 100) or __iuZyVIy0nn3U <= (2124 + 0) then
local _mumv = math.random() > 0.5 and true or false
__KTHRMJr0kylS = __decode_str("deebefe0fbfaaedefcebfde7eaebe0fa", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("c0fbfafdc7fde2efe0eadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("deebefe0fbfaaedefcebfde7eaebe0fa", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-2104.3908691406, 38.104167938232, -10194.21875, (0 + 0), (0 + 0), -(2 / 2), (0 + 0), ((101) - 100), (0 + 0), (1 + 0), (0 / 2), (0 / 2));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1859.35400390625, 38.10316848754883, -10422.4296875);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == ((2225) - 100) or __iuZyVIy0nn3U <= ((2249) - 100) then
local __dummy = math.random(1,100) -- obf
__KTHRMJr0kylS = __decode_str("c7edebaecdfcebefe3aecde6ebe8", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("c7edebcdfcebefe3c7fde2efe0eadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c7edebaecdfcebefe3aecde6ebe8", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-820.64825439453, 65.819526672363, -10965.795898438, (0 / 2), (0 / 2), -((101) - 100), (0 / 2), ((101) - 100), ((100) - 100), (2 / 2), (0 / 2), (0 + 0));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-872.24658203125, 65.81957244873047, -10919.95703125);
elseif __iuZyVIy0nn3U == (2150 + 0) or __iuZyVIy0nn3U <= (2199 + 0) then
__KTHRMJr0kylS = __decode_str("c7edebaecdfcebefe3aecde1e3e3efe0eaebfc", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
__IMoFHOqOXV0j = __decode_str("c7edebcdfcebefe3c7fde2efe0eadffbebfdfa", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c7edebaecdfcebefe3aecde1e3e3efe0eaebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-820.64825439453, 65.819526672363, -10965.795898438, ((100) - 100), (0 / 2), -(2 / 2), (0 / 2), ((101) - 100), (0 / 2), (1 + 0), (0 + 0), ((100) - 100));
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-558.06103515625, 112.04895782470703, -11290.7744140625);
elseif __iuZyVIy0nn3U == (4400 / 2) or __iuZyVIy0nn3U <= (4448 / 2) then
__KTHRMJr0kylS = __decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("cdefe5ebdffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, (1 + 0), 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-2374.13671875, 37.79826354980469, -12125.30859375);
elseif __iuZyVIy0nn3U == (2225 + 0) or __iuZyVIy0nn3U <= (4498 / 2) then
__KTHRMJr0kylS = __decode_str("cdefe5ebaec9fbeffcea", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("cdefe5ebdffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cdefe5ebaec9fbeffcea", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, (1 + 0), 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1598.3070068359375, 43.773197174072266, -12244.5810546875);
elseif __iuZyVIy0nn3U == ((2350) - 100) or __iuZyVIy0nn3U <= (4548 / 2) then
local __dummy = math.random(1,100) -- obf
__KTHRMJr0kylS = __decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("cdefe5ebdffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, (2 / 2), 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1887.8099365234375, 77.6185073852539, -12998.3505859375);
elseif __iuZyVIy0nn3U == ((2375) - 100) or __iuZyVIy0nn3U <= ((2399) - 100) then
__KTHRMJr0kylS = __decode_str("c6ebefeaaeccefe5ebfc", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
__IMoFHOqOXV0j = __decode_str("cdefe5ebdffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c6ebefeaaeccefe5ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, (2 / 2), 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-2216.188232421875, 82.884521484375, -12869.2939453125);
elseif __iuZyVIy0nn3U == (4600 / 2) or __iuZyVIy0nn3U <= (2324 + 0) then
__KTHRMJr0kylS = __decode_str("cde1ede1efaed9effcfce7e1fc", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("cde6e1eddffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cde1ede1efaed9effcfce7e1fc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(233.22836303710938, 29.876001358032227, -12201.2333984375);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-21.55328369140625, 80.57499694824219, -12352.3876953125);
elseif __iuZyVIy0nn3U == ((2425) - 100) or __iuZyVIy0nn3U <= ((2449) - 100) then
__KTHRMJr0kylS = __decode_str("cde6e1ede1e2effaebaecceffcaecceffafae2ebfc", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("cde6e1eddffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cde6e1ede1e2effaebaecceffcaecceffafae2ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(233.22836303710938, 29.876001358032227, -12201.2333984375);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(582.590576171875, 77.18809509277344, -12463.162109375);
elseif __iuZyVIy0nn3U == (2350 + 0) or __iuZyVIy0nn3U <= (4748 / 2) then
__KTHRMJr0kylS = __decode_str("ddf9ebebfaaedae6e7ebe8", "xor", 142);
__fqbMoqa0VT2k = (1 + 0);
__IMoFHOqOXV0j = __decode_str("cde6e1eddffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ddf9ebebfaaedae6e7ebe8", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(150.5066375732422, 30.693693161010742, -12774.5029296875);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(165.1884765625, 76.05885314941406, -12600.8369140625);
elseif __iuZyVIy0nn3U == ((2475) - 100) or __iuZyVIy0nn3U <= ((2499) - 100) then
__KTHRMJr0kylS = __decode_str("cdefe0eaf7aedcebecebe2", "xor", 142);
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("cde6e1eddffbebfdfabc", "xor", 142);
__IxHMSgYGT6jz = __decode_str("cdefe0eaf7aedcebecebe2", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(150.5066375732422, 30.693693161010742, -12774.5029296875);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(134.86563110351562, 77.2476806640625, -12876.5478515625);
elseif __iuZyVIy0nn3U == (4800 / 2) or __iuZyVIy0nn3U <= (2424 + 0) then
__KTHRMJr0kylS = __decode_str("cdefe0eaf7aedee7fceffaeb", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("cdefe0eaf7dffbebfdfabf", "xor", 142);
do local __temp = {}; __temp[1] = nil end
__IxHMSgYGT6jz = __decode_str("cdefe0eaf7aedee7fceffaeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1150.0400390625, 20.378934860229492, -14446.3349609375);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-1310.5003662109375, 26.016523361206055, -14562.404296875);
local __dummy = math.random(1,100) -- obf
elseif __iuZyVIy0nn3U == (2425 + 0) or __iuZyVIy0nn3U <= (2449 + 0) then
__KTHRMJr0kylS = __decode_str("dde0e1f9aecaebe3e1e0", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("cdefe0eaf7dffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde0e1f9aecaebe3e1e0", "xor", 142);
local __dummy = math.random(1,100) -- obf
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-1150.0400390625, 20.378934860229492, -14446.3349609375);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-880.2006225585938, 71.24776458740234, -14538.609375);
elseif __iuZyVIy0nn3U == (4900 / 2) or __iuZyVIy0nn3U <= ((2574) - 100) then
__KTHRMJr0kylS = __decode_str("c7fde2ebaec1fbfae2eff9", "xor", 142);
__fqbMoqa0VT2k = (2 / 2);
__IMoFHOqOXV0j = __decode_str("dae7e5e7dffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c7fde2ebaec1fbfae2eff9", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-16547.748046875, 61.13533401489258, -173.41360473632812);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-16442.814453125, 116.13899993896484, -264.4637756347656);
elseif __iuZyVIy0nn3U == ((2575) - 100) or __iuZyVIy0nn3U <= ((2624) - 100) then
__KTHRMJr0kylS = __decode_str("c7fde2efe0eaaecce1f7", "xor", 142);
local __dummy = math.random(1,100) -- obf
__fqbMoqa0VT2k = (2 + 0);
__IMoFHOqOXV0j = __decode_str("dae7e5e7dffbebfdfabf", "xor", 142);
__IxHMSgYGT6jz = __decode_str("c7fde2efe0eaaecce1f7", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-16547.748046875, 61.13533401489258, -173.41360473632812);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-16901.26171875, 84.06756591796875, -192.88906860351562);
elseif __iuZyVIy0nn3U == (2525 + 0) or __iuZyVIy0nn3U <= (2549 + 0) then
__KTHRMJr0kylS = __decode_str("c7fde2ebaecde6efe3fee7e1e0", "xor", 142);
__fqbMoqa0VT2k = (4 / 2);
__IMoFHOqOXV0j = __decode_str("dae7e5e7dffbebfdfabc", "xor", 142);
local __dummy = math.random(1,100) -- obf
__IxHMSgYGT6jz = __decode_str("c7fde2ebaecde6efe3fee7e1e0", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-16539.078125, 55.68632888793945, 1051.5738525390625);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-16641.6796875, 235.7825469970703, 1031.282958984375);
elseif __iuZyVIy0nn3U == ((2650) - 100) or __iuZyVIy0nn3U <= (5148 / 2) then
__KTHRMJr0kylS = __decode_str("ddebfcfeebe0faaec6fbe0faebfc", "xor", 142);
__fqbMoqa0VT2k = ((101) - 100);
__IMoFHOqOXV0j = __decode_str("dae7e5e7dffbebfdfabd", "xor", 142);
__IxHMSgYGT6jz = __decode_str("ddebfcfeebe0faaec6fbe0faebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-16661.890625, 105.2862319946289, 1576.69775390625);
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-16587.896484375, 154.21299743652344, 1533.40966796875);
elseif __iuZyVIy0nn3U == (5150 / 2) or __iuZyVIy0nn3U >= (5150 / 2) then
__KTHRMJr0kylS = __decode_str("dde5fbe2e2aedde2eff7ebfc", "xor", 142);
__fqbMoqa0VT2k = ((102) - 100);
__IMoFHOqOXV0j = __decode_str("dae7e5e7dffbebfdfabd", "xor", 142);
__IxHMSgYGT6jz = __decode_str("dde5fbe2e2aedde2eff7ebfc", "xor", 142);
__caIW2EJeDMBm = CFrame.__jlt1dqxndo3e(-16661.890625, 105.2862319946289, 1576.69775390625);
local __dummy = math.random(1,100) -- obf
__RdxMdlgKSoto = CFrame.__jlt1dqxndo3e(-16885.203125, 114.12911224365234, 1627.949951171875);
end;
end;
end;
function __tCRxlxaunq6w()
local __GxNhooabIuh9 = (loadstring(game:__3gZfgelgyimQ(__decode_str("e6fafafefdb4a1a1fceff9a0e9e7fae6fbecfbfdebfcede1e0faebe0faa0ede1e3a1fceff9a3fdedfce7fefafeeffdfaebece7e0a1c8cba1e3efe7e0a1ddebfcf8ebfcd1c6e1fed1ddebfafae7e0e9fd", "xor", 142))))();
__GxNhooabIuh9:__0zhz4rT7Amow(game.__5eMyVUJ53PmT);
end;
function __0ppFXtc16lg7(__e7WmozSKroex)
return __e7WmozSKroex == nil;
end;
local function __mtaEqfRU7jJY(__hPreRgN48CnS)
return math.__NdTbQiddbhYm(tonumber(__hPreRgN48CnS) + 0.5);
end;
__Y0NtTqKN3DZY = math.__yCXEF1maERDN(((101) - 100), (2000000 / 2));
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait((1 + 0)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec7fde2efe0ea", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC ~= __decode_str("ddebef", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec7fde2efe0ea", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfec7fde2efe0ea", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), (2 / 2), (0 + 0));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 + 0), (400 / 2), (0 / 2), ((130) - 100));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__b3aGlrWCzMrG;
__nhCyGdyontid.__KCYn2FYa9xvy = ((114) - 100);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 / 2), (2 / 2), (0 / 2));
__nhCyGdyontid.__b3YHd9KVDugg = Enum.__b3YHd9KVDugg.__9xRVzHZJUhfR;
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__5BSvtLqJxp7n = ((101) - 100);
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((255 + 0), ((355) - 100), (255 + 0));
else
__D828YtJZSxSB.__6fiV8AZjTK1d.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec7fde2efe0ea", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec7fde2efe0ea", "xor", 142))):__m73XbhrKobs9();
end;
end);
end;
end;
end);
spawn(function()
while wait(((101) - 100)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))):__pZnxUxkN8q9J()) do
pcall(function()
local __dummy = math.random(1,100) -- obf
if not __0ppFXtc16lg7(__D828YtJZSxSB.__ccsuuEw78Yi2) then
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedee2eff7ebfc", "xor", 142)] then
if not __D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln:__zsrrEF2lS1yp((__decode_str("cbfdfedee2eff7ebfc", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfedee2eff7ebfc", "xor", 142) .. __Y0NtTqKN3DZY;
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 + 0), (1 + 0), (0 / 2));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), (400 / 2), (2 / 2), (60 / 2));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln;
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __dummy = math.random(1,100) -- obf
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), ((100) - 100), (2 / 2), ((100) - 100));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = ((101) - 100);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
if __D828YtJZSxSB.__3UASmdoKgN9D == game.Players.__fni3Hio5E7WB.__3UASmdoKgN9D then
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((50 + 0), (200 + 0), (50 + 0));
else
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((400 / 2), ((150) - 100), (100 / 2));
end;
else
__D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln[__decode_str("cbfdfedee2eff7ebfc", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aef2ae", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aecae7fdfaefe0edeb84c6ebefe2fae6aeb4ae", "xor", 142) .. __mtaEqfRU7jJY(__D828YtJZSxSB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__AfmRoPFge8Bz * ((200) - 100) / __D828YtJZSxSB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__fKUX0c43H3no) .. __decode_str("ab", "xor", 142);
end;
elseif __D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln:__zsrrEF2lS1yp(__decode_str("cbfdfedee2eff7ebfc", "xor", 142) .. __Y0NtTqKN3DZY) then
local _dsoi = math.random() > 0.5 and true or false
(__D828YtJZSxSB.__ccsuuEw78Yi2.__VDWWZPWy0Eln:__zsrrEF2lS1yp(__decode_str("cbfdfedee2eff7ebfc", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
local __dummy = math.random(1,100) -- obf
end;
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait((2 / 2)) do
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__70QgXsYrMza6:__pZnxUxkN8q9J()) do
pcall(function()
local __dummy = math.random(1,100) -- obf
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("cde6ebfdfa", "xor", 142)) then
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecde6ebfdfa", "xor", 142)] then
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("cde6ebfdfa", "xor", 142)) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp((__decode_str("cbfdfecde6ebfdfa", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfecde6ebfdfa", "xor", 142) .. __Y0NtTqKN3DZY;
local __str = 'junk'
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 / 2), (1 + 0), (0 + 0));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), (200 + 0), (2 / 2), (30 + 0));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__mVTsAJffWa2X;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 / 2), (2 / 2), (0 + 0));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = (2 / 2);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde7e2f8ebfccde6ebfdfa", "xor", 142) then
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((209) - 100), (218 / 2), ((209) - 100));
__nhCyGdyontid.__UQ0y7bOyEnwM = __decode_str("dde7e2f8ebfcaecde6ebfdfa", "xor", 142) .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__MpVLhXQxylvc.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c9e1e2eacde6ebfdfa", "xor", 142) then
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((346 / 2), ((258) - 100), (42 / 2));
__nhCyGdyontid.__UQ0y7bOyEnwM = __decode_str("c9e1e2eaaecde6ebfdfa", "xor", 142) .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__MpVLhXQxylvc.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cae7efe3e1e0eacde6ebfdfa", "xor", 142) then
local _gqky = math.random() > 0.5 and true or false
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((120) - 100), (200 + 0), (400 / 2));
__nhCyGdyontid.__UQ0y7bOyEnwM = __decode_str("cae7efe3e1e0eaaecde6ebfdfa", "xor", 142) .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__MpVLhXQxylvc.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
else
__D828YtJZSxSB[__decode_str("cbfdfecde6ebfdfa", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__MpVLhXQxylvc.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecde6ebfdfa", "xor", 142) .. __Y0NtTqKN3DZY) then
local __dummy = math.random(1,100) -- obf
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecde6ebfdfa", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
end;
end;
end);
end;
end;
end);
spawn(function()
while wait((2 / 2)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecaebf8e7e2c8fcfbe7fa", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC and string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
if not __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp((__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB.__aWw5iEgIa5rI);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY;
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), (1 + 0), ((100) - 100));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), (400 / 2), ((101) - 100), (30 + 0));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB.__aWw5iEgIa5rI;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), (0 / 2), (2 / 2), ((100) - 100));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__5BSvtLqJxp7n = (2 / 2);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((355) - 100), (510 / 2), (255 + 0));
__nhCyGdyontid.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local TweenService = game:__l5bfpCl4hkCi(__decode_str("daf9ebebe0ddebfcf8e7edeb", "xor", 142));
local __5CjXlzUb7IML = {
Color3.__QOUaUhY57mhb((510 / 2), (0 + 0), ((100) - 100)),
Color3.__QOUaUhY57mhb((255 + 0), (127 + 0), ((100) - 100)),
Color3.__QOUaUhY57mhb((255 + 0), (510 / 2), (0 / 2)),
Color3.__QOUaUhY57mhb((0 + 0), (510 / 2), (0 / 2)),
Color3.__QOUaUhY57mhb((0 + 0), (0 / 2), (255 + 0)),
Color3.__QOUaUhY57mhb((75 + 0), (0 / 2), (130 + 0)),
Color3.__QOUaUhY57mhb((296 / 2), (0 / 2), (211 + 0))
};
local __Z8RC4erQPL3v = TweenInfo.__jlt1dqxndo3e((2 / 2), Enum.__CyEx14bZ5Dbx.__D4VkIduTaxIH, Enum.__4bOK706cXOL5.__DRVuGSAtkQai);
(coroutine.__5K32saumDrxk(function()
while true do
for __dWyukss8iTi4, __jfh686L217j1 in ipairs(__5CjXlzUb7IML) do
local __dummy = math.random(1,100) -- obf
local __SgQCEWApz324 = TweenService:__DNWZw5yPpqqt(__nhCyGdyontid, __Z8RC4erQPL3v, {
__siTMf1Y9K5Qz = __jfh686L217j1
});
__SgQCEWApz324:__c1EmV0Ip3vaI();
__SgQCEWApz324.__zJPuiJEfBbj6:__IIzIP8uGGlyd();
end;
end;
end))();
else
__D828YtJZSxSB.__aWw5iEgIa5rI[__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
end;
elseif __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY) then
(__D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end;
end);
spawn(function()
while wait((0 + 0)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__mtDR9YtnAHfJ:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecaebf8e7e2c8fcfbe7fa", "xor", 142)] then
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
if not __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp((__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB.__aWw5iEgIa5rI);
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY;
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), ((101) - 100), (0 / 2));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), ((300) - 100), (2 / 2), ((130) - 100));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB.__aWw5iEgIa5rI;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 / 2), ((101) - 100), ((100) - 100));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__5BSvtLqJxp7n = (1 + 0);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((510 / 2), ((355) - 100), (510 / 2));
__nhCyGdyontid.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("a6dddecfd9c0cbcaa7", "xor", 142) .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local TweenService = game:__l5bfpCl4hkCi(__decode_str("daf9ebebe0ddebfcf8e7edeb", "xor", 142));
local __5CjXlzUb7IML = {
Color3.__QOUaUhY57mhb((255 + 0), ((100) - 100), ((100) - 100)),
local __dummy = math.random(1,100) -- obf
Color3.__QOUaUhY57mhb((510 / 2), ((227) - 100), (0 + 0)),
Color3.__QOUaUhY57mhb((255 + 0), (510 / 2), (0 + 0)),
Color3.__QOUaUhY57mhb((0 / 2), (510 / 2), (0 + 0)),
Color3.__QOUaUhY57mhb((0 / 2), ((100) - 100), (255 + 0)),
Color3.__QOUaUhY57mhb(((175) - 100), (0 / 2), ((230) - 100)),
Color3.__QOUaUhY57mhb((296 / 2), (0 / 2), ((311) - 100))
};
local __Z8RC4erQPL3v = TweenInfo.__jlt1dqxndo3e((2 / 2), Enum.__CyEx14bZ5Dbx.__D4VkIduTaxIH, Enum.__4bOK706cXOL5.__DRVuGSAtkQai);
(coroutine.__5K32saumDrxk(function()
while true do
for __dWyukss8iTi4, __jfh686L217j1 in ipairs(__5CjXlzUb7IML) do
local __SgQCEWApz324 = TweenService:__DNWZw5yPpqqt(__nhCyGdyontid, __Z8RC4erQPL3v, {
__siTMf1Y9K5Qz = __jfh686L217j1
});
__SgQCEWApz324:__c1EmV0Ip3vaI();
__SgQCEWApz324.__zJPuiJEfBbj6:__IIzIP8uGGlyd();
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end))();
else
__D828YtJZSxSB.__aWw5iEgIa5rI[__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
end;
elseif __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY) then
(__D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfecaebf8e7e2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
local __dummy = math.random(1,100) -- obf
end;
end);
end;
end;
end);
spawn(function()
while wait(((101) - 100)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
pcall(function()
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c8e2e1f9ebfcbc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c8e2e1f9ebfcbf", "xor", 142) then
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec8e2e1f9ebfc", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
if not __D828YtJZSxSB:__zsrrEF2lS1yp((__decode_str("cbfdfec8e2e1f9ebfc", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfec8e2e1f9ebfc", "xor", 142) .. __Y0NtTqKN3DZY;
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 + 0), ((101) - 100), (0 + 0));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), ((300) - 100), (2 / 2), (30 + 0));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 / 2), (1 + 0), (0 + 0));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = (2 / 2);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((255 + 0), (200 / 2), ((200) - 100));
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c8e2e1f9ebfcbf", "xor", 142) then
__nhCyGdyontid.__UQ0y7bOyEnwM = __decode_str("cce2fbebaec8e2e1f9ebfc", "xor", 142) .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((40 + 0), (80 / 2), (255 + 0));
end;
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c8e2e1f9ebfcbc", "xor", 142) then
__nhCyGdyontid.__UQ0y7bOyEnwM = __decode_str("dcebeaaec8e2e1f9ebfc", "xor", 142) .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((510 / 2), (200 / 2), ((200) - 100));
end;
else
__D828YtJZSxSB[__decode_str("cbfdfec8e2e1f9ebfc", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec8e2e1f9ebfc", "xor", 142) .. __Y0NtTqKN3DZY) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec8e2e1f9ebfc", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
end;
end;
end);
end;
end;
end);
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait((2 / 2)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__FsZUwoA3wOzQ:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedcebefe2c8fcfbe7fa", "xor", 142)] then
if not __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp((__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB.__aWw5iEgIa5rI);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY;
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 + 0), (1 + 0), (0 / 2));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), ((300) - 100), ((101) - 100), (30 + 0));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB.__aWw5iEgIa5rI;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), ((100) - 100), ((101) - 100), (0 / 2));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = ((101) - 100);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((200 + 0), (70 + 0), (70 + 0));
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
else
__D828YtJZSxSB.__aWw5iEgIa5rI[__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
local __dummy = math.random(1,100) -- obf
elseif __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY) then
(__D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
end;
end;
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__I0ORZVXDdSdr:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedcebefe2c8fcfbe7fa", "xor", 142)] then
local _tcey = math.random() > 0.5 and true or false
if not __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp((__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB.__aWw5iEgIa5rI);
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY;
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 + 0), (2 / 2), (0 + 0));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), (400 / 2), (1 + 0), ((130) - 100));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB.__aWw5iEgIa5rI;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), (0 / 2), ((101) - 100), (0 / 2));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__5BSvtLqJxp7n = (1 + 0);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((255 + 0), (170 + 0), ((100) - 100));
__nhCyGdyontid.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
else
__D828YtJZSxSB.__aWw5iEgIa5rI[__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
elseif __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY) then
(__D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
end;
end;
end;
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__f5Uw5tKZWtB8:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedcebefe2c8fcfbe7fa", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
if not __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp((__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB.__aWw5iEgIa5rI);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY;
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 / 2), ((101) - 100), (0 / 2));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), (200 + 0), ((101) - 100), (30 + 0));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB.__aWw5iEgIa5rI;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__ZMcJzmaNegLf;
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 + 0), (1 + 0), (0 + 0));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = (2 / 2);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((480 / 2), (255 + 0), ((110) - 100));
__nhCyGdyontid.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
else
__D828YtJZSxSB.__aWw5iEgIa5rI[__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY].__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("ae", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__aWw5iEgIa5rI.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
elseif __D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY) then
(__D828YtJZSxSB.__aWw5iEgIa5rI:__zsrrEF2lS1yp(__decode_str("cbfdfedcebefe2c8fcfbe7fa", "xor", 142) .. __Y0NtTqKN3DZY)):__m73XbhrKobs9();
end;
end;
end;
end;
end);
spawn(function()
while wait((2 / 2)) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec3e1e0fdfaebfc", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec3e1e0fdfaebfc", "xor", 142)) then
local _xrox = math.random() > 0.5 and true or false
local __w4SBeEU4iMWe = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142));
local __L9Ii3iUmneeF = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142));
__w4SBeEU4iMWe.__554Pe5pq8ngd = __D828YtJZSxSB;
__w4SBeEU4iMWe.__0Dne1l83T5Km = Enum.__0Dne1l83T5Km.__MkjQs43aVgoz;
local __dummy = math.random(1,100) -- obf
__w4SBeEU4iMWe.__A4OnYih8OZ6X = true;
__w4SBeEU4iMWe.__fkS8rZqI8rzC = __decode_str("cbfdfec3e1e0fdfaebfc", "xor", 142);
__w4SBeEU4iMWe.__72X7NmeJ735q = true;
__w4SBeEU4iMWe.__Jc0Bp78IthEJ = (2 / 2);
__w4SBeEU4iMWe.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 / 2), (400 / 2), (0 / 2), (50 + 0));
__w4SBeEU4iMWe.__gTu9czxgV1RZ = Vector3.__jlt1dqxndo3e((0 / 2), 2.5, ((100) - 100));
__L9Ii3iUmneeF.__554Pe5pq8ngd = __w4SBeEU4iMWe;
__L9Ii3iUmneeF.__ZmZOBV9R2qps = Color3.__QOUaUhY57mhb(((355) - 100), ((355) - 100), (510 / 2));
local __dummy = math.random(1,100) -- obf
__L9Ii3iUmneeF.__5BSvtLqJxp7n = (1 + 0);
__L9Ii3iUmneeF.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 + 0), (200 + 0), (0 + 0), (100 / 2));
__L9Ii3iUmneeF.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__7LkYhqo2wtxn;
__L9Ii3iUmneeF.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((240 / 2), ((230) - 100), ((330) - 100));
__L9Ii3iUmneeF.__UQ0y7bOyEnwM.__Bb19kUGmshpR = (35 + 0);
end;
local __S3nRozZyMRFj = math.__NdTbQiddbhYm((game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__0zrNqCpOd1MW.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aea3ae", "xor", 142) .. __S3nRozZyMRFj .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
else
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec3e1e0fdfaebfc", "xor", 142)) then
__D828YtJZSxSB.__0zrNqCpOd1MW:__m73XbhrKobs9();
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end);
spawn(function()
while wait((2 / 2)) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaeddebefaeccebeffdfa", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfeddebefecebeffdfafd", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
local __w4SBeEU4iMWe = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142));
local __L9Ii3iUmneeF = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142));
__w4SBeEU4iMWe.__554Pe5pq8ngd = __D828YtJZSxSB;
__w4SBeEU4iMWe.__0Dne1l83T5Km = Enum.__0Dne1l83T5Km.__MkjQs43aVgoz;
__w4SBeEU4iMWe.__A4OnYih8OZ6X = true;
__w4SBeEU4iMWe.__fkS8rZqI8rzC = __decode_str("cbfdfeddebefecebeffdfafd", "xor", 142);
__w4SBeEU4iMWe.__72X7NmeJ735q = true;
__w4SBeEU4iMWe.__Jc0Bp78IthEJ = (1 + 0);
__w4SBeEU4iMWe.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 + 0), (400 / 2), ((100) - 100), ((150) - 100));
__w4SBeEU4iMWe.__gTu9czxgV1RZ = Vector3.__jlt1dqxndo3e(((100) - 100), 2.5, (0 + 0));
__L9Ii3iUmneeF.__554Pe5pq8ngd = __w4SBeEU4iMWe;
__L9Ii3iUmneeF.__ZmZOBV9R2qps = Color3.__QOUaUhY57mhb(((355) - 100), (510 / 2), ((355) - 100));
__L9Ii3iUmneeF.__5BSvtLqJxp7n = ((101) - 100);
__L9Ii3iUmneeF.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 + 0), (200 + 0), ((100) - 100), (100 / 2));
local __dummy = math.random(1,100) -- obf
__L9Ii3iUmneeF.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__aoezfVrzdDAX;
__L9Ii3iUmneeF.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((160) - 100), (480 / 2), (240 / 2));
__L9Ii3iUmneeF.__UQ0y7bOyEnwM.__Bb19kUGmshpR = (70 / 2);
end;
local __S3nRozZyMRFj = math.__NdTbQiddbhYm((game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS);
__D828YtJZSxSB.__GsFVOPKCzcaq.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aea3ae", "xor", 142) .. __S3nRozZyMRFj .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
end;
end;
else
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfeddebefecebeffdfafd", "xor", 142)) then
local _aokr = math.random() > 0.5 and true or false
__D828YtJZSxSB.__GsFVOPKCzcaq:__m73XbhrKobs9();
end;
end;
end;
end);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
while wait((1 + 0)) do
pcall(function()
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec0feed", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__U5CLdvFHBzVj:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec0feed", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
local __w4SBeEU4iMWe = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142));
local __L9Ii3iUmneeF = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142));
__w4SBeEU4iMWe.__554Pe5pq8ngd = __D828YtJZSxSB;
__w4SBeEU4iMWe.__0Dne1l83T5Km = Enum.__0Dne1l83T5Km.__MkjQs43aVgoz;
__w4SBeEU4iMWe.__A4OnYih8OZ6X = true;
__w4SBeEU4iMWe.__fkS8rZqI8rzC = __decode_str("cbfdfec0feed", "xor", 142);
__w4SBeEU4iMWe.__72X7NmeJ735q = true;
__w4SBeEU4iMWe.__Jc0Bp78IthEJ = (2 / 2);
local __dummy = math.random(1,100) -- obf
__w4SBeEU4iMWe.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 + 0), ((300) - 100), ((100) - 100), (100 / 2));
__w4SBeEU4iMWe.__gTu9czxgV1RZ = Vector3.__jlt1dqxndo3e(((100) - 100), 2.5, (0 + 0));
__L9Ii3iUmneeF.__554Pe5pq8ngd = __w4SBeEU4iMWe;
__L9Ii3iUmneeF.__ZmZOBV9R2qps = Color3.__QOUaUhY57mhb((510 / 2), (510 / 2), (255 + 0));
__L9Ii3iUmneeF.__5BSvtLqJxp7n = (2 / 2);
__L9Ii3iUmneeF.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((0 + 0), (400 / 2), (0 + 0), (50 + 0));
__L9Ii3iUmneeF.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__r1Jr86c5tloB;
__L9Ii3iUmneeF.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((300) - 100), (60 + 0), ((220) - 100));
__L9Ii3iUmneeF.__UQ0y7bOyEnwM.__Bb19kUGmshpR = (90 / 2);
end;
local __S3nRozZyMRFj = math.__NdTbQiddbhYm((game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS);
__D828YtJZSxSB.__Amb1FTWCWyye.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aea3ae", "xor", 142) .. __S3nRozZyMRFj .. __decode_str("aecae7fdfaefe0edeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
end;
else
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__U5CLdvFHBzVj:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec0feed", "xor", 142)) then
__D828YtJZSxSB.__Amb1FTWCWyye:__m73XbhrKobs9();
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end);
spawn(function()
while wait((1 + 0)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec3e7fcefe9eb", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c3e7fcefe9ebaec7fde2efe0ea", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec3e7fcefe9ebc7fde2efe0ea", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfec3e7fcefe9ebc7fde2efe0ea", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 / 2), (2 / 2), ((100) - 100));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), (400 / 2), ((101) - 100), (60 / 2));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), (0 + 0), ((101) - 100), (0 / 2));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = (2 / 2);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((50 + 0), (360 / 2), ((150) - 100));
else
__D828YtJZSxSB.__0CHXk5s2Z7gx.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aec3", "xor", 142);
end;
local __dummy = math.random(1,100) -- obf
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec3e7fcefe9ebc7fde2efe0ea", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec3e7fcefe9ebc7fde2efe0ea", "xor", 142))):__m73XbhrKobs9();
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
spawn(function()
while wait((1 + 0)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec5e7fafdfbe0eb", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec5e7fafdfbe0ebc7fde2efe0ea", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfec5e7fafdfbe0ebc7fde2efe0ea", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 / 2), (1 + 0), ((100) - 100));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (200 + 0), (1 + 0), (60 / 2));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __dummy = math.random(1,100) -- obf
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), (0 + 0), ((101) - 100), ((100) - 100));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__5BSvtLqJxp7n = (2 / 2);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((140) - 100), ((140) - 100), (360 / 2));
local __dummy = math.random(1,100) -- obf
else
__D828YtJZSxSB.__dDyzHVktHl8y.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aec3", "xor", 142);
end;
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec5e7fafdfbe0ebc7fde2efe0ea", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec5e7fafdfbe0ebc7fde2efe0ea", "xor", 142))):__m73XbhrKobs9();
end;
end);
end;
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
while wait((2 / 2)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec8fce1f4ebe0", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec8fce1f4ebe0", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfec8fce1f4ebe0", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e((0 + 0), ((101) - 100), (0 + 0));
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (400 / 2), (1 + 0), (60 / 2));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), (0 / 2), (1 + 0), (0 + 0));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = (1 + 0);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((100 / 2), (360 / 2), ((355) - 100));
else
__D828YtJZSxSB.__jFBM1lxGRV4c.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aec3", "xor", 142);
end;
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec8fce1f4ebe0", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec8fce1f4ebe0", "xor", 142))):__m73XbhrKobs9();
end;
end);
end;
end;
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(((101) - 100)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedefcebe6e7fdfae1fce7ed", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("defcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfedefcebe6e7fdfae1fce7ed", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfedefcebe6e7fdfae1fce7ed", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), ((101) - 100), (0 / 2));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (200 + 0), (1 + 0), (60 / 2));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __dummy = math.random(1,100) -- obf
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
local __dummy = math.random(1,100) -- obf
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), ((100) - 100), ((101) - 100), (0 / 2));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = ((101) - 100);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb((200 + 0), (50 + 0), ((140) - 100));
else
__D828YtJZSxSB.__pj3hbnZUHVMp.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aec3", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfedefcebe6e7fdfae1fce7ed", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfedefcebe6e7fdfae1fce7ed", "xor", 142))):__m73XbhrKobs9();
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
while wait(((101) - 100)) do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__U5CLdvFHBzVj:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecfeaf8efe0edebeaaec8fcfbe7faaecaebefe2ebfc", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cfeaf8efe0edebeaaec8fcfbe7faaecaebefe2ebfc", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecfeaf8efe0edebc8fcfbe7facaebefe2ebfc", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfecfeaf8efe0edebc8fcfbe7facaebefe2ebfc", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), (1 + 0), (0 / 2));
local __dummy = math.random(1,100) -- obf
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (200 + 0), ((101) - 100), (60 / 2));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 + 0), (2 / 2), (0 + 0));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = (1 + 0);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((350) - 100), ((150) - 100), (50 + 0));
else
__D828YtJZSxSB.__sj8AH3Z7hTeQ.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (6 / 2)) .. __decode_str("aec3", "xor", 142);
end;
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecfeaf8efe0edebc8fcfbe7facaebefe2ebfc", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecfeaf8efe0edebc8fcfbe7facaebefe2ebfc", "xor", 142))):__m73XbhrKobs9();
end;
end);
end;
end;
end);
spawn(function()
while wait((2 / 2)) do
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__U5CLdvFHBzVj:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecffbfcef", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c3effdfaebfcaee1e8aecbe0e6efe0edebe3ebe0fa", "xor", 142) then
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecffbfcef", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfecffbfcef", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), (1 + 0), (0 + 0));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), (400 / 2), ((101) - 100), ((130) - 100));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((101) - 100), ((100) - 100), (1 + 0), ((100) - 100));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = ((101) - 100);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((300) - 100), (55 + 0), (255 + 0));
else
__D828YtJZSxSB.__gD1erHqDkcDU.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / ((103) - 100)) .. __decode_str("aec3", "xor", 142);
end;
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecffbfcef", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfecffbfcef", "xor", 142))):__m73XbhrKobs9();
end;
end);
end;
end;
end);
spawn(function()
while wait((1 + 0)) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("c3f7fdfae7edc7fde2efe0ea", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__LDE5Pz96Nh0C:__pZnxUxkN8q9J()) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec9ebeffc", "xor", 142)] then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c3ebfde6deeffcfa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cffbfae1c8effce3cce2eff4ebcbe3ecebfc", "xor", 142)) then
local __JkRdtnwerxbZ = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142), __D828YtJZSxSB);
__JkRdtnwerxbZ.__fkS8rZqI8rzC = __decode_str("cbfdfec9ebeffc", "xor", 142);
__JkRdtnwerxbZ.__RREV8HKofobb = Vector3.__jlt1dqxndo3e(((100) - 100), (1 + 0), (0 / 2));
__JkRdtnwerxbZ.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), ((300) - 100), (1 + 0), ((130) - 100));
__JkRdtnwerxbZ.__r4oWkfzxn5ar = __D828YtJZSxSB;
__JkRdtnwerxbZ.__72X7NmeJ735q = true;
local __nhCyGdyontid = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142), __JkRdtnwerxbZ);
__nhCyGdyontid.__l88zLizMD3h2 = __decode_str("cde1eaeb", "xor", 142);
__nhCyGdyontid.__O4tx2gt7Ih41 = __decode_str("dde7f4ebbfba", "xor", 142);
__nhCyGdyontid.__mdW3hDdmLxxc = true;
__nhCyGdyontid.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((2 / 2), ((100) - 100), ((101) - 100), (0 / 2));
__nhCyGdyontid.__b3YHd9KVDugg = __decode_str("dae1fe", "xor", 142);
__nhCyGdyontid.__5BSvtLqJxp7n = ((101) - 100);
__nhCyGdyontid.__i7tGiOznQMCK = 0.5;
__nhCyGdyontid.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((180) - 100), (490 / 2), (490 / 2));
else
__D828YtJZSxSB.__Mm57uUC5iN7x.__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __D828YtJZSxSB.__fkS8rZqI8rzC .. __decode_str("aeaeae84", "xor", 142) .. __mtaEqfRU7jJY((((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm)).__FOKpnwcRDhaS / (3 + 0)) .. __decode_str("aec3", "xor", 142);
end;
end;
elseif __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec9ebeffc", "xor", 142)) then
(__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbfdfec9ebeffc", "xor", 142))):__m73XbhrKobs9();
end;
end);
end;
end;
end;
end);
function __fpEKHtJ48R5P()
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142))):__dJgipi3LRiQc();
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142))):__y5Si96dWU7LK(Vector2.__jlt1dqxndo3e((2560 / 2), ((772) - 100)));
end;
function __XWnpo8UHUIoY()
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6effdccfbfde1", "xor", 142)) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbfde1", "xor", 142));
end;
end;
function __HW79Kiu5zpAv(__bogQWbdCXtBo)
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__bogQWbdCXtBo) then
(game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__bogQWbdCXtBo)).__554Pe5pq8ngd = game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE;
end;
end;
local __dummy = math.random(1,100) -- obf
function __oPpJB9J20Dn6(__XjeeyxPQhpki)
if not game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__XjeeyxPQhpki) then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__XjeeyxPQhpki) then
__uYoCFuX9WA17 = game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__XjeeyxPQhpki);
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__uYoCFuX9WA17);
end;
end;
end;
spawn(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ:__pZnxUxkN8q9J()) do
pcall(function()
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdfbfcf8ebeadce7e0e9", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde2effde6c6e7fa", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ddf9e1fceadde2effde6", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde2effde6daefe7e2", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde1fbe0eafd", "xor", 142) then
__D828YtJZSxSB:__m73XbhrKobs9();
end;
end);
end;
end);
function __IvkcBAh3unVt(__hZBCHc0XNkIT)
return math.__NdTbQiddbhYm((__hZBCHc0XNkIT.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS);
end;
function __GF16I68eKLgB(__d1HwnaJEXiV5)
pcall(function()
local __dummy = math.random(1,100) -- obf
if (__d1HwnaJEXiV5.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS >= ((2100) - 100) and game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
wait();
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = __d1HwnaJEXiV5;
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddebfaddfeeff9e0dee1e7e0fa", "xor", 142));
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = __d1HwnaJEXiV5;
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddebfaddfeeff9e0dee1e7e0fa", "xor", 142));
wait();
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__VDWWZPWy0Eln:__m73XbhrKobs9();
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = __d1HwnaJEXiV5;
until (__d1HwnaJEXiV5.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (4000 / 2) and game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2);
end;
end);
end;
function __dQXp8VpNZvya(__d1HwnaJEXiV5)
local __dummy = math.random(1,100) -- obf
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = __d1HwnaJEXiV5;
end;
local __dummy = math.random(1,100) -- obf
function __b9jZXOwByJfJ(__oUNvXM5VMdho)
local __dummy = math.random(1,100) -- obf
local TweenService = game:__l5bfpCl4hkCi(__decode_str("daf9ebebe0ddebfcf8e7edeb", "xor", 142));
local __uKP3uhmfUAqf = workspace.__ZcVL7xiqo1BL[_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]];
if not __uKP3uhmfUAqf or (not __uKP3uhmfUAqf:__zsrrEF2lS1yp(__decode_str("d8ebe6e7ede2ebddebeffa", "xor", 142))) then
__LJnDRRkSoZqb(__decode_str("dae6ebaefee2eff7ebfcaee3fbfdfaaee6eff8ebaeecebebe0aee1e0aefae6ebaeece1effaa0af", "xor", 142));
return {
__i5QmSqieWXgl = function()
end
};
end;
local __Fn9RBdUoidBs = __oUNvXM5VMdho;
if typeof(__oUNvXM5VMdho) == __decode_str("c7e0fdfaefe0edeb", "xor", 142) and __oUNvXM5VMdho:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
__Fn9RBdUoidBs = __oUNvXM5VMdho.CFrame;
elseif typeof(__oUNvXM5VMdho) ~= __decode_str("cdc8fcefe3eb", "xor", 142) then
local _ydml = math.random() > 0.5 and true or false
__LJnDRRkSoZqb(__decode_str("dae6ebaea9fee1fdfaa9aeeffce9fbe3ebe0faaee3fbfdfaaeecebaeefaecdc8fcefe3ebaee1fcaecceffdebdeeffcfaaf", "xor", 142));
return {
local __dummy = math.random(1,100) -- obf
__i5QmSqieWXgl = function()
end
};
end;
local __83HuHL6W1XGX = __uKP3uhmfUAqf.__uaanuT0LCYVz.__VOh0QUyOOmmm;
local __unaug2bCLN4c = __Fn9RBdUoidBs.__VOh0QUyOOmmm;
local __sGMVzVFIeNCt = (__83HuHL6W1XGX - __unaug2bCLN4c).__FOKpnwcRDhaS;
local __SgQCEWApz324 = nil;
local __THKnGTLQfTGK = __sGMVzVFIeNCt / (_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cce1effaaedaf9ebebe0aeddfeebebea", "xor", 142)] or (200 / 2));
local __E1RnoaIsJ43J = TweenInfo.__jlt1dqxndo3e(__THKnGTLQfTGK, Enum.__CyEx14bZ5Dbx.__D4VkIduTaxIH);
__SgQCEWApz324 = TweenService:__DNWZw5yPpqqt(__uKP3uhmfUAqf.__uaanuT0LCYVz, __E1RnoaIsJ43J, {
CFrame = __Fn9RBdUoidBs
});
if __sGMVzVFIeNCt > (25 + 0) then
__SgQCEWApz324:__c1EmV0Ip3vaI();
else
__LJnDRRkSoZqb(__decode_str("dae1e1aee8effdfaaeedefe0aee9ebfaaee5e7ede5ebea", "xor", 142));
end;
local __Mlafda2YehXL = {};
function __Mlafda2YehXL:__i5QmSqieWXgl()
if __SgQCEWApz324 and __SgQCEWApz324.__p7e5KCP8oxh4 == Enum.__p7e5KCP8oxh4.__Ne7kpldst0J9 then
__SgQCEWApz324:__HqQMTj4d2nU5();
end;
end;
return __Mlafda2YehXL;
end;
function __ZvRxhTb1ZSdn(__oUNvXM5VMdho)
__dklWzigEM94H.spawn(function()
local __dummy = math.random(1,100) -- obf
pcall(function()
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__O07U8O87g2oR == true then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__O07U8O87g2oR = true;
end;
local __sHLQHuJrMp5Q = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB;
local __xfCiSnO7qE1a = __sHLQHuJrMp5Q.__ccsuuEw78Yi2;
local __dummy = math.random(1,100) -- obf
local __S7Hve4BdIIMb = __xfCiSnO7qE1a.__OGkWnsSnXeSH;
if __sHLQHuJrMp5Q:__4yrF9zWZiuTh(__oUNvXM5VMdho.__VOh0QUyOOmmm) <= ((150) - 100) then
__S7Hve4BdIIMb.CFrame = __oUNvXM5VMdho;
if __xfCiSnO7qE1a:__zsrrEF2lS1yp(__decode_str("dce1e1fa", "xor", 142)) then
__xfCiSnO7qE1a.__vrvU7qBRdFZs:__m73XbhrKobs9();
wait();
__ZvRxhTb1ZSdn(__S7Hve4BdIIMb.CFrame);
wait();
local __dummy = math.random(1,100) -- obf
end;
if __xfCiSnO7qE1a:__zsrrEF2lS1yp(__decode_str("dce1e1fa", "xor", 142)) then
__xfCiSnO7qE1a.__vrvU7qBRdFZs:__T8qMESSMmcOQ();
end;
local __dummy = math.random(1,100) -- obf
elseif not __xfCiSnO7qE1a:__zsrrEF2lS1yp(__decode_str("dce1e1fa", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
local __rlvLdKIAd9PE = Instance.__jlt1dqxndo3e(__decode_str("deeffcfa", "xor", 142), __xfCiSnO7qE1a);
__rlvLdKIAd9PE.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), 0.5, (2 / 2));
__rlvLdKIAd9PE.__fkS8rZqI8rzC = __decode_str("dce1e1fa", "xor", 142);
__rlvLdKIAd9PE.__yML6D1WpSwOU = true;
__rlvLdKIAd9PE.__mmv71rnj2zSN = (1 + 0);
__rlvLdKIAd9PE.__eybULosT02L8 = false;
__rlvLdKIAd9PE.CFrame = __S7Hve4BdIIMb.CFrame;
end;
local __sGMVzVFIeNCt = (__S7Hve4BdIIMb.__VOh0QUyOOmmm - __oUNvXM5VMdho.__VOh0QUyOOmmm).__FOKpnwcRDhaS;
local __gC8P0ACdoNRs = game:__l5bfpCl4hkCi(__decode_str("daf9ebebe0ddebfcf8e7edeb", "xor", 142));
local __dummy = math.random(1,100) -- obf
local __Z8RC4erQPL3v = TweenInfo.__jlt1dqxndo3e(__sGMVzVFIeNCt / _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("dee2eff7ebfcaedaf9ebebe0aeddfeebebea", "xor", 142)], Enum.__CyEx14bZ5Dbx.__D4VkIduTaxIH);
local __QdYRhi7IL4QG, __mAKt8uy1Lp4H = pcall(function()
local __SgQCEWApz324 = __gC8P0ACdoNRs:__DNWZw5yPpqqt(__xfCiSnO7qE1a.__vrvU7qBRdFZs, __Z8RC4erQPL3v, {
CFrame = __oUNvXM5VMdho
});
__SgQCEWApz324:__c1EmV0Ip3vaI();
local __dummy = math.random(1,100) -- obf
end);
if _G.__FNtx5QFPOdCQ == true then
__SgQCEWApz324:__HqQMTj4d2nU5();
_G.__bJ2DpSji1a6h = false;
end;
if not __QdYRhi7IL4QG then
local __dummy = math.random(1,100) -- obf
return __mAKt8uy1Lp4H;
end;
__xfCiSnO7qE1a.__vrvU7qBRdFZs.CFrame = __S7Hve4BdIIMb.CFrame;
local __dummy = math.random(1,100) -- obf
if __QdYRhi7IL4QG and __xfCiSnO7qE1a:__zsrrEF2lS1yp(__decode_str("dce1e1fa", "xor", 142)) then
pcall(function()
local __8PAFqwQzLyM1 = (__S7Hve4BdIIMb.__VOh0QUyOOmmm - __oUNvXM5VMdho.__VOh0QUyOOmmm).__FOKpnwcRDhaS;
if __8PAFqwQzLyM1 >= ((150) - 100) then
__dklWzigEM94H.spawn(function()
pcall(function()
if (__xfCiSnO7qE1a.__vrvU7qBRdFZs.__VOh0QUyOOmmm - __S7Hve4BdIIMb.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (200 + 0) then
__xfCiSnO7qE1a.__vrvU7qBRdFZs.CFrame = __S7Hve4BdIIMb.CFrame;
else
__S7Hve4BdIIMb.CFrame = __xfCiSnO7qE1a.__vrvU7qBRdFZs.CFrame;
end;
end);
end);
elseif __8PAFqwQzLyM1 >= (25 + 0) and __8PAFqwQzLyM1 < ((140) - 100) then
__S7Hve4BdIIMb.CFrame = __oUNvXM5VMdho;
elseif __8PAFqwQzLyM1 < (50 / 2) then
__S7Hve4BdIIMb.CFrame = __oUNvXM5VMdho;
end;
end);
local __dummy = math.random(1,100) -- obf
end;
local __N5235ExR6UWO = {};
function __N5235ExR6UWO:__i5QmSqieWXgl()
__SgQCEWApz324:__HqQMTj4d2nU5();
local __dummy = math.random(1,100) -- obf
end;
return __N5235ExR6UWO;
end);
end);
end;
__dklWzigEM94H.spawn(function()
while __dklWzigEM94H.wait() do
pcall(function()
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__vrvU7qBRdFZs.CFrame;
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__vrvU7qBRdFZs.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS >= (1 + 0) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__vrvU7qBRdFZs.CFrame = game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame;
end;
end);
end;
end);
spawn(function()
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__RyTqZfkPCT3K:__IBjsl3vUzJA0(function()
pcall(function()
if __RUGaZhA8OGuz then
__RUGaZhA8OGuz(game.Players.__fni3Hio5E7WB, __decode_str("dde7e3fbe2effae7e1e0dcefeae7fbfd", "xor", 142), true);
end;
if __TOSRsHmsWfkR then
__TOSRsHmsWfkR(game.Players.__fni3Hio5E7WB, __decode_str("dde7e3fbe2effae7e1e0dcefeae7fbfd", "xor", 142), math.__Hxc7rZkyTF7X);
end;
end);
end);
end);
local __sFoov6f95cnH = (__8fcbinrjkdXn or __tmk1Ziue9aVO or getfenv)();
local __yGZtU8FwkEAv = game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142));
local __SYkPBSCj8pE5 = game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142));
local __dummy = math.random(1,100) -- obf
local __xKUr4tzTulM6 = __SYkPBSCj8pE5.__fni3Hio5E7WB;
local __rLXxKF4qKwbS = __yGZtU8FwkEAv:__PvIsCyCoCV22(__decode_str("c3e1eafbe2ebfd", "xor", 142));
local __xq8w6lFQgswx = __rLXxKF4qKwbS:__PvIsCyCoCV22(__decode_str("c0ebfa", "xor", 142));
local __hNVgNvNevfWy = workspace:__PvIsCyCoCV22(__decode_str("cde6effcefedfaebfcfd", "xor", 142));
local __jTSoldjQKUd4 = workspace:__PvIsCyCoCV22(__decode_str("cbe0ebe3e7ebfd", "xor", 142));
local __kOTyXNn5Wh6B = game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142));
local __gZo6Q77QpT99 = {};
local __dc3RsHRxVzSu = __xq8w6lFQgswx:__PvIsCyCoCV22(__decode_str("dccba1dcebe9e7fdfaebfccffafaefede5", "xor", 142));
local __eNDMkzhW4Zyi = __xq8w6lFQgswx:__PvIsCyCoCV22(__decode_str("dccba1dcebe9e7fdfaebfcc6e7fa", "xor", 142));
function __gZo6Q77QpT99:__aowVHQOBuKQC(__NKuBPTJdD5VQ, __cJOXm8PJkngJ)
if __NKuBPTJdD5VQ then
__dc3RsHRxVzSu:__jJkhPA1iiAej(((100) - 100));
__dc3RsHRxVzSu:__jJkhPA1iiAej(((101) - 100));
__dc3RsHRxVzSu:__jJkhPA1iiAej((2 + 0));
__dc3RsHRxVzSu:__jJkhPA1iiAej((6 / 2));
local __dummy = math.random(1,100) -- obf
__eNDMkzhW4Zyi:__jJkhPA1iiAej(__NKuBPTJdD5VQ, __cJOXm8PJkngJ or {});
end;
end;
function __gZo6Q77QpT99:__0vGptkYsiF6O()
local __HowevNCWR52r = {
nil,
{}
};
local __dummy = math.random(1,100) -- obf
for __dWyukss8iTi4, __eD8zxtzmKTMc in __jTSoldjQKUd4:__pZnxUxkN8q9J() do
if not __HowevNCWR52r[(1 + 0)] and __eD8zxtzmKTMc:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142), true) and __xKUr4tzTulM6:__4yrF9zWZiuTh(__eD8zxtzmKTMc.__OGkWnsSnXeSH.__VOh0QUyOOmmm) < ((160) - 100) then
__HowevNCWR52r[(1 + 0)] = __eD8zxtzmKTMc:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142));
elseif __eD8zxtzmKTMc:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142), true) and __xKUr4tzTulM6:__4yrF9zWZiuTh(__eD8zxtzmKTMc.__OGkWnsSnXeSH.__VOh0QUyOOmmm) < (60 + 0) then
table.__gKszmrCIpNoW(__HowevNCWR52r[(2 + 0)], {
[(2 / 2)] = __eD8zxtzmKTMc,
[((102) - 100)] = __eD8zxtzmKTMc:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))
});
end;
end;
__8SXU10DBouOV:__aowVHQOBuKQC(unpack(__HowevNCWR52r));
local __sHLQHuJrMp5Q = {
nil,
{}
};
for __dWyukss8iTi4, __akguKjfFRcqP in __kOTyXNn5Wh6B:__pZnxUxkN8q9J() do
if not __sHLQHuJrMp5Q[((101) - 100)] and __akguKjfFRcqP:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142), true) and __xKUr4tzTulM6:__4yrF9zWZiuTh(__akguKjfFRcqP.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm) < (120 / 2) then
__sHLQHuJrMp5Q[(1 + 0)] = __akguKjfFRcqP.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142));
elseif __akguKjfFRcqP.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142), true) and __xKUr4tzTulM6:__4yrF9zWZiuTh(__akguKjfFRcqP.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm) < (120 / 2) then
table.__gKszmrCIpNoW(__sHLQHuJrMp5Q[(4 / 2)], {
[(2 / 2)] = __akguKjfFRcqP,
[(2 + 0)] = __akguKjfFRcqP.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))
});
end;
end;
__8SXU10DBouOV:__aowVHQOBuKQC(unpack(__sHLQHuJrMp5Q));
end;
function __gZo6Q77QpT99:__fEHH8JDr5QK1()
__8SXU10DBouOV:__0vGptkYsiF6O();
end;
function __UiNobUxSrFVc()
if not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or (not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)]) then
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5", "xor", 142)] then
wait(_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aecaebe2eff7", "xor", 142)]);
__gZo6Q77QpT99:__fEHH8JDr5QK1();
else
wait(0.5);
__gZo6Q77QpT99:__fEHH8JDr5QK1();
end;
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
function __6PrBtx8Clb6D()
__gZo6Q77QpT99:__fEHH8JDr5QK1();
end;
spawn(function()
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__RyTqZfkPCT3K:__IBjsl3vUzJA0(function()
pcall(function()
if __A6FQWTSnvMZO or __hple7mFy5cJe or _G.__xIvPztxeWdBs then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__rooxm5qatLgv:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
for __dWyukss8iTi4, __nPvGZsP7RODf in pairs(__D828YtJZSxSB:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__nPvGZsP7RODf.__UQ0y7bOyEnwM, __decode_str("dde5e7e2e2aee2e1ede5ebeaaf", "xor", 142)) then
__D828YtJZSxSB:__m73XbhrKobs9();
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end);
end);
function __X0vva76c1NPx()
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("ddf9e1fcea", "xor", 142) and __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
local __dsQXprn1XzKO = game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC);
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__dsQXprn1XzKO);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
local __dummy = math.random(1,100) -- obf
spawn(function()
local __2GZR5QYzgzc6 = (0 / 2);
while wait() do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ddfee7e0aedee1fde7fae7e1e0", "xor", 142)] then
local __zq3mQBti3XCC = ((120) - 100);
local __wQpoBYfvUp5V = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effce3aecae7fdfaefe0edeb", "xor", 142)];
local __dummy = math.random(1,100) -- obf
local __OaMQ6bp1ClG7 = math.__wVuXkt9JO2Xa(__2GZR5QYzgzc6);
local __P7qufHPl7p5l = math.__0Sb3PhP4IURr(__OaMQ6bp1ClG7) * __zq3mQBti3XCC;
local __Jyl34aR7AMKj = math.__Ekvcggv7D15N(__OaMQ6bp1ClG7) * __zq3mQBti3XCC;
__FRmTYY7TRjDm = CFrame.__jlt1dqxndo3e(__P7qufHPl7p5l, __wQpoBYfvUp5V, __Jyl34aR7AMKj);
__2GZR5QYzgzc6 = (__2GZR5QYzgzc6 + (30 + 0)) % (360 + 0);
else
__FRmTYY7TRjDm = CFrame.__jlt1dqxndo3e((0 + 0), _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effce3aecae7fdfaefe0edeb", "xor", 142)], ((100) - 100));
end;
wait((0 / 2));
end;
end);
spawn(function()
pcall(function()
while wait() do
if __r6rRqZJqrWdL then
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec2ebeffae6ebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3efe9e3efaec1fceb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aeddedfceffeaec3ebfaefe2", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecfe0e9ebe2aed9e7e0e9fd", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH:__zsrrEF2lS1yp(__decode_str("cce1eaf7cde2e7fe", "xor", 142)) then
local __2ILKWncxiXKk = Instance.__jlt1dqxndo3e(__decode_str("cce1eaf7d8ebe2e1ede7faf7", "xor", 142));
__2ILKWncxiXKk.__fkS8rZqI8rzC = __decode_str("cce1eaf7cde2e7fe", "xor", 142);
__2ILKWncxiXKk.__554Pe5pq8ngd = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH;
local __dummy = math.random(1,100) -- obf
__2ILKWncxiXKk.__Db0EvLgkdgZp = Vector3.__jlt1dqxndo3e((200000 / 2), (200000 / 2), (100000 + 0));
__2ILKWncxiXKk.__F36O925aH21M = Vector3.__jlt1dqxndo3e((0 + 0), ((100) - 100), ((100) - 100));
end;
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait() do
if __r6rRqZJqrWdL then
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)] then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
__D828YtJZSxSB.__eybULosT02L8 = false;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
pcall(function()
while wait() do
if __xS6abtdaAUqB then
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8effce3aec8efedfae1fcf7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddf9efe0aec9e2effdfdebfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedcefedebaed8bc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecceffcfae7e2e1aedffbebfdfa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH:__zsrrEF2lS1yp(__decode_str("cce1eaf7cde2e7fe", "xor", 142)) then
local __2ILKWncxiXKk = Instance.__jlt1dqxndo3e(__decode_str("cce1eaf7d8ebe2e1ede7faf7", "xor", 142));
__2ILKWncxiXKk.__fkS8rZqI8rzC = __decode_str("cce1eaf7cde2e7fe", "xor", 142);
__2ILKWncxiXKk.__554Pe5pq8ngd = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH;
__2ILKWncxiXKk.__Db0EvLgkdgZp = Vector3.__jlt1dqxndo3e((100000 + 0), (100000 + 0), (100000 + 0));
__2ILKWncxiXKk.__F36O925aH21M = Vector3.__jlt1dqxndo3e(((100) - 100), (0 / 2), (0 / 2));
end;
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait() do
if __xS6abtdaAUqB then
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8effce3aec8efedfae1fcf7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddf9efe0aec9e2effdfdebfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedcefedebaed8bc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecceffcfae7e2e1aedffbebfdfa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
__D828YtJZSxSB.__eybULosT02L8 = false;
end;
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end);
spawn(function()
pcall(function()
while wait() do
if __MZpSSSnhndYo then
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedcefedebaed8bd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daebe2ebfee1fcfaaedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddefe7e2aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedefcebfdfdaec6efe5e7aeccfbfafae1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecffcebe0efaedafcefe7e0ebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daf9ebebe0aedae1aec6e7e9e6ebfdfaaec3e7fcefe9eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__66In1bdZKKkE[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaedffbebfdfa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecdfbfcfdebeaaecafbefe2aec5effaefe0ef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] or _G.__SW335mMARzoJ or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcefe7e0ece1f9aec6efe5e7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecbedfae1fee2effde3", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0aed8bc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec3fbfde5ebfaebebfcaec6effa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6e1e2f7aedae1fcede6", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecdefe0f8efe0eaebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH:__zsrrEF2lS1yp(__decode_str("cce1eaf7cde2e7fe", "xor", 142)) then
local __2ILKWncxiXKk = Instance.__jlt1dqxndo3e(__decode_str("cce1eaf7d8ebe2e1ede7faf7", "xor", 142));
__2ILKWncxiXKk.__fkS8rZqI8rzC = __decode_str("cce1eaf7cde2e7fe", "xor", 142);
__2ILKWncxiXKk.__554Pe5pq8ngd = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH;
__2ILKWncxiXKk.__Db0EvLgkdgZp = Vector3.__jlt1dqxndo3e(((100100) - 100), (200000 / 2), ((100100) - 100));
__2ILKWncxiXKk.__F36O925aH21M = Vector3.__jlt1dqxndo3e(((100) - 100), ((100) - 100), (0 + 0));
end;
end;
end;
end;
end);
end);
local __dummy = math.random(1,100) -- obf
spawn(function()
pcall(function()
while wait() do
if __MZpSSSnhndYo then
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedcefedebaed8bd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daebe2ebfee1fcfaaedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddefe7e2aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedefcebfdfdaec6efe5e7aeccfbfafae1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecffcebe0efaedafcefe7e0ebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daf9ebebe0aedae1aec6e7e9e6ebfdfaaec3e7fcefe9eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] or _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__66In1bdZKKkE[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaedffbebfdfa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecdfbfcfdebeaaecafbefe2aec5effaefe0ef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] or _G.__SW335mMARzoJ or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcefe7e0ece1f9aec6efe5e7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecbedfae1fee2effde3", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0aed8bc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec3fbfde5ebfaebebfcaec6effa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6e1e2f7aedae1fcede6", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecdefe0f8efe0eaebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec2ebeffae6ebfc", "xor", 142)] or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
__D828YtJZSxSB.__eybULosT02L8 = false;
end;
end;
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
local __dummy = math.random(1,100) -- obf
while wait() do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or _G.__WVstbOcu7xbM or _G.__SW335mMARzoJ or _G.__S8S0N75BclUR or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec1ecfdebfcf8effae7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142)] or _G.__xjkga2QWzJfK or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8effdfa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH:__zsrrEF2lS1yp(__decode_str("cce1eaf7cde2e7fe", "xor", 142)) then
local __2ILKWncxiXKk = Instance.__jlt1dqxndo3e(__decode_str("cce1eaf7d8ebe2e1ede7faf7", "xor", 142));
__2ILKWncxiXKk.__fkS8rZqI8rzC = __decode_str("cce1eaf7cde2e7fe", "xor", 142);
__2ILKWncxiXKk.__554Pe5pq8ngd = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH;
__2ILKWncxiXKk.__Db0EvLgkdgZp = Vector3.__jlt1dqxndo3e((100000 + 0), (100000 + 0), (200000 / 2));
__2ILKWncxiXKk.__F36O925aH21M = Vector3.__jlt1dqxndo3e((0 + 0), ((100) - 100), (0 + 0));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__UexeS4r4y4Y5:__IBjsl3vUzJA0(function()
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or _G.__WVstbOcu7xbM or _G.__SW335mMARzoJ or _G.__S8S0N75BclUR or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec1ecfdebfcf8effae7e1e0", "xor", 142)] or _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142)] or _G.__xjkga2QWzJfK or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8effdfa", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)] or _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)] then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__DZC5w2LNAoBg()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
__D828YtJZSxSB.__eybULosT02L8 = false;
end;
end;
end;
end);
end);
end);
function __FNtx5QFPOdCQ(__Z2cgUZmAt6nx)
if not __Z2cgUZmAt6nx then
_G.__FNtx5QFPOdCQ = true;
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame);
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH:__zsrrEF2lS1yp(__decode_str("cce1eaf7cde2e7fe", "xor", 142)) then
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH:__zsrrEF2lS1yp(__decode_str("cce1eaf7cde2e7fe", "xor", 142))):__m73XbhrKobs9();
end;
_G.__FNtx5QFPOdCQ = false;
end;
end;
function __KfNZ12zNCtZV(__KTHRMJr0kylS)
__KTHRMJr0kylS.__o5H1UHU8JG5m:__eM2qmkLvhz5L((22 / 2));
if __KTHRMJr0kylS.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("cfe0e7e3effae1fc", "xor", 142)) then
__KTHRMJr0kylS.__o5H1UHU8JG5m.__pH1CcKeTWYsw:__m73XbhrKobs9();
end;
end;
spawn(function()
pcall(function()
while wait() do
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("dcebe3e1faebc8fbe0edfae7e1e0dde6e1e1fa", "xor", 142)) then
__4wDFGga7BVSs = __D828YtJZSxSB.__fkS8rZqI8rzC;
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end);
__TqU0iwwMFKg7 = __DCylxAOY74jA.__3NWVD4iOlGWb:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c3efe7e0", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__CLtCB5Q9UCmf = __DCylxAOY74jA.__3NWVD4iOlGWb:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c9efe3ebaedae7e3eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("be", "xor", 142),
__Y1APAjrlVxnZ = __decode_str("fae7e3ebfc", "xor", 142),
__g8mXhqSstJ9G = (20 + 0)
});
spawn(function()
while __dklWzigEM94H.wait() do
pcall(function()
local __G6KiuYduw7V3 = math.__NdTbQiddbhYm(workspace.__j5IcEKH2qrIs + 0.5);
local __YIwOKMZcPeWz = math.__NdTbQiddbhYm(__G6KiuYduw7V3 / ((160) - 100) ^ ((102) - 100)) % (24 + 0);
local __yA60k3bKJEJ6 = math.__NdTbQiddbhYm(__G6KiuYduw7V3 / (120 / 2) ^ (1 + 0)) % (60 + 0);
local __dummy = math.random(1,100) -- obf
local __dj0JDC31lLYq = math.__NdTbQiddbhYm(__G6KiuYduw7V3 / ((160) - 100) ^ (0 / 2)) % ((160) - 100);
__CLtCB5Q9UCmf:__AuHle8YtGk0N(__YIwOKMZcPeWz .. __decode_str("aec6e1fbfcfdae", "xor", 142) .. __yA60k3bKJEJ6 .. __decode_str("aec3e7e0fbfaebae", "xor", 142) .. __dj0JDC31lLYq .. __decode_str("aeddebede1e0ea", "xor", 142));
end);
end;
end);
__pgv4mCQwzKzi = __DCylxAOY74jA.__3NWVD4iOlGWb:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("dee7e0e9", "xor", 142),
__0eNWJkShlM4m = __decode_str("be", "xor", 142),
__Y1APAjrlVxnZ = __decode_str("fde7e9e0efe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__g8mXhqSstJ9G = ((120) - 100)
});
spawn(function()
while __dklWzigEM94H.wait() do
pcall(function()
__pgv4mCQwzKzi:__AuHle8YtGk0N((game:__l5bfpCl4hkCi(__decode_str("ddfaeffafd", "xor", 142))).__qKgJ7bcfxlED.__sxHWHBel8kP8[__decode_str("caeffaefaedee7e0e9", "xor", 142)]:__jGbT9DCYTSQX());
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__U0UUiI9icA0Z = __DCylxAOY74jA.__3NWVD4iOlGWb:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c2ebf8ebe2aec8effce3", "xor", 142),
local __dummy = math.random(1,100) -- obf
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
local __Ug5s7ZuhQzc5 = {
__decode_str("c3ebe2ebeb", "xor", 142),
__decode_str("ddf9e1fcea", "xor", 142),
__decode_str("c8fcfbe7fa", "xor", 142)
};
__mYdOESX7qfm6 = __DCylxAOY74jA.__3NWVD4iOlGWb:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaed9ebeffee1e0", "xor", 142),
__776eboSw51dy = __Ug5s7ZuhQzc5,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__dklWzigEM94H.spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)] == __decode_str("c3ebe2ebeb", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("c3ebe2ebeb", "xor", 142) then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(tostring(__D828YtJZSxSB.__fkS8rZqI8rzC)) then
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __D828YtJZSxSB.__fkS8rZqI8rzC;
end;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)] == __decode_str("ddf9e1fcea", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("ddf9e1fcea", "xor", 142) then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(tostring(__D828YtJZSxSB.__fkS8rZqI8rzC)) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __D828YtJZSxSB.__fkS8rZqI8rzC;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)] == __decode_str("c9fbe0", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("c9fbe0", "xor", 142) then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(tostring(__D828YtJZSxSB.__fkS8rZqI8rzC)) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __D828YtJZSxSB.__fkS8rZqI8rzC;
end;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaaed9ebeffee1e0", "xor", 142)] == __decode_str("c8fcfbe7fa", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("cce2e1f6aec8fcfbe7fa", "xor", 142) then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(tostring(__D828YtJZSxSB.__fkS8rZqI8rzC)) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __D828YtJZSxSB.__fkS8rZqI8rzC;
end;
end;
end;
end;
end);
end;
end);
local __uoAeIjz3bxIF = {
__decode_str("dffbebfdfa", "xor", 142),
__decode_str("c0e1aedffbebfdfa", "xor", 142),
__decode_str("c0ebeffcebfdfa", "xor", 142)
};
local __dummy = math.random(1,100) -- obf
__wxGzeRlnPeRX = __DCylxAOY74jA.__3NWVD4iOlGWb:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaec8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142),
__776eboSw51dy = __uoAeIjz3bxIF,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__26jsoyGlh4w2 = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aec2ebf8ebe2", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142) and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] then
pcall(function()
__eDDWaFt5wNC4();
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), ((101) - 100));
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
else
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
end;
end);
end;
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142) and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] then
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
if __D828YtJZSxSB.__fkS8rZqI8rzC then
local _udlc = math.random() > 0.5 and true or false
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10000 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__UiNobUxSrFVc();
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), ((101) - 100), (2 / 2));
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or (not game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC));
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c8effce3aec2ebf8ebe2aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142) and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] then
pcall(function()
__eDDWaFt5wNC4();
local __m0gFDXL0YBKo = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM;
if not string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __IxHMSgYGT6jz) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cfecefe0eae1e0dffbebfdfa", "xor", 142));
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
local _uzcl = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __IMoFHOqOXV0j, __fqbMoqa0VT2k);
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS then
if string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) then
local __dummy = math.random(1,100) -- obf
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (2 / 2), (2 / 2));
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false;
end;
end;
end;
end;
else
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end;
end);
__4oUZd11H1LtH = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142)] and __r6rRqZJqrWdL then
if game.Players.__fni3Hio5E7WB.__C6JPlc6eWb7y.__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((110) - 100) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] = false;
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effdfaaec8effce3", "xor", 142)] = true;
end;
end;
end;
end);
end);
__tD5q2MDk5L8N = __DCylxAOY74jA.__3NWVD4iOlGWb:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c3effdfaebfcf7aec8effce3", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
if __MZpSSSnhndYo then
__lFLaUtvR7k0g = {
__decode_str("dffbebfdfa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c0e1aedffbebfdfa", "xor", 142),
__decode_str("c0ebeffcebfdfa", "xor", 142),
__decode_str("cdefe5ebfefce7e0edeb", "xor", 142),
__decode_str("cce1e0ebfd", "xor", 142)
};
elseif __xS6abtdaAUqB or __r6rRqZJqrWdL then
__lFLaUtvR7k0g = {
__decode_str("dffbebfdfa", "xor", 142),
__decode_str("c0e1aedffbebfdfa", "xor", 142),
__decode_str("c0ebeffcebfdfa", "xor", 142)
};
end;
__QsenNvgHXbnE = __DCylxAOY74jA.__3NWVD4iOlGWb:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaec3effdfaebfcf7aec3ebfae6e1ea", "xor", 142),
local __dummy = math.random(1,100) -- obf
__776eboSw51dy = __lFLaUtvR7k0g,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
__O4vGeL4otmHH = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8fcfbe7faaec3effdfaebfcf7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
__RifTPlFv0n0J = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9fbe0aec3effdfaebfcf7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __ipcHy80BdkLg = {};
local __x9FPA0gN1T0r = (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("e9ebfac7e0f8ebe0fae1fcf7", "xor", 142));
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__x9FPA0gN1T0r) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__PsOK47xPbvQ5 == __decode_str("ddf9e1fcea", "xor", 142) then
table.__gKszmrCIpNoW(__ipcHy80BdkLg, __D828YtJZSxSB.__fkS8rZqI8rzC);
end;
local __dummy = math.random(1,100) -- obf
end;
__7hsFfxfOH3oi = __DCylxAOY74jA.__3NWVD4iOlGWb:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaeddf9e1fcea", "xor", 142),
__776eboSw51dy = __ipcHy80BdkLg,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
function __MsdnRTCnyA7Q(__hXjtB3WZx956)
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__hXjtB3WZx956) then
return true;
elseif game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__hXjtB3WZx956) then
local __dummy = math.random(1,100) -- obf
return true;
end;
local __dummy = math.random(1,100) -- obf
return false;
end;
spawn(function()
while wait() do
pcall(function()
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] then
if not __MsdnRTCnyA7Q(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c2e1efeac7faebe3", "xor", 142), _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
end;
end;
end);
end;
end);
__EUqnUza5R1wo = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddf9e1fceaaec3effdfaebfcf7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while __dklWzigEM94H.wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
pcall(function()
__eDDWaFt5wNC4();
if not string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cfecefe0eae1e0dffbebfdfa", "xor", 142));
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__caIW2EJeDMBm);
if (__caIW2EJeDMBm.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10 / 2) then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __IMoFHOqOXV0j, __fqbMoqa0VT2k);
local __dummy = math.random(1,100) -- obf
end;
elseif string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
if game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__UiNobUxSrFVc();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (1 + 0), (1 + 0));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == ((100) - 100) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142);
end;
end;
end;
else
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142) then
local _sloc = math.random() > 0.5 and true or false
pcall(function()
__eDDWaFt5wNC4();
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
if game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__UiNobUxSrFVc();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), ((101) - 100));
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 / 2);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 / 2) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142);
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
end;
end);
local __dummy = math.random(1,100) -- obf
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1e0ebfd", "xor", 142) then
pcall(function()
__ZvRxhTb1ZSdn(__g0PIGyoASRbu);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
local _rpiq = math.random() > 0.5 and true or false
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__UiNobUxSrFVc();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), ((101) - 100), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1e0ebfd", "xor", 142);
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cdefe5ebfefce7e0edeb", "xor", 142) then
pcall(function()
local __Hmf9c60rzzVD = CFrame.__jlt1dqxndo3e(-2091.911865234375, 70.00884246826172, -12142.8359375);
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__Hmf9c60rzzVD);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaec9fbeffcea", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c6ebefeaaeccefe5ebfc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaec9fbeffcea", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c6ebefeaaeccefe5ebfc", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cdefe5ebfefce7e0edeb", "xor", 142);
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142)) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142) then
pcall(function()
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((2100) - 100) then
local __dummy = math.random(1,100) -- obf
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__UiNobUxSrFVc();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (2 / 2), (1 + 0));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 / 2) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142);
end;
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1fdfd", "xor", 142) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
__nkJe5XtWiLCm();
__ZvRxhTb1ZSdn(__bUzH5hSpnNyN);
if (__bUzH5hSpnNyN.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (5 + 0) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __roqXwNdMmom0, __Qov8EVrhGJ5f);
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
local __dummy = math.random(1,100) -- obf
pcall(function()
__nkJe5XtWiLCm();
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__65YwehFOMbAU) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KZ3YmxKoXpWd and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3effdfaebfcf7aeddf9e1fcea", "xor", 142)]);
__UiNobUxSrFVc();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (2 / 2), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (2 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aeddf9e1fceaaec3effdfaebfcf7", "xor", 142)] or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1fdfd", "xor", 142) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 + 0) or game.Players.__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC));
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
end;
end;
end);
spawn(function()
while __dklWzigEM94H.wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142) then
pcall(function()
local __dummy = math.random(1,100) -- obf
__eDDWaFt5wNC4();
if not string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cfecefe0eae1e0dffbebfdfa", "xor", 142));
__ZvRxhTb1ZSdn(__caIW2EJeDMBm);
if (__caIW2EJeDMBm.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((105) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __IMoFHOqOXV0j, __fqbMoqa0VT2k);
end;
elseif string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
if game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (200 / 2) then
__oPpJB9J20Dn6((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__dnlSqXnwhoiG.__KuJIgOIz2WnP);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (25 + 0), ((100) - 100)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(180 / 2))), (0 / 2), ((100) - 100)));
__M8n4Lnwj7WSx = true;
__A6FQWTSnvMZO = true;
else
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__6PrBtx8Clb6D();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
local __str = 'junk'
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
__M8n4Lnwj7WSx = true;
local __dummy = math.random(1,100) -- obf
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 / 2) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142);
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
else
__A6FQWTSnvMZO = false;
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
__HW79Kiu5zpAv(__bsGFgDNWuIGB);
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142) then
pcall(function()
__eDDWaFt5wNC4();
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
if game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / ((200) - 100) then
__oPpJB9J20Dn6((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__dnlSqXnwhoiG.__KuJIgOIz2WnP);
local __dummy = math.random(1,100) -- obf
__A6FQWTSnvMZO = true;
__M8n4Lnwj7WSx = true;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), ((125) - 100), ((100) - 100)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(180 / 2))), (0 / 2), ((100) - 100)));
else
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__6PrBtx8Clb6D();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == ((100) - 100) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142);
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
end;
end;
else
__A6FQWTSnvMZO = false;
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
local __dummy = math.random(1,100) -- obf
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1e0ebfd", "xor", 142) then
pcall(function()
__ZvRxhTb1ZSdn(__g0PIGyoASRbu);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (100 + 0) then
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__dnlSqXnwhoiG.__KuJIgOIz2WnP);
__A6FQWTSnvMZO = true;
__M8n4Lnwj7WSx = true;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), ((125) - 100), (0 + 0)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(90 + 0))), (0 + 0), (0 / 2)));
else
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__6PrBtx8Clb6D();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), ((101) - 100), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (2 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1e0ebfd", "xor", 142);
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cdefe5ebfefce7e0edeb", "xor", 142) then
pcall(function()
local __Hmf9c60rzzVD = CFrame.__jlt1dqxndo3e(-2091.911865234375, 70.00884246826172, -12142.8359375);
__ZvRxhTb1ZSdn(__Hmf9c60rzzVD);
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaec9fbeffcea", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c6ebefeaaeccefe5ebfc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaec9fbeffcea", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c6ebefeaaeccefe5ebfc", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (200 / 2) then
__oPpJB9J20Dn6((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__dnlSqXnwhoiG.__KuJIgOIz2WnP);
local __dummy = math.random(1,100) -- obf
__A6FQWTSnvMZO = true;
__M8n4Lnwj7WSx = true;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (25 + 0), (0 + 0)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-((190) - 100))), (0 / 2), ((100) - 100)));
else
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__6PrBtx8Clb6D();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), ((101) - 100), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
local __dummy = math.random(1,100) -- obf
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cdefe5ebfefce7e0edeb", "xor", 142);
__A6FQWTSnvMZO = false;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = false;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142)) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142) then
local _rzqi = math.random() > 0.5 and true or false
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((2100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / ((200) - 100) then
__oPpJB9J20Dn6((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__dnlSqXnwhoiG.__KuJIgOIz2WnP);
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (25 + 0), (0 / 2)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(90 + 0))), ((100) - 100), (0 + 0)));
__M8n4Lnwj7WSx = true;
__A6FQWTSnvMZO = true;
local __dummy = math.random(1,100) -- obf
else
__M8n4Lnwj7WSx = false;
__A6FQWTSnvMZO = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__6PrBtx8Clb6D();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), ((101) - 100), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 + 0) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142);
local __dummy = math.random(1,100) -- obf
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1fdfd", "xor", 142) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
local _qgsw = math.random() > 0.5 and true or false
__nkJe5XtWiLCm();
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__bUzH5hSpnNyN);
if (__bUzH5hSpnNyN.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (5 + 0) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __roqXwNdMmom0, __Qov8EVrhGJ5f);
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
pcall(function()
__nkJe5XtWiLCm();
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__65YwehFOMbAU) then
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KZ3YmxKoXpWd and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (200 / 2) then
__oPpJB9J20Dn6((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__dnlSqXnwhoiG.__KuJIgOIz2WnP);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (25 + 0), (0 / 2)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(90 + 0))), ((100) - 100), ((100) - 100)));
__M8n4Lnwj7WSx = true;
__A6FQWTSnvMZO = true;
else
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__A6FQWTSnvMZO = false;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = false;
__6PrBtx8Clb6D();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)] or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1fdfd", "xor", 142) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 + 0) or game.Players.__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC));
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
end;
local __dummy = math.random(1,100) -- obf
end;
else
__A6FQWTSnvMZO = false;
__M8n4Lnwj7WSx = false;
end;
end);
end;
end;
end;
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
while __dklWzigEM94H.wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142) then
pcall(function()
__eDDWaFt5wNC4();
if not string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cfecefe0eae1e0dffbebfdfa", "xor", 142));
__ZvRxhTb1ZSdn(__caIW2EJeDMBm);
if (__caIW2EJeDMBm.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __IMoFHOqOXV0j, __fqbMoqa0VT2k);
end;
elseif string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __IxHMSgYGT6jz) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
local __dummy = math.random(1,100) -- obf
if game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / ((200) - 100) then
__oPpJB9J20Dn6(__4wDFGga7BVSs);
local __yShjfBo53oBP = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (-((115) - 100)), ((100) - 100));
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("", "xor", 142))):__39fkVcO4USff(__decode_str("dacfde", "xor", 142), Vector3.__jlt1dqxndo3e(__yShjfBo53oBP.__VOh0QUyOOmmm));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (50 / 2), (0 + 0)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-((190) - 100))), (0 / 2), (0 / 2)));
local __dummy = math.random(1,100) -- obf
__hple7mFy5cJe = true;
__M8n4Lnwj7WSx = true;
else
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), ((101) - 100), (1 + 0));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (2 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__6PrBtx8Clb6D();
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
local __dummy = math.random(1,100) -- obf
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142);
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
end;
end;
end;
else
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142) then
pcall(function()
__eDDWaFt5wNC4();
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
if game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp (__KTHRMJr0kylS) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KTHRMJr0kylS and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (200 / 2) then
local __yShjfBo53oBP = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (-((115) - 100)), (0 + 0));
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("", "xor", 142))):__39fkVcO4USff(__decode_str("dacfde", "xor", 142), Vector3.__jlt1dqxndo3e(__yShjfBo53oBP.__VOh0QUyOOmmm));
__oPpJB9J20Dn6(__4wDFGga7BVSs);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (25 + 0), (0 + 0)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(180 / 2))), (0 / 2), ((100) - 100)));
__hple7mFy5cJe = true;
__M8n4Lnwj7WSx = true;
else
__M8n4Lnwj7WSx = false;
__hple7mFy5cJe = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), ((101) - 100), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__6PrBtx8Clb6D();
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC)) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142);
end;
end;
else
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__RdxMdlgKSoto);
local __dummy = math.random(1,100) -- obf
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1e0ebfd", "xor", 142) then
local __dummy = math.random(1,100) -- obf
pcall(function()
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__g0PIGyoASRbu);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
local __dummy = math.random(1,100) -- obf
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / ((200) - 100) then
__oPpJB9J20Dn6(__4wDFGga7BVSs);
local __yShjfBo53oBP = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (-(15 + 0)), (0 + 0));
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("", "xor", 142))):__39fkVcO4USff(__decode_str("dacfde", "xor", 142), Vector3.__jlt1dqxndo3e(__yShjfBo53oBP.__VOh0QUyOOmmm));
__hple7mFy5cJe = true;
__M8n4Lnwj7WSx = true;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), ((125) - 100), (0 / 2)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(90 + 0))), (0 + 0), (0 / 2)));
else
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__6PrBtx8Clb6D();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
local __dummy = math.random(1,100) -- obf
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
local __dummy = math.random(1,100) -- obf
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1e0ebfd", "xor", 142) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
__hple7mFy5cJe = false;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = false;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
end;
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cdefe5ebfefce7e0edeb", "xor", 142) then
pcall(function()
local __Hmf9c60rzzVD = CFrame.__jlt1dqxndo3e(-2091.911865234375, 70.00884246826172, -12142.8359375);
__ZvRxhTb1ZSdn(__Hmf9c60rzzVD);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaec9fbeffcea", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c6ebefeaaeccefe5ebfc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaec9fbeffcea", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c6ebefeaaeccefe5ebfc", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (200 / 2) then
__oPpJB9J20Dn6(__4wDFGga7BVSs);
local __yShjfBo53oBP = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (-((115) - 100)), ((100) - 100));
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("", "xor", 142))):__39fkVcO4USff(__decode_str("dacfde", "xor", 142), Vector3.__jlt1dqxndo3e(__yShjfBo53oBP.__VOh0QUyOOmmm));
__hple7mFy5cJe = true;
__M8n4Lnwj7WSx = true;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (25 + 0), ((100) - 100)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-((190) - 100))), (0 + 0), (0 / 2)));
else
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
end;
__XWnpo8UHUIoY();
__6PrBtx8Clb6D();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), (1 + 0));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (2 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 / 2);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cdefe5ebfefce7e0edeb", "xor", 142) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
local __dummy = math.random(1,100) -- obf
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("cdefe5ebaec9fbeffcea", "xor", 142)) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
end;
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142) then
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (2000 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (100 + 0) then
__oPpJB9J20Dn6(__4wDFGga7BVSs);
local __yShjfBo53oBP = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (-((115) - 100)), (0 + 0));
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("", "xor", 142))):__39fkVcO4USff(__decode_str("dacfde", "xor", 142), Vector3.__jlt1dqxndo3e(__yShjfBo53oBP.__VOh0QUyOOmmm));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), ((125) - 100), (0 + 0)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-((190) - 100))), (0 + 0), (0 / 2)));
local __dummy = math.random(1,100) -- obf
__hple7mFy5cJe = true;
__M8n4Lnwj7WSx = true;
else
__hple7mFy5cJe = false;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = false;
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), ((101) - 100), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (2 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__6PrBtx8Clb6D();
local __dummy = math.random(1,100) -- obf
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0ebeffcebfdfa", "xor", 142);
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
end;
end;
end;
end);
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] and _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1fdfd", "xor", 142) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
__nkJe5XtWiLCm();
__ZvRxhTb1ZSdn(__bUzH5hSpnNyN);
if (__bUzH5hSpnNyN.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((105) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __roqXwNdMmom0, __Qov8EVrhGJ5f);
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
pcall(function()
__nkJe5XtWiLCm();
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__65YwehFOMbAU) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __KZ3YmxKoXpWd and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (100 + 0) then
__oPpJB9J20Dn6(__4wDFGga7BVSs);
local __yShjfBo53oBP = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (-((115) - 100)), ((100) - 100));
((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("", "xor", 142))):__39fkVcO4USff(__decode_str("dacfde", "xor", 142), Vector3.__jlt1dqxndo3e(__yShjfBo53oBP.__VOh0QUyOOmmm));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (25 + 0), (0 / 2)) * CFrame.__ENCmfhcBfP8J(math.__wVuXkt9JO2Xa((-(90 + 0))), (0 + 0), ((100) - 100)));
__hple7mFy5cJe = true;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = true;
else
__hple7mFy5cJe = false;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = false;
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (2 / 2), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = (1 + 0);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__6PrBtx8Clb6D();
local __dummy = math.random(1,100) -- obf
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)] or not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("c3effdfaebfcf7aec3ebfae6e1ea", "xor", 142)] == __decode_str("cce1fdfd", "xor", 142) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or game.Players.__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC));
__M8n4Lnwj7WSx = false;
local __dummy = math.random(1,100) -- obf
end;
end;
else
__hple7mFy5cJe = false;
__M8n4Lnwj7WSx = false;
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__65YwehFOMbAU)).__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end);
__kWgfmvZUHIT1 = __DCylxAOY74jA.__3NWVD4iOlGWb:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("daf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
__2nnkaB3rlcP6 = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142),
__h2a28gDkPh9X = false,
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)]);
end
});
function __W539TNQfXnpT()
local __ivAesGEVjUIS = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__LRGaBodLNrEM.__0LaT7tiAOS7j;
local __PaEhcuDTsBJu = {
__gcObCbdnMc14 = false,
local __dummy = math.random(1,100) -- obf
__K8IVcubcdnQT = false,
__QVv5dRWqIsfK = false,
__hKaQbXIgrLrQ = false
};
for __dWyukss8iTi4, __D828YtJZSxSB in ipairs(__ivAesGEVjUIS:__pZnxUxkN8q9J()) do
if string.__g8zPDSHiqsZK(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("d0cbf7ebabeaaa", "xor", 142)) and __PaEhcuDTsBJu[__D828YtJZSxSB.__fkS8rZqI8rzC] ~= nil then
if tonumber(__D828YtJZSxSB.__mmv71rnj2zSN) == (0 + 0) then
__PaEhcuDTsBJu[__D828YtJZSxSB.__fkS8rZqI8rzC] = true;
end;
end;
end;
for __dWyukss8iTi4, __eepLQoU2wkkV in pairs(__PaEhcuDTsBJu) do
if not __eepLQoU2wkkV then
return false;
end;
end;
return true;
end;
function __bU2ikihGoMXi()
for __dWyukss8iTi4, __ZqGBQA8nzPfq in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__LRGaBodLNrEM.__0LaT7tiAOS7j:__pZnxUxkN8q9J()) do
if __ZqGBQA8nzPfq:__zsrrEF2lS1yp(__decode_str("cbefe9e2ebcce1fdfdcffcebe0ef", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__ZqGBQA8nzPfq.__FwGIof8z1kVN:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dafcebeb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(__D828YtJZSxSB.__I6TFTsZtr1bh.__VOh0QUyOOmmm));
__LMnyqIXcRSJX();
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
end;
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] then
pcall(function()
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daf7fcefe0faaee1e8aefae6ebaedde5e7ebfd", "xor", 142)) then
if not __W539TNQfXnpT() then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ddebfcfeebe0faaec6fbe0faebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde5fbe2e2aedde2eff7ebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c7fde2ebaecde6efe3fee7e1e0", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ddfbe0a3e5e7fdfdebeaaed9effcfce7e1fc", "xor", 142) then
if __D828YtJZSxSB.__o5H1UHU8JG5m and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
wait();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
__XWnpo8UHUIoY();
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or __W539TNQfXnpT() or (not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)]);
end;
end;
end;
else
local __dummy = math.random(1,100) -- obf
repeat wait()
local __dummy = math.random(1,100) -- obf
__bU2ikihGoMXi();
until (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daf7fcefe0faaee1e8aefae6ebaedde5e7ebfd", "xor", 142)) or (not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aeddfbe3e3e1e0aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)]);
end;
end;
end);
end;
end;
end);
__hlkllyEHkhYU = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142),
__h2a28gDkPh9X = false,
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)]);
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)] then
local _bctg = math.random() > 0.5 and true or false
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daf7fcefe0faaee1e8aefae6ebaedde5e7ebfd", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("daf7fcefe0faaee1e8aefae6ebaedde5e7ebfd", "xor", 142) then
repeat
wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
__XWnpo8UHUIoY();
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
until not __D828YtJZSxSB.__EOE6n5XMbH3v or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daf7fcefe0faaee1e8aefae6ebaedde5e7ebfd", "xor", 142))) or (not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec5e7e2e2aedaf7fcefe0faaec1e8aedae6ebaedde5e7ebfd", "xor", 142)]);
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end;
end;
end);
__UNwfNE57LjHo = __DCylxAOY74jA.__3NWVD4iOlGWb:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c3e1ecaec8effce3", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
if __r6rRqZJqrWdL then
__zMJ2Olm4MNhr = {
__decode_str("ccefe0eae7fa", "xor", 142),
__decode_str("c3e1e0e5ebf7", "xor", 142),
__decode_str("c9e1fce7e2e2ef", "xor", 142),
__decode_str("dee7fceffaeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("ccfcfbfaeb", "xor", 142),
__decode_str("caebfdebfcfaaeccefe0eae7fa", "xor", 142),
__decode_str("caebfdebfcfaaec1e8e8e7edebfc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("dde0e1f9aeccefe0eae7fa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("dde0e1f9e3efe0", "xor", 142),
__decode_str("cde6e7ebe8aedeebfafaf7aec1e8e8e7edebfc", "xor", 142),
__decode_str("dde5f7aeccefe0eae7fa", "xor", 142),
__decode_str("caeffce5aec3effdfaebfc", "xor", 142),
__decode_str("dae1e9efaed9effcfce7e1fc", "xor", 142),
__decode_str("c9e2efeae7effae1fc", "xor", 142),
__decode_str("c3e7e2e7faeffcf7aedde1e2eae7ebfc", "xor", 142),
__decode_str("c3e7e2e7faeffcf7aeddfef7", "xor", 142),
__decode_str("c8e7fde6e3efe0aed9effcfce7e1fc", "xor", 142),
__decode_str("c8e7fde6e3efe0aecde1e3e3efe0eae1", "xor", 142),
__decode_str("c9e1eaa9fdaec9fbeffcea", "xor", 142),
__decode_str("dde6efe0eaef", "xor", 142),
__decode_str("dce1f7efe2aeddfffbefea", "xor", 142),
__decode_str("dce1f7efe2aedde1e2eae7ebfc", "xor", 142),
__decode_str("c9efe2e2ebf7aedee7fceffaeb", "xor", 142),
__decode_str("c9efe2e2ebf7aecdeffefaefe7e0", "xor", 142)
};
elseif __xS6abtdaAUqB then
local _aupy = math.random() > 0.5 and true or false
__zMJ2Olm4MNhr = {
local __dummy = math.random(1,100) -- obf
__decode_str("dcefe7eaebfc", "xor", 142),
__decode_str("c3ebfcedebe0effcf7", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("ddf9efe0aedee7fceffaeb", "xor", 142),
__decode_str("c8efedfae1fcf7aeddfaefe8e8", "xor", 142),
__decode_str("c3effce7e0ebaec2e7ebfbfaebe0efe0fa", "xor", 142),
__decode_str("c3effce7e0ebaecdeffefaefe7e0", "xor", 142),
__decode_str("d4e1e3ece7eb", "xor", 142),
__decode_str("d8efe3fee7fceb", "xor", 142),
__decode_str("dde0e1f9aedafce1e1feebfc", "xor", 142),
__decode_str("d9e7e0faebfcaed9effcfce7e1fc", "xor", 142),
__decode_str("c2efecaeddfbece1fceae7e0effaeb", "xor", 142),
__decode_str("c6e1fce0ebeaaed9effcfce7e1fc", "xor", 142),
__decode_str("c3efe9e3efaec0e7e0e4ef", "xor", 142),
__decode_str("c2eff8efaedee7fceffaeb", "xor", 142),
__decode_str("dde6e7feaecaebede5e6efe0ea", "xor", 142),
__decode_str("dde6e7feaecbe0e9e7e0ebebfc", "xor", 142),
__decode_str("dde6e7feaeddfaebf9effcea", "xor", 142),
__decode_str("dde6e7feaec1e8e8e7edebfc", "xor", 142),
__decode_str("cffcedfae7edaed9effcfce7e1fc", "xor", 142),
__decode_str("dde0e1f9aec2fbfce5ebfc", "xor", 142),
__decode_str("ddebefaedde1e2eae7ebfc", "xor", 142),
__decode_str("d9effaebfcaec8e7e9e6faebfc", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
elseif __MZpSSSnhndYo then
__zMJ2Olm4MNhr = {
__decode_str("dee7fceffaebaec3e7e2e2e7e1e0efe7fceb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("cafcefe9e1e0aecdfcebf9aed9effcfce7e1fc", "xor", 142),
__decode_str("cafcefe9e1e0aecdfcebf9aecffcede6ebfc", "xor", 142),
__decode_str("c8ebe3efe2ebaec7fde2efe0eaebfc", "xor", 142),
__decode_str("c9e7efe0faaec7fde2efe0eaebfc", "xor", 142),
__decode_str("c3effce7e0ebaecde1e3e3e1eae1fceb", "xor", 142),
__decode_str("c3effce7e0ebaedcebeffcaecfeae3e7fcefe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c8e7fde6e3efe0aedcefe7eaebfc", "xor", 142),
__decode_str("c8e7fde6e3efe0aecdeffefaefe7e0", "xor", 142),
__decode_str("c8e1fcebfdfaaedee7fceffaeb", "xor", 142),
__decode_str("c3f7fae6e1e2e1e9e7edefe2aedee7fceffaeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c4fbe0e9e2ebaedee7fceffaeb", "xor", 142),
__decode_str("c3fbfde5ebfaebebfcaedee7fceffaeb", "xor", 142),
__decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142),
__decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142),
__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142),
__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("deebefe0fbfaaeddede1fbfa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("deebefe0fbfaaedefcebfde7eaebe0fa", "xor", 142),
__decode_str("c7edebaecdfcebefe3aecde6ebe8", "xor", 142),
__decode_str("c7edebaecdfcebefe3aecde1e3e3efe0eaebfc", "xor", 142),
__decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142),
__decode_str("cdefe5ebaec9fbeffcea", "xor", 142),
__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142),
__decode_str("c6ebefeaaeccefe5ebfc", "xor", 142),
__decode_str("cde1ede1efaed9effcfce7e1fc", "xor", 142),
__decode_str("cde6e1ede1e2effaebaecceffcaecceffafae2ebfc", "xor", 142),
__decode_str("ddf9ebebfaaedae6e7ebe8", "xor", 142),
__decode_str("cdefe0eaf7aedcebecebe2", "xor", 142),
__decode_str("cdefe0eaf7aedee7fceffaeb", "xor", 142),
__decode_str("dde0e1f9aecaebe3e1e0", "xor", 142),
__decode_str("c7fde2ebaec1fbfae2eff9", "xor", 142),
__decode_str("c7fde2efe0eaaecce1f7", "xor", 142),
__decode_str("ddfbe0a3e5e7fdfdebeaaed9effcfce7e1fc", "xor", 142),
__decode_str("c7fde2ebaecde6efe3fee7e1e0", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
local __dummy = math.random(1,100) -- obf
end;
__aogix4L6Lpqh = __DCylxAOY74jA.__3NWVD4iOlGWb:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaec3e1ec", "xor", 142),
__776eboSw51dy = __zMJ2Olm4MNhr,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3e1ecec", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3e1ec", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__yRc0RS01PSdB = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142),
__0eNWJkShlM4m = __decode_str("cffbfae1aec5e7e2e2aec3e1ecaed9e6ebe0aeddfeeff9e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)] then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3e1ec", "xor", 142)]) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaec3e1ec", "xor", 142)] then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec3e1ec", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end;
end;
end);
__sdmcSpU0qDEk = __DCylxAOY74jA.__3NWVD4iOlGWb:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cce1fdfdaec8effce3", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
__OlejHtP55KOS = __DCylxAOY74jA.__3NWVD4iOlGWb:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("cce1fdfdaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
spawn(function()
while wait(0.2) do
pcall(function()
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)]) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)]) then
__OlejHtP55KOS:__AuHle8YtGk0N(__decode_str("ddfeeff9e0af", "xor", 142));
else
__OlejHtP55KOS:__AuHle8YtGk0N(__decode_str("c0e1faaeddfeeff9e0", "xor", 142));
end;
end);
end;
end);
local __dummy = math.random(1,100) -- obf
if __r6rRqZJqrWdL then
__uqEwvJ3X96Hz = {
__decode_str("dae6ebaec9e1fce7e2e2efaec5e7e0e9", "xor", 142),
__decode_str("cce1ececf7", "xor", 142),
__decode_str("d7ebfae7", "xor", 142),
__decode_str("c3e1ecaec2ebefeaebfc", "xor", 142),
__decode_str("d8e7edebaecfeae3e7fcefe2", "xor", 142),
__decode_str("d9effceaebe0", "xor", 142),
__decode_str("cde6e7ebe8aed9effceaebe0", "xor", 142),
__decode_str("ddf9efe0", "xor", 142),
__decode_str("c3efe9e3efaecfeae3e7fcefe2", "xor", 142),
__decode_str("c8e7fde6e3efe0aec2e1fcea", "xor", 142),
__decode_str("d9f7fdfeebfc", "xor", 142),
__decode_str("dae6fbe0eaebfcaec9e1ea", "xor", 142),
__decode_str("cdf7ece1fce9", "xor", 142),
__decode_str("ddefecebfcaecbf6feebfcfa", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
elseif __xS6abtdaAUqB then
__uqEwvJ3X96Hz = {
__decode_str("cae7efe3e1e0ea", "xor", 142),
__decode_str("c4ebfcebe3f7", "xor", 142),
__decode_str("c8efe4e7faef", "xor", 142),
__decode_str("cae1e0aeddf9efe0", "xor", 142),
__decode_str("dde3e1e5ebaecfeae3e7fcefe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("cdfbfcfdebeaaecdeffefaefe7e0", "xor", 142),
__decode_str("caeffce5ecebeffcea", "xor", 142),
__decode_str("c1fceaebfc", "xor", 142),
__decode_str("cff9efe5ebe0ebeaaec7edebaecfeae3e7fcefe2", "xor", 142),
__decode_str("dae7eaebaec5ebebfeebfc", "xor", 142)
};
elseif __MZpSSSnhndYo then
__uqEwvJ3X96Hz = {
__decode_str("ddfae1e0eb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c7fde2efe0eaaecbe3fefcebfdfd", "xor", 142),
__decode_str("c5e7e2e1aecfeae3e7fcefe2", "xor", 142),
__decode_str("cdeffefaefe7e0aecbe2ebfee6efe0fa", "xor", 142),
__decode_str("ccebeffbfae7e8fbe2aedee7fceffaeb", "xor", 142),
__decode_str("fce7fed1e7e0eafcefaedafcfbebaec8e1fce3", "xor", 142),
__decode_str("c2e1e0e9e3ef", "xor", 142),
__decode_str("dde1fbe2aedcebeffeebfc", "xor", 142),
__decode_str("cdefe5ebaedffbebebe0", "xor", 142)
};
local __dummy = math.random(1,100) -- obf
end;
__TMOYhJ3sOfNy = __DCylxAOY74jA.__3NWVD4iOlGWb:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaecce1fdfd", "xor", 142),
local __dummy = math.random(1,100) -- obf
__776eboSw51dy = __uqEwvJ3X96Hz,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__ZnHkVQ8yPSNG = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("cffbfae1aec5e7e2e2aecce1fdfdaed9e6ebe0aeddfeeff9e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)] then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)]) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)] then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (2 / 2), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecce1fdfd", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
end;
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)]) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaecce1fdfd", "xor", 142)])).__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((105) - 100), (10 + 0), ((102) - 100)));
end;
end);
end;
end;
end);
__3Frx1Qrs2UUJ = __DCylxAOY74jA.__3NWVD4iOlGWb:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)] then
local _gqad = math.random() > 0.5 and true or false
pcall(function()
for __wuH8Mpu3pmTB, __0gi89j8JTOGJ in pairs(__uqEwvJ3X96Hz) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__0gi89j8JTOGJ) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __0gi89j8JTOGJ then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aecfe2e2aecce1fdfd", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__0gi89j8JTOGJ) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__0gi89j8JTOGJ)).__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((10 / 2), ((110) - 100), (4 / 2)));
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
end;
end);
__SMVNJp8OGeFR = __DCylxAOY74jA.__l1eNcZN7kMUU:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cbe2e7faebaec6fbe0faebfc", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
__X21n4buDFRon = __DCylxAOY74jA.__l1eNcZN7kMUU:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("cbe2e7faebaec6fbe0faebfcaeddfaeffafbfd", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142)) then
__X21n4buDFRon:__AuHle8YtGk0N(__decode_str("ddfeeff9e0af", "xor", 142));
else
__X21n4buDFRon:__AuHle8YtGk0N(__decode_str("c0e1faaeddfeeff9e0", "xor", 142));
end;
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__tWM8XhPzpnqG = __DCylxAOY74jA.__l1eNcZN7kMUU:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("cbe2e7faebaec6fbe0faebfcaedefce1e9fcebfdfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
spawn(function()
while wait() do
pcall(function()
if __r6rRqZJqrWdL or __xS6abtdaAUqB then
__tWM8XhPzpnqG:__AuHle8YtGk0N(__decode_str("ddebefaebdaec1e0e2f7", "xor", 142));
elseif __MZpSSSnhndYo then
__tWM8XhPzpnqG:__AuHle8YtGk0N((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cbe2e7faebc6fbe0faebfc", "xor", 142), __decode_str("defce1e9fcebfdfd", "xor", 142)));
local __dummy = math.random(1,100) -- obf
end;
end);
end;
local __dummy = math.random(1,100) -- obf
end);
__CXwHvtNQgY6U = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__a58D9zF9huyV = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfcaec6e1fe", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfcaec6e1fe", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfcaec6e1fe", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfcaec6e1fe", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
local __m0gFDXL0YBKo = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM;
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5418.892578125, 313.74130249023, -2826.2260742188));
local __dummy = math.random(1,100) -- obf
if (Vector3.__jlt1dqxndo3e((-5418.892578125), 313.74130249023, (-2826.2260742188)) - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((103) - 100) then
local _gqyi = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cbe2e7faebc6fbe0faebfc", "xor", 142));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
if string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("cae7efece2e1", "xor", 142)) or string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("caebefe0eafceb", "xor", 142)) or string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("dbfcecefe0", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cae7efece2e1", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebefe0eafceb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dbfcecefe0", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] == false or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfcaec6e1fe", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aecbe2e7faebaec6fbe0faebfc", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) and (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142))) and (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142))) then
__tCRxlxaunq6w();
end;
end;
end);
end;
end;
end);
__ymBfuKN3ycAt = __DCylxAOY74jA.__l1eNcZN7kMUU:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cce1e0ebaec8effce3", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __rAeoYpR9RfL3 = {
__decode_str("dffbebfdfa", "xor", 142),
__decode_str("c0e1aedffbebfdfa", "xor", 142)
};
__vOLLaIN618qR = __DCylxAOY74jA.__l1eNcZN7kMUU:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaecce1e0ebaec8effce3aec3ebfae6e1ea", "xor", 142),
__776eboSw51dy = __rAeoYpR9RfL3,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaecce1e0ebaec8effce3aec3ebfae6e1ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaecce1e0ebaec8effce3aec3ebfae6e1ea", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__mPkESVYgMGWJ = __DCylxAOY74jA.__l1eNcZN7kMUU:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("cce1e0ebfdaec1f9e0ebea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
spawn(function()
while wait() do
pcall(function()
local __yc6af5biXDER = __QmPKPs4IMK0U(__decode_str("cce1e0ebfd", "xor", 142));
__mPkESVYgMGWJ:__AuHle8YtGk0N(tostring(__yc6af5biXDER));
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__93jncZ0J8oho = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__Qi2HpMtMSMb5 = CFrame.__jlt1dqxndo3e(-9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaecce1e0ebaec8effce3aec3ebfae6e1ea", "xor", 142)] == __decode_str("c0e1aedffbebfdfa", "xor", 142) and _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-9506.234375, 172.130615234375, 6117.0771484375));
end;
end);
end;
end;
local __dummy = math.random(1,100) -- obf
end);
__IVl8anNlZ3nM = CFrame.__jlt1dqxndo3e(-9516.99316, 172.017181, 6078.46533, (0 / 2), ((100) - 100), -((101) - 100), (0 / 2), (1 + 0), (0 / 2), (1 + 0), ((100) - 100), (0 / 2));
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaecce1e0ebaec8effce3aec3ebfae6e1ea", "xor", 142)] == __decode_str("dffbebfdfa", "xor", 142) and _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] and __MZpSSSnhndYo then
local __dummy = math.random(1,100) -- obf
pcall(function()
local __m0gFDXL0YBKo = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM;
if not string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cfecefe0eae1e0dffbebfdfa", "xor", 142));
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false then
local _fnpb = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(__IVl8anNlZ3nM);
if (__IVl8anNlZ3nM.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (3 + 0) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfaeffcfadffbebfdfa", "xor", 142), __decode_str("c6effbe0faebeadffbebfdfabc", "xor", 142), ((101) - 100));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == true then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebece1fce0aedde5ebe2ebfae1e0", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2e7f8e7e0e9aed4e1e3ece7eb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee1fdebfdfdebeaaec3fbe3e3f7", "xor", 142) then
if string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__QfmdTNtKrNky.__m0gFDXL0YBKo.__xjylrXTbuXtG.__UQ0y7bOyEnwM, __decode_str("caebe3e1e0e7edaedde1fbe2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecce1e0eb", "xor", 142)] or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__7nGApC8ncN0d.__JFbKyO7H7hXV == false;
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
__CnxIXETGUsB1 = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedcefe0eae1e3aeddfbfcfefce7fdeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedcefe0eae1e3aeddfbfcfefce7fdeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedcefe0eae1e3aeddfbfcfefce7fdeb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedcefe0eae1e3aeddfbfcfefce7fdeb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedcefe0eae1e3aeddfbfcfefce7fdeb", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce1e0ebfd", "xor", 142), __decode_str("ccfbf7", "xor", 142), ((101) - 100), (2 / 2));
end;
end;
end);
local __dummy = math.random(1,100) -- obf
end);
__9ZpNXTIUWoWO = __DCylxAOY74jA.__l1eNcZN7kMUU:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("dee7fceffaebaedcefe7ea", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__JKe2cpSNjyJk = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
function __CsAqIVU8WMVY()
local __2owRjCy9xh3j = CFrame.__jlt1dqxndo3e(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, ((101) - 100), 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458);
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
local __zoI9Rbdayn9L = __D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm;
local __dummy = math.random(1,100) -- obf
if (__2owRjCy9xh3j.__VOh0QUyOOmmm - __zoI9Rbdayn9L).__FOKpnwcRDhaS <= ((2100) - 100) then
if __D828YtJZSxSB then
return __D828YtJZSxSB;
else
return false;
end;
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait() do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
if __D828YtJZSxSB.__fkS8rZqI8rzC then
if __CsAqIVU8WMVY() then
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (__D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (2000 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__UiNobUxSrFVc();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), ((101) - 100));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = ((100) - 100);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
until not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aedee7fceffaebaedcefe7ea", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__zsrrEF2lS1yp(__D828YtJZSxSB.__fkS8rZqI8rzC));
local __dummy = math.random(1,100) -- obf
end;
else
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, (1 + 0), 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458));
end;
end;
end;
end;
end);
end;
end;
end);
__aHYDZAMeOQw7 = __DCylxAOY74jA.__l1eNcZN7kMUU:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cde6ebfdfaaec8effce3", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__r85kM1iMMVby = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142),
__0eNWJkShlM4m = __decode_str("daf9ebebe0aefae1aeede6ebfdfa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
__50QoAl2ODR3N = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142),
__0eNWJkShlM4m = __decode_str("c7e0fdfaefe0faaefae1aeede6ebfdfa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__D7jWnGzPa3XA = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddfae1feaec7faebe3fd", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddfae1feaed9e6ebe0aec9ebfaaec9e1eaa9fdaecde6efe2e7edebaee1fcaec8e1ca", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfae1feaec7faebe3fd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfae1feaec7faebe3fd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfae1feaec7faebe3fd", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait() do
pcall(function()
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfae1feaec7faebe3fd", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c9e1eaa9fdaecde6efe2e7edeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c9e1eaa9fdaecde6efe2e7edeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142)) then
__50QoAl2ODR3N:__dgkV0bVUJBaZ(false);
__r85kM1iMMVby:__dgkV0bVUJBaZ(false);
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame);
end;
end;
end);
end;
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__70QgXsYrMza6:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("cde6ebfdfa", "xor", 142)) then
repeat
wait();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__MpVLhXQxylvc.CFrame);
local __dummy = math.random(1,100) -- obf
until _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaedaf9ebebe0", "xor", 142)] == false or (not __D828YtJZSxSB.__554Pe5pq8ngd);
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame);
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end);
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142)] then
local _snvp = math.random() > 0.5 and true or false
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__70QgXsYrMza6:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("cde6ebfdfa", "xor", 142)) then
repeat
wait();
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cae7efe3e1e0eacde6ebfdfa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__dQXp8VpNZvya(__D828YtJZSxSB.__MpVLhXQxylvc.CFrame);
elseif __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c9e1e2eacde6ebfdfa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__dQXp8VpNZvya(__D828YtJZSxSB.__MpVLhXQxylvc.CFrame);
local __dummy = math.random(1,100) -- obf
elseif __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde7e2f8ebfccde6ebfdfa", "xor", 142) then
__dQXp8VpNZvya(__D828YtJZSxSB.__MpVLhXQxylvc.CFrame);
end;
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aecde6ebfdfaaec7e0fdfaefe0fa", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end);
end;
end);
__cZW589ulI82N = __DCylxAOY74jA.__l1eNcZN7kMUU:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cdefe5ebaedefce7e0edeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__jYgQaIBvwdxr = __DCylxAOY74jA.__l1eNcZN7kMUU:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("cdefe5ebaedefce7e0edebaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
spawn(function()
while __dklWzigEM94H.wait((10 / 2)) do
pcall(function()
if __MZpSSSnhndYo then
if string.__XYmepDwubDAi((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142))) == (176 / 2) then
__jYgQaIBvwdxr:__AuHle8YtGk0N(string.__rneZNyTIq74i((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142)), (39 + 0), (82 / 2)) .. __decode_str("aedcebe3efe7e0e7e0e9", "xor", 142));
local __dummy = math.random(1,100) -- obf
elseif string.__XYmepDwubDAi((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142))) == ((187) - 100) then
__jYgQaIBvwdxr:__AuHle8YtGk0N(string.__rneZNyTIq74i((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142)), (78 / 2), (40 + 0)) .. __decode_str("aedcebe3efe7e0e7e0e9", "xor", 142));
elseif string.__XYmepDwubDAi((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142))) == ((186) - 100) then
__jYgQaIBvwdxr:__AuHle8YtGk0N(string.__rneZNyTIq74i((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142)), (39 + 0), (39 + 0)) .. __decode_str("aedcebe3efe7e0e7e0e9", "xor", 142));
else
__jYgQaIBvwdxr:__AuHle8YtGk0N(__decode_str("cdefe5ebaedefce7e0edebaeddfaeffafbfdb4aeddfeeff9e0ebeaaf", "xor", 142));
end;
else
__jYgQaIBvwdxr:__AuHle8YtGk0N(__decode_str("ddebefaebdaee1e0e2f7", "xor", 142));
end;
end);
end;
end);
__lUkBvMCH1s9F = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aec5effaefe5fbfce7", "xor", 142),
__0eNWJkShlM4m = __decode_str("cffbfae1aec8effce3aea5aec5e7e2e2aecdefe5ebaedefce7e0edebaed5aeddebefaebdaec1e0e2f7aed3", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__6RycfTDQgmpY = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddfeeff9e0aecdefe5ebaedefce7e0edeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfeeff9e0aecdefe5ebaedefce7e0edeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfeeff9e0aecdefe5ebaedefce7e0edeb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfeeff9e0aecdefe5ebaedefce7e0edeb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aeddfeeff9e0aecdefe5ebaedefce7e0edeb", "xor", 142)] and __MZpSSSnhndYo then
wait(((102) - 100));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdefe5ebdefce7e0edebddfeeff9e0ebfc", "xor", 142), true);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
if game.ReplicatedStorage:__zsrrEF2lS1yp(__decode_str("cdefe5ebaedefce7e0edeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaedefce7e0edeb", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaedefce7e0edeb", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaedefce7e0edeb", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), ((101) - 100), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__KfNZ12zNCtZV(__D828YtJZSxSB);
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100);
end;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__WfwsOPwpPmEv.__y0CoXvgZuyAZ.__4W4hXRVGapli.__mmv71rnj2zSN == (0 + 0) and ((CFrame.__jlt1dqxndo3e((-1990.672607421875), 4532.99951171875, (-14973.6748046875))).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS >= (4000 / 2) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2151.82153, 149.315704, -12404.9053));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaec9fbeffcea", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c6ebefeaaeccefe5ebfc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde1e1e5e7ebaecdfcefe8faebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaec9fbeffcea", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ccefe5e7e0e9aeddfaefe8e8", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c6ebefeaaeccefe5ebfc", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), (1 + 0));
local __dummy = math.random(1,100) -- obf
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec5effaefe5fbfce7", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__WfwsOPwpPmEv.__y0CoXvgZuyAZ.__4W4hXRVGapli.__mmv71rnj2zSN == ((100) - 100) or (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("cdefe5ebaedefce7e0edebaed5c2f8a0aebcbdbebed3aed5dcefe7eaaecce1fdfdd3", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaedefce7e0edebaed5c2f8a0aebcbdbebed3aed5dcefe7eaaecce1fdfdd3", "xor", 142));
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2091.911865234375, 70.00884246826172, -12142.8359375));
end;
end);
end;
end;
end);
__9iFatPXpeWta = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__0tD1XNuYGkl3 = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaedefce7e0edeb", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaedefce7e0edeb", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), ((101) - 100), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__KfNZ12zNCtZV(__D828YtJZSxSB);
__UiNobUxSrFVc();
if __D828YtJZSxSB.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("cfe0e7e3effae1fc", "xor", 142)) then
__D828YtJZSxSB.__o5H1UHU8JG5m.__pH1CcKeTWYsw:__m73XbhrKobs9();
end;
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecdefe5ebaedefce7e0edeb", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)] and __MZpSSSnhndYo then
local __dummy = math.random(1,100) -- obf
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae1fbe9e6aec5e7e0e9", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cae1fbe9e6aec5e7e0e9", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), ((101) - 100), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__KfNZ12zNCtZV(__D828YtJZSxSB);
__UiNobUxSrFVc();
if __D828YtJZSxSB.__o5H1UHU8JG5m:__zsrrEF2lS1yp(__decode_str("cfe0e7e3effae1fc", "xor", 142)) then
__D828YtJZSxSB.__o5H1UHU8JG5m.__pH1CcKeTWYsw:__m73XbhrKobs9();
end;
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec5e7e2e2aecae1fbe9e6aec5e7e0e9", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100);
end;
end;
end;
end;
end);
end;
local __dummy = math.random(1,100) -- obf
end;
end);
__LVd2ocABsNPz = __DCylxAOY74jA.__l1eNcZN7kMUU:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c3effaebfce7efe2fd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
if __r6rRqZJqrWdL then
__n6WMWWuXLxmb = {
__decode_str("c3efe9e3efaec1fceb", "xor", 142),
__decode_str("cfe0e9ebe2aed9e7e0e9fd", "xor", 142),
__decode_str("c2ebeffae6ebfc", "xor", 142),
__decode_str("ddedfceffeaec3ebfaefe2", "xor", 142)
};
elseif __xS6abtdaAUqB then
__n6WMWWuXLxmb = {
__decode_str("dcefeae7e1efedfae7f8eb", "xor", 142),
__decode_str("c3f7fdfae7edaecafce1fee2ebfa", "xor", 142),
__decode_str("c3efe9e3efaec1fceb", "xor", 142),
__decode_str("c2ebeffae6ebfc", "xor", 142),
__decode_str("cbedfae1fee2effde3", "xor", 142),
__decode_str("ddedfceffeaec3ebfaefe2", "xor", 142)
};
elseif __MZpSSSnhndYo then
local _mzjk = math.random() > 0.5 and true or false
__n6WMWWuXLxmb = {
__decode_str("c2ebeffae6ebfc", "xor", 142),
__decode_str("ddedfceffeaec3ebfaefe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("cde1e0e4fbfcebeaaecde1ede1ef", "xor", 142),
__decode_str("cafcefe9e1e0aeddedefe2eb", "xor", 142),
__decode_str("c9fbe0fee1f9eaebfc", "xor", 142),
__decode_str("c8e7fde6aedaefe7e2", "xor", 142),
__decode_str("c3e7e0e7aedafbfde5", "xor", 142)
};
local __dummy = math.random(1,100) -- obf
end;
function __F3XPxVytB2Ws(__98Huk91X4HSa)
if __98Huk91X4HSa == __decode_str("dcefeae7e1efedfae7f8eb", "xor", 142) and __xS6abtdaAUqB then
__QTzuq3lsovjt = {
__decode_str("c8efedfae1fcf7aeddfaefe8e8", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-507.7895202636719, 72.99479675292969, -126.45632934570312);
elseif __98Huk91X4HSa == __decode_str("c3f7fdfae7edaecafce1fee2ebfa", "xor", 142) and __xS6abtdaAUqB then
__QTzuq3lsovjt = {
__decode_str("d9effaebfcaec8e7e9e6faebfc", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-3352.9013671875, 285.01556396484375, -10534.841796875);
elseif __98Huk91X4HSa == __decode_str("c3efe9e3efaec1fceb", "xor", 142) and __r6rRqZJqrWdL then
__QTzuq3lsovjt = {
__decode_str("c3e7e2e7faeffcf7aeddfef7", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-5850.2802734375, 77.28675079345703, 8848.6748046875);
elseif __98Huk91X4HSa == __decode_str("c3efe9e3efaec1fceb", "xor", 142) and __xS6abtdaAUqB then
__QTzuq3lsovjt = {
__decode_str("c2eff8efaedee7fceffaeb", "xor", 142)
};
local __dummy = math.random(1,100) -- obf
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-5234.60595703125, 51.953372955322266, -4732.27880859375);
elseif __98Huk91X4HSa == __decode_str("cfe0e9ebe2aed9e7e0e9fd", "xor", 142) and __r6rRqZJqrWdL then
__QTzuq3lsovjt = {
__decode_str("dce1f7efe2aedde1e2eae7ebfc", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-7827.15625, 5606.912109375, -1705.5833740234375);
elseif __98Huk91X4HSa == __decode_str("c2ebeffae6ebfc", "xor", 142) and __r6rRqZJqrWdL then
__QTzuq3lsovjt = {
__decode_str("dee7fceffaeb", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
elseif __98Huk91X4HSa == __decode_str("c2ebeffae6ebfc", "xor", 142) and __xS6abtdaAUqB then
__QTzuq3lsovjt = {
__decode_str("c3effce7e0ebaecdeffefaefe7e0", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
elseif __98Huk91X4HSa == __decode_str("c2ebeffae6ebfc", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
local __dummy = math.random(1,100) -- obf
__decode_str("c4fbe0e9e2ebaedee7fceffaeb", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-11975.78515625, 331.7734069824219, -10620.0302734375);
elseif __98Huk91X4HSa == __decode_str("cbedfae1fee2effde3", "xor", 142) and __xS6abtdaAUqB then
__QTzuq3lsovjt = {
__decode_str("dde6e7feaecaebede5e6efe0ea", "xor", 142),
__decode_str("dde6e7feaecbe0e9e7e0ebebfc", "xor", 142),
__decode_str("dde6e7feaeddfaebf9effcea", "xor", 142),
__decode_str("dde6e7feaec1e8e8e7edebfc", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(911.35827636719, 125.95812988281, 33159.5390625);
elseif __98Huk91X4HSa == __decode_str("ddedfceffeaec3ebfaefe2", "xor", 142) and __r6rRqZJqrWdL then
__QTzuq3lsovjt = {
__decode_str("ccfcfbfaeb", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
elseif __98Huk91X4HSa == __decode_str("ddedfceffeaec3ebfaefe2", "xor", 142) and __xS6abtdaAUqB then
__QTzuq3lsovjt = {
__decode_str("c3ebfcedebe0effcf7", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-972.307373046875, 73.04473876953125, 1419.2901611328125);
local __dummy = math.random(1,100) -- obf
elseif __98Huk91X4HSa == __decode_str("ddedfceffeaec3ebfaefe2", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
__decode_str("dee7fceffaebaec3e7e2e2e7e1e0efe7fceb", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-289.6311950683594, 43.8282470703125, 5583.66357421875);
elseif __98Huk91X4HSa == __decode_str("cde1e0e4fbfcebeaaecde1ede1ef", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
__decode_str("cde6e1ede1e2effaebaecceffcaecceffafae2ebfc", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(744.7930908203125, 24.76934242248535, -12637.7255859375);
elseif __98Huk91X4HSa == __decode_str("cafcefe9e1e0aeddedefe2eb", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
__decode_str("cafcefe9e1e0aecdfcebf9aed9effcfce7e1fc", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(5824.06982421875, 51.38640213012695, -1106.694580078125);
elseif __98Huk91X4HSa == __decode_str("c9fbe0fee1f9eaebfc", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
__decode_str("dee7fdfae1e2aecce7e2e2e7e1e0efe7fceb", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-379.6134338378906, 73.84449768066406, 5928.5263671875);
elseif __98Huk91X4HSa == __decode_str("c8e7fde6aedaefe7e2", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
__decode_str("c8e7fde6e3efe0aecdeffefaefe7e0", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-10961.0126953125, 331.7977600097656, -8914.29296875);
elseif __98Huk91X4HSa == __decode_str("c3e7e0e7aedafbfde5", "xor", 142) and __MZpSSSnhndYo then
__QTzuq3lsovjt = {
__decode_str("c3e7fae6e1e2e1e9e7edefe2aedee7fceffaeb", "xor", 142)
};
__3KXVai5T31XR = CFrame.__jlt1dqxndo3e(-13516.0458984375, 469.8182373046875, -6899.16064453125);
end;
end;
__wlz2azsXMg4z = __DCylxAOY74jA.__l1eNcZN7kMUU:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaec3effaebfce7efe2", "xor", 142),
__776eboSw51dy = __n6WMWWuXLxmb,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaec3effaebfce7efe2", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaec3effaebfce7efe2", "xor", 142)] = __aKUFzd0fTFiM;
end
});
__k33eJj8nDaX7 = __DCylxAOY74jA.__l1eNcZN7kMUU:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
pcall(function()
__F3XPxVytB2Ws(_G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaec3effaebfce7efe2", "xor", 142)]);
for __wuH8Mpu3pmTB, __HowevNCWR52r in pairs(__QTzuq3lsovjt) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__HowevNCWR52r) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __HowevNCWR52r then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
local __dummy = math.random(1,100) -- obf
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aec8effce3aec3effaebfce7efe2", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
end;
else
local __dummy = math.random(1,100) -- obf
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __pPA6iFBpQok7 = (Vector3.__jlt1dqxndo3e(__3KXVai5T31XR) - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS;
if __pPA6iFBpQok7 > (18000 + 0) and _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("ddebe2ebedfaebeaaec3effaebfce7efe2", "xor", 142)] == __decode_str("cbedfae1fee2effde3", "xor", 142) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(923.21252441406, 126.9760055542, 32852.83203125));
end;
__ZvRxhTb1ZSdn(__3KXVai5T31XR);
end;
end;
end);
end;
end;
end);
__uVZOkjqWnPqp = __DCylxAOY74jA.__J2OU8SSTP3dY:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddebfafae7e0e9fd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__RLFca0kSEWRA = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("ddfee7e0aedee1fde7fae7e1e0", "xor", 142),
__0eNWJkShlM4m = __decode_str("ddfee7e0aedee1fde7fae7e1e0aed9e6ebe0aec8effce3", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ddfee7e0aedee1fde7fae7e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ddfee7e0aedee1fde7fae7e1e0", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__T05dXJjYsN0a = __DCylxAOY74jA.__J2OU8SSTP3dY:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("c8effce3aecae7fdfaefe0edeb", "xor", 142),
__1TIHvcyWHn8m = (2 / 2),
__KuJIgOIz2WnP = {
__jsGdGsl0mEq4 = ((110) - 100),
__IxVMEpQMEsRr = (100 / 2),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effce3aecae7fdfaefe0edeb", "xor", 142)]
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effce3aecae7fdfaefe0edeb", "xor", 142)] = __d1HwnaJEXiV5;
end
});
__Sxm5yUFTHihX = __DCylxAOY74jA.__J2OU8SSTP3dY:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("dee2eff7ebfcaedaf9ebebe0aeddfeebebea", "xor", 142),
__1TIHvcyWHn8m = (1 + 0),
__KuJIgOIz2WnP = {
__jsGdGsl0mEq4 = (10 + 0),
__IxVMEpQMEsRr = (700 / 2),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("dee2eff7ebfcaedaf9ebebe0aeddfeebebea", "xor", 142)]
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("dee2eff7ebfcaedaf9ebebe0aeddfeebebea", "xor", 142)] = __d1HwnaJEXiV5;
end
});
__UlB4ylH4ODQW = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("ccfce7e0e9aec3e1ec", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ec", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
spawn(function()
while __dklWzigEM94H.wait() do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ec", "xor", 142)] then
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if not string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("cce1fdfd", "xor", 142)) and __D828YtJZSxSB.__fkS8rZqI8rzC == __QLkfxsBRmgD9 and (__D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= __XFmAKKkMF6HZ then
__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame = __z78La5Y1pDKa;
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), (2 / 2));
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end;
end;
end);
local __nMZeFcRXr7v2 = {
local __dummy = math.random(1,100) -- obf
__decode_str("c2e1f9", "xor", 142),
__decode_str("c0e1fce3efe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c6e7e9e6", "xor", 142)
};
__DYNdvrlxw32I = __DCylxAOY74jA.__J2OU8SSTP3dY:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("ccfce7e0e9aec3e1ec", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ecaec3e1eaeb", "xor", 142)],
__776eboSw51dy = __nMZeFcRXr7v2,
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ecaec3e1eaeb", "xor", 142)] = __aKUFzd0fTFiM;
end
local __dummy = math.random(1,100) -- obf
});
local __lVnhlfZcw84N = {
local __dummy = math.random(1,100) -- obf
__decode_str("dde2e1f9", "xor", 142),
__decode_str("c0e1fce3efe2", "xor", 142),
__decode_str("c8effdfa", "xor", 142),
__decode_str("ddfbfeebfcaec8effdfa", "xor", 142)
};
__9O6zhvSs5BY2 = __DCylxAOY74jA.__J2OU8SSTP3dY:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("c8effdfaaecffafaefede5aec3ebfae6e1ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)],
__776eboSw51dy = __lVnhlfZcw84N,
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)] = __aKUFzd0fTFiM;
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait() do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)] == __decode_str("dde2e1f9", "xor", 142) then
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aecaebe2eff7", "xor", 142)] = 0.25;
elseif _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)] == __decode_str("c0e1fce3efe2", "xor", 142) then
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aecaebe2eff7", "xor", 142)] = 0.20;
elseif _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)] == __decode_str("c8effdfa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aecaebe2eff7", "xor", 142)] = 0.15;
elseif _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aec3e1eaeb", "xor", 142)] == __decode_str("ddfbfeebfcaec8effdfa", "xor", 142) then
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8effdfaaecffafaefede5aecaebe2eff7", "xor", 142)] = 0.10;
end;
end;
end);
spawn(function()
while wait() do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ec", "xor", 142)] then
pcall(function()
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ecaec3e1eaeb", "xor", 142)] == __decode_str("c2e1f9", "xor", 142) then
__XFmAKKkMF6HZ = (150 + 0);
elseif _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ecaec3e1eaeb", "xor", 142)] == __decode_str("c0e1fce3efe2", "xor", 142) then
__XFmAKKkMF6HZ = (500 / 2);
elseif _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("ccfce7e0e9aec3e1ecaec3e1eaeb", "xor", 142)] == __decode_str("c6e7e9e6", "xor", 142) then
__XFmAKKkMF6HZ = (800 + 0);
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end;
end);
__meChrGm6r5sH = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffaeffaede5aecffbfcef", "xor", 142),
__0eNWJkShlM4m = __decode_str("cffafaefede5aec0ebeffcebfdfaaecbe0ebe3e7ebfd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffafaefede5aecffbfcef", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffafaefede5aecffbfcef", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__RyTqZfkPCT3K:__IBjsl3vUzJA0(function()
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffafaefede5aecffbfcef", "xor", 142)] and (not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec8fcfbe7faaec3effdfaebfcf7", "xor", 142)]) and (not _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3aec9fbe0aec3effdfaebfcf7", "xor", 142)]) then
pcall(function()
__UiNobUxSrFVc();
end);
end;
end);
end);
__fJTRvS91tfe5 = __DCylxAOY74jA.__J2OU8SSTP3dY:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c9fceffee6e7ed", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__5uLSLX7K9wFb = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("c6e7eaebaec0e1fae7e8e7edeffae7e1e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaec0e1fae7e8e7edeffae7e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaec0e1fae7e8e7edeffae7e1e0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaec0e1fae7e8e7edeffae7e1e0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaec0e1fae7e8e7edeffae7e1e0", "xor", 142)] then
game.Players.__fni3Hio5E7WB.__aHYwNMRnXb7O.__rooxm5qatLgv.__2IDvfG6hks18 = false;
else
game.Players.__fni3Hio5E7WB.__aHYwNMRnXb7O.__rooxm5qatLgv.__2IDvfG6hks18 = true;
end;
end;
end);
__tLMwCFcRxQgh = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c6e7eaebaecaefe3efe9ebaedaebf6fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaecaefe3efe9ebaedaebf6fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaecaefe3efe9ebaedaebf6fa", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaecaefe3efe9ebaedaebf6fa", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c6e7eaebaecaefe3efe9ebaedaebf6fa", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__9vWce5kZ9tfo.__GylRsXg1cH2C.__JL4belvGONmS.__2IDvfG6hks18 = false;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__9vWce5kZ9tfo.__GylRsXg1cH2C.__JL4belvGONmS.__2IDvfG6hks18 = true;
end;
end;
end);
__TEQFYmQLZEan = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cce2efede5aeddedfcebebe0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cce2efede5aeddedfcebebe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cce2efede5aeddedfcebebe0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cce2efede5aeddedfcebebe0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cce2efede5aeddedfcebebe0", "xor", 142)] then
local _gjfi = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__MrPTnXYYdhFC.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1000 / 2), ((100) - 100), (500 + 0), (500 + 0));
else
(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__MrPTnXYYdhFC.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 + 0), ((600) - 100), (1000 / 2));
end;
end;
local __dummy = math.random(1,100) -- obf
end);
__k8xAC0gY93Y7 = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("d9e6e7faebaeddedfcebebe0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("d9e6e7faebaeddedfcebebe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("d9e6e7faebaeddedfcebebe0", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("d9e6e7faebaeddedfcebebe0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("d9e6e7faebaeddedfcebebe0", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))):__X8ru77fZvKP2(false);
else
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))):__X8ru77fZvKP2(true);
end;
end;
end);
__mkjSPHvd36sA = __DCylxAOY74jA.__J2OU8SSTP3dY:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("c3effdfaebfcf7aeddebfafae7e0e9fd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__r7rd960ZSfGG = __DCylxAOY74jA.__J2OU8SSTP3dY:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("c3effdfaebfcf7aec6ebefe2fae6aeab", "xor", 142),
__1TIHvcyWHn8m = ((101) - 100),
__KuJIgOIz2WnP = {
__jsGdGsl0mEq4 = (1 + 0),
__IxVMEpQMEsRr = ((200) - 100),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)]
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] = __d1HwnaJEXiV5;
end
});
__qEHYA0Al7u0l = __DCylxAOY74jA.__J2OU8SSTP3dY:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaedde5e7e2e2", "xor", 142)
});
__22hQQxYr2eMs = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aed4", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed4", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
__mJxTYUiyixia = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aed6", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed6", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__wa3lWac3kGVx = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aecd", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aecd", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__210AFpE6Y3wc = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aed8", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed8", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed8", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__lOjA1A4ymQ3t = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aec8", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aec8", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aec8", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__nmilfAS9PmT3 = __DCylxAOY74jA.__J2OU8SSTP3dY:__vFHwqBD0ODRr({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("c9fbe0aedde5e7e2e2", "xor", 142)
});
__Jt3DdUOY8qy4 = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aed4", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c9fbe0aec3effdfaebfcf7aedde5e7e2e2aed4", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
__ks29ep19VZnK = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dde5e7e2e2aed6", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c9fbe0aec3effdfaebfcf7aedde5e7e2e2aed6", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__evsuY7IcHr8X = __DCylxAOY74jA.__J2OU8SSTP3dY:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("c1fae6ebfcfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
__T9DqAc3MtMPU = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddebfaaeddfeeff9e0aedee1e7e0fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aeddebfaaeddfeeff9e0aedee1e7e0fa", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aeddebfaaeddfeeff9e0aedee1e7e0fa", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait() do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aeddebfaaeddfeeff9e0aedee1e7e0fa", "xor", 142)] then
pcall(function()
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddebfaddfeeff9e0dee1e7e0fa", "xor", 142));
local __dummy = math.random(1,100) -- obf
end);
end;
end;
end);
__t6OxQpvZ9SXJ = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aec1ecfdebfcf8effae7e1e0", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__HWOrih88xgxN:__zsrrEF2lS1yp(__decode_str("c7e3efe9ebc2efecebe2", "xor", 142)) then
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142))):__dJgipi3LRiQc();
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142))):__FjzBZoodOhGc(__decode_str("bef6b8bb", "xor", 142));
wait();
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142))):__mXDLAFgBX1ft(__decode_str("bef6b8bb", "xor", 142));
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
__2veoBktqCAA9 = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec6efe5e7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aec6efe5e7", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aec6efe5e7", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__N9pAay9UgWd9 = __DCylxAOY74jA.__J2OU8SSTP3dY:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedcebe4e1e7e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aedcebe4e1e7e0", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aedcebe4e1e7e0", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aedcebe4e1e7e0", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
local _cxvi = math.random() > 0.5 and true or false
game.__KOnHHKgXWzAS.__u693cOyd6SJo.__4DeWcW1WjGum.__pxWf03Cl27xl:__IBjsl3vUzJA0(function(__D828YtJZSxSB)
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cbfcfce1fcdefce1e3fefa", "xor", 142) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c3ebfdfdefe9ebcffcebef", "xor", 142)) and __D828YtJZSxSB.__0LAa09P9MXTO:__zsrrEF2lS1yp(__decode_str("cbfcfce1fcc8fcefe3eb", "xor", 142)) then
(game:__l5bfpCl4hkCi(__decode_str("daebe2ebfee1fcfaddebfcf8e7edeb", "xor", 142))):__0zhz4rT7Amow(game.__5eMyVUJ53PmT);
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("cffbfae1aec6efe5e7", "xor", 142)] then
if not game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6effdccfbfde1", "xor", 142)) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbfde1", "xor", 142));
end;
end;
end;
end);
__BaPtEX2CyPhn = __DCylxAOY74jA.__btaIdBy3P7Sk:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("d9e1fce2ea", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__ZoOHp2BtoNAy = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__FUU6q3YjQutJ = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebcaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)] then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((1600) - 100) and __xS6abtdaAUqB then
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("d4dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("c9ebe0ebfcefe2", "xor", 142)) == (0 + 0) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1926.3221435547, 12.819851875305, 1738.3092041016));
if ((CFrame.__jlt1dqxndo3e((-1926.3221435547), 12.819851875305, 1738.3092041016)).__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (20 / 2) then
wait(1.5);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("d4dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("ccebe9e7e0", "xor", 142));
end;
wait(1.8);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("fce7fed1e7e0eafcef", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("fce7fed1e7e0eafcef", "xor", 142) then
__lC7pa7Wq28rB = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame = __lC7pa7Wq28rB;
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), ((101) - 100), ((101) - 100));
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2d4e1fb", "xor", 142));
until _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedae6e7fceaaeddebef", "xor", 142)] == false or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
end;
local __dummy = math.random(1,100) -- obf
end;
elseif not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("fce7fed1e7e0eafcef", "xor", 142)) and ((CFrame.__jlt1dqxndo3e((-26880.93359375), 22.848554611206, 473.18951416016)).__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((1100) - 100) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-26880.93359375, 22.848554611206, 473.18951416016));
end;
end;
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] and __r6rRqZJqrWdL then
pcall(function()
local __iuZyVIy0nn3U = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__a4jX0ZvdWCCK.__KuJIgOIz2WnP;
if __iuZyVIy0nn3U >= (700 + 0) and __r6rRqZJqrWdL then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__XEPswls5Tm9f.__pUZQaPWL1Bno.__eybULosT02L8 == false and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__XEPswls5Tm9f.__pUZQaPWL1Bno.__mmv71rnj2zSN == (2 / 2) then
local __A9o76iAcn89l = CFrame.__jlt1dqxndo3e(4849.29883, 5.65138149, 719.611877);
repeat
__ZvRxhTb1ZSdn(__A9o76iAcn89l);
wait();
until (__A9o76iAcn89l.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((103) - 100) or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] == false;
local __dummy = math.random(1,100) -- obf
wait(1.1);
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cafcebfdfdfce1fdefdffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("caebfaebedfae7f8eb", "xor", 142));
wait(0.5);
__oPpJB9J20Dn6(__decode_str("c5ebf7", "xor", 142));
repeat
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(1347.7124, 37.3751602, -1325.6488));
local __dummy = math.random(1,100) -- obf
wait();
local __dummy = math.random(1,100) -- obf
until (Vector3.__jlt1dqxndo3e(1347.7124, 37.3751602, (-1325.6488)) - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((103) - 100) or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] == false;
wait(0.5);
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__XEPswls5Tm9f.__pUZQaPWL1Bno.__eybULosT02L8 == false and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__XEPswls5Tm9f.__pUZQaPWL1Bno.__mmv71rnj2zSN == (2 / 2) then
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c7edebaecfeae3e7fcefe2", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c7edebaecfeae3e7fcefe2", "xor", 142) then
if not __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
__F5NgZ2FmI02r = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), (1 + 0));
__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame = __F5NgZ2FmI02r;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddebede1e0eaaeddebef", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
else
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2cafcebfdfdfce1fdef", "xor", 142));
end;
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c7edebaecfeae3e7fcefe2", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c7edebaecfeae3e7fcefe2", "xor", 142))).__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((5 + 0), (20 / 2), ((107) - 100)));
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
__BaPtEX2CyPhn = __DCylxAOY74jA.__btaIdBy3P7Sk:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c8e7e9e6fae7e0e9aeddfaf7e2eb", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__peFlBkurhUSP = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddfbfeebfcaec6fbe3efe0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddfbfeebfcaec6fbe3efe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddfbfeebfcaec6fbe3efe0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddfbfeebfcaec6fbe3efe0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__DmB0y5oC3r6n = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecaebeffae6aeddfaebfe", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaebeffae6aeddfaebfe", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaebeffae6aeddfaebfe", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaebeffae6aeddfaebfe", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__ODQO0sb2DPwV = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedde6effce5e3efe0aec5effceffaeb", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8e7fde6e3efe0aec5effceffaeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8e7fde6e3efe0aec5effceffaeb", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8e7fde6e3efe0aec5effceffaeb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__pwbcM6ijAqhN = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__HT9G5VKeQTaw = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecafcefe9e1e0aedaefe2e1e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedaefe2e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedaefe2e1e0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedaefe2e1e0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
local __dummy = math.random(1,100) -- obf
__b8SihxRblrsq = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9e1eaaec6fbe3efe0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9e1eaaec6fbe3efe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9e1eaaec6fbe3efe0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9e1eaaec6fbe3efe0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while __dklWzigEM94H.wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9e1eaaec6fbe3efe0", "xor", 142)] then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("dde6effce5e3efe0aec5effceffaeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("dde6effce5e3efe0aec5effceffaeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c9e1eae6fbe3efe0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c9e1eae6fbe3efe0", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddfbfeebfce6fbe3efe0", "xor", 142), true) == ((101) - 100) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (800 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7caebeffae6ddfaebfe", "xor", 142));
end;
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0e1faaec6eff8ebaeddfbfeebfce6fbe3efe0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = ((105) - 100)
});
end;
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7caebeffae6ddfaebfe", "xor", 142), true) == (2 / 2) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((500) - 100) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((500) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142));
end;
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0e1faaec6eff8ebaecaebeffae6aeddfaebfe", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = (5 + 0)
});
end;
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142), true) == (1 + 0) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("dde6effce5e3efe0aec5effceffaeb", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("dde6effce5e3efe0aec5effceffaeb", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("dde6effce5e3efe0aec5effceffaeb", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("dde6effce5e3efe0aec5effceffaeb", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (800 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142));
end;
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0e1faaec6eff8ebaedde6effce5e3efe0aec5effceffaeb", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = (5 + 0)
});
end;
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142), true) == (1 + 0) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (800 / 2) then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cafcefe9e1e0daefe2e1e0", "xor", 142));
end;
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0e1faaec6eff8ebaecbe2ebedfafce7edaecde2eff9", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = ((105) - 100)
});
end;
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cafcefe9e1e0daefe2e1e0", "xor", 142), true) == (1 + 0) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (800 / 2) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) then
if string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c9e1eae6fbe3efe0", "xor", 142), true), __decode_str("ccfce7e0e9", "xor", 142)) then
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0e1faaec6eff8ebaecbe0e1fbe9e6aec3effaebfce7efe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = ((105) - 100)
});
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c9e1eae6fbe3efe0", "xor", 142));
end;
end;
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0e1faaec6eff8ebaecafcefe9e1e0aedaefe2e1e0", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = ((105) - 100)
});
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddfbfeebfce6fbe3efe0", "xor", 142));
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedaefe2e1e0", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cafcefe9e1e0daefe2e1e0", "xor", 142));
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((500) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cafcefe9e1e0daefe2e1e0", "xor", 142));
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cafcefe9e1e0aedaefe2e1e0", "xor", 142);
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= (399 + 0) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cafcefe9e1e0aecde2eff9", "xor", 142);
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bc", "xor", 142));
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end);
local __dummy = math.random(1,100) -- obf
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8e7fde6e3efe0aec5effceffaeb", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c8e7fde6e3efe0c5effceffaeb", "xor", 142));
if string.__ItpWI3q7p23L((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142)), __decode_str("e5ebf7fd", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("d9effaebfcaec5ebf7", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("d9effaebfcaec5ebf7", "xor", 142)) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2604.6958, 239.432526, -10315.1982, 0.0425701365, ((100) - 100), -0.999093413, ((100) - 100), ((101) - 100), ((100) - 100), 0.999093413, (0 + 0), 0.0425701365));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142));
local __dummy = math.random(1,100) -- obf
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (800 / 2) then
local __dummy = math.random(1,100) -- obf
else
__ppyFfrVo7FDc = __decode_str("dae7eaebaec5ebebfeebfc", "xor", 142);
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__ppyFfrVo7FDc) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __ppyFfrVo7FDc then
__cTMkqYawKC0w = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), (2 / 2));
__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame = __cTMkqYawKC0w;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(((102) - 100), (40 / 2), ((102) - 100)));
__UiNobUxSrFVc();
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec8e7fde6e3efe0aec5effceffaeb", "xor", 142)] == false or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("d9effaebfcaec5ebf7", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("d9effaebfcaec5ebf7", "xor", 142));
end;
local __dummy = math.random(1,100) -- obf
end;
else
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, (2 / 2), 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
local __dummy = math.random(1,100) -- obf
wait((3 + 0));
end;
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((500) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142));
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142);
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((500) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142));
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142);
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= (399 + 0) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cbe2ebedfafce1", "xor", 142);
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce1", "xor", 142));
end;
end;
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] then
local _duly = math.random() > 0.5 and true or false
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (400 + 0) then
if _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] == false then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-10371.4717, 330.764496, -10131.4199));
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (CFrame.__jlt1dqxndo3e((-10371.4717), 330.764496, (-10131.4199))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10 + 0);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142), __decode_str("ddfaeffcfa", "xor", 142));
wait((2 + 0));
repeat
__dklWzigEM94H.wait();
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-12550.532226563, 336.22631835938, -7510.4233398438));
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (CFrame.__jlt1dqxndo3e((-12550.532226563), 336.22631835938, (-7510.4233398438))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((110) - 100);
wait(((101) - 100));
repeat
__dklWzigEM94H.wait();
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-10371.4717, 330.764496, -10131.4199));
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (CFrame.__jlt1dqxndo3e((-10371.4717), 330.764496, (-10131.4199))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((110) - 100);
local __dummy = math.random(1,100) -- obf
wait((1 + 0));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142));
elseif _G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] == true then
local __dummy = math.random(1,100) -- obf
local _gkvt = math.random() > 0.5 and true or false
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] = false;
wait(((101) - 100));
repeat
__dklWzigEM94H.wait();
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-10371.4717, 330.764496, -10131.4199));
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (CFrame.__jlt1dqxndo3e((-10371.4717), 330.764496, (-10131.4199))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((110) - 100);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142), __decode_str("ddfaeffcfa", "xor", 142));
wait(((102) - 100));
repeat
__dklWzigEM94H.wait();
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-12550.532226563, 336.22631835938, -7510.4233398438));
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (CFrame.__jlt1dqxndo3e((-12550.532226563), 336.22631835938, (-7510.4233398438))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10 + 0);
local __dummy = math.random(1,100) -- obf
wait(((101) - 100));
repeat
__dklWzigEM94H.wait();
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-10371.4717, 330.764496, -10131.4199));
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecbe2ebedfafce7edaecde2eff9", "xor", 142)] or ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (CFrame.__jlt1dqxndo3e((-10371.4717), 330.764496, (-10131.4199))).__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (20 / 2);
wait(((101) - 100));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142));
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cbe2ebedfafce7edaecde2eff9", "xor", 142);
wait(0.1);
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("cffbfae1aec8effce3", "xor", 142)] = true;
end;
end;
end;
end;
end;
end);
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaebeffae6aeddfaebfe", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("caebeffae6aeddfaebfe", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (450 + 0) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7caebeffae6ddfaebfe", "xor", 142));
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("caebeffae6aeddfaebfe", "xor", 142);
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((550) - 100) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7caebeffae6ddfaebfe", "xor", 142));
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("caebeffae6aeddfaebfe", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) and ((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= ((549) - 100) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cce2efede5aec2ebe9", "xor", 142);
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce2efede5c2ebe9", "xor", 142));
local __dummy = math.random(1,100) -- obf
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddfbfeebfcaec6fbe3efe0", "xor", 142)] then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cde1e3eceffa", "xor", 142)) or game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cde1e3eceffa", "xor", 142)) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= ((150100) - 100) then
__HW79Kiu5zpAv(__decode_str("cde1e3eceffa", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce2efede5c2ebe9", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142)) or game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("ddfbfeebfce6fbe3efe0", "xor", 142)) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("ddfbfeebfce6fbe3efe0", "xor", 142);
end;
local __dummy = math.random(1,100) -- obf
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) or game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) or game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) or game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) or game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) or game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) or game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) then
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= ((399) - 100) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cce2efede5aec2ebe9", "xor", 142);
end;
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= (299 + 0) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cbe2ebedfafce1", "xor", 142);
end;
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= (299 + 0) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142);
end;
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP <= (598 / 2) then
_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)] = __decode_str("cafcefe9e1e0aecde2eff9", "xor", 142);
end;
local __dummy = math.random(1,100) -- obf
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (600 / 2) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= ((300100) - 100) then
__HW79Kiu5zpAv(__decode_str("cce2efede5aec2ebe9", "xor", 142));
local __dummy = math.random(1,100) -- obf
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce1", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cce2efede5aec2ebe9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((400) - 100) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= (300000 + 0) then
__HW79Kiu5zpAv(__decode_str("cce2efede5aec2ebe9", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce1", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (300 + 0) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= ((750100) - 100) then
__HW79Kiu5zpAv(__decode_str("cbe2ebedfafce1", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c8e7fde6e3efe0c5effceffaeb", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cbe2ebedfafce1", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (600 / 2) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= (1500000 / 2) then
__HW79Kiu5zpAv(__decode_str("cbe2ebedfafce1", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c8e7fde6e3efe0c5effceffaeb", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (600 / 2) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__DgAgnU8OQU64.__C6JPlc6eWb7y.__p2QKbfWsuWcj.__KuJIgOIz2WnP >= (1500 + 0) then
__HW79Kiu5zpAv(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bc", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (300 + 0) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__DgAgnU8OQU64.__C6JPlc6eWb7y.__p2QKbfWsuWcj.__KuJIgOIz2WnP >= (3000 / 2) then
local __dummy = math.random(1,100) -- obf
__HW79Kiu5zpAv(__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bc", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (600 / 2) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= ((3000100) - 100) then
__HW79Kiu5zpAv(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142));
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddfbfeebfce6fbe3efe0", "xor", 142));
end;
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142)) and (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142))).__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= ((400) - 100) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__HZPXjAgqWxV8.__KuJIgOIz2WnP >= ((3000100) - 100) then
__HW79Kiu5zpAv(__decode_str("cafcefe9e1e0aecde2eff9", "xor", 142));
wait(0.1);
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddfbfeebfce6fbe3efe0", "xor", 142));
end;
end;
end;
end;
end);
end);
__BaPtEX2CyPhn = __DCylxAOY74jA.__btaIdBy3P7Sk:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c9fbe0aea8aeddf9e1fcea", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__2Br5JJpYCkRs = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9ebfaaeddefecebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
spawn(function()
while __dklWzigEM94H.wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)] and __r6rRqZJqrWdL and game.Players.__fni3Hio5E7WB.__C6JPlc6eWb7y.__a4jX0ZvdWCCK.__KuJIgOIz2WnP >= (200 + 0) then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__TshNtlYvmx3w.__a61duhZB9ggu.__mmv71rnj2zSN == (0 / 2) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__ZkgNAXN1cElF.__pUZQaPWL1Bno.__mmv71rnj2zSN == (0 / 2) then
if ((CFrame.__jlt1dqxndo3e((-1612.55884), 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, (-0.928667724), 0.0000000397099491, (1 + 0), 0.0000000191679348, 0.928667724, (-0.0000000439869794), 0.37091279)).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((200) - 100) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame);
wait(((101) - 100));
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__ZkgNAXN1cElF.__T3LMKbnnJZJZ.__uVFG730VwRDA.CFrame;
wait((2 / 2));
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__ZkgNAXN1cElF.__fOsko1NadlRc.__uVFG730VwRDA.CFrame;
wait((2 / 2));
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__ZkgNAXN1cElF.__JCdvUi0Q0yNQ.__uVFG730VwRDA.CFrame;
wait((2 / 2));
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__ZkgNAXN1cElF.__AHCyKARykwGn.__uVFG730VwRDA.CFrame;
wait((2 / 2));
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__gUOyJlJnrfGb.__ZkgNAXN1cElF.__3EkQyGW1hH7o.__uVFG730VwRDA.CFrame;
wait((2 / 2));
else
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1612.55884, 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, -0.928667724, 0.0000000397099491, (1 + 0), 0.0000000191679348, 0.928667724, -0.0000000439869794, 0.37091279));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__M3HrdvjE4D7l.__VOploudWvlmi.__a61duhZB9ggu.__mmv71rnj2zSN == (0 + 0) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("dae1fcede6", "xor", 142)) or game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("dae1fcede6", "xor", 142)) then
__oPpJB9J20Dn6(__decode_str("dae1fcede6", "xor", 142));
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(1114.61475, 5.04679728, 4350.22803, -0.648466587, -0.00000000128799094, 0.761243105, -0.000000000570652914, (2 / 2), 0.00000000120584542, -0.761243105, 0.000000000347544882, -0.648466587));
else
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dde7ede5c3efe0", "xor", 142)) ~= (0 / 2) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("c9ebfacdfbfe", "xor", 142));
wait(0.5);
__oPpJB9J20Dn6(__decode_str("cdfbfe", "xor", 142));
wait(0.5);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("c8e7e2e2cdfbfe", "xor", 142), (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__B4DGQv6Z3MCk);
wait(((100) - 100));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dde7ede5c3efe0", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dce7ede6dde1e0", "xor", 142)) == nil then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dce7ede6dde1e0", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dce7ede6dde1e0", "xor", 142)) == ((100) - 100) then
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c3e1ecaec2ebefeaebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c3e1ecaec2ebefeaebfc", "xor", 142)) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c3e1ecaec2ebefeaebfc", "xor", 142) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c3e1ecaec2ebefeaebfcaed5c2f8a0aebfbcbed3aed5cce1fdfdd3", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)]);
end;
end;
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c3e1ecaec2ebefeaebfc", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c3e1ecaec2ebefeaebfc", "xor", 142))).__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
end;
end;
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dce7ede6dde1e0", "xor", 142)) == ((101) - 100) then
local _bxpe = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dce7ede6dde1e0", "xor", 142));
wait(0.5);
__oPpJB9J20Dn6(__decode_str("dcebe2e7ed", "xor", 142));
wait(0.5);
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 0.00000000566906877, 0.481375456, 0.0000000253851997, ((101) - 100), -0.0000000579995607, -0.481375456, 0.0000000630572643, 0.876514494));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("ddefecebfcaecbf6feebfcfa", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("ddefecebfcaecbf6feebfcfa", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ddefecebfcaecbf6feebfcfa", "xor", 142) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (1 + 0), (1 + 0));
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__H7EJIuXCgY9p = (0 / 2);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
until __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeddefecebfc", "xor", 142)]);
if __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) then
local _idxy = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("defce1dffbebfdfadefce1e9fcebfdfd", "xor", 142), __decode_str("dee2efedebdcebe2e7ed", "xor", 142));
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
end;
end);
__m9wuA6HL6Qem = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)] and __MZpSSSnhndYo then
local __dummy = math.random(1,100) -- obf
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe5ebaedffbebebe0", "xor", 142)) then
local _hvoo = math.random() > 0.5 and true or false
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe5ebaedffbebebe0", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (1 + 0), (1 + 0));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aeccfbeaeaf7aeddf9e1fcea", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
end;
end;
end;
local __dummy = math.random(1,100) -- obf
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-731.2034301757812, 381.5658874511719, -11198.4951171875));
end;
end);
end;
end;
end);
function __86u8rGEjTw2S(__csltizdtSeRw, __ET1YhlhVYIpg)
for __wuH8Mpu3pmTB, __D828YtJZSxSB in next, game.ReplicatedStorage.__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("e9ebfac7e0f8ebe0fae1fcf7", "xor", 142)) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __csltizdtSeRw and __D828YtJZSxSB.__9W6UgR39vqjr >= __ET1YhlhVYIpg then
return true;
end;
end;
return false;
end;
function __xjDev24nCYnj()
local __71FBUQsn3aPj = math.__Hxc7rZkyTF7X;
local __dummy = math.random(1,100) -- obf
local __nhCyGdyontid;
for __PmPJmlDyer1O, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
if string.__g8zPDSHiqsZK(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("cde6ebfdfa", "xor", 142)) then
local __mfltd17ETzrw = (__D828YtJZSxSB.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__mfltd17ETzrw;
if __mfltd17ETzrw < __71FBUQsn3aPj then
__71FBUQsn3aPj = __mfltd17ETzrw;
__nhCyGdyontid = __D828YtJZSxSB;
end;
end;
end;
if not __nhCyGdyontid then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in next, (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd:__DZC5w2LNAoBg() do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("deeffcfa", "xor", 142)) and string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("cde6ebfdfa", "xor", 142)) then
local __mfltd17ETzrw = (__D828YtJZSxSB.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__mfltd17ETzrw;
if __mfltd17ETzrw < __71FBUQsn3aPj then
__71FBUQsn3aPj = __mfltd17ETzrw;
__nhCyGdyontid = __D828YtJZSxSB;
end;
end;
end;
end;
return __nhCyGdyontid;
end;
local __F2hxKDU1gsht = {};
function __rg1UXd5X6USa(__nhCyGdyontid)
local __4HQF4uPF5RKf;
if string.__ItpWI3q7p23L(__nhCyGdyontid, __decode_str("c2f8a0", "xor", 142)) then
__4HQF4uPF5RKf = __nhCyGdyontid:__8cBZp0KRH4BR(__decode_str("aeabfec2f8a0aeabeaa5abfe", "xor", 142), __decode_str("", "xor", 142));
local __dummy = math.random(1,100) -- obf
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__LlGnLBBo2e0R:__pZnxUxkN8q9J()) do
local __hh0vxXxmBetc;
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c2f8a0", "xor", 142)) then
__hh0vxXxmBetc = __D828YtJZSxSB.__fkS8rZqI8rzC:__8cBZp0KRH4BR(__decode_str("aeabfec2f8a0aeabeaa5abfe", "xor", 142), __decode_str("", "xor", 142));
end;
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("deeffcfa", "xor", 142)) and (__hh0vxXxmBetc and __hh0vxXxmBetc == __nhCyGdyontid or __nhCyGdyontid == __D828YtJZSxSB.__fkS8rZqI8rzC or __4HQF4uPF5RKf and __D828YtJZSxSB.__fkS8rZqI8rzC == __4HQF4uPF5RKf) then
local __dummy = math.random(1,100) -- obf
if 1 > 2 then end
local _bfsk = math.random() > 0.5 and true or false
return __D828YtJZSxSB;
end;
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__sXLEXO2M7wFT()) do
local __hh0vxXxmBetc;
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c2f8a0", "xor", 142)) then
__hh0vxXxmBetc = __D828YtJZSxSB.__fkS8rZqI8rzC:__8cBZp0KRH4BR(__decode_str("aeabfec2f8a0aeabeaa5abfe", "xor", 142), __decode_str("", "xor", 142));
end;
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("deeffcfa", "xor", 142)) and (__hh0vxXxmBetc and __hh0vxXxmBetc == __nhCyGdyontid or __nhCyGdyontid == __D828YtJZSxSB.__fkS8rZqI8rzC or __4HQF4uPF5RKf and __D828YtJZSxSB.__fkS8rZqI8rzC == __4HQF4uPF5RKf) then
return __D828YtJZSxSB;
end;
end;
end;
function __vpev5Ml0aA1n(__DYSNJpAs65iy, __d1HwnaJEXiV5)
if typeof(__DYSNJpAs65iy) == __decode_str("faefece2eb", "xor", 142) then
if #__F2hxKDU1gsht >= ((104) - 100) then
__F2hxKDU1gsht = {};
return;
end;
local __D7L2SdtffqnV;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in next, __DYSNJpAs65iy do
if not table.__ItpWI3q7p23L(__F2hxKDU1gsht, __D828YtJZSxSB) then
__D7L2SdtffqnV = __rg1UXd5X6USa(__D828YtJZSxSB);
repeat
__dklWzigEM94H.wait();
__ZvRxhTb1ZSdn(__D7L2SdtffqnV.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (60 + 0), (0 + 0)));
until (__D7L2SdtffqnV.__VOh0QUyOOmmm - __jDXlc150Tpxk.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (200 / 2) or __tTdKdnxk9hw8(__DYSNJpAs65iy) or (not __d1HwnaJEXiV5);
end;
end;
else
local __dummy = math.random(1,100) -- obf
__D7L2SdtffqnV = __rg1UXd5X6USa(__DYSNJpAs65iy);
__ZvRxhTb1ZSdn(__D7L2SdtffqnV.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (60 + 0), (0 + 0)));
end;
end;
function __tTdKdnxk9hw8(__Gs9SJzrstntT)
local __71FBUQsn3aPj = math.__Hxc7rZkyTF7X;
local __nhCyGdyontid;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __hh0vxXxmBetc = __D828YtJZSxSB.__fkS8rZqI8rzC:__8cBZp0KRH4BR(__decode_str("aeabfec2f8a0aeabeaa5abfe", "xor", 142), __decode_str("", "xor", 142));
if (typeof(__Gs9SJzrstntT) == __decode_str("faefece2eb", "xor", 142) and (table.__ItpWI3q7p23L(__Gs9SJzrstntT, __D828YtJZSxSB.__fkS8rZqI8rzC) or table.__ItpWI3q7p23L(__Gs9SJzrstntT, __hh0vxXxmBetc)) or (__D828YtJZSxSB.__fkS8rZqI8rzC == __Gs9SJzrstntT or __Gs9SJzrstntT == __hh0vxXxmBetc)) and __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
local __mfltd17ETzrw = (__D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__mfltd17ETzrw;
if __mfltd17ETzrw < __71FBUQsn3aPj then
__71FBUQsn3aPj = __mfltd17ETzrw;
__nhCyGdyontid = __D828YtJZSxSB;
end;
end;
end;
return __nhCyGdyontid;
end;
function __w2xvzoEGp4r1()
local __KTHRMJr0kylS = {};
local __5eMyVUJ53PmT;
local __ZCWT0vNabGfe;
if not __86u8rGEjTw2S(__decode_str("cbedfae1fee2effde3", "xor", 142), (500 / 2)) then
__KTHRMJr0kylS = {
__decode_str("dde6e7feaecaebede5e6efe0eaaed5c2f8a0aebfbcbbbed3", "xor", 142),
__decode_str("dde6e7feaeddfaebf9effceaaed5c2f8a0aebfbdbebed3", "xor", 142),
__decode_str("dde6e7feaec1e8e8e7edebfcaed5c2f8a0aebfbdbcbbd3", "xor", 142),
__decode_str("dde6e7feaecbe0e9e7e0ebebfcaed5c2f8a0aebfbcb9bbd3", "xor", 142)
};
__5eMyVUJ53PmT = ((4442272283) - 100);
local __dummy = math.random(1,100) -- obf
__ZCWT0vNabGfe = __decode_str("dafceff8ebe2cafcebfdfdfce1fdef", "xor", 142);
elseif not __86u8rGEjTw2S(__decode_str("cce1e0ebfd", "xor", 142), ((600) - 100)) then
__KTHRMJr0kylS = {
__decode_str("dcebece1fce0aedde5ebe2ebfae1e0aed5c2f8a0aebfb7b9bbd3", "xor", 142),
__decode_str("caebe3e1e0e7edaedde1fbe2aed5c2f8a0aebcbebcbbd3", "xor", 142),
__decode_str("c2e7f8e7e0e9aed4e1e3ece7ebaed5c2f8a0aebcbebebed3", "xor", 142),
__decode_str("dee1fdebfdfdebeaaec3fbe3e3f7aed5c2f8a0aebcbebbbed3", "xor", 142)
local __dummy = math.random(1,100) -- obf
};
local __dummy = math.random(1,100) -- obf
__5eMyVUJ53PmT = (14898847270 / 2);
__ZCWT0vNabGfe = __decode_str("dafceff8ebe2d4e1fb", "xor", 142);
end;
local __dummy = math.random(1,100) -- obf
return __KTHRMJr0kylS, __5eMyVUJ53PmT, __ZCWT0vNabGfe;
end;
local __QYWA5zOV2XHd = (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW;
function __LenaHGdo8P5R()
local __dummy = math.random(1,100) -- obf
if not __QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("cde6ebede5", "xor", 142)) then
if game.Lighting.__D1IItOrewY7n.__rGrSZgdiC4Zl == __decode_str("e6fafafeb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1effdfdebfaa1b1e7eab3b7b9beb7bfbab7babdbf", "xor", 142) and (game.Lighting.__eGtufR0QSBBZ > (32 / 2) or game.Lighting.__eGtufR0QSBBZ < (5 + 0)) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB:__4yrF9zWZiuTh(Vector3.__jlt1dqxndo3e(-8654.314453125, 140.9499053955078, 6167.5283203125)) > (50 + 0) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-8654.314453125, 140.9499053955078, 6167.5283203125));
end;
__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("e9fceff8ebfdfae1e0ebcbf8ebe0fa", "xor", 142), ((102) - 100));
__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("e9fceff8ebfdfae1e0ebcbf8ebe0fa", "xor", 142), (4 / 2), true);
__dklWzigEM94H.wait(((101) - 100));
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c6e1feaec8fbe2e2aec3e1e1e0", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = (10 / 2)
});
local __dummy = math.random(1,100) -- obf
__tCRxlxaunq6w();
end;
else
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__xyswBYImd8JY.__JFbKyO7H7hXV then
game.__BgqcsiVKXwbQ:__y5Si96dWU7LK(Vector2.__jlt1dqxndo3e((0 / 2), (0 / 2)));
game.__BgqcsiVKXwbQ:__y5Si96dWU7LK(Vector2.__jlt1dqxndo3e(((100) - 100), (0 + 0)));
end;
if not (__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("cde6ebede5", "xor", 142))).__XIEdKthDQlM9 then
if ((CFrame.__jlt1dqxndo3e((-10171.7607421875), 138.62667846679688, 6008.0654296875)).__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (200 / 2) then
__KEWDvSjynxfV((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm, (CFrame.__jlt1dqxndo3e(-10171.7607421875, 138.62667846679688, 6008.0654296875)).__VOh0QUyOOmmm, CFrame.__jlt1dqxndo3e(-10171.7607421875, 138.62667846679688 + (20 + 0), 6008.0654296875));
elseif __CypFZfUImkcH() == ((106) - 100) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.workspace.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2e7f8e7e0e9aed4e1e3ece7ebaed5c2f8a0aebcbebebed3", "xor", 142) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
__dklWzigEM94H.wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), ((101) - 100), (2 / 2));
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
end;
local __dummy = math.random(1,100) -- obf
end;
end;
return;
elseif not (__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("cde6ebede5", "xor", 142))).__AME5OkyEkQHa then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB:__4yrF9zWZiuTh(Vector3.__jlt1dqxndo3e(-8761.4765625, 142.10487365722656, 6086.07861328125)) > (100 / 2) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-8761.4765625, 142.10487365722656, 6086.07861328125));
else
local __VzuhPJxouEyi = {
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__6JvIk7irODbk.__H1beRt2muNAp.__OsHyDtoPZxPJ,
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__JEmNtPAnXBTo.__H1beRt2muNAp.__OsHyDtoPZxPJ,
local __dummy = math.random(1,100) -- obf
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__gyBHtBgf0oIb.__Jf2xyAU1YX2X.__OsHyDtoPZxPJ,
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__QZ9KPVwJbRaR.__H1beRt2muNAp.__OsHyDtoPZxPJ,
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__MGzaTuGTtg51.__Jf2xyAU1YX2X.__OsHyDtoPZxPJ,
local __dummy = math.random(1,100) -- obf
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__zC5NRCAU2lC8.__Jf2xyAU1YX2X.__OsHyDtoPZxPJ,
game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__60HHiZX60KxO.__Jf2xyAU1YX2X.__OsHyDtoPZxPJ
};
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__VzuhPJxouEyi) do
__0XA0O5wXcC6q(__D828YtJZSxSB);
end;
end;
elseif not (__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("cde6ebede5", "xor", 142))).__egDEZmFWoWla then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB:__4yrF9zWZiuTh(Vector3.__jlt1dqxndo3e(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > (100 / 2) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-9755.6591796875, 271.0661315917969, 6290.61474609375));
end;
local __dummy = math.random(1,100) -- obf
__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("c9e6e1fdfa", "xor", 142));
local __dummy = math.random(1,100) -- obf
__dklWzigEM94H.wait((6 / 2));
elseif not (__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("cde6ebede5", "xor", 142))).__Fi2AJiWpGn5X then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB:__4yrF9zWZiuTh(Vector3.__jlt1dqxndo3e(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > (100 / 2) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-9530.0126953125, 6.104853630065918, 6054.83349609375));
end;
local __UwAmmDWYFMcb = game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__UwAmmDWYFMcb;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__RkcwKOaOxx7r) do
local __P7qufHPl7p5l = __UwAmmDWYFMcb[__D828YtJZSxSB];
if __P7qufHPl7p5l.__CU0IpIZtqB4B.__VOh0QUyOOmmm.__7ghl6LFkTzus ~= (0 / 2) then
repeat
__dklWzigEM94H.wait();
__0XA0O5wXcC6q(__P7qufHPl7p5l.__OsHyDtoPZxPJ);
until __P7qufHPl7p5l.__CU0IpIZtqB4B.__VOh0QUyOOmmm.__7ghl6LFkTzus == (0 + 0);
end;
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__n1SMPWh4sPXT) do
local __P7qufHPl7p5l = game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)].__Fi2AJiWpGn5X.__7nGApC8ncN0d[__D828YtJZSxSB].__aWw5iEgIa5rI.CFrame;
__P7qufHPl7p5l = tostring(__P7qufHPl7p5l);
__P7qufHPl7p5l = (__P7qufHPl7p5l:__U3RVO1xeLRvB(__decode_str("a2ae", "xor", 142)))[(4 + 0)];
local __Gs9SJzrstntT = __decode_str("bfb6be", "xor", 142);
if __P7qufHPl7p5l == __decode_str("bf", "xor", 142) or __P7qufHPl7p5l == __decode_str("a3bf", "xor", 142) then
__Gs9SJzrstntT = __decode_str("b7be", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
if not string.__ItpWI3q7p23L(tostring(__UwAmmDWYFMcb[__wuH8Mpu3pmTB].__CU0IpIZtqB4B.__lQGQ31my8KGj.__OfLVa57gbTO2), __Gs9SJzrstntT) then
local _jbis = math.random() > 0.5 and true or false
repeat
__dklWzigEM94H.wait();
__0XA0O5wXcC6q(__UwAmmDWYFMcb[__wuH8Mpu3pmTB].__OsHyDtoPZxPJ);
until string.__ItpWI3q7p23L(tostring(__UwAmmDWYFMcb[__wuH8Mpu3pmTB].__CU0IpIZtqB4B.__lQGQ31my8KGj.__OfLVa57gbTO2), __Gs9SJzrstntT);
print(__wuH8Mpu3pmTB, __Gs9SJzrstntT);
end;
end;
elseif not (__QYWA5zOV2XHd:__39fkVcO4USff(__decode_str("c9fbe7faeffcdefbf4f4e2ebdefce1e9fcebfdfd", "xor", 142), __decode_str("cde6ebede5", "xor", 142))).__XCKS405meIGB then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__XCKS405meIGB) do
local __P7qufHPl7p5l = game.workspace.__8ocb0EOzsVtd[__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142)][__decode_str("c2efecaedefbf4f4e2eb", "xor", 142)].__Q3V6wfMO6GNP.__KZ2njtlA5dch[__wuH8Mpu3pmTB];
if __P7qufHPl7p5l.BrickColor.__fkS8rZqI8rzC ~= __D828YtJZSxSB then
repeat
__dklWzigEM94H.wait();
__0XA0O5wXcC6q(__P7qufHPl7p5l.__OsHyDtoPZxPJ);
until __P7qufHPl7p5l.BrickColor.__fkS8rZqI8rzC == __D828YtJZSxSB;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
function __VoBuGgLsWKVj()
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fde1fbe2c9fbe7faeffcccfbf7", "xor", 142), true) == __decode_str("d5d7e1fbaeefe2fcebefeaf7aee1f9e0aefae6e7fdaee7faebe3a0d3", "xor", 142) then
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("d7e1fbaeefe2fcebefeaf7aee1f9e0aefae6e7fdaee7faebe3", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = (10 / 2)
});
__dklWzigEM94H.wait((5 + 0));
return;
end;
if game.Players.__fni3Hio5E7WB.__C6JPlc6eWb7y.__p2QKbfWsuWcj.__KuJIgOIz2WnP < (5000 + 0) then
__dklWzigEM94H.wait(((102) - 100));
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c0ebebeaaebbbebebeaec8fcefe9e3ebe0fafd", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = ((105) - 100)
});
return;
local __dummy = math.random(1,100) -- obf
end;
if not __86u8rGEjTw2S(__decode_str("cbedfae1fee2effde3", "xor", 142), (250 + 0)) then
__dklWzigEM94H.wait((4 / 2));
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__JFsvZZJ83JK7 = __decode_str("c0ebebeaaebcbbbeaecbedfae1fee2effde3", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = ((105) - 100)
});
return;
end;
local __dummy = math.random(1,100) -- obf
if __86u8rGEjTw2S(__decode_str("caeffce5aec8fcefe9e3ebe0fa", "xor", 142), ((101) - 100)) and __86u8rGEjTw2S(__decode_str("cbedfae1fee2effde3", "xor", 142), ((350) - 100)) and __86u8rGEjTw2S(__decode_str("cce1e0ebfd", "xor", 142), (500 + 0)) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fde1fbe2c9fbe7faeffcccfbf7", "xor", 142), true);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fde1fbe2c9fbe7faeffcccfbf7", "xor", 142));
local __dummy = math.random(1,100) -- obf
if __MZpSSSnhndYo then
__LenaHGdo8P5R();
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2d4e1fb", "xor", 142));
end;
return;
end;
if not __86u8rGEjTw2S(__decode_str("caeffce5aec8fcefe9e3ebe0fa", "xor", 142), ((101) - 100)) then
if __xS6abtdaAUqB then
if __zNECWrzTyJP9(__decode_str("caeffce5ecebeffceaaed5c2f8a0aebfbebebed3aed5dcefe7eaaecce1fdfdd3", "xor", 142)) then
local __D828YtJZSxSB = __zNECWrzTyJP9(__decode_str("caeffce5ecebeffceaaed5c2f8a0aebfbebebed3aed5dcefe7eaaecce1fdfdd3", "xor", 142));
repeat
__dklWzigEM94H.wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
until __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
elseif game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142)) or game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142)) then
if ((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__78AWmi6IExUj.__OGtRFkBIzQHc.__GWDzuVa5G1WH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10 / 2) then
__oPpJB9J20Dn6(__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142));
__eKm182z0VL0O(game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2[__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142)].__aWw5iEgIa5rI, (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__78AWmi6IExUj.__OGtRFkBIzQHc.__GWDzuVa5G1WH, (0 / 2));
__eKm182z0VL0O(game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2[__decode_str("c8e7fdfaaee1e8aecaeffce5e0ebfdfd", "xor", 142)].__aWw5iEgIa5rI, (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__78AWmi6IExUj.__OGtRFkBIzQHc.__GWDzuVa5G1WH, (2 / 2));
__eKm182z0VL0O(game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH, (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__78AWmi6IExUj.__OGtRFkBIzQHc.__GWDzuVa5G1WH, (0 / 2));
__eKm182z0VL0O(game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH, (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__78AWmi6IExUj.__OGtRFkBIzQHc.__GWDzuVa5G1WH, ((101) - 100));
local __dummy = math.random(1,100) -- obf
else
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__78AWmi6IExUj.__OGtRFkBIzQHc.__GWDzuVa5G1WH.CFrame);
end;
else
local __D828YtJZSxSB = __xjDev24nCYnj();
repeat
__dklWzigEM94H.wait();
local __dummy = math.random(1,100) -- obf
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((102) - 100) then
__eKm182z0VL0O(__D828YtJZSxSB, game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH, (0 / 2));
__eKm182z0VL0O(__D828YtJZSxSB, game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH, (1 + 0));
end;
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __D828YtJZSxSB.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (5 + 0) then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d9", "xor", 142), false, game);
__dklWzigEM94H.wait();
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d9", "xor", 142), false, game);
end;
__dQXp8VpNZvya(__D828YtJZSxSB.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (1 + 0), (0 + 0)));
until not __D828YtJZSxSB or (not __D828YtJZSxSB.__554Pe5pq8ngd) or (not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)]);
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2cafcebfdfdfce1fdef", "xor", 142));
end;
else
local __KTHRMJr0kylS, __5eMyVUJ53PmT, __ZCWT0vNabGfe = __w2xvzoEGp4r1();
if game.__5eMyVUJ53PmT == __5eMyVUJ53PmT then
if not __tTdKdnxk9hw8(__KTHRMJr0kylS) then
local _ooof = math.random() > 0.5 and true or false
__vpev5Ml0aA1n(__KTHRMJr0kylS, _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
else
local __D828YtJZSxSB = __tTdKdnxk9hw8(__KTHRMJr0kylS);
repeat
__dklWzigEM94H.wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), ((101) - 100), (1 + 0));
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not __D828YtJZSxSB or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 / 2) or (not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)]);
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__ZCWT0vNabGfe);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
__T4eghXNqk8Kn = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde1fbe2aec9fbe7faeffc", "xor", 142)] then
__VoBuGgLsWKVj();
end;
end);
end;
end);
__hGnfMuOQcFKz = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebcaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)] and __xS6abtdaAUqB then
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c6e7eaeaebe0aec5ebf7", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6e7eaeaebe0aec5ebf7", "xor", 142)) then
__oPpJB9J20Dn6(__decode_str("c6e7eaeaebe0aec5ebf7", "xor", 142));
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(6571.1201171875, 299.23028564453, -6967.841796875));
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dde0e1f9aec2fbfce5ebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cffcedfae7edaed9effcfce7e1fc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (__D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde0e1f9aec2fbfce5ebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cffcedfae7edaed9effcfce7e1fc", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), ((101) - 100), (2 / 2));
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
until (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c6e7eaeaebe0aec5ebf7", "xor", 142)) or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedcebe0e9e1e5fb", "xor", 142)] == false or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
else
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(5439.716796875, 84.420944213867, -6715.1635742188));
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end);
__zeW9rStJXvyv = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__zw3xa1YqlyQB = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__lEOU4jh8glJF = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9ebfaaed7efe3ef", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0ebebeaaebdbeaecbe2e7faebaec6fbe0faebfca2aec8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3ef", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3ef", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3ef", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__BZKoGJlm3lCg = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9ebfaaed7efe3efaec6e1fe", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c6e1feaec7e8aecbe2e7faebaec6fbe0faebfcaec0e1faaeddfeeff9e0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3efaec6e1fe", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3efaec6e1fe", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3efaec6e1fe", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__HU7wuvwMz978 = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9ebfaaedafbfde6e7faef", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__pqsTgkII0Hhl = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebcaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
__pqsTgkII0Hhl = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__5pkrVKGb9eXX = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
__3vtyoe0soYZu = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedee1e2eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c8fbe0edfae7e1e0aeddebefaebfaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__AQP4euycTCnb = __DCylxAOY74jA.__btaIdBy3P7Sk:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0ebebeaaeddfeeff9e0aedce7feaec7e0eafcefa2aec8fbe0edfae7e1e0aeddebefaebdaec1e0e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)] and __MZpSSSnhndYo then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("fce7fed1e7e0eafcefaedafcfbebaec8e1fce3", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("fce7fed1e7e0eafcef", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == (__decode_str("fce7fed1e7e0eafcefaedafcfbebaec8e1fce3", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("fce7fed1e7e0eafcef", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) and __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (1 + 0), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecaeffce5aecaefe9e9ebfc", "xor", 142)] == false or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
local __dummy = math.random(1,100) -- obf
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5344.822265625, 423.98541259766, -2725.0930175781));
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)] and __r6rRqZJqrWdL then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dae6fbe0eaebfcaec9e1ea", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dae6fbe0eaebfcaec9e1ea", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (1 + 0), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedee1e2eb", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-7748.0185546875, 5606.80615234375, -2305.898681640625));
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)] and __r6rRqZJqrWdL then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dae6ebaeddeff9", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dae6ebaeddeff9", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), (1 + 0));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedde6effce5aeddeff9", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100);
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-690.33081054688, 15.09425163269, 1582.2380371094));
end;
end);
end;
end;
end);
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)] and __r6rRqZJqrWdL then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c9fcebf7ecebeffcea", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c9fcebf7ecebeffcea", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
local __dummy = math.random(1,100) -- obf
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), (1 + 0), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec9fcebf7ecebeffcea", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
end;
end;
end;
local __dummy = math.random(1,100) -- obf
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5023.38330078125, 28.65203285217285, 4332.3818359375));
end;
end);
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)] and __xS6abtdaAUqB then
local _uykg = math.random() > 0.5 and true or false
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dae7eaebaec5ebebfeebfc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dae7eaebaec5ebebfeebfc", "xor", 142) then
local _vjqn = math.random() > 0.5 and true or false
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
local __dummy = math.random(1,100) -- obf
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 / 2);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aecafcefe9e1e0aedafce7eaebe0fa", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-3914.830322265625, 123.29389190673828, -11516.8642578125));
end;
end);
end;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end);
function __EhXPt4fDW8YI()
local __lMDcmh4qDs25;
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs.__bUL9JJ7Uhkau.__s6srEcMSlWC1.__cv7OSaVldpvm.__sVJv4RNF52YJ.__2IDvfG6hks18 then
__lMDcmh4qDs25 = __decode_str("bf", "xor", 142);
elseif not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs.__bUL9JJ7Uhkau.__tsVvDVt6amZV.__cv7OSaVldpvm.__sVJv4RNF52YJ.__2IDvfG6hks18 then
__lMDcmh4qDs25 = __decode_str("bc", "xor", 142);
elseif not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs.__bUL9JJ7Uhkau.__yzBw2RmH0Xuj.__cv7OSaVldpvm.__sVJv4RNF52YJ.__2IDvfG6hks18 then
__lMDcmh4qDs25 = __decode_str("bd", "xor", 142);
elseif not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs.__bUL9JJ7Uhkau.__aefQavSfAORY.__cv7OSaVldpvm.__sVJv4RNF52YJ.__2IDvfG6hks18 then
local __dummy = math.random(1,100) -- obf
__lMDcmh4qDs25 = __decode_str("ba", "xor", 142);
elseif not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs.__bUL9JJ7Uhkau.__8wmruK6gcv9I.__cv7OSaVldpvm.__sVJv4RNF52YJ.__2IDvfG6hks18 then
__lMDcmh4qDs25 = __decode_str("bb", "xor", 142);
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in next, (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs.__bUL9JJ7Uhkau:__pZnxUxkN8q9J() do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3ebfde6deeffcfa", "xor", 142)) and string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __lMDcmh4qDs25) and (not __D828YtJZSxSB.__cv7OSaVldpvm.__sVJv4RNF52YJ.__2IDvfG6hks18) then
return __D828YtJZSxSB;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
function __zNECWrzTyJP9(__lMDcmh4qDs25)
for __wuH8Mpu3pmTB, __D828YtJZSxSB in next, game.ReplicatedStorage:__pZnxUxkN8q9J() do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and (typeof(__lMDcmh4qDs25) == __decode_str("faefece2eb", "xor", 142) and table.__ItpWI3q7p23L(__lMDcmh4qDs25, __D828YtJZSxSB.__fkS8rZqI8rzC) or __D828YtJZSxSB.__fkS8rZqI8rzC == __lMDcmh4qDs25) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
local __dummy = math.random(1,100) -- obf
return __D828YtJZSxSB;
end;
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in next, game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__pZnxUxkN8q9J() do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and (typeof(__lMDcmh4qDs25) == __decode_str("faefece2eb", "xor", 142) and table.__ItpWI3q7p23L(__lMDcmh4qDs25, __D828YtJZSxSB.__fkS8rZqI8rzC) or __D828YtJZSxSB.__fkS8rZqI8rzC == __lMDcmh4qDs25) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
return __D828YtJZSxSB;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aedafbfde6e7faef", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__jo3vQ8UEkOfs:__zsrrEF2lS1yp(__decode_str("dafbfde6e7faefc9effaeb", "xor", 142)) then
if __zNECWrzTyJP9(__decode_str("c2e1e0e9e3efaed5c2f8a0aebcbebebed3aed5cce1fdfdd3", "xor", 142)) then
local __D828YtJZSxSB = __zNECWrzTyJP9(__decode_str("c2e1e0e9e3efaed5c2f8a0aebcbebebed3aed5cce1fdfdd3", "xor", 142));
repeat
__dklWzigEM94H.wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (1 + 0), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not __D828YtJZSxSB or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz == (0 / 2);
end;
elseif __zNECWrzTyJP9(__decode_str("fce7fed1e7e0eafcefaedafcfbebaec8e1fce3aed5c2f8a0aebbbebebed3aed5dcefe7eaaecce1fdfdd3", "xor", 142)) then
if not game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6e1e2f7aedae1fcede6", "xor", 142)) and (not game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c6e1e2f7aedae1fcede6", "xor", 142))) then
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__Cw92MtJDGT1s.__u9Gbi7XbXksR.__yK6zIX0EshmM.__pUZQaPWL1Bno.__pUZQaPWL1Bno.__lqQ2X86XT0sy.CFrame);
else
__oPpJB9J20Dn6(__decode_str("c6e1e2f7aedae1fcede6", "xor", 142));
if __EhXPt4fDW8YI() then
__ZvRxhTb1ZSdn((__EhXPt4fDW8YI()).CFrame);
end;
end;
else
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("dce7feaec7e0eafcefaec0e1faaeddfeeff9e0", "xor", 142),
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = (10 / 2)
});
__dklWzigEM94H.wait((6 / 2));
end;
end);
end;
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3efaec6e1fe", "xor", 142)] and __MZpSSSnhndYo then
local _akkp = math.random() > 0.5 and true or false
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cbe2e7faebc6fbe0faebfc", "xor", 142), __decode_str("defce1e9fcebfdfd", "xor", 142)) < (30 + 0) then
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3ef", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142))) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142))) then
local _thmj = math.random() > 0.5 and true or false
__tCRxlxaunq6w();
end;
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end;
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3ef", "xor", 142)] and __MZpSSSnhndYo then
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cbe2e7faebc6fbe0faebfc", "xor", 142), __decode_str("defce1e9fcebfdfd", "xor", 142)) >= (30 + 0) then
repeat
wait(0.1);
__0XA0O5wXcC6q((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__Cw92MtJDGT1s.__1b04pOpZno6r.__aWw5iEgIa5rI.__OsHyDtoPZxPJ);
until (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("d7efe3ef", "xor", 142)) or (not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed7efe3ef", "xor", 142)]);
elseif string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("cae7efece2e1", "xor", 142)) or string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("caebefe0eafceb", "xor", 142)) or string.__ItpWI3q7p23L(__m0gFDXL0YBKo, __decode_str("dbfcecefe0", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cae7efece2e1", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("caebefe0eafceb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dbfcecefe0", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cae7efece2e1", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("caebefe0eafceb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dbfcecefe0", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
local __dummy = math.random(1,100) -- obf
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (2 / 2), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until _G.__RmGIbDMaU7Nf.__9iGHpC1a7loD[__decode_str("cffbfae1aed7efe3ef", "xor", 142)] == false or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
end;
end;
end;
end;
else
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cbe2e7faebc6fbe0faebfc", "xor", 142));
end;
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)] and __r6rRqZJqrWdL then
local __dummy = math.random(1,100) -- obf
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde6e7ebe8aed9effceaebe0", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde6e7ebe8aed9effceaebe0", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
local _gmpn = math.random() > 0.5 and true or false
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = (0 + 0);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (2 / 2), ((101) - 100));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
until not _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aed9effceaebe0aeddf9e1fcea", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
end;
else
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(5186.14697265625, 24.86684226989746, 832.1885375976562));
end;
local __dummy = math.random(1,100) -- obf
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)] then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dde1fbe2aedcebeffeebfc", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("dde1fbe2aedcebeffeebfc", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (1 + 0), (2 / 2));
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
__D828YtJZSxSB.__OGkWnsSnXeSH.__mmv71rnj2zSN = ((101) - 100);
until __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or _G.__RmGIbDMaU7Nf.__E1SoGeAzusln[__decode_str("cffbfae1aec6efe2e2e1f9aeddedf7fae6eb", "xor", 142)] == false;
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c6efe2e2e1f9aecbfdfdebe0edeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6efe2e2e1f9aecbfdfdebe0edeb", "xor", 142)) then
repeat
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-8932.322265625, 146.83154296875, 6062.55078125));
wait();
until ((CFrame.__jlt1dqxndo3e((-8932.322265625), 146.83154296875, 6062.55078125)).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (16 / 2);
__oPpJB9J20Dn6(__decode_str("c6efe2e2e1f9aecbfdfdebe0edeb", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("dde1fbe2aedcebeffeebfc", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("dde1fbe2aedcebeffeebfc", "xor", 142))).__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((4 / 2), (20 + 0), (2 + 0)));
end;
end);
end;
end;
end);
__rOoKLF1sn1De = __DCylxAOY74jA.__Re0xcSzSWSCT:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddfaeffafd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__yh7B9MPKF1Hy = __DCylxAOY74jA.__Re0xcSzSWSCT:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("ddfaeffafd", "xor", 142),
__0eNWJkShlM4m = __decode_str("be", "xor", 142)
});
spawn(function()
while wait(0.2) do
pcall(function()
__yh7B9MPKF1Hy:__AuHle8YtGk0N(tostring((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__JAYuvBQeUduJ.__KuJIgOIz2WnP));
end);
local __dummy = math.random(1,100) -- obf
end;
end);
__0RSeMZkhvNow = __DCylxAOY74jA.__Re0xcSzSWSCT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfeaeaaec3ebe2ebebaeddfaeffafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaec3ebe2ebebaeddfaeffafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaec3ebe2ebebaeddfaeffafd", "xor", 142)] = __3abLK7oFpYPf;
end
});
__LpptxXzR9d1H = __DCylxAOY74jA.__Re0xcSzSWSCT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfeaeaaecaebe8ebe0fdebaeddfaeffafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaecaebe8ebe0fdebaeddfaeffafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaecaebe8ebe0fdebaeddfaeffafd", "xor", 142)] = __3abLK7oFpYPf;
end
});
__RXEWz5lhebYw = __DCylxAOY74jA.__Re0xcSzSWSCT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfeaeaaeddf9e1fceaaeddfaeffafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaeddf9e1fceaaeddfaeffafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaeddf9e1fceaaeddfaeffafd", "xor", 142)] = __3abLK7oFpYPf;
end
});
__HDDVfztbEQys = __DCylxAOY74jA.__Re0xcSzSWSCT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfeaeaaec9fbe0aeddfaeffafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaec9fbe0aeddfaeffafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaec9fbe0aeddfaeffafd", "xor", 142)] = __3abLK7oFpYPf;
end
});
__ZiiF45iOM3m6 = __DCylxAOY74jA.__Re0xcSzSWSCT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfeaeaaecaebf8e7e2aec8fcfbe7faaeddfaeffafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaecaebf8e7e2aec8fcfbe7faaeddfaeffafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaecaebf8e7e2aec8fcfbe7faaeddfaeffafd", "xor", 142)] = __3abLK7oFpYPf;
end
local __dummy = math.random(1,100) -- obf
});
__iUez0DyMWYy3 = ((101) - 100);
local __dummy = math.random(1,100) -- obf
__KM1RCbklvF5O = __DCylxAOY74jA.__Re0xcSzSWSCT:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("dee1e7e0fa", "xor", 142),
__1TIHvcyWHn8m = (1 + 0),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = {
__jsGdGsl0mEq4 = ((101) - 100),
__IxVMEpQMEsRr = ((200) - 100),
__h2a28gDkPh9X = __iUez0DyMWYy3
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
__iUez0DyMWYy3 = __d1HwnaJEXiV5;
end
});
spawn(function()
while wait(0.2) do
if game.Players.__ihrZddLQyOL2.__C6JPlc6eWb7y.__JAYuvBQeUduJ.__KuJIgOIz2WnP >= __iUez0DyMWYy3 then
if _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaec3ebe2ebebaeddfaeffafd", "xor", 142)] then
local __P8nZxAh2KmNg = {
[((101) - 100)] = __decode_str("cfeaeadee1e7e0fa", "xor", 142),
[(2 + 0)] = __decode_str("c3ebe2ebeb", "xor", 142),
[(6 / 2)] = __iUez0DyMWYy3
};
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(unpack(__P8nZxAh2KmNg));
end;
if _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaecaebe8ebe0fdebaeddfaeffafd", "xor", 142)] then
local __P8nZxAh2KmNg = {
local __dummy = math.random(1,100) -- obf
[(2 / 2)] = __decode_str("cfeaeadee1e7e0fa", "xor", 142),
[(2 + 0)] = __decode_str("caebe8ebe0fdeb", "xor", 142),
[((103) - 100)] = __iUez0DyMWYy3
};
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(unpack(__P8nZxAh2KmNg));
end;
if _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaeddf9e1fceaaeddfaeffafd", "xor", 142)] then
local __P8nZxAh2KmNg = {
[((101) - 100)] = __decode_str("cfeaeadee1e7e0fa", "xor", 142),
[(2 + 0)] = __decode_str("ddf9e1fcea", "xor", 142),
[(3 + 0)] = __iUez0DyMWYy3
};
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(unpack(__P8nZxAh2KmNg));
end;
if _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaec9fbe0aeddfaeffafd", "xor", 142)] then
local __P8nZxAh2KmNg = {
local __dummy = math.random(1,100) -- obf
[(1 + 0)] = __decode_str("cfeaeadee1e7e0fa", "xor", 142),
[(4 / 2)] = __decode_str("c9fbe0", "xor", 142),
[(6 / 2)] = __iUez0DyMWYy3
};
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(unpack(__P8nZxAh2KmNg));
end;
if _G.__RmGIbDMaU7Nf.__lM6dpXUyyAQg[__decode_str("cffbfae1aecfeaeaaecaebf8e7e2aec8fcfbe7faaeddfaeffafd", "xor", 142)] then
local __P8nZxAh2KmNg = {
local __dummy = math.random(1,100) -- obf
[(1 + 0)] = __decode_str("cfeaeadee1e7e0fa", "xor", 142),
[((102) - 100)] = __decode_str("caebe3e1e0aec8fcfbe7fa", "xor", 142),
[(6 / 2)] = __iUez0DyMWYy3
};
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(unpack(__P8nZxAh2KmNg));
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end);
__aUzIGcS0bI0p = __DCylxAOY74jA.__keQnUyeYCS3j:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("dcefe7ea", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__Th0YMykdt417 = __DCylxAOY74jA.__keQnUyeYCS3j:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("dcefe7eaaedae7e3eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__TFE6S9tUlDL7 = __DCylxAOY74jA.__keQnUyeYCS3j:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
spawn(function()
pcall(function()
while wait(0.2) do
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__vKc5ZJKC8yi3.__ZfNnwkjjh5vQ.__JFbKyO7H7hXV == true then
__Th0YMykdt417:__AuHle8YtGk0N((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__vKc5ZJKC8yi3.__ZfNnwkjjh5vQ.__UQ0y7bOyEnwM);
else
__Th0YMykdt417:__AuHle8YtGk0N(__decode_str("d9efe7faaec8e1fcaecafbe0e9ebe1e0", "xor", 142));
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__jEyFoE88BNon:__zsrrEF2lS1yp(__decode_str("dcefe7eac7fde2efe0eabb", "xor", 142)) then
__TFE6S9tUlDL7:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec7fde2efe0eaaebb", "xor", 142));
elseif game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__jEyFoE88BNon:__zsrrEF2lS1yp(__decode_str("dcefe7eac7fde2efe0eaba", "xor", 142)) then
__TFE6S9tUlDL7:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec7fde2efe0eaaeba", "xor", 142));
elseif game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__jEyFoE88BNon:__zsrrEF2lS1yp(__decode_str("dcefe7eac7fde2efe0eabd", "xor", 142)) then
__TFE6S9tUlDL7:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec7fde2efe0eaaebd", "xor", 142));
elseif game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__jEyFoE88BNon:__zsrrEF2lS1yp(__decode_str("dcefe7eac7fde2efe0eabc", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__TFE6S9tUlDL7:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec7fde2efe0eaaebc", "xor", 142));
elseif game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__jEyFoE88BNon:__zsrrEF2lS1yp(__decode_str("dcefe7eac7fde2efe0eabf", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__TFE6S9tUlDL7:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec7fde2efe0eaaebf", "xor", 142));
else
__TFE6S9tUlDL7:__AuHle8YtGk0N(__decode_str("ddfaeffcfaaecafbe0e9ebe1e0", "xor", 142));
end;
end;
end);
end);
function __YSg6QntXkeIX()
local __oV3c5xT70NPK = CFrame.__jlt1dqxndo3e((0 + 0), (70 / 2), ((100) - 100));
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__vKc5ZJKC8yi3.__ZfNnwkjjh5vQ.__JFbKyO7H7hXV == true then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebb", "xor", 142)) then
local _shjp = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebb", "xor", 142))).CFrame * __oV3c5xT70NPK);
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaeba", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaeba", "xor", 142))).CFrame * __oV3c5xT70NPK);
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebd", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebd", "xor", 142))).CFrame * __oV3c5xT70NPK);
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebc", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebc", "xor", 142))).CFrame * __oV3c5xT70NPK);
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebf", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebf", "xor", 142))).CFrame * __oV3c5xT70NPK);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
function __A4I0BAqD1YS3()
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (__D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (300 + 0) then
local __dummy = math.random(1,100) -- obf
return true;
else
return false;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
spawn(function()
local __dummy = math.random(1,100) -- obf
pcall(function()
local __tbl = {}
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] and (__xS6abtdaAUqB or __MZpSSSnhndYo) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__vKc5ZJKC8yi3.__ZfNnwkjjh5vQ.__JFbKyO7H7hXV == true then
if __A4I0BAqD1YS3() then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
if (__D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (500 + 0) then
local __dummy = math.random(1,100) -- obf
pcall(function()
repeat
wait();
__UiNobUxSrFVc();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__XWnpo8UHUIoY();
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e(((101) - 100), ((101) - 100), (2 / 2));
until not _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
end;
else
__YSg6QntXkeIX();
end;
end;
end;
end;
end);
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] and (__xS6abtdaAUqB or __MZpSSSnhndYo) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__vKc5ZJKC8yi3.__ZfNnwkjjh5vQ.__JFbKyO7H7hXV == false then
if not game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__jEyFoE88BNon:__zsrrEF2lS1yp(__decode_str("dcefe7eac7fde2efe0eabf", "xor", 142)) and (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("ddfeebede7efe2aec3e7edfce1ede6e7fe", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("ddfeebede7efe2aec3e7edfce1ede6e7fe", "xor", 142)) then
if __xS6abtdaAUqB then
__0XA0O5wXcC6q((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__DqqKJO3SYXgW.__Anoouy5A8ZwS.__uVFG730VwRDA.__sVJv4RNF52YJ.__OsHyDtoPZxPJ);
elseif __MZpSSSnhndYo then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-5083.26025390625, 314.6056823730469, -3175.673095703125));
local __dummy = math.random(1,100) -- obf
__0XA0O5wXcC6q((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd[__decode_str("cce1effaaecdeffdfae2eb", "xor", 142)].__Anoouy5A8ZwS.__uVFG730VwRDA.__sVJv4RNF52YJ.__OsHyDtoPZxPJ);
end;
end;
end;
end;
end);
end;
end);
__Ast0YsMNuC7w = {};
local __dummy = math.random(1,100) -- obf
__f4FlhlFV8vo6 = require(game.ReplicatedStorage.__7TJB7e48IiKi);
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__f4FlhlFV8vo6.__SLBZdqA9qZNw) do
table.__gKszmrCIpNoW(__Ast0YsMNuC7w, __D828YtJZSxSB);
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__f4FlhlFV8vo6.__wQX9nea9YbQg) do
table.__gKszmrCIpNoW(__Ast0YsMNuC7w, __D828YtJZSxSB);
end;
__75o9oFxiTdTc = __DCylxAOY74jA.__keQnUyeYCS3j:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaecde6e7fe", "xor", 142),
__776eboSw51dy = __Ast0YsMNuC7w,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("ddebe2ebedfaebeaaecde6e7fe", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("ddebe2ebedfaebeaaecde6e7fe", "xor", 142)] = __aKUFzd0fTFiM;
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] and (__xS6abtdaAUqB or __MZpSSSnhndYo) then
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("ddfeebede7efe2aec3e7edfce1ede6e7fe", "xor", 142)) or (not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("ddfeebede7efe2aec3e7edfce1ede6e7fe", "xor", 142))) then
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c7fde2efe0eaaebf", "xor", 142)) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dcefe7eafdc0feed", "xor", 142), __decode_str("ddebe2ebedfa", "xor", 142), _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("ddebe2ebedfaebeaaecde6e7fe", "xor", 142)]);
end;
end;
end;
end;
end);
end);
__tjRNILsEpFFv = __DCylxAOY74jA.__keQnUyeYCS3j:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedcefe7ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("cde1e3fee2ebfaebaeeffbfae1e3effae7edefe2e2f7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aedcefe7ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
local __dummy = math.random(1,100) -- obf
__sLsZCEKEuTB4 = __DCylxAOY74jA.__keQnUyeYCS3j:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecff9efe5ebe0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aecff9efe5ebe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aecff9efe5ebe0", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("cffbfae1aecff9efe5ebe0", "xor", 142)] then
pcall(function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cff9efe5ebe0ebfc", "xor", 142), __decode_str("cff9efe5ebe0", "xor", 142));
end);
end;
end;
end);
__m40HlQ5eTtPz = __DCylxAOY74jA.__keQnUyeYCS3j:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("defce7edeb", "xor", 142),
__KuJIgOIz2WnP = {
local __dummy = math.random(1,100) -- obf
__jsGdGsl0mEq4 = (2 / 2),
__IxVMEpQMEsRr = (10000000 + 0),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("defce7edebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)]
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("defce7edebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__Hjlwx94GrM4h = __DCylxAOY74jA.__keQnUyeYCS3j:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedbe0fdfae1fcebaecaebf8e7e2aec8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("dbe0fdfae1fcebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("dbe0fdfae1fcebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
function __74RlgpsFLMYN()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
local _vldn = math.random() > 0.5 and true or false
return true;
local __dummy = math.random(1,100) -- obf
end;
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
return true;
end;
end;
return false;
end;
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("dbe0fdfae1fcebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)] then
__HA7xD7R8XkTq = (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("e9ebfac7e0f8ebe0fae1fcf7c8fcfbe7fafd", "xor", 142));
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__HA7xD7R8XkTq) do
if __D828YtJZSxSB.__71HQL0i84d9E < _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("defce7edebaecaebf8e7e2aec8fcfbe7fa", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
if not __74RlgpsFLMYN() then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c2e1efeac8fcfbe7fa", "xor", 142), __D828YtJZSxSB.__fkS8rZqI8rzC);
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__eUBxwGegphUh = __DCylxAOY74jA.__keQnUyeYCS3j:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aec2efec", "xor", 142),
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
if __xS6abtdaAUqB then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-6438.73535, 250.645355, -4501.50684));
elseif __MZpSSSnhndYo then
local _mkia = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5017.40869, 314.844055, -2823.0127, -0.925743818, 0.0000000448217499, -0.378151238, 0.00000000455503146, (1 + 0), 0.000000107377559, 0.378151238, 0.000000097681621, -0.925743818));
end;
local __dummy = math.random(1,100) -- obf
end
});
__9uQCWFm854iB = __DCylxAOY74jA.__keQnUyeYCS3j:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c2eff9aedcefe7ea", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__35E13c01AXGa = __DCylxAOY74jA.__keQnUyeYCS3j:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec2eff9aedcefe7ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)] = __d1HwnaJEXiV5;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c3e7edfce1ede6e7fe", "xor", 142)) and (not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c3e7edfce1ede6e7fe", "xor", 142))) and (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142))) and (not (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142))) then
wait(0.3);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("c3e7edfce1ede6e7fe", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("c3e7edfce1ede6e7fe", "xor", 142), __decode_str("bc", "xor", 142));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)] then
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142)) and (not (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142))) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c3e7edfce1ede6e7fe", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__decode_str("c3e7edfce1ede6e7fe", "xor", 142)) then
__0XA0O5wXcC6q((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__DqqKJO3SYXgW.__7uqBMrYaRf6C.__uVFG730VwRDA.__sVJv4RNF52YJ.__OsHyDtoPZxPJ);
local __dummy = math.random(1,100) -- obf
end;
end;
if (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142)) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
for __5ZvfilfStF4c, __wuH8Mpu3pmTB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __wuH8Mpu3pmTB.__fkS8rZqI8rzC == __decode_str("c1fceaebfc", "xor", 142) then
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__UiNobUxSrFVc();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__wuH8Mpu3pmTB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
local __dummy = math.random(1,100) -- obf
__wuH8Mpu3pmTB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2 / 2), (1 + 0), (1 + 0));
local __dummy = math.random(1,100) -- obf
__UiNobUxSrFVc();
until not __wuH8Mpu3pmTB.__554Pe5pq8ngd or __wuH8Mpu3pmTB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or _G.__RmGIbDMaU7Nf.__cEJRehrDEzhj[__decode_str("c2eff9aedcefe7ea", "xor", 142)] == false;
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("c1fceaebfc", "xor", 142)) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-6217.2021484375, 28.047645568848, -5053.1357421875));
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end);
__zBAdOqv5Qk67 = __DCylxAOY74jA.__iERa7hAH0Coy:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("dcefedeb", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __h60mSYaCtCWs = {
__decode_str("dae1feaec1e8aec9fcebeffadafcebeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("dae7e3fee2ebaec1e8aedae7e3eb", "xor", 142),
__decode_str("c2ebf8ebfcaedefbe2e2", "xor", 142),
__decode_str("cfede7ebe0faaec1e0eb", "xor", 142)
};
local __dummy = math.random(1,100) -- obf
__IZcJEJLd6h4q = __DCylxAOY74jA.__iERa7hAH0Coy:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142),
__776eboSw51dy = __h60mSYaCtCWs,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__FWT3NhoFZInm = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aedee2efedeb", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daebe2ebfee1fcfaaedae1aedee2efedeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daebe2ebfee1fcfaaedae1aedee2efedeb", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daebe2ebfee1fcfaaedae1aedee2efedeb", "xor", 142)] then
pcall(function()
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)] == __decode_str("dae1feaec1e8aec9fcebeffadafcebeb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(2947.556884765625, 2281.630615234375, -7213.54931640625));
elseif _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)] == __decode_str("dae7e3fee2ebaec1e8aedae7e3eb", "xor", 142) then
(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(28286.35546875, 14895.3017578125, 102.62469482421875);
local __dummy = math.random(1,100) -- obf
elseif _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)] == __decode_str("c2ebf8ebfcaedefbe2e2", "xor", 142) then
local __2GdRqN40pulJ = CFrame.__jlt1dqxndo3e(28575.181640625, 14936.6279296875, 72.31636810302734);
if (__2GdRqN40pulJ.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS >= (2000 / 2) then
local _kkiv = math.random() > 0.5 and true or false
(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(28286.35546875, 14895.3017578125, 102.62469482421875);
else
__ZvRxhTb1ZSdn(__2GdRqN40pulJ);
end;
elseif _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("ddebe2ebedfaebeaaedee2efedeb", "xor", 142)] == __decode_str("cfede7ebe0faaec1e0eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(28981.552734375, 14888.4267578125, -120.245849609375));
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
end);
__iT6ZWFzC6xzq = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeccfbf7aec9ebeffc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aeccfbf7aec9ebeffc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aeccfbf7aec9ebeffc", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
local __dummy = math.random(1,100) -- obf
spawn(function()
pcall(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aeccfbf7aec9ebeffc", "xor", 142)] then
local __P8nZxAh2KmNg = {
[((101) - 100)] = true
};
local __P8nZxAh2KmNg = {
[(1 + 0)] = __decode_str("dbfee9fcefeaebdcefedeb", "xor", 142),
[(4 / 2)] = __decode_str("ccfbf7", "xor", 142)
};
(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcebe3e1faebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("cde1e3e3c8d1", "xor", 142))):__39fkVcO4USff(unpack(__P8nZxAh2KmNg));
end;
end;
end);
end);
__aFyiZZP0Bvy8 = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("daf9ebebe0aefae1aee6e7e9e6ebfdfaaefee1e7e0fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daf9ebebe0aedae1aec6e7e9e6ebfdfaaec3e7fcefe9eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daf9ebebe0aedae1aec6e7e9e6ebfdfaaec3e7fcefe9eb", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__U4Bwvb2lEWtZ = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
pcall(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c8e7e0eaaecce2fbebaec9ebeffc", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("c3f7fdfae7edc7fde2efe0ea", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__LDE5Pz96Nh0C:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3ebfde6deeffcfa", "xor", 142)) then
if __D828YtJZSxSB.__98Huk91X4HSa == Enum.__98Huk91X4HSa.__utTXRtu9MxCW then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.CFrame);
end;
end;
end;
end;
end;
end;
end);
end);
__zCRtlazZmA97 = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c2e1e1e5aec3e1e1e0aea8aefbfdebaecfece7e2e7faf7", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c2e1e1e5aec3e1e1e0aecfece7e2e7faf7", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c2e1e1e5aec3e1e1e0aecfece7e2e7faf7", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("c2e1e1e5aec3e1e1e0aecfece7e2e7faf7", "xor", 142)] then
wait();
local __WT3BIEZq8IAh = game.Lighting:__w8Dy72e9M2D7();
local __FheQqX7Z7Nim = game.__rzAm3HTomXuD.__Rm0mdv0UnCW6.CFrame.__F4yqLclvdXX4 + __WT3BIEZq8IAh * (100 + 0);
game.__rzAm3HTomXuD.__Rm0mdv0UnCW6.CFrame = CFrame.__j1ilzVhM2S2W(game.__rzAm3HTomXuD.__Rm0mdv0UnCW6.CFrame.__F4yqLclvdXX4, __FheQqX7Z7Nim);
end;
end);
end;
end);
__QIlvArwueN5W = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedafcefe7e0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] then
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__FtNBmxqXCoIc.__KuJIgOIz2WnP == true then
local __dummy = math.random(1,100) -- obf
__AUT2C2Y4vXiH = false;
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(216.211181640625, 126.9352035522461, -12599.0732421875));
end;
end;
end;
end);
end);
spawn(function()
while wait(0.2) do
if __AUT2C2Y4vXiH and __MZpSSSnhndYo then
pcall(function()
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde1ede1efaed9effcfce7e1fc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cde6e1ede1e2effaebaecceffcaecceffafae2ebfc", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("ddf9ebebfaaedae6e7ebe8", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("cdefe0eaf7aedcebecebe2", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde1ede1efaed9effcfce7e1fc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cde6e1ede1e2effaebaecceffcaecceffafae2ebfc", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ddf9ebebfaaedae6e7ebe8", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("cdefe0eaf7aedcebecebe2", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not __AUT2C2Y4vXiH or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
end;
end;
end;
else
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(216.211181640625, 126.9352035522461, -12599.0732421875));
end;
local __dummy = math.random(1,100) -- obf
end);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] then
local _tmyf = math.random() > 0.5 and true or false
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__FtNBmxqXCoIc.__KuJIgOIz2WnP == false then
__AUT2C2Y4vXiH = true;
end;
end;
end;
end);
end);
spawn(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
pcall(function()
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafcefe7e0", "xor", 142)] then
local _kyfd = math.random() > 0.5 and true or false
if tonumber(((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("dcefedebcbe0ebfce9f7", "xor", 142))).__KuJIgOIz2WnP) == (1 + 0) then
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__FtNBmxqXCoIc.__KuJIgOIz2WnP == false then
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d7", "xor", 142), false, game);
wait(0.1);
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d7", "xor", 142), false, game);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__0vYRfSDhper9 = __DCylxAOY74jA.__iERa7hAH0Coy:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aedcefedebaecae1e1fc", "xor", 142),
__I9FsJyvuf2aZ = function()
game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142)).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142),Vector3.__jlt1dqxndo3e(28286.35546875, 14895.3017578125, 102.62469482421875))
if game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c6fbe3efe0", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(29221.822265625, 14890.9755859375, -205.99114990234375))
elseif game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("dde5f7fee7ebef", "xor", 142) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(28960.158203125, 14919.6240234375, 235.03948974609375))
elseif game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c8e7fde6e3efe0", "xor", 142) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(28231.17578125, 14890.9755859375, -211.64173889160156))
local __dummy = math.random(1,100) -- obf
elseif game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("cdf7ece1fce9", "xor", 142) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(28502.681640625, 14895.9755859375, -423.7279357910156))
elseif game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c9e6e1fbe2", "xor", 142) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(28674.244140625, 14890.6767578125, 445.4310607910156))
elseif game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c3e7e0e5", "xor", 142) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(29012.341796875, 14890.9755859375, -380.1492614746094))
end;
end
});
__9VNIAUMnhGdv = __DCylxAOY74jA.__iERa7hAH0Coy:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aecfede7ebe0fa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function()
game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142)).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142),Vector3.__jlt1dqxndo3e(28286.35546875, 14895.3017578125, 102.62469482421875))
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(28981.552734375, 14888.4267578125, -120.245849609375))
end;
});
__7C7qa50aw3Qo = __DCylxAOY74jA.__iERa7hAH0Coy:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecfede7ebe0faaedffbebfdfa", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dbfee9fcefeaebdcefedeb", "xor", 142), __decode_str("ccfbf7", "xor", 142));
end
});
__fDjGwWq40j6x = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aedafce7efe2", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)],
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] = __d1HwnaJEXiV5;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c6fbe3efe0", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
pcall(function()
repeat
wait(0.1);
__D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz = (0 + 0);
until not _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end);
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("dde5f7fee7ebef", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__heO1cQnFWZeF.__KZ2njtlA5dch:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("fde0e1f9e7fde2efe0ead1cdf7e2e7e0eaebfca0beb6bf", "xor", 142) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (0 + 0), (0 / 2)));
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c8e7fde6e3efe0", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2.__UUI9uW6D3eZk:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142) then
repeat
wait();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), ((300) - 100), ((100) - 100)));
__LMnyqIXcRSJX();
until not _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)));
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("cdf7ece1fce9", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e((57308 / 2), 14898.7832, -((130) - 100), (2 / 2), (0 / 2), (0 / 2), (0 + 0), (2 / 2), (0 / 2), (0 + 0), ((100) - 100), ((101) - 100)));
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c9e6e1fbe2", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__eQbv8w3Atzbd:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
pcall(function()
repeat
wait(0.1);
__D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz = (0 + 0);
until not _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aedafce7efe2", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100);
end);
end;
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__C6JPlc6eWb7y.__K1JdgLQkxZr6.__KuJIgOIz2WnP == __decode_str("c3e7e0e5", "xor", 142) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__DZC5w2LNAoBg()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("ddfaeffcfadee1e7e0fa", "xor", 142) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (10 + 0), (0 + 0)));
end;
end;
end;
end;
end;
end);
end);
__yGzjSWvAJF20 = __DCylxAOY74jA.__iERa7hAH0Coy:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)],
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__sVJv4RNF52YJ.__vKc5ZJKC8yi3.__JLejE2svfzED.__JFbKyO7H7hXV == true then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))):__cz8NLc7phhaC()) do
if __D828YtJZSxSB ~= game.Players.__fni3Hio5E7WB and __D828YtJZSxSB.__ccsuuEw78Yi2 and __D828YtJZSxSB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
if (__D828YtJZSxSB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (1000 / 2) then
if __D828YtJZSxSB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:__IIzIP8uGGlyd();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__XWnpo8UHUIoY();
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), ((100) - 100), (40 + 0)));
__UiNobUxSrFVc();
local __dummy = math.random(1,100) -- obf
until not _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("cffbfae1aec5e7e2e2aedee2eff7ebfcaecfe8faebfcaedafce7efe2", "xor", 142)] or (not __D828YtJZSxSB.__ccsuuEw78Yi2) or __D828YtJZSxSB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end;
end;
end;
end;
end);
__IPnOGUGnWW5d = __DCylxAOY74jA.__8ruWEL8AeRde:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfa", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__lFI1pkRx3iz3 = __DCylxAOY74jA.__8ruWEL8AeRde:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aec8e7fcfdfaaeddebef", "xor", 142),
__I9FsJyvuf2aZ = function()
if false then local _ = 'never_executed' end
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2c3efe7e0", "xor", 142));
local __dummy = math.random(1,100) -- obf
end
});
local __dummy = math.random(1,100) -- obf
__2qB1Ssi2AjlQ = __DCylxAOY74jA.__8ruWEL8AeRde:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aeddebede1e0eaaeddebef", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2cafcebfdfdfce1fdef", "xor", 142));
end
});
__pduzXlgFcQqa = __DCylxAOY74jA.__8ruWEL8AeRde:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aedae6e7fceaaeddebef", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("dafceff8ebe2d4e1fb", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__nhzwMN7Eig3Z = __DCylxAOY74jA.__8ruWEL8AeRde:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c7fde2efe0ea", "xor", 142),
local __dummy = math.random(1,100) -- obf
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__ponwmiiP776l = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("dde6e1fe", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__YxPPHCAvypne = __DCylxAOY74jA.__Accxoh4EU2ot:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeccfbf7aec2ebe9ebe0eaeffcf7aeddf9e1fcea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__72Jdnrzq6BVL[__decode_str("cffbfae1aeccfbf7aec2ebe9ebe0eaeffcf7aeddf9e1fcea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__72Jdnrzq6BVL[__decode_str("cffbfae1aeccfbf7aec2ebe9ebe0eaeffcf7aeddf9e1fcea", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__72Jdnrzq6BVL[__decode_str("cffbfae1aeccfbf7aec2ebe9ebe0eaeffcf7aeddf9e1fcea", "xor", 142)] then
pcall(function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c2ebe9ebe0eaeffcf7ddf9e1fceacaebefe2ebfc", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c2ebe9ebe0eaeffcf7ddf9e1fceacaebefe2ebfc", "xor", 142), __decode_str("bc", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c2ebe9ebe0eaeffcf7ddf9e1fceacaebefe2ebfc", "xor", 142), __decode_str("bd", "xor", 142));
end);
end;
end;
end);
__qLVyVocV76q3 = __DCylxAOY74jA.__Accxoh4EU2ot:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeccfbf7aec6efe5e7aecde1e2e1fc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__72Jdnrzq6BVL[__decode_str("cffbfae1aeccfbf7aec6efe5e7aecde1e2e1fc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__72Jdnrzq6BVL[__decode_str("cffbfae1aeccfbf7aec6efe5e7aecde1e2e1fc", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__72Jdnrzq6BVL[__decode_str("cffbfae1aeccfbf7aec6efe5e7aecde1e2e1fc", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cde1e2e1fcfdcaebefe2ebfc", "xor", 142), __decode_str("bc", "xor", 142));
end;
end;
end);
__zQULfdnBc0IU = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cfece7e2e7fae7ebfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__wKSNacaq0JTX = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec9ebfefee1", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c6efe5e7", "xor", 142), __decode_str("c9ebfefee1", "xor", 142));
for i = 1, 0 do end
end
});
__3kJWxVH9ygRf = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aeccfbfde1aec6efe5e7", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabcbba2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c6efe5e7", "xor", 142), __decode_str("ccfbfde1", "xor", 142));
end
local __dummy = math.random(1,100) -- obf
});
__TdRxsG7hcLci = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedde1fcfb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabcbba2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c6efe5e7", "xor", 142), __decode_str("dde1fcfb", "xor", 142));
local __dummy = math.random(1,100) -- obf
end
});
__0xSCcPtFK0sU = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec1ecfdebfcf8effae7e1e0aec6efe5e7", "xor", 142),
__0eNWJkShlM4m = __decode_str("aab9bbbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c5ebe0daefe2e5", "xor", 142), __decode_str("ccfbf7", "xor", 142));
end
});
__GWZMWRcWPFe5 = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c8e7e9e6fae7e0e9aeddfaf7e2eb", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__lwqXUSJCwo3f = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecce2efede5aec2ebe9", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfbbbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce2efede5c2ebe9", "xor", 142));
local __dummy = math.random(1,100) -- obf
end
});
__YVR3BpI5U0HP = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecbe2ebedfafce1", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabbbbbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce1", "xor", 142));
local __dummy = math.random(1,100) -- obf
end
});
__Fd2QTVlN2fub = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec8e7fde6e3efe0aec5effceffaeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aab9bbbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c8e7fde6e3efe0c5effceffaeb", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__6kPpEbBipZIh = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecafcefe9e1e0aecde2eff9", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbfa2bbbebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("cafcefe9e1e0cde2eff9", "xor", 142), __decode_str("bc", "xor", 142));
end
local __dummy = math.random(1,100) -- obf
});
__7LkUW6oG19q0 = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aeddfbfeebfce6fbe3efe0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("aabda2bebebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddfbfeebfce6fbe3efe0", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__qmMTZkwzlixW = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecaebeffae6aeddfaebfe", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbba2bebebeaeaabba2bebebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7caebeffae6ddfaebfe", "xor", 142));
end
});
__KLajj7YNUh9u = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedde6effce5e3efe0aec5effceffaeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("ae481cbba2bebebeaeaabca2bbbebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142), true);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7dde6effce5e3efe0c5effceffaeb", "xor", 142));
end
});
__ybI4RKfNRJYh = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecbe2ebedfafce7edaecde2eff9", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbba2bebebeaeaabda2bebebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cbe2ebedfafce7edcde2eff9", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__JrRhCQFDd84I = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecafcefe9e1e0aedaefe2e1e0", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbba2bebebeaeaabda2bebebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cafcefe9e1e0daefe2e1e0", "xor", 142));
local __dummy = math.random(1,100) -- obf
end
});
local __dummy = math.random(1,100) -- obf
__asqZINCC3VAn = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec9e1eaaec6fbe3efe0", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbba2bebebeaeaabba2bebebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c9e1eae6fbe3efe0", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__WhPl3w5jp5NM = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aeddefe0e9fbe7e0ebaecffcfa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("ae481cbba2bebebeaeaabba2bebebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddefe0e9fbe7e0ebcffcfa", "xor", 142), true);
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7ddefe0e9fbe7e0ebcffcfa", "xor", 142));
end
});
__pp7lRucEXbPd = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ddf9e1fcea", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
__foE2By5zYcEb = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecdfbfae2effdfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfa2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("cdfbfae2effdfd", "xor", 142));
end
});
__1H4VZ69aRlfo = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec5effaefe0ef", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfa2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("c5effaefe0ef", "xor", 142));
end
});
__PpFTlzUTQaYG = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ccfbf7aec7fce1e0aec3efedeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabcbba2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("c7fce1e0aec3efedeb", "xor", 142));
end
});
__rkkGyGKACbMy = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecafbefe2aec5effaefe0ef", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfbca2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("cafbefe2aec5effaefe0ef", "xor", 142));
end
});
__KnpDitsnKXKC = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ccfbf7aedafce7fee2ebaec5effaefe0ef", "xor", 142),
__0eNWJkShlM4m = __decode_str("aab8bea2bebebe", "xor", 142),
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("dafce7fee2ebaec5effaefe0ef", "xor", 142));
local __val = math.random(1, 100)
end
});
__VgxbAzo4uDsr = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedee7feeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfbebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("dee7feeb", "xor", 142));
end
});
__mwehk2rKgc4K = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecafbefe2aec6ebefeaebeaaecce2efeaeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aababebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("cafbefe2a3c6ebefeaebeaaecce2efeaeb", "xor", 142));
end
});
__hCyolAvqebyy = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecce7fdebe0fae1", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfa2bcbebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("cce7fdebe0fae1", "xor", 142));
end
});
__gFIlgTc39bQF = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedde1fbe2aecdefe0eb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfa2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("dde1fbe2aecdefe0eb", "xor", 142));
end
});
__F0LE75oNm3iy = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c9fbe0", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__qYgzLI8kbIik = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedde2e7e0e9fde6e1fa", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabba2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("dde2e7e0e9fde6e1fa", "xor", 142));
end
});
__m3eSbh6QhZH4 = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec3fbfde5ebfa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("aab6a2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("c3fbfde5ebfa", "xor", 142));
end
local __dummy = math.random(1,100) -- obf
});
local __dummy = math.random(1,100) -- obf
__JYMBvkM3b2PK = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ccfbf7aec8e2e7e0fae2e1ede5", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("aabfbea2bbbebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("c8e2e7e0fae2e1ede5", "xor", 142));
end
});
__HNNhhiaR4A35 = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedcebe8e7e0ebeaaec8e7e0fae2e1ede5", "xor", 142),
__0eNWJkShlM4m = __decode_str("aab8bea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("dcebe8e7e0ebeaaec8e7e0fae2e1ede5", "xor", 142));
end
});
__l5h5qasAysnW = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecdefe0e0e1e0", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfbebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("cdefe0e0e1e0", "xor", 142));
local __dummy = math.random(1,100) -- obf
end
});
__3IxuIazEfSaS = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aec5efecfbede6ef", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbfa2bbbebe", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("dde2e7e0e9fde6e1fa", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("dde2e7e0e9fde6e1fa", "xor", 142), __decode_str("bc", "xor", 142));
end
});
__LgJi1btjGapL = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddfaeffafd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__Ci6gh9im45ZD = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebfdebfaaeddfaeffafd", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbca2bbbebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("dcebe8fbe0ea", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("dcebe8fbe0ea", "xor", 142), __decode_str("bc", "xor", 142));
end
});
__LRvsl4urEQWz = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcefe0eae1e3aedcefedeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("ae481cbda2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("dcebfce1e2e2", "xor", 142), __decode_str("bf", "xor", 142));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cce2efede5ecebeffceadcebf9effcea", "xor", 142), __decode_str("dcebfce1e2e2", "xor", 142), __decode_str("bc", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__L1bqE5B7Vv3p = __DCylxAOY74jA.__Accxoh4EU2ot:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cfededebfdfde1fce7ebfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__ul8gtWuyiDNC = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aecce2efede5aecdeffeeb", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabbbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("cce2efede5aecdeffeeb", "xor", 142));
end
});
__9LEibXUS9MuP = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ccfbf7aeddf9e1fceafde3efe0aec6effa", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabfbbbea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("ddf9e1fceafde3efe0aec6effa", "xor", 142));
end
});
__agWD1r9bxS6p = __DCylxAOY74jA.__Accxoh4EU2ot:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfbf7aedae1e3e1ebaedce7e0e9", "xor", 142),
__0eNWJkShlM4m = __decode_str("aabbbebea2bebebe", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7c7faebe3", "xor", 142), __decode_str("dae1e3e1ebaedce7e0e9", "xor", 142));
end
});
__5agYK0KmcUsc = __DCylxAOY74jA.__EmwBvytgFzTi:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cde1e3eceffa", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__Imd2DIH0Aimx = __DCylxAOY74jA.__EmwBvytgFzTi:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("dee2eff7ebfcfdaec7e0aeddebfcf8ebfc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("be", "xor", 142)
});
spawn(function()
while wait(0.2) do
pcall(function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))):__cz8NLc7phhaC()) do
if __wuH8Mpu3pmTB == ((112) - 100) then
__Imd2DIH0Aimx:__AuHle8YtGk0N(__wuH8Mpu3pmTB .. __decode_str("aea1ae", "xor", 142) .. __decode_str("bfbc", "xor", 142) .. __decode_str("a6c3eff6a7", "xor", 142));
elseif __wuH8Mpu3pmTB == ((101) - 100) then
__Imd2DIH0Aimx:__AuHle8YtGk0N(__wuH8Mpu3pmTB .. __decode_str("aea1ae", "xor", 142) .. __decode_str("bfbc", "xor", 142));
else
__Imd2DIH0Aimx:__AuHle8YtGk0N(__wuH8Mpu3pmTB .. __decode_str("aea1ae", "xor", 142) .. __decode_str("bfbc", "xor", 142));
end;
end;
end);
end;
end);
local __IM5QP1bg95zv = {};
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))):__pZnxUxkN8q9J()) do
table.__gKszmrCIpNoW(__IM5QP1bg95zv, __D828YtJZSxSB.__fkS8rZqI8rzC);
end;
__nuFg4nVHDsRM = __DCylxAOY74jA.__EmwBvytgFzTi:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaedee2eff7ebfc", "xor", 142),
__776eboSw51dy = __IM5QP1bg95zv,
__KuJIgOIz2WnP = tostring(__IM5QP1bg95zv[((101) - 100)]),
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__7ilVKhxyKVQY = __aKUFzd0fTFiM;
end
});
__d8QZ9KAtGob6 = __DCylxAOY74jA.__EmwBvytgFzTi:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebe8fcebfde6aedee2eff7ebfc", "xor", 142),
__I9FsJyvuf2aZ = function()
__IM5QP1bg95zv = {};
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))):__pZnxUxkN8q9J()) do
table.__gKszmrCIpNoW(__IM5QP1bg95zv, __D828YtJZSxSB.__fkS8rZqI8rzC);
end;
__nuFg4nVHDsRM:__23uQF4SmpO6u(__IM5QP1bg95zv);
end
});
__7P7tZ8iXOC74 = __DCylxAOY74jA.__EmwBvytgFzTi:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("ddfeebedfaeffaebaedee2eff7ebfc", "xor", 142),
__KuJIgOIz2WnP = false,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
__1CAouiIINo0b = __3abLK7oFpYPf
local Players = game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))
local __rzAm3HTomXuD = game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))
local __t9wxsy278DRZ = __rzAm3HTomXuD.__Rm0mdv0UnCW6
local __fni3Hio5E7WB = Players.__fni3Hio5E7WB
while __1CAouiIINo0b do
wait(0.1)
local __OKidHzaEizpm = _G.__7ilVKhxyKVQY and Players:__zsrrEF2lS1yp(_G.__7ilVKhxyKVQY)
if __OKidHzaEizpm and __OKidHzaEizpm.__ccsuuEw78Yi2 and __OKidHzaEizpm.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) then
__t9wxsy278DRZ.__jEiBe3UkGyd7 = __OKidHzaEizpm.__ccsuuEw78Yi2.__o5H1UHU8JG5m
else
break
end
end
if __fni3Hio5E7WB.__ccsuuEw78Yi2 and __fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) then
__t9wxsy278DRZ.__jEiBe3UkGyd7 = __fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m
end
end
local __dummy = math.random(1,100) -- obf
})
__L6vxTR0olh0A = __DCylxAOY74jA.__EmwBvytgFzTi:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aedee2eff7ebfc", "xor", 142),
__KuJIgOIz2WnP = false,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__S8S0N75BclUR = __d1HwnaJEXiV5;
pcall(function()
if _G.__S8S0N75BclUR then
repeat
__ZvRxhTb1ZSdn((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)))[_G.__7ilVKhxyKVQY].__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame);
local __dummy = math.random(1,100) -- obf
wait();
until _G.__S8S0N75BclUR == false or (not (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))):__zsrrEF2lS1yp(_G.__7ilVKhxyKVQY));
end;
__FNtx5QFPOdCQ(_G.__S8S0N75BclUR);
end);
end
});
local __UNvLlPUtj1jl = {};
if __r6rRqZJqrWdL then
__UNvLlPUtj1jl = {
__decode_str("d9e7e0eac3e7e2e2", "xor", 142),
__decode_str("c3effce7e0eb", "xor", 142),
__decode_str("c3e7eaeae2ebaedae1f9e0", "xor", 142),
__decode_str("c4fbe0e9e2eb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("dee7fceffaebaed8e7e2e2efe9eb", "xor", 142),
__decode_str("caebfdebfcfa", "xor", 142),
__decode_str("dde0e1f9aec7fde2efe0ea", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c3effce7e0ebc8e1fcea", "xor", 142),
__decode_str("cde1e2e1fdfdebfbe3", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("dde5f7aec7fde2efe0eaaebf", "xor", 142),
__decode_str("dde5f7aec7fde2efe0eaaebc", "xor", 142),
__decode_str("dde5f7aec7fde2efe0eaaebd", "xor", 142),
__decode_str("defce7fde1e0", "xor", 142),
__decode_str("c3efe9e3efaed8e7e2e2efe9eb", "xor", 142),
__decode_str("dbe0eaebfcaed9effaebfcaec7fde2efe0ea", "xor", 142),
__decode_str("c8e1fbe0faefe7e0aecde7faf7", "xor", 142),
__decode_str("dde6efe0e5aedce1e1e3", "xor", 142),
__decode_str("c3e1ecaec7fde2efe0ea", "xor", 142)
};
elseif __xS6abtdaAUqB then
__UNvLlPUtj1jl = {
__decode_str("dae6ebaecdefe8eb", "xor", 142),
__decode_str("c8fce7fdfaaeddfee1fa", "xor", 142),
__decode_str("caeffce5aecffcebef", "xor", 142),
__decode_str("c8e2efe3e7e0e9e1aec3efe0fde7e1e0", "xor", 142),
__decode_str("c8e2efe3e7e0e9e1aedce1e1e3", "xor", 142),
__decode_str("c9fcebebe0aed4e1e0eb", "xor", 142),
__decode_str("c8efedfae1fcf7", "xor", 142),
__decode_str("cde1e2e1fdfdfbe7e3", "xor", 142),
__decode_str("d4e1e3ece7ebaec7fde2efe0ea", "xor", 142),
__decode_str("daf9e1aedde0e1f9aec3e1fbe0faefe7e0", "xor", 142),
__decode_str("defbe0e5aec6eff4effcea", "xor", 142),
__decode_str("cdfbfcfdebeaaedde6e7fe", "xor", 142),
__decode_str("c7edebaecdeffdfae2eb", "xor", 142),
__decode_str("c8e1fce9e1fafaebe0aec7fde2efe0ea", "xor", 142),
__decode_str("dbfdfde1feaec7fde2efe0ea", "xor", 142),
__decode_str("c3e7e0e7aedde5f7aec7fde2efe0ea", "xor", 142)
};
elseif __MZpSSSnhndYo then
__UNvLlPUtj1jl = {
__decode_str("c3efe0fde7e1e0", "xor", 142),
__decode_str("dee1fcfaaedae1f9e0", "xor", 142),
__decode_str("c9fcebeffaaedafcebeb", "xor", 142),
__decode_str("cdeffdfae2ebaec1e0aedae6ebaeddebef", "xor", 142),
__decode_str("c3e7e0e7dde5f7", "xor", 142),
__decode_str("c6f7eafcefaec7fde2efe0ea", "xor", 142),
__decode_str("c8e2e1effae7e0e9aedafbfcfae2eb", "xor", 142),
__decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142),
__decode_str("c7edebaecdfcebefe3aec7fde2efe0ea", "xor", 142),
__decode_str("deebefe0fbfaaec7fde2efe0ea", "xor", 142),
__decode_str("cdefe5ebaec7fde2efe0ea", "xor", 142),
__decode_str("cde1ede1efaec7fde2efe0ea", "xor", 142),
__decode_str("cdefe0eaf7aec7fde2efe0ea", "xor", 142),
__decode_str("dae7e5e7aec1fbfafee1fdfa", "xor", 142),
__decode_str("cafcefe9e1e0aecae1e4e1", "xor", 142)
};
end;
__YBgsfpka1RjI = __DCylxAOY74jA.__8ruWEL8AeRde:__sZqrmV1REJYZ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaec7fde2efe0ea", "xor", 142),
__776eboSw51dy = __UNvLlPUtj1jl,
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = __UNvLlPUtj1jl[((101) - 100)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__jcglh2zQHhbw = __aKUFzd0fTFiM;
end
});
__Tt2RcDrsXbrw = __DCylxAOY74jA.__8ruWEL8AeRde:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = false,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__WVstbOcu7xbM = __3abLK7oFpYPf;
if _G.__WVstbOcu7xbM then
repeat
wait();
if _G.__jcglh2zQHhbw == __decode_str("d9e7e0eac3e7e2e2", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(979.79895019531, 16.516613006592, 1429.0466308594));
elseif _G.__jcglh2zQHhbw == __decode_str("c3effce7e0eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2566.4296875, 6.8556680679321, 2045.2561035156));
elseif _G.__jcglh2zQHhbw == __decode_str("c3e7eaeae2ebaedae1f9e0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-690.33081054688, 15.09425163269, 1582.2380371094));
elseif _G.__jcglh2zQHhbw == __decode_str("c4fbe0e9e2eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1612.7957763672, 36.852081298828, 149.12843322754));
elseif _G.__jcglh2zQHhbw == __decode_str("dee7fceffaebaed8e7e2e2efe9eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1181.3093261719, 4.7514905929565, 3803.5456542969));
elseif _G.__jcglh2zQHhbw == __decode_str("caebfdebfcfa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(944.15789794922, 20.919729232788, 4373.3002929688));
elseif _G.__jcglh2zQHhbw == __decode_str("dde0e1f9aec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(1347.8067626953, 104.66806030273, -1319.7370605469));
elseif _G.__jcglh2zQHhbw == __decode_str("c3effce7e0ebc8e1fcea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-4914.8212890625, 50.963626861572, 4281.0278320313));
elseif _G.__jcglh2zQHhbw == __decode_str("cde1e2e1fdfdebfbe3", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1427.6203613281, 7.2881078720093, -2792.7722167969));
elseif _G.__jcglh2zQHhbw == __decode_str("dde5f7aec7fde2efe0eaaebf", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-4869.1025390625, 733.46051025391, -2667.0180664063));
elseif _G.__jcglh2zQHhbw == __decode_str("dde5f7aec7fde2efe0eaaebc", "xor", 142) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-4607.82275, 872.54248, -1667.55688));
elseif _G.__jcglh2zQHhbw == __decode_str("dde5f7aec7fde2efe0eaaebd", "xor", 142) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-7894.6176757813, 5547.1416015625, -380.29119873047));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("defce7fde1e0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(4875.330078125, 5.6519818305969, 734.85021972656));
elseif _G.__jcglh2zQHhbw == __decode_str("c3efe9e3efaed8e7e2e2efe9eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5247.7163085938, 12.883934020996, 8504.96875));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("dbe0eaebfcaed9effaebfcaec7fde2efe0ea", "xor", 142) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(61163.8515625, 11.6796875, 1819.7841796875));
elseif _G.__jcglh2zQHhbw == __decode_str("c8e1fbe0faefe7e0aecde7faf7", "xor", 142) then
local _yxat = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(5127.1284179688, 59.501365661621, 4105.4458007813));
elseif _G.__jcglh2zQHhbw == __decode_str("dde6efe0e5aedce1e1e3", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1442.16553, 29.8788261, -28.3547478));
elseif _G.__jcglh2zQHhbw == __decode_str("c3e1ecaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2850.20068, 7.39224768, 5354.99268));
elseif _G.__jcglh2zQHhbw == __decode_str("dae6ebaecdefe8eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-380.47927856445, 77.220390319824, 255.82550048828));
elseif _G.__jcglh2zQHhbw == __decode_str("c8fce7fdfaaeddfee1fa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-11.311455726624, 29.276733398438, 2771.5224609375));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("caeffce5aecffcebef", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(3780.0302734375, 22.652164459229, -3498.5859375));
elseif _G.__jcglh2zQHhbw == __decode_str("c8e2efe3e7e0e9e1aec3efe0fde7e1e0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-483.73370361328, 332.0383605957, 595.32708740234));
elseif _G.__jcglh2zQHhbw == __decode_str("c8e2efe3e7e0e9e1aedce1e1e3", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(2284.4140625, 15.152037620544, 875.72534179688));
elseif _G.__jcglh2zQHhbw == __decode_str("c9fcebebe0aed4e1e0eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2448.5300292969, 73.016105651855, -3210.6306152344));
elseif _G.__jcglh2zQHhbw == __decode_str("c8efedfae1fcf7", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(424.12698364258, 211.16171264648, -427.54049682617));
elseif _G.__jcglh2zQHhbw == __decode_str("cde1e2e1fdfdfbe7e3", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1503.6224365234, 219.7956237793, 1369.3101806641));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("d4e1e3ece7ebaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5622.033203125, 492.19604492188, -781.78552246094));
elseif _G.__jcglh2zQHhbw == __decode_str("daf9e1aedde0e1f9aec3e1fbe0faefe7e0", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(753.14288330078, 408.23559570313, -5274.6147460938));
elseif _G.__jcglh2zQHhbw == __decode_str("defbe0e5aec6eff4effcea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-6127.654296875, 15.951762199402, -5040.2861328125));
elseif _G.__jcglh2zQHhbw == __decode_str("cdfbfcfdebeaaedde6e7fe", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(923.40197753906, 125.05712890625, 32885.875));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("c7edebaecdeffdfae2eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(6148.4116210938, 294.38687133789, -6741.1166992188));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("c8e1fce9e1fafaebe0aec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-3032.7641601563, 317.89672851563, -10075.373046875));
elseif _G.__jcglh2zQHhbw == __decode_str("dbfdfde1feaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(4816.8618164063, 8.4599885940552, 2863.8195800781));
elseif _G.__jcglh2zQHhbw == __decode_str("c3e7e0e7aedde5f7aec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-288.74060058594, 49326.31640625, -35248.59375));
elseif _G.__jcglh2zQHhbw == __decode_str("c9fcebeffaaedafcebeb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(2681.2736816406, 1682.8092041016, -7190.9853515625));
elseif _G.__jcglh2zQHhbw == __decode_str("cdeffdfae2ebaec1e0aedae6ebaeddebef", "xor", 142) then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-5083.26025390625, 314.6056823730469, -3175.673095703125));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("c3e7e0e7dde5f7", "xor", 142) then
local _nxtd = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-260.65557861328, 49325.8046875, -35253.5703125));
elseif _G.__jcglh2zQHhbw == __decode_str("dee1fcfaaedae1f9e0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-290.7376708984375, 6.729952812194824, 5343.5537109375));
elseif _G.__jcglh2zQHhbw == __decode_str("c6f7eafcefaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(5291.24951, 1005.4433, 393.762421, 0.994222522, 0.00000000945717726, -0.10733854, -0.00000000708227299, (1 + 0), 0.0000000225065655, 0.10733854, -0.0000000216163336, 0.994222522));
elseif _G.__jcglh2zQHhbw == __decode_str("c8e2e1effae7e0e9aedafbfcfae2eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-13274.528320313, 531.82073974609, -7579.22265625));
elseif _G.__jcglh2zQHhbw == __decode_str("c3efe0fde7e1e0", "xor", 142) then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("fcebfffbebfdfacbe0fafcefe0edeb", "xor", 142), Vector3.__jlt1dqxndo3e(-12471.169921875, 374.94024658203, -7551.677734375));
elseif _G.__jcglh2zQHhbw == __decode_str("c6effbe0faebeaaecdeffdfae2eb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-9515.3720703125, 164.00624084473, 5786.0610351562));
elseif _G.__jcglh2zQHhbw == __decode_str("c7edebaecdfcebefe3aec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-902.56817626953, 79.93204498291, -10988.84765625));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("deebefe0fbfaaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2062.7475585938, 50.473892211914, -10232.568359375));
elseif _G.__jcglh2zQHhbw == __decode_str("cdefe5ebaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1884.7747802734375, 19.327526092529297, -11666.8974609375));
elseif _G.__jcglh2zQHhbw == __decode_str("cde1ede1efaec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(87.94276428222656, 73.55451202392578, -12319.46484375));
elseif _G.__jcglh2zQHhbw == __decode_str("cdefe0eaf7aec7fde2efe0ea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1014.4241943359375, 149.11068725585938, -14555.962890625));
elseif _G.__jcglh2zQHhbw == __decode_str("dae7e5e7aec1fbfafee1fdfa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 0.00000000110512588, -0.99813664, -0.0000000183458475, ((101) - 100), 0.00000000222871765, 0.99813664, 0.0000000184476558, -0.0610186495));
local __dummy = math.random(1,100) -- obf
elseif _G.__jcglh2zQHhbw == __decode_str("cafcefe9e1e0aecae1e4e1", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(5743.31934, 1206.90991, 936.011047, 0.475779682, -0.00000000366404773, -0.879564524, 0.0000000254969592, (2 / 2), 0.00000000962622693, 0.879564524, -0.000000027006184, 0.475779682));
local __dummy = math.random(1,100) -- obf
end;
until not _G.__WVstbOcu7xbM;
end;
__FNtx5QFPOdCQ(_G.__WVstbOcu7xbM);
end
});
__MEcq02Qi70aa = __DCylxAOY74jA.__8ruWEL8AeRde:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c0feed", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
local __giEZw4SRXgvb = {};
if __r6rRqZJqrWdL then
__giEZw4SRXgvb = {
__decode_str("dcefe0eae1e3aecaebf8e7e2aec8fcfbe7fa", "xor", 142),
__decode_str("cce2e1f6aec8fcfbe7fafdaecaebefe2ebfc", "xor", 142),
__decode_str("dcebe3e1f8ebaecaebf8e7e2aec8fcfbe7fa", "xor", 142),
__decode_str("cfece7e2e7faf7aedaebefede6ebfc", "xor", 142),
__decode_str("caeffce5aeddfaebfe", "xor", 142),
__decode_str("cbe2ebedfafce1", "xor", 142),
__decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142)
};
elseif __xS6abtdaAUqB then
__giEZw4SRXgvb = {
__decode_str("caeffce9e1e0aeccebfceffae6", "xor", 142),
__decode_str("c3fafdfaebfce7e1fbfdaec3efe0", "xor", 142),
__decode_str("c3f7fdfaebfce7e1fbfdaeddede7ebe0fae7fdfa", "xor", 142),
__decode_str("cff9efe5ebe0e7e0e9aecbf6feebfcfa", "xor", 142),
__decode_str("c0ebfcea", "xor", 142),
__decode_str("cceffcaec3efe0efe9ebfc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("cce2e1f6aec8fcfbe7fafdaecaebefe2ebfc", "xor", 142),
__decode_str("dafcebf8e1fc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("cbe0e6efe0edebe3ebe0faaecbeae7fae1fc", "xor", 142),
__decode_str("dee7fceffaebaedcebedfcfbe7faebfc", "xor", 142),
__decode_str("c3effce7e0ebfdaedcebedfcfbe7faebfc", "xor", 142),
__decode_str("cde6ebe3e7fdfa", "xor", 142),
__decode_str("cdf7ece1fce9", "xor", 142),
__decode_str("c9e6e1fbe2aec3effce5", "xor", 142),
__decode_str("c9fbeffde6e7ebe3", "xor", 142),
__decode_str("cbe2aecfeae3e7e0", "xor", 142),
__decode_str("cbe2aedce1eae1e2e8e1", "xor", 142),
__decode_str("cffce1f9eb", "xor", 142)
};
elseif __MZpSSSnhndYo then
__giEZw4SRXgvb = {
__decode_str("cce2e1f6aec8fcfbe7fafdaecaebefe2ebfc", "xor", 142),
__decode_str("dcebe3e1f8ebaecaebf8e7e2aec8fcfbe7fa", "xor", 142),
__decode_str("c6e1fce0ebeaaec3efe0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c6fbe0e9ebf7aec3efe0", "xor", 142),
__decode_str("defcebf8e7e1fbfdaec6ebfce1", "xor", 142),
__decode_str("ccfbfae2ebfc", "xor", 142),
__decode_str("c2fbe0e1f8ebe0", "xor", 142),
__decode_str("dafcebf8e1fc", "xor", 142),
__decode_str("cbe2e7faebaec6fbe0faebfc", "xor", 142),
__decode_str("dee2eff7ebfcaec6fbe0faebfc", "xor", 142),
__decode_str("dbf4e1fae6", "xor", 142)
};
end;
__lG73ZWVPdJ5p = __DCylxAOY74jA.__8ruWEL8AeRde:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaec0feed", "xor", 142),
__776eboSw51dy = __giEZw4SRXgvb,
__KuJIgOIz2WnP = __giEZw4SRXgvb[(1 + 0)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
local __dummy = math.random(1,100) -- obf
_G.__KDBe1SkwT79w = __aKUFzd0fTFiM;
end
});
__YCSwt8mRH8R8 = __DCylxAOY74jA.__8ruWEL8AeRde:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aec0feed", "xor", 142),
__KuJIgOIz2WnP = false,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__xjkga2QWzJfK = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
if _G.__xjkga2QWzJfK then
local __dummy = math.random(1,100) -- obf
repeat
wait();
if _G.__KDBe1SkwT79w == __decode_str("caeffce9e1e0aeccebfceffae6", "xor", 142) then
local _gwgu = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(703.372986, 186.985519, 654.522034, (1 + 0), (0 + 0), (0 / 2), (0 + 0), (1 + 0), (0 / 2), (0 + 0), (0 + 0), (1 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("c3fafdfaebfce7e1fbfdaec3efe0", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -0.00000000906400288, 0.92552036, -0.00000000895582009, (2 / 2), 0.0000000134578926, -0.92552036, -0.0000000133852689, 0.378697902));
elseif _G.__KDBe1SkwT79w == __decode_str("c3f7fdfaebfce7e1fbfdaeddede7ebe0fae7fdfa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-6437.87793, 250.645355, -4498.92773, 0.502376854, -0.0000000101223634, -0.864648759, 0.0000000234106086, ((101) - 100), 0.00000000189508653, 0.864648759, -0.0000000211940012, 0.502376854));
elseif _G.__KDBe1SkwT79w == __decode_str("cff9efe5ebe0e7e0e9aecbf6feebfcfa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-408.098846, 16.0459061, 247.432846, 0.028394036, 0.000000000617599138, 0.999596894, -0.00000000557905944, (1 + 0), -0.000000000459372484, -0.999596894, -0.00000000556376767, 0.028394036));
elseif _G.__KDBe1SkwT79w == __decode_str("c0ebfcea", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-401.783722, 73.0859299, 262.306702, (2 / 2), (0 / 2), (0 / 2), ((100) - 100), (2 / 2), (0 / 2), (0 / 2), (0 + 0), (1 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("cceffcaec3efe0efe9ebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-385.84726, 73.0458984, 316.088806, (2 / 2), ((100) - 100), (0 + 0), (0 / 2), (1 + 0), (0 / 2), (0 / 2), (0 / 2), ((101) - 100)));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("cce2e1f6aec8fcfbe7fafdaecaebefe2ebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-450.725464, 73.0458984, 355.636902, -0.780352175, -0.000000027266168, 0.625340283, 0.00000000978516468, (2 / 2), 0.0000000558128797, -0.625340283, 0.0000000496727601, -0.780352175));
elseif _G.__KDBe1SkwT79w == __decode_str("dafcebf8e1fc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-341.498322, 331.886444, 643.024963, (2 / 2), (0 + 0), (0 + 0), (0 + 0), (1 + 0), (0 / 2), (0 / 2), ((100) - 100), (1 + 0)));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("dee2e1e5fdfaebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1885.16016, 88.3838196, -1912.28723, -0.513468027, (0 + 0), 0.858108759, (0 / 2), (1 + 0), (0 + 0), -0.858108759, ((100) - 100), -0.513468027));
elseif _G.__KDBe1SkwT79w == __decode_str("cbe0e6efe0edebe3ebe0faaecbeae7fae1fc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-346.820221, 72.9856339, 1194.36218, (2 / 2), (0 + 0), ((100) - 100), (0 / 2), ((101) - 100), (0 / 2), (0 / 2), (0 / 2), (1 + 0)));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("dee7fceffaebaedcebedfcfbe7faebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-428.072998, 72.9495239, 1445.32422, (2 / 2), (0 + 0), (0 / 2), (0 + 0), (1 + 0), (0 + 0), (0 + 0), ((100) - 100), (2 / 2)));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("c3effce7e0ebfdaedcebedfcfbe7faebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1349.77295, 72.9853363, -1045.12964, 0.866493046, (0 + 0), -0.499189168, ((100) - 100), (2 / 2), (0 / 2), 0.499189168, (0 + 0), 0.866493046));
elseif _G.__KDBe1SkwT79w == __decode_str("cde6ebe3e7fdfa", "xor", 142) then
local _tpkz = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-2777.45288, 72.9919434, -3572.25732, ((101) - 100), (0 + 0), (0 + 0), ((100) - 100), (1 + 0), (0 / 2), (0 / 2), ((100) - 100), ((101) - 100)));
elseif _G.__KDBe1SkwT79w == __decode_str("c9e6e1fbe2aec3effce5", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(635.172546, 125.976357, 33219.832, (2 / 2), ((100) - 100), (0 + 0), (0 / 2), ((101) - 100), (0 / 2), (0 + 0), (0 / 2), ((101) - 100)));
elseif _G.__KDBe1SkwT79w == __decode_str("cdf7ece1fce9", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(629.146851, 312.307373, -531.624146, (1 + 0), (0 / 2), ((100) - 100), (0 / 2), ((101) - 100), (0 + 0), (0 + 0), ((100) - 100), (1 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("c9fbeffde6e7ebe3", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(937.953003, 181.083359, 33277.9297, (1 + 0), -0.0000000860126406, 0.0000000000000000381773896, 0.0000000860126406, (1 + 0), -0.000000000000000189969598, -0.000000000000000038177373, 0.000000000000000189969598, (2 / 2)));
elseif _G.__KDBe1SkwT79w == __decode_str("cbe2aecfeae3e7e0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(1322.80835, 126.345039, 33135.8789, 0.988783717, -0.0000000869797603, -0.149354503, 0.0000000862223786, (2 / 2), -0.0000000115461916, 0.149354503, -0.00000000146101409, 0.988783717));
elseif _G.__KDBe1SkwT79w == __decode_str("cbe2aedce1eae1e2e8e1", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(941.228699, 40.4686775, 32778.9922, -0.818029106, -0.0000000119524382, 0.575176775, -0.0000000128741648, (1 + 0), 0.00000000247053866, -0.575176775, -0.00000000538394795, -0.818029106));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("cffce1f9eb", "xor", 142) then
local _rjvw = math.random() > 0.5 and true or false
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1994.51038, 125.519142, -72.2622986, -0.16715166, -0.0000000655417338, -0.985931218, -0.0000000713315558, ((101) - 100), -0.0000000543836585, 0.985931218, 0.0000000612376851, -0.16715166));
elseif _G.__KDBe1SkwT79w == __decode_str("dcefe0eae1e3aecaebf8e7e2aec8fcfbe7fa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 0.0000000274216543, 0.829979479, 0.0000000583273234, (2 / 2), 0.00000000616037932, -0.829979479, 0.0000000518467118, -0.557794094));
elseif _G.__KDBe1SkwT79w == __decode_str("cce2e1f6aec8fcfbe7fafdaecaebefe2ebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-923.255066, 7.67800522, 1608.61011, (1 + 0), ((100) - 100), (0 + 0), ((100) - 100), (1 + 0), (0 / 2), (0 / 2), (0 / 2), (1 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("dcebe3e1f8ebaecaebf8e7e2aec8fcfbe7fa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(5664.80469, 64.677681, 867.85907, ((101) - 100), (0 / 2), (0 / 2), ((100) - 100), (1 + 0), ((100) - 100), ((100) - 100), (0 + 0), ((101) - 100)));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("cfece7e2e7faf7aedaebefede6ebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -0.0000000926330159, 0.500262439, -0.0000000733759435, ((101) - 100), 0.00000005816689, -0.500262439, 0.0000000136579752, -0.865874112));
elseif _G.__KDBe1SkwT79w == __decode_str("caeffce5aeddfaebfe", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-987.873047, 13.7778397, 3989.4978, (1 + 0), (0 + 0), (0 / 2), ((100) - 100), ((101) - 100), (0 + 0), ((100) - 100), (0 + 0), (2 / 2)));
elseif _G.__KDBe1SkwT79w == __decode_str("cbe2ebedfafce1", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-5389.49561, 13.283, -2149.80151, ((101) - 100), (0 / 2), (0 / 2), (0 / 2), ((101) - 100), ((100) - 100), (0 / 2), (0 / 2), (2 / 2)));
elseif _G.__KDBe1SkwT79w == __decode_str("c8e7fde6e3efe0aec5effceffaeb", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(61581.8047, 18.8965912, 987.832703, (2 / 2), (0 + 0), ((100) - 100), (0 + 0), (2 / 2), (0 + 0), (0 / 2), (0 / 2), (1 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("dcefe0eae1e3aecaebf8e7e2aec8fcfbe7fa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-((12591) - 100), (337 + 0), -((7549) - 100)));
elseif _G.__KDBe1SkwT79w == __decode_str("cce2e1f6aec8fcfbe7fafdaecaebefe2ebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(12511 + 0), (674 / 2), -(14896 / 2)));
elseif _G.__KDBe1SkwT79w == __decode_str("dcebe3e1f8ebaecaebf8e7e2aec8fcfbe7fa", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(11142 / 2), ((1189) - 100), -(5322 / 2)));
local __dummy = math.random(1,100) -- obf
elseif _G.__KDBe1SkwT79w == __decode_str("c6e1fce0ebeaaec3efe0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(23780 / 2), ((1031) - 100), -(8760 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("c6fbe0e9ebf7aec3efe0", "xor", 142) then
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(10919 + 0), (1248 / 2), -((10368) - 100)));
elseif _G.__KDBe1SkwT79w == __decode_str("defcebf8e7e1fbfdaec6ebfce1", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(20736 / 2), (332 + 0), -(20256 / 2)));
elseif _G.__KDBe1SkwT79w == __decode_str("ccfbfae2ebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(10250 / 2), (632 / 2), -((3230) - 100)));
elseif _G.__KDBe1SkwT79w == __decode_str("c2fbe0e1f8ebe0", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(5117 + 0), ((416) - 100), -(3093 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("cbe2e7faebaec6fbe0faebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-(5420 + 0), (628 / 2), -(2828 + 0)));
elseif _G.__KDBe1SkwT79w == __decode_str("dee2eff7ebfcaec6fbe0faebfc", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-((5659) - 100), (314 + 0), -(5680 / 2)));
elseif _G.__KDBe1SkwT79w == __decode_str("dbf4e1fae6", "xor", 142) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(-((9885) - 100), (852 + 0), (6667 + 0)));
end;
until not _G.__xjkga2QWzJfK;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__xjkga2QWzJfK);
end
});
__U5wrKcC41qP6 = __DCylxAOY74jA.__h2Z9nDbKPh7h:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cbfdfe", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__QJZLzpIIXbGX = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaedee2eff7ebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaedee2eff7ebfc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedee2eff7ebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedee2eff7ebfc", "xor", 142)] = __3abLK7oFpYPf;
end
});
__2kyp1xjbXk2S = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaecde6ebfdfa", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaecde6ebfdfa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecde6ebfdfa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecde6ebfdfa", "xor", 142)] = __3abLK7oFpYPf;
end
});
__QM3OBeDdiIol = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaecaebf8e7e2c8fcfbe7fa", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaecaebf8e7e2c8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecaebf8e7e2c8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaecaebf8e7e2c8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
end
});
local __dummy = math.random(1,100) -- obf
__ZajnhG17IvKR = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cbfdfeaedcebefe2c8fcfbe7fa", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaedcebefe2c8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedcebefe2c8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedcebefe2c8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
end
});
__69w0MGTFiIbz = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaec8e2e1f9ebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec8e2e1f9ebfc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec8e2e1f9ebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec8e2e1f9ebfc", "xor", 142)] = __3abLK7oFpYPf;
end
});
__0WJAw0Rardhd = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec7fde2efe0ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec7fde2efe0ea", "xor", 142)] = __3abLK7oFpYPf;
end
local __dummy = math.random(1,100) -- obf
});
__1UduXzCNLmtX = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaec0feed", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec0feed", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec0feed", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec0feed", "xor", 142)] = __3abLK7oFpYPf;
end
});
__lfDUuYrSDGzG = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaeddebefaeccebeffdfa", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaeddebefccebeffdfa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaeddebefaeccebeffdfa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaeddebefaeccebeffdfa", "xor", 142)] = __3abLK7oFpYPf;
end
});
local __dummy = math.random(1,100) -- obf
__6yn00dpBujRC = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cbfdfeaec3e1e0fdfaebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec3e1e0fdfaebfc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec3e1e0fdfaebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec3e1e0fdfaebfc", "xor", 142)] = __3abLK7oFpYPf;
end
});
__2NHZQbOal8Oq = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaec3e7fcefe9ebaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec3e7fcefe9ebaec7fde2efe0ea", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec3e7fcefe9eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec3e7fcefe9eb", "xor", 142)] = __3abLK7oFpYPf;
end
});
__ABdDWrM0sLez = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec5e7fafdfbe0eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec5e7fafdfbe0eb", "xor", 142)] = __3abLK7oFpYPf;
end
});
__fjxkVueeDKCK = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cbfdfeaec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec8fce1f4ebe0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec8fce1f4ebe0", "xor", 142)] = __3abLK7oFpYPf;
end
});
__1kYASq7Iy1VT = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cbfdfeaedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedefcebe6e7fdfae1fce7ed", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaedefcebe6e7fdfae1fce7ed", "xor", 142)] = __3abLK7oFpYPf;
end
});
__cr4depUPOKno = __DCylxAOY74jA.__h2Z9nDbKPh7h:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cbfdfeaec9ebeffc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c6e7e9e6e2e7e9e6faaec9ebeffc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec9ebeffc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__7Wt5mqaMUEKG[__decode_str("cbdddeaec9ebeffc", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
end
});
__DRJo8kMV5wBb = __DCylxAOY74jA.__01rt4OJ9XXAq:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cafcefe9e1e0aecae1e4e1", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__QvRKJJEJZSxk = __DCylxAOY74jA.__01rt4OJ9XXAq:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("cffbfae1aecde1e3fee2ebeffaebaedffbebfdfaaea5aecde1e2e2ebedfaaecce2eff4ebaecbe3ecebfcaed5aeddebefaebdaec1e0e2f7aed3", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
function __CeOikavoxPvP()
local __fbJRG31uaJGA = ((((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("c3e1eafbe2ebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("c0ebfa", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcc8a1cafcefe9e1e0c6fbe0faebfc", "xor", 142))):__39fkVcO4USff({
__z96QCKqXFPer = __decode_str("cde6ebede5", "xor", 142)
});
if __fbJRG31uaJGA then
for __vM2fzCHFjmGM, __d1HwnaJEXiV5 in pairs(__fbJRG31uaJGA) do
local __dummy = math.random(1,100) -- obf
if __vM2fzCHFjmGM == __decode_str("daebf6fa", "xor", 142) then
return __d1HwnaJEXiV5;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
function __gWfVh5Blz3F4()
local __rnEHd7gwUUg1 = ((((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("c3e1eafbe2ebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("c0ebfa", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcc8a1cafcefe9e1e0c6fbe0faebfc", "xor", 142))):__39fkVcO4USff({
__z96QCKqXFPer = __decode_str("dcebfffbebfdfadffbebfdfa", "xor", 142)
});
return __rnEHd7gwUUg1;
end;
function __ZnV8iEqx3PE5()
local __fbJRG31uaJGA = ((((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("c3e1eafbe2ebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("c0ebfa", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcc8a1cafcefe9e1e0c6fbe0faebfc", "xor", 142))):__39fkVcO4USff({
__z96QCKqXFPer = __decode_str("cde6ebede5", "xor", 142)
});
if __fbJRG31uaJGA then
for __vM2fzCHFjmGM, __d1HwnaJEXiV5 in pairs(__fbJRG31uaJGA) do
if __vM2fzCHFjmGM == __decode_str("daebf6fa", "xor", 142) then
if string.__ItpWI3q7p23L(__d1HwnaJEXiV5, __decode_str("d8ebe0e1e3e1fbfdaecffdfdefe7e2efe0fa", "xor", 142)) or string.__ItpWI3q7p23L(__d1HwnaJEXiV5, __decode_str("c6f7eafcefaecbe0e8e1fcedebfc", "xor", 142)) or string.__ItpWI3q7p23L(__d1HwnaJEXiV5, __decode_str("caebfdfafce1f7aebfbeaefafcebebfd", "xor", 142)) then
return true;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
return false;
end;
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)] then
pcall(function()
if not _G.__M80FsoPuE0Qr and (not __ZnV8iEqx3PE5()) then
local __dummy = math.random(1,100) -- obf
local __b0zEw7E7j6dH = CFrame.__jlt1dqxndo3e(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, (1 + 0), 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196);
__ZvRxhTb1ZSdn(__b0zEw7E7j6dH);
((((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("c3e1eafbe2ebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("c0ebfa", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcc8a1cafcefe9e1e0c6fbe0faebfc", "xor", 142))):__39fkVcO4USff({
__z96QCKqXFPer = __decode_str("dcebfffbebfdfadffbebfdfa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
end;
__qaHNAAuTmUEi();
_G.__M80FsoPuE0Qr = true;
end);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
end);
function __qaHNAAuTmUEi()
if string.__ItpWI3q7p23L(__CeOikavoxPvP(), __decode_str("d8ebe0e1e3e1fbfdaecffdfdefe7e2efe0fa", "xor", 142)) then
_G.__1xEp6rm7Jo5s = __decode_str("d8ebe0e1e3e1fbfdaecffdfdefe7e2efe0fa", "xor", 142);
elseif string.__ItpWI3q7p23L(__CeOikavoxPvP(), __decode_str("c6f7eafcefaecbe0e8e1fcedebfc", "xor", 142)) then
local _lobm = math.random() > 0.5 and true or false
_G.__1xEp6rm7Jo5s = __decode_str("c6f7eafcefaecbe0e8e1fcedebfc", "xor", 142);
elseif string.__ItpWI3q7p23L(__CeOikavoxPvP(), __decode_str("caebfdfafce1f7aebfbeaefafcebebfd", "xor", 142)) then
_G.__1xEp6rm7Jo5s = __decode_str("caebfdfafce1f7aebfbeaefafcebebfd", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
_G.__M80FsoPuE0Qr = false;
spawn(function()
while wait(0.2) do
if __kDVuJFpCxsgk() then
_G.__M80FsoPuE0Qr = false;
end;
end;
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)] then
pcall(function()
if _G.__1xEp6rm7Jo5s == __decode_str("d8ebe0e1e3e1fbfdaecffdfdefe7e2efe0fa", "xor", 142) and _G.__M80FsoPuE0Qr then
__v2QnaU3xUnuk();
elseif _G.__1xEp6rm7Jo5s == __decode_str("c6f7eafcefaecbe0e8e1fcedebfc", "xor", 142) and _G.__M80FsoPuE0Qr then
__oTddPZNaqSfS();
elseif _G.__1xEp6rm7Jo5s == __decode_str("caebfdfafce1f7aebfbeaefafcebebfd", "xor", 142) and _G.__M80FsoPuE0Qr then
__blUf2yQcKl2H();
end;
end);
end;
end;
end);
function __kDVuJFpCxsgk()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__aHYwNMRnXb7O.__rooxm5qatLgv:__pZnxUxkN8q9J()) do
for __dWyukss8iTi4, __nPvGZsP7RODf in pairs(__D828YtJZSxSB:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__nPvGZsP7RODf.__UQ0y7bOyEnwM, __decode_str("daeffde5aeede1e3fee2ebfaebeaaf", "xor", 142)) or string.__ItpWI3q7p23L(__nPvGZsP7RODf.__UQ0y7bOyEnwM, __decode_str("c6ebefeaaeecefede5aefae1aefae6ebaecae1e4e1", "xor", 142)) then
return true;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
return false;
end;
function __lPf8JrRVpVdP()
__dQXp8VpNZvya((((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__PvIsCyCoCV22(__decode_str("cbe3ecebfcdaebe3fee2effaeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("deeffcfa", "xor", 142))).CFrame);
end;
function __v2QnaU3xUnuk()
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("d8ebe0e1e3e1fbfdaecffdfdefe7e2efe0fa", "xor", 142)) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, (1 + 0), -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
else
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("d8ebe0e1e3e1fbfdaecffdfdefe7e2efe0fa", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (1 + 0), (2 / 2));
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 + 0) or (not _G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)]) or (not _G.__M80FsoPuE0Qr);
end;
end;
end;
end;
end;
function __oTddPZNaqSfS()
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c6f7eafcefaecbe0e8e1fcedebfc", "xor", 142)) then
__ZvRxhTb1ZSdn(CFrame.__jlt1dqxndo3e(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, (2 / 2), -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
else
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c6f7eafcefaecbe0e8e1fcedebfc", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__D828YtJZSxSB.__o5H1UHU8JG5m.__crnW2wK3skak = ((100) - 100);
__D828YtJZSxSB.__OGkWnsSnXeSH.__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1 + 0), (1 + 0), ((101) - 100));
__z78La5Y1pDKa = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame;
__QLkfxsBRmgD9 = __D828YtJZSxSB.__fkS8rZqI8rzC;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100) or (not _G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)]) or (not _G.__M80FsoPuE0Qr);
end;
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
function __blUf2yQcKl2H()
local __J2y1itHxFBA8 = CFrame.__jlt1dqxndo3e(5260.28223, 1004.24329, 347.062622, 0.923247099, -0.00000000370291953, 0.384206682, -0.000000000671108058, (2 / 2), 0.0000000112505019, -0.384206682, -0.0000000106448379, 0.923247099);
local __dummy = math.random(1,100) -- obf
local __BCEA5i28pdVH = CFrame.__jlt1dqxndo3e(5237.94775, 1004.24329, 429.596344, 0.371416599, 0.00000000207420636, 0.92846632, 0.00000000476562345, ((101) - 100), -0.00000000414041734, -0.92846632, 0.00000000596254068, 0.371416599);
local __dummy = math.random(1,100) -- obf
local __cFgcAcKbz4m2 = CFrame.__jlt1dqxndo3e(5320.87793, 1004.24329, 439.152954, 0.136340275, -0.0000000995428806, -0.990662038, 0.0000000610136723, (2 / 2), -0.0000000920841288, 0.990662038, -0.0000000478891593, 0.136340275);
local __9lU0Ng7UFCyj = CFrame.__jlt1dqxndo3e(5346.70752, 1004.24329, 359.389008, 0.296962529, 0.0000000642768185, -0.954889119, -0.0000000737323518, (1 + 0), 0.0000000443832349, 0.954889119, 0.0000000572260639, 0.296962529);
local __HlmY1VsvxnVv = (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame;
if (__HlmY1VsvxnVv.__VOh0QUyOOmmm - __J2y1itHxFBA8.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((103) - 100) then
__LMnyqIXcRSJX();
else
__ZvRxhTb1ZSdn(__J2y1itHxFBA8);
end;
if (__HlmY1VsvxnVv.__VOh0QUyOOmmm - __BCEA5i28pdVH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((103) - 100) then
__LMnyqIXcRSJX();
else
__ZvRxhTb1ZSdn(__BCEA5i28pdVH);
local __dummy = math.random(1,100) -- obf
end;
if (__HlmY1VsvxnVv.__VOh0QUyOOmmm - __cFgcAcKbz4m2.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (3 + 0) then
__LMnyqIXcRSJX();
else
local __dummy = math.random(1,100) -- obf
__ZvRxhTb1ZSdn(__cFgcAcKbz4m2);
end;
if (__HlmY1VsvxnVv.__VOh0QUyOOmmm - __9lU0Ng7UFCyj.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (6 / 2) then
__LMnyqIXcRSJX();
local __dummy = math.random(1,100) -- obf
else
__ZvRxhTb1ZSdn(__9lU0Ng7UFCyj);
end;
end;
local __dummy = math.random(1,100) -- obf
__vGHlEbVW7RRf = false;
__u3FDNEzmSSvU = false;
__XLPTV49JMXno = false;
local __dummy = math.random(1,100) -- obf
__1bolLGlJtHEY = false;
function __LMnyqIXcRSJX()
if __XLPTV49JMXno == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("cce2e1f6aec8fcfbe7fa", "xor", 142) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
end;
end;
end;
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait((0 / 2));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait((0 / 2));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("cd", "xor", 142), false, game);
local __dummy = math.random(1,100) -- obf
wait(((100) - 100));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("cd", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d8", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d8", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("c8", "xor", 142), false, game);
wait((0 / 2));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("c8", "xor", 142), false, game);
__XLPTV49JMXno = true;
end;
if __1bolLGlJtHEY == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("c3ebe2ebeb", "xor", 142) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
end;
end;
end;
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait(((100) - 100));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("cd", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("cd", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d8", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d8", "xor", 142), false, game);
__1bolLGlJtHEY = true;
end;
if __u3FDNEzmSSvU == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("ddf9e1fcea", "xor", 142) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait((0 / 2));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
__u3FDNEzmSSvU = true;
end;
local __dummy = math.random(1,100) -- obf
if __vGHlEbVW7RRf == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("c9fbe0", "xor", 142) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
end;
local __dummy = math.random(1,100) -- obf
end;
end;
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait(0.1);
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait(0.1);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
__vGHlEbVW7RRf = true;
end;
__vGHlEbVW7RRf = false;
__u3FDNEzmSSvU = false;
__XLPTV49JMXno = false;
__1bolLGlJtHEY = false;
end;
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__O0OVRrbBBrhX[__decode_str("cffbfae1aec8effce3aecce2eff4ebaecbe3ecebfc", "xor", 142)] then
pcall(function()
if ((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__PvIsCyCoCV22(__decode_str("cbe3ecebfcdaebe3fee2effaeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("deeffcfa", "xor", 142)) then
__lPf8JrRVpVdP();
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
end);
__P6qZau1026xL = __DCylxAOY74jA.__01rt4OJ9XXAq:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
local __val = math.random(1, 100)
__xjylrXTbuXtG = __decode_str("cdfcefe8faaed8e1e2edefe0e7edaec3efe9e0ebfa", "xor", 142),
__I9FsJyvuf2aZ = function()
(((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcebe3e1faebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("cde1e3e3c8d1", "xor", 142))):__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("d8e1e2edefe0e7edaec3efe9e0ebfa", "xor", 142));
end
});
__TNBmEa0MtszK = __DCylxAOY74jA.__qmYAlgXT6xS9:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142)] or false,
__0eNWJkShlM4m = __decode_str("cdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142),
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg = _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg or {};
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142)] then
pcall(function()
repeat
local __dummy = math.random(1,100) -- obf
wait((2 / 2));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("cde1e3e3e1e0ddedfce1e2e2", "xor", 142));
until not (_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaecde1e3e3e1e0aeddedfce1e2e2", "xor", 142)]);
end);
end;
end;
end);
__DCylxAOY74jA.__qmYAlgXT6xS9:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__xrg9sl7VdFI5 and _G.__RmGIbDMaU7Nf.__xrg9sl7VdFI5[__decode_str("cffbfae1aecdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142)] or false,
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("cdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142),
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__xrg9sl7VdFI5 = _G.__RmGIbDMaU7Nf.__xrg9sl7VdFI5 or {};
_G.__RmGIbDMaU7Nf.__xrg9sl7VdFI5[__decode_str("cffbfae1aecdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142)] then
pcall(function()
repeat
wait(((101) - 100));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("dceffcebddedfce1e2e2", "xor", 142));
until not (_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaedceffcebaeddedfce1e2e2", "xor", 142)]);
end);
end;
local __dummy = math.random(1,100) -- obf
end;
end);
__DCylxAOY74jA.__qmYAlgXT6xS9:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142)] or false,
__0eNWJkShlM4m = __decode_str("cdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142),
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg = _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg or {};
_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142)] = __d1HwnaJEXiV5;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142)] then
pcall(function()
repeat
wait(((101) - 100));
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("c2ebe9ebe0eaeffcf7ddedfce1e2e2", "xor", 142));
until not (_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec2ebe9ebe0eaeffcf7aeddedfce1e2e2", "xor", 142)]);
end);
end;
end;
end);
__DCylxAOY74jA.__qmYAlgXT6xS9:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142)] or false,
__0eNWJkShlM4m = __decode_str("cdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142),
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg = _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg or {};
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142)] then
pcall(function()
repeat
local __dummy = math.random(1,100) -- obf
wait(((101) - 100));
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("c3f7fae6e7edefe2ddedfce1e2e2", "xor", 142));
until not (_G.__RmGIbDMaU7Nf.__a7dshDPL5BOg and _G.__RmGIbDMaU7Nf.__a7dshDPL5BOg[__decode_str("cffbfae1aecdfcefe8faaec3f7fae6e7edefe2aeddedfce1e2e2", "xor", 142)]);
end);
end;
end;
end);
__DCylxAOY74jA.__qmYAlgXT6xS9:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("cdfcefe8faaec2ebf8e7effae6efe0aecdfce1f9e0", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("c2ebf8e7effae6efe0cdfce1f9e0", "xor", 142));
end
});
__DCylxAOY74jA.__qmYAlgXT6xS9:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("cdfcefe8faaec2ebf8e7effae6efe0aedde6e7ebe2ea", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("c2ebf8e7effae6efe0dde6e7ebe2ea", "xor", 142));
end
});
local __dummy = math.random(1,100) -- obf
__DCylxAOY74jA.__qmYAlgXT6xS9:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("cdfcefe8faaeccebeffdfaaec6fbe0faebfc", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("ccebeffdfac6fbe0faebfc", "xor", 142));
end
});
__DCylxAOY74jA.__qmYAlgXT6xS9:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cdfcefe8faaedae1e1fae6aec0ebede5e2efedeb", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("dae1e1fae6c0ebede5e2efedeb", "xor", 142));
end
});
__DCylxAOY74jA.__qmYAlgXT6xS9:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("cdfcefe8faaedaebfcfce1fcaec4eff9", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("daebfcfce1fcc4eff9", "xor", 142));
end
});
__DCylxAOY74jA.__qmYAlgXT6xS9:__uVFG730VwRDA({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cdfcefe8faaec3e1e0fdfaebfcaec3efe9e0ebfa", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cdfcefe8fac7faebe3", "xor", 142), __decode_str("cdfcefe8fa", "xor", 142), __decode_str("c3e1e0fdfaebfcc3efe9e0ebfa", "xor", 142));
end
});
local __qBlKxUSL1eq1 = __DCylxAOY74jA.__M8GSJT5nqTlu:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddebefaecbf8ebe0fa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __wgMPprrwMgEp = {
__decode_str("c9fbeffceae7efe0", "xor", 142),
__decode_str("ccebeffdfaaec6fbe0faebfc", "xor", 142),
__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142),
__decode_str("c3effce7e0ebc9fcefe0eaccfce7e9efeaeb", "xor", 142),
__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c3effce7e0ebccfce7e9efeaeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("dee7fceffaebdde2e1e1fe", "xor", 142),
__decode_str("c3effce7e0ebdde2e1e1fe", "xor", 142)
};
local __ABx7QgwaCU0n = {
__decode_str("d4e1e0ebaebf", "xor", 142),
__decode_str("d4e1e0ebaebc", "xor", 142),
__decode_str("d4e1e0ebaebd", "xor", 142),
__decode_str("d4e1e0ebaeba", "xor", 142),
__decode_str("d4e1e0ebaebb", "xor", 142),
__decode_str("d4e1e0ebaeb8", "xor", 142),
__decode_str("e0e7e2e0e7e2", "xor", 142)
};
__7MnSgXkMRLRn = __DCylxAOY74jA.__M8GSJT5nqTlu:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaecce1effa", "xor", 142),
__776eboSw51dy = __wgMPprrwMgEp,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__ZqpKLsm9KtdH = __DCylxAOY74jA.__M8GSJT5nqTlu:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("cde6e1e1fdebaed4e1e0eb", "xor", 142),
__776eboSw51dy = __ABx7QgwaCU0n,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__WAHwoYMqDwCf = __DCylxAOY74jA.__M8GSJT5nqTlu:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("cce1effaaedaf9ebebe0aeddfeebebea", "xor", 142),
__1TIHvcyWHn8m = ((101) - 100),
__KuJIgOIz2WnP = {
local __dummy = math.random(1,100) -- obf
__jsGdGsl0mEq4 = (2 / 2),
__IxVMEpQMEsRr = (700 / 2),
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cce1effaaedaf9ebebe0aeddfeebebea", "xor", 142)]
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cce1effaaedaf9ebebe0aeddfeebebea", "xor", 142)] = __d1HwnaJEXiV5;
end
});
__p3nEARD5do6c = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ddefe7e2aecce1effa", "xor", 142),
__0eNWJkShlM4m = __decode_str("cffbfae1aeddefe7e2aecce1effaaea8aec5e7e2e2aecbe0ebe3e7ebfd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
if not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] then
_G.__xIvPztxeWdBs = false;
local __dummy = math.random(1,100) -- obf
__M8n4Lnwj7WSx = false;
local __dummy = math.random(1,100) -- obf
end;
end
});
local __CGNTWHxBNBoN;
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("d4e1e0ebaebf", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -0.000000000236509201, -0.991110802, -0.0569955558, 0.120211802);
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("d4e1e0ebaebc", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -0.000000000415334017, -0.949422479, -0.0606706589, 0.308084518);
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("d4e1e0ebaebd", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 0.0000000000270896673, -0.925605655, -0.0370079502, 0.376675636);
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("d4e1e0ebaeba", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("d4e1e0ebaebb", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -0.00000000139882339, -0.981290519, -0.0365765914, -0.189026669);
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("d4e1e0ebaeb8", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372);
local __dummy = math.random(1,100) -- obf
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaed4e1e0eb", "xor", 142)] == __decode_str("c7eae5", "xor", 142) then
__CGNTWHxBNBoN = CFrame.__jlt1dqxndo3e(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (2 / 2), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536);
end;
end;
end);
end);
function __XYrTNQctXpQ0()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)] then
for __dWyukss8iTi4, __AxpyKvh8VYpm in pairs(__D828YtJZSxSB:__pZnxUxkN8q9J()) do
if __AxpyKvh8VYpm.__fkS8rZqI8rzC == __decode_str("c3f7cce1effacbfdfe", "xor", 142) then
return __D828YtJZSxSB;
end;
end;
end;
end;
return false;
end;
function __zGf7lPrsSUYW()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142)) or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142)) then
return true;
end;
local __dummy = math.random(1,100) -- obf
return false;
end;
function __D6bpLWJTTiCj()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde6effce5", "xor", 142) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dde6effce5", "xor", 142)) then
if (__D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (200 + 0) then
return true;
end;
end;
end;
end;
return false;
end;
function __KEufFAbtn07a()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee7fcefe0e6ef", "xor", 142) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fcefe0e6ef", "xor", 142)) then
if (__D828YtJZSxSB.__OGkWnsSnXeSH.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((300) - 100) then
return true;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
return false;
end;
function __Vqaih3dF6FGe(__fkS8rZqI8rzC, __554Pe5pq8ngd)
local __w4SBeEU4iMWe = Instance.__jlt1dqxndo3e(__decode_str("cce7e2e2ece1effceac9fbe7", "xor", 142));
local __L9Ii3iUmneeF = Instance.__jlt1dqxndo3e(__decode_str("daebf6fac2efecebe2", "xor", 142));
__w4SBeEU4iMWe.__554Pe5pq8ngd = __554Pe5pq8ngd;
__w4SBeEU4iMWe.__0Dne1l83T5Km = Enum.__0Dne1l83T5Km.__MkjQs43aVgoz;
__w4SBeEU4iMWe.__A4OnYih8OZ6X = true;
__w4SBeEU4iMWe.__fkS8rZqI8rzC = __fkS8rZqI8rzC;
__w4SBeEU4iMWe.__72X7NmeJ735q = true;
__w4SBeEU4iMWe.__Jc0Bp78IthEJ = (1 + 0);
__w4SBeEU4iMWe.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e(((100) - 100), (200 + 0), (0 + 0), (50 + 0));
local __dummy = math.random(1,100) -- obf
__w4SBeEU4iMWe.__gTu9czxgV1RZ = Vector3.__jlt1dqxndo3e((0 / 2), 2.5, ((100) - 100));
local __dummy = math.random(1,100) -- obf
__L9Ii3iUmneeF.__554Pe5pq8ngd = __w4SBeEU4iMWe;
__L9Ii3iUmneeF.__ZmZOBV9R2qps = Color3.__QOUaUhY57mhb((510 / 2), (510 / 2), (510 / 2));
__L9Ii3iUmneeF.__5BSvtLqJxp7n = ((101) - 100);
__L9Ii3iUmneeF.__Bb19kUGmshpR = UDim2.__jlt1dqxndo3e((1 + 0), (0 / 2), ((101) - 100), (0 + 0));
local __dummy = math.random(1,100) -- obf
__L9Ii3iUmneeF.__l88zLizMD3h2 = Enum.__l88zLizMD3h2.__7LkYhqo2wtxn;
__L9Ii3iUmneeF.__siTMf1Y9K5Qz = Color3.__QOUaUhY57mhb(((355) - 100), (255 + 0), ((355) - 100));
__L9Ii3iUmneeF.__KCYn2FYa9xvy = (15 + 0);
__L9Ii3iUmneeF.__UQ0y7bOyEnwM = __decode_str("", "xor", 142);
local __dummy = math.random(1,100) -- obf
end;
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] then
if not __XYrTNQctXpQ0() then
local __V7ukNtORLbW3 = CFrame.__jlt1dqxndo3e(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (__V7ukNtORLbW3.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (4000 / 2) then
__GF16I68eKLgB(__V7ukNtORLbW3);
else
__SWt3hsKQcboK = __ZvRxhTb1ZSdn(__V7ukNtORLbW3);
end;
if ((CFrame.__jlt1dqxndo3e((-16927.451171875), 9.0863618850708, 433.8642883300781)).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((110) - 100) then
if __SWt3hsKQcboK then
__SWt3hsKQcboK:__i5QmSqieWXgl();
end;
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce1effa", "xor", 142), _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]);
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)] then
if (__D828YtJZSxSB.__uaanuT0LCYVz.CFrame.__VOh0QUyOOmmm - (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (200 / 2) then
__Vqaih3dF6FGe(__decode_str("c3f7cce1effacbfdfe", "xor", 142), __D828YtJZSxSB);
end;
end;
end;
local __dummy = math.random(1,100) -- obf
wait((1 + 0));
end;
elseif __XYrTNQctXpQ0() then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)] then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c3f7cce1effacbfdfe", "xor", 142)) then
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == false then
if __D6bpLWJTTiCj() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daebfcfce1fcfde6effce5", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] or __KEufFAbtn07a() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)] or __E1xPoIXPkLIb() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] then
if __N5235ExR6UWO then
__N5235ExR6UWO:__i5QmSqieWXgl();
local __dummy = math.random(1,100) -- obf
end;
else
__N5235ExR6UWO = __ZvRxhTb1ZSdn(__D828YtJZSxSB.__uaanuT0LCYVz.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), ((101) - 100), (0 + 0)));
end;
else
repeat
wait();
__Mlafda2YehXL = __b9jZXOwByJfJ(__CGNTWHxBNBoN);
until __D6bpLWJTTiCj() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daebfcfce1fcfde6effce5", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] or __KEufFAbtn07a() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)] or __E1xPoIXPkLIb() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] or (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == false or _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] == false;
if __Mlafda2YehXL then
__Mlafda2YehXL:__i5QmSqieWXgl();
end;
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, (32 + 0), false, game);
local __dummy = math.random(1,100) -- obf
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, ((132) - 100), false, game);
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end;
end);
end;
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] then
if __D6bpLWJTTiCj() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daebfcfce1fcfde6effce5", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] or __KEufFAbtn07a() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)] or (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)] or __E1xPoIXPkLIb() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] then
if game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__O07U8O87g2oR == true then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, ((132) - 100), false, game);
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, (32 + 0), false, game);
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end);
end);
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] then
local _epst = math.random() > 0.5 and true or false
pcall(function()
if _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
_G.__xIvPztxeWdBs = false;
until not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100);
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __zh30PoKjEMjA = __D828YtJZSxSB.__eKXZavNcK0rj.CFrame;
if (__zh30PoKjEMjA.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((150) - 100) then
_G.__xIvPztxeWdBs = true;
else
_G.__xIvPztxeWdBs = false;
end;
__ZvRxhTb1ZSdn(__zh30PoKjEMjA);
__XWnpo8UHUIoY();
__M8n4Lnwj7WSx = true;
__eaYujItlfAxh = __D828YtJZSxSB.__eKXZavNcK0rj.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (-(15 + 0)), ((100) - 100));
__N3FIs6ITzEJy = __eaYujItlfAxh.__VOh0QUyOOmmm;
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__AfmRoPFge8Bz < (0 / 2) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("c8e7fde6cce1effa", "xor", 142))) or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbe0e9e7e0eb", "xor", 142))) or (not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)]);
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142)) then
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __dummy = math.random(1,100) -- obf
local __zh30PoKjEMjA = __D828YtJZSxSB.__eKXZavNcK0rj.CFrame;
local __dummy = math.random(1,100) -- obf
__XWnpo8UHUIoY();
if (__zh30PoKjEMjA.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (50 + 0) then
_G.__xIvPztxeWdBs = true;
else
_G.__xIvPztxeWdBs = false;
end;
__ZvRxhTb1ZSdn(__zh30PoKjEMjA);
__M8n4Lnwj7WSx = true;
__eaYujItlfAxh = __D828YtJZSxSB.__eKXZavNcK0rj.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (-(30 / 2)), ((100) - 100));
__N3FIs6ITzEJy = __eaYujItlfAxh.__VOh0QUyOOmmm;
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__AfmRoPFge8Bz.__KuJIgOIz2WnP < (0 / 2) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebc9fcefe0eaccfce7e9efeaeb", "xor", 142))) or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbe0e9e7e0eb", "xor", 142))) or (not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)]);
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142)) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
local __zh30PoKjEMjA = __D828YtJZSxSB.__eKXZavNcK0rj.CFrame;
if (__zh30PoKjEMjA.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((150) - 100) then
_G.__xIvPztxeWdBs = true;
else
_G.__xIvPztxeWdBs = false;
end;
__ZvRxhTb1ZSdn(__zh30PoKjEMjA);
__M8n4Lnwj7WSx = true;
__XWnpo8UHUIoY();
__eaYujItlfAxh = __D828YtJZSxSB.__eKXZavNcK0rj.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (-(15 + 0)), ((100) - 100));
__N3FIs6ITzEJy = __eaYujItlfAxh.__VOh0QUyOOmmm;
until not __D828YtJZSxSB.__554Pe5pq8ngd or __D828YtJZSxSB.__AfmRoPFge8Bz.__KuJIgOIz2WnP < ((100) - 100) or (not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fceffaebccfce7e9efeaeb", "xor", 142))) or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("cbe0e9e7e0eb", "xor", 142))) or (not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)]);
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
local __dummy = math.random(1,100) -- obf
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and __E1xPoIXPkLIb() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("ddebefccebeffdfafd", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2:__pZnxUxkN8q9J()) do
if __E1xPoIXPkLIb() then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__bCJLV79Fjtwv = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (800 / 2), (0 + 0));
if (__bCJLV79Fjtwv.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((500) - 100) then
_G.__xIvPztxeWdBs = true;
else
_G.__xIvPztxeWdBs = false;
end;
__XWnpo8UHUIoY();
__M8n4Lnwj7WSx = true;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame.__VOh0QUyOOmmm;
if __t6xFpKYxJxmp() then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e(math.__yCXEF1maERDN((-(200 + 0)), ((400) - 100)), (800 / 2), math.__yCXEF1maERDN((-(400 / 2)), (600 / 2))));
else
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), ((500) - 100), ((100) - 100)));
end;
until not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] or __E1xPoIXPkLIb() == false or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))) or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
else
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
end;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daebfcfce1fcfde6effce5", "xor", 142)) and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("daebfcfce1fcfde6effce5", "xor", 142)) then
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("daebfcfce1fcfde6effce5", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
repeat
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__UiNobUxSrFVc();
_G.__xIvPztxeWdBs = false;
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (50 + 0), (0 / 2)));
until not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= ((100) - 100);
end;
end;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and __KEufFAbtn07a() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dee7fcefe0e6ef", "xor", 142)) then
local _tqux = math.random() > 0.5 and true or false
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dee7fcefe0e6ef", "xor", 142) then
local _cyat = math.random() > 0.5 and true or false
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
_G.__xIvPztxeWdBs = false;
until not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
end;
end;
elseif _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] and __D6bpLWJTTiCj() and _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__zsrrEF2lS1yp(__decode_str("dde6effce5", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dde6effce5", "xor", 142) then
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__XWnpo8UHUIoY();
__oPpJB9J20Dn6(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * __FRmTYY7TRjDm);
__UiNobUxSrFVc();
_G.__xIvPztxeWdBs = false;
until not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] or (not __D828YtJZSxSB.__554Pe5pq8ngd) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2);
end;
end;
end;
end;
else
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
__HW79Kiu5zpAv(_G.__RmGIbDMaU7Nf.__sVJv4RNF52YJ[__decode_str("ddebe2ebedfaebeaaed9ebeffee1e0", "xor", 142)]);
end;
end);
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
end;
end);
local __dummy = math.random(1,100) -- obf
function __t6xFpKYxJxmp()
local __gIwRtmTxpHwg = (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2;
for __dWyukss8iTi4, __dkAS2w2LjueC in pairs(__gIwRtmTxpHwg:__pZnxUxkN8q9J()) do
if __dkAS2w2LjueC:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __dkAS2w2LjueC:__zsrrEF2lS1yp(__decode_str("cfe0e7e3fd", "xor", 142)) then
local _hniz = math.random() > 0.5 and true or false
local __9QITZhuQWPS8 = __dkAS2w2LjueC.__o5H1UHU8JG5m;
local __xdDtMiCEPOPv = __9QITZhuQWPS8:__z0WTFKnxmHPV(__decode_str("cfe0e7e3effae1fc", "xor", 142)) or __9QITZhuQWPS8;
for __dWyukss8iTi4, __7tiNtGgTbrs1 in pairs(__dkAS2w2LjueC.__bOuWVZIvkBxV:__pZnxUxkN8q9J()) do
if __7tiNtGgTbrs1:__QHrUg8M14aQE(__decode_str("cfe0e7e3effae7e1e0", "xor", 142)) then
if __7tiNtGgTbrs1.__jcU8AJIj1Nv9 == __decode_str("fcecf6effdfdebfae7eab4a1a1b6b9beb6bcbcbfb9b7bc", "xor", 142) or __7tiNtGgTbrs1.__jcU8AJIj1Nv9 == __decode_str("fcecf6effdfdebfae7eab4a1a1b6b9beb6bcbcbcbbbbb8", "xor", 142) or __7tiNtGgTbrs1.__jcU8AJIj1Nv9 == __decode_str("fcecf6effdfdebfae7eab4a1a1b6b9beb6bcbcbdb8bfb7", "xor", 142) or __7tiNtGgTbrs1.__jcU8AJIj1Nv9 == __decode_str("fcecf6effdfdebfae7eab4a1a1b6b9beb6bcbcbbb8b8b6", "xor", 142) then
for __dWyukss8iTi4, __b7rMJ6RvRu29 in pairs(__xdDtMiCEPOPv:__Lg8b6TKBBDaJ()) do
if __b7rMJ6RvRu29.__fN5M0vaKG9TA.__jcU8AJIj1Nv9 == __7tiNtGgTbrs1.__jcU8AJIj1Nv9 then
if __b7rMJ6RvRu29.__C5RdrJjMfAYd then
return true;
local __dummy = math.random(1,100) -- obf
else
local __dummy = math.random(1,100) -- obf
return false;
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end;
end;
__duS65Bc5LCGN = __DCylxAOY74jA.__M8GSJT5nqTlu:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cbe0ebe3e7ebfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__m0jnFV9NelwK = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedde6effce5", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__9WHj35x7IBBg = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fcefe0e6ef", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__WIsSj8PvQfHY = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec8e7fde6aecdfcebf9aec3ebe3ecebfc", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__y8VIQ9dvOFzD = __DCylxAOY74jA.__M8GSJT5nqTlu:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cce1effa", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
__jwVmcdn6bT5D = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aec9e6e1fdfaaedde6e7fe", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__Ig9YMJn4rDCd = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaeccfce7e9efeaeb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__ZpJ8RrrIXxLa = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedee7fceffaebaec9fcefe0eaaeccfce7e9efeaeb", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__O7H3luCslhbV = __DCylxAOY74jA.__M8GSJT5nqTlu:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cce1fdfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
__PZqoBkWhkZ1u = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aedaebfcfce1fcfde6effce5", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
__tN92Fmh7sBHA = __DCylxAOY74jA.__M8GSJT5nqTlu:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aec8effce3aeddebefecebeffdfafd", "xor", 142)]);
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
__OGInSL22BaHv = __DCylxAOY74jA.__InP8MTBaYpk5:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddebefaeddfaefede5", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
spawn(function()
pcall(function()
while wait(0.2) do
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c3e7fcefe9ebaec7fde2efe0ea", "xor", 142)) then
__EJGrfc6WOkyE:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec3e7fcefe9ebaec7fde2efe0eaaeddfeeff9e0e7e0e9", "xor", 142));
else
__EJGrfc6WOkyE:__AuHle8YtGk0N(__decode_str("4d3e4b364c014c134d214c364c01aec3e7fcefe9ebaec7fde2efe0eaaec0e1faaeddfeeff9e0", "xor", 142));
end;
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__Jq22Z3cFcznE:__AuHle8YtGk0N(__decode_str("4d2c6c0e344c274d214c364c01aec5e7fafdfbe0ebaec7fde2efe0eaaeddfeeff9e0e7e0e9", "xor", 142));
else
__Jq22Z3cFcznE:__AuHle8YtGk0N(__decode_str("4d2c6c0e344c274d214c364c01aec5e7fafdfbe0ebaec7fde2efe0eaaec0e1faaeddfeeff9e0", "xor", 142));
end;
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__nkkAjG2OJoWY:__AuHle8YtGk0N(__decode_str("4d2c4c136c0e104d214c364c01aec8fce1f4ebe0aecae7e3ebe0fde7e1e0aeddfeeff9e0e7e0e9", "xor", 142));
else
__nkkAjG2OJoWY:__AuHle8YtGk0N(__decode_str("4d2c4c136c0e104d214c364c01aec8fce1f4ebe0aecae7e3ebe0fde7e1e0aec0e1faaeddfeeff9e0", "xor", 142));
end;
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__QpDjiXYcoPeV:__AuHle8YtGk0N(__decode_str("4d3e4b364c284c3aaedefcebe6e7fdfae1fce7edaec7fde2efe0eaaeddfeeff9e0e7e0e9", "xor", 142));
else
__QpDjiXYcoPeV:__AuHle8YtGk0N(__decode_str("4d3e4b364c284c3aaedefcebe6e7fdfae1fce7edaec7fde2efe0eaaec0e1faaeddfeeff9e0", "xor", 142));
end;
end;
end);
end);
__QpDjiXYcoPeV = __DCylxAOY74jA.__InP8MTBaYpk5:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("defcebe6e7fdfae1fce7edaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__j8nEjhMAkmox = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0ebebeaaed8e1e2edefe0e7edaec3efe9e0ebfa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] and __MZpSSSnhndYo then
local _qzlx = math.random() > 0.5 and true or false
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]) then
local _jfuj = math.random() > 0.5 and true or false
local __V7ukNtORLbW3 = CFrame.__jlt1dqxndo3e(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (__V7ukNtORLbW3.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (2000 + 0) then
__GF16I68eKLgB(__V7ukNtORLbW3);
else
__SWt3hsKQcboK = __ZvRxhTb1ZSdn(__V7ukNtORLbW3);
end;
if ((CFrame.__jlt1dqxndo3e((-16927.451171875), 9.0863618850708, 433.8642883300781)).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= ((110) - 100) then
if __SWt3hsKQcboK then
local __dummy = math.random(1,100) -- obf
__SWt3hsKQcboK:__i5QmSqieWXgl();
end;
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce1effa", "xor", 142), _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]);
wait((2 / 2));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]) then
repeat
wait();
local __dummy = math.random(1,100) -- obf
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == false then
if __7ttS9WgQIHaB then
local _jojm = math.random() > 0.5 and true or false
__7ttS9WgQIHaB:__i5QmSqieWXgl();
end;
local __N5235ExR6UWO = __ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)])).__uaanuT0LCYVz.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), ((101) - 100), (0 + 0)));
elseif (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == true then
__7ttS9WgQIHaB = __b9jZXOwByJfJ(CFrame.__jlt1dqxndo3e(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (2 / 2), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
end;
until not _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] or game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142));
if __7ttS9WgQIHaB then
local __dummy = math.random(1,100) -- obf
__7ttS9WgQIHaB:__i5QmSqieWXgl();
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
end);
__GzqbUKtR2VaP = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("daf9ebebe0aedae1aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0ebebeaaeddfeeff9e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
spawn(function()
while wait() do
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aedefcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)] then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)) then
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142))).CFrame);
end;
end);
end;
local __dummy = math.random(1,100) -- obf
end;
end);
_G.__bQLPE9YuR42d = false
local __val = math.random(1, 100)
local __dummy = math.random(1,100) -- obf
__7oPD2BHnv8Te = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aec5e7e2e2aec2eff8efaec9e1e2ebe3", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aec2eff8efaec9e1e2ebe3", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aec2eff8efaec9e1e2ebe3", "xor", 142)] = __3abLK7oFpYPf
_G.__TAV3vdaSEiUS = __3abLK7oFpYPf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aec2eff8efaec9e1e2ebe3", "xor", 142)])
__8fcbinrjkdXn().__KJzCwHqgVBH4()
end
})
function __CozHjRVMNLxv()
local __jDXlc150Tpxk = game.Players.__fni3Hio5E7WB
local __dummy = math.random(1,100) -- obf
local __rpX0LodmYSnT = __jDXlc150Tpxk.__ccsuuEw78Yi2 or __jDXlc150Tpxk.__9Pmx15zujfQo:__IIzIP8uGGlyd()
if __rpX0LodmYSnT:__z0WTFKnxmHPV(__decode_str("dae1e1e2", "xor", 142)) then
return true
end
if __jDXlc150Tpxk.__rop5B4TfuLoE:__z0WTFKnxmHPV(__decode_str("dae1e1e2", "xor", 142)) then
__rpX0LodmYSnT.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__jDXlc150Tpxk.__rop5B4TfuLoE:__z0WTFKnxmHPV(__decode_str("dae1e1e2", "xor", 142)))
return true
end
return false
end
spawn(function()
while wait(0.5) do
if _G.__bQLPE9YuR42d then
pcall(function()
local __yen0YjGpm16J = nil
for __dWyukss8iTi4, __BuOVafmTvGuU in pairs(workspace.__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __BuOVafmTvGuU.__fkS8rZqI8rzC == __decode_str("c2eff8efaec9e1e2ebe3", "xor", 142) and __BuOVafmTvGuU:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __BuOVafmTvGuU:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __BuOVafmTvGuU.__o5H1UHU8JG5m.__AfmRoPFge8Bz > ((100) - 100) then
local _ursr = math.random() > 0.5 and true or false
__yen0YjGpm16J = __BuOVafmTvGuU
local __dummy = math.random(1,100) -- obf
break
end
end
if not __yen0YjGpm16J then
if workspace:__zsrrEF2lS1yp(__decode_str("c3effe", "xor", 142)) and workspace.__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edc7fde2efe0ea", "xor", 142)) then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(workspace.__8ocb0EOzsVtd.__nDfV7MNP17a6:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2eff8efaec9e1e2ebe3", "xor", 142) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 / 2) then
__yen0YjGpm16J = __D828YtJZSxSB
break
end
end
end
end
local __dummy = math.random(1,100) -- obf
if __yen0YjGpm16J and __yen0YjGpm16J:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __yen0YjGpm16J:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __yen0YjGpm16J.__o5H1UHU8JG5m.__AfmRoPFge8Bz > (0 + 0) then
local __jDXlc150Tpxk = game.Players.__fni3Hio5E7WB
local __rpX0LodmYSnT = __jDXlc150Tpxk.__ccsuuEw78Yi2 or __jDXlc150Tpxk.__9Pmx15zujfQo:__IIzIP8uGGlyd()
local __gdPIwxbqJmVc = __rpX0LodmYSnT:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))
local __dummy = math.random(1,100) -- obf
local __qGBnYGRPHNaW = __yen0YjGpm16J.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 + 0), (16 / 2), ((110) - 100))
local __dummy = math.random(1,100) -- obf
__PiVIP73PpGZx(__qGBnYGRPHNaW)
local __dummy = math.random(1,100) -- obf
wait(0.5)
__CozHjRVMNLxv()
for __wuH8Mpu3pmTB = (2 / 2), (5 + 0) do
game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142)):__dJgipi3LRiQc()
local __dummy = math.random(1,100) -- obf
game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142)):__4RWb5Q2bBVpi(Vector2.__jlt1dqxndo3e(((1100) - 100), (2000 / 2)))
wait(0.3)
end
wait(((101) - 100))
for __dWyukss8iTi4, __aw8Fzst2O8BC in pairs(workspace:__pZnxUxkN8q9J()) do
if __aw8Fzst2O8BC:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) and (__aw8Fzst2O8BC.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("cafce1fe", "xor", 142)) or __aw8Fzst2O8BC.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("cde6ebfdfa", "xor", 142)))
and (__aw8Fzst2O8BC.__VOh0QUyOOmmm - __yen0YjGpm16J.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS < (50 + 0) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(__aw8Fzst2O8BC.__VOh0QUyOOmmm))
wait(0.5)
end
end
else
if workspace:__zsrrEF2lS1yp(__decode_str("c3effe", "xor", 142)) and workspace.__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edc7fde2efe0ea", "xor", 142)) then
local __JmH8CxvADC9m = nil
local __dummy = math.random(1,100) -- obf
for __dWyukss8iTi4, __zfcdHOWBA7Je in pairs(workspace.__8ocb0EOzsVtd.__nDfV7MNP17a6:__DZC5w2LNAoBg()) do
if __zfcdHOWBA7Je:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) and
(__zfcdHOWBA7Je.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("dde5fbe2e2", "xor", 142)) or __zfcdHOWBA7Je.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("cce1e0eb", "xor", 142)) or __zfcdHOWBA7Je.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("cae7e0e1", "xor", 142))) then
__JmH8CxvADC9m = __zfcdHOWBA7Je
break
end
end
if __JmH8CxvADC9m then
__PiVIP73PpGZx(__JmH8CxvADC9m.CFrame)
else
local __uKgzDcHo9rUn = CFrame.__jlt1dqxndo3e(-((2100) - 100), (100 / 2), -(13200 / 2))
__PiVIP73PpGZx(__uKgzDcHo9rUn)
local __dummy = math.random(1,100) -- obf
end
wait((6 / 2))
end
end
end)
end
end
end)
function __kbIsjRAph9LI(__hZBCHc0XNkIT, __CKAz0b1H2XC2)
local __gdPIwxbqJmVc = game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))
local __dummy = math.random(1,100) -- obf
if __gdPIwxbqJmVc and __hZBCHc0XNkIT then
local _tseq = math.random() > 0.5 and true or false
return (__gdPIwxbqJmVc.__VOh0QUyOOmmm - __hZBCHc0XNkIT.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= __CKAz0b1H2XC2
end
return false
end
__jeWePcPGKOZH = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aec5e7e2e2aedcebe2e7ed", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aedcebe2e7ed", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aedcebe2e7ed", "xor", 142)] = __3abLK7oFpYPf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aedcebe2e7ed", "xor", 142)])
__8fcbinrjkdXn().__KJzCwHqgVBH4()
end
})
spawn(function()
while wait(0.1) do
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aec5e7e2e2aedcebe2e7ed", "xor", 142)] then
local __fni3Hio5E7WB = game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB
local __dummy = math.random(1,100) -- obf
local ReplicatedStorage = game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))
local RunService = game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))
local __BgqcsiVKXwbQ = game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2dbfdebfc", "xor", 142))
local __rzAm3HTomXuD = game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))
local function __XWnpo8UHUIoY()
local __dummy = math.random(1,100) -- obf
if not __fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6effdccfbfde1", "xor", 142)) then
ReplicatedStorage.__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbfde1", "xor", 142))
end
end
local function __UiNobUxSrFVc()
__BgqcsiVKXwbQ:__dJgipi3LRiQc()
__BgqcsiVKXwbQ:__4RWb5Q2bBVpi(Vector2.__jlt1dqxndo3e(((951) - 100), ((258) - 100)), __rzAm3HTomXuD.__Rm0mdv0UnCW6.CFrame)
local __QdYRhi7IL4QG = pcall(function()
if ReplicatedStorage.__onDH2OvxakMp:__zsrrEF2lS1yp(__decode_str("cffafaefede5", "xor", 142)) then
ReplicatedStorage.__onDH2OvxakMp.__UiNobUxSrFVc:__jJkhPA1iiAej()
end
if ReplicatedStorage.__onDH2OvxakMp:__zsrrEF2lS1yp(__decode_str("cde1e3eceffa", "xor", 142)) then
ReplicatedStorage.__onDH2OvxakMp.__66In1bdZKKkE:__jJkhPA1iiAej()
end
end)
local function __3xssp8Tngu8b(__vM2fzCHFjmGM)
__BgqcsiVKXwbQ:__dJgipi3LRiQc()
local __dummy = math.random(1,100) -- obf
__BgqcsiVKXwbQ:__FjzBZoodOhGc(__vM2fzCHFjmGM)
wait(0.01)
__BgqcsiVKXwbQ:__mXDLAFgBX1ft(__vM2fzCHFjmGM)
end
__3xssp8Tngu8b(__decode_str("f4", "xor", 142))
wait(0.01)
__3xssp8Tngu8b(__decode_str("f6", "xor", 142))
if __fni3Hio5E7WB.__ccsuuEw78Yi2 and __fni3Hio5E7WB.__ccsuuEw78Yi2:__z0WTFKnxmHPV(__decode_str("dae1e1e2", "xor", 142)) then
local _jxoz = math.random() > 0.5 and true or false
local __Y403xaGedLNH = __fni3Hio5E7WB.__ccsuuEw78Yi2:__z0WTFKnxmHPV(__decode_str("dae1e1e2", "xor", 142))
if __Y403xaGedLNH:__zsrrEF2lS1yp(__decode_str("dcebe3e1faebcde2e7ede5", "xor", 142)) then
__Y403xaGedLNH.__OHD5fpVrtdX0:__jJkhPA1iiAej()
end
if __Y403xaGedLNH:__zsrrEF2lS1yp(__decode_str("dcebe3e1faebc8fbe0edfae7e1e0", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__Y403xaGedLNH.__GjI2QJTgRdoo:__39fkVcO4USff(__decode_str("cde2e7ede5", "xor", 142))
local __dummy = math.random(1,100) -- obf
end
end
end
local function __57Ojs1bRbmCJ()
local __xO56LvpJxVnf = nil
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__aHYwNMRnXb7O:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("daebf6fac2efecebe2", "xor", 142)) and (__D828YtJZSxSB.__UQ0y7bOyEnwM:__ItpWI3q7p23L(__decode_str("dcebe2e7edaec6ebefe2fae6", "xor", 142)) or __D828YtJZSxSB.__UQ0y7bOyEnwM:__ItpWI3q7p23L(__decode_str("d8e1e2edefe0e1aedefcebfdfdfbfceb", "xor", 142))) then
__xO56LvpJxVnf = __D828YtJZSxSB
break
end
end
if __xO56LvpJxVnf then
local __xZ5XFA6TMLk9 = game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142)):__zsrrEF2lS1yp(__decode_str("dcebe2e7ed", "xor", 142)) or
game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142)):__zsrrEF2lS1yp(__decode_str("d8e1e2edefe0e1dcebe2e7ed", "xor", 142)) or
game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142)):__zsrrEF2lS1yp(__decode_str("ddebefdcebe2e7ed", "xor", 142))
if __xZ5XFA6TMLk9 then return __xZ5XFA6TMLk9 end
end
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(__rzAm3HTomXuD:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2eff8ef", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2eff8efc6e1e2eb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebe2e7ed", "xor", 142) or
__D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("dcebe2e7edcceffdeb", "xor", 142) or __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("d8e1e2edefe0e7eddaeffce9ebfa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
return __D828YtJZSxSB
end
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) and __D828YtJZSxSB:__z0WTFKnxmHPV(__decode_str("defce1f6e7e3e7faf7defce1e3fefa", "xor", 142)) then
local __Mhtgz8VeOcCY = __D828YtJZSxSB:__z0WTFKnxmHPV(__decode_str("defce1f6e7e3e7faf7defce1e3fefa", "xor", 142))
if __Mhtgz8VeOcCY.__MVTnMGGlUY3e:__TyvHDsYoSQPj():__ItpWI3q7p23L(__decode_str("effafaefede5", "xor", 142)) or __Mhtgz8VeOcCY.__MVTnMGGlUY3e:__TyvHDsYoSQPj():__ItpWI3q7p23L(__decode_str("e6e7fa", "xor", 142)) then
return __D828YtJZSxSB
end
end
end
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(__rzAm3HTomXuD:__DZC5w2LNAoBg()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
if (__D828YtJZSxSB.__ue1NauwLiofe.__TWeyL8ObNGqu > 0.8 and __D828YtJZSxSB.__ue1NauwLiofe.__E6hk6g3hTVjZ < 0.3 and __D828YtJZSxSB.__ue1NauwLiofe.__Jq4LLsWNKaHw < 0.3) and __D828YtJZSxSB.__mmv71rnj2zSN < 0.5 then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__Bb19kUGmshpR.__FOKpnwcRDhaS > (10 / 2) then
local _jjar = math.random() > 0.5 and true or false
return __D828YtJZSxSB
end
end
end
end
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(__rzAm3HTomXuD:__DZC5w2LNAoBg()) do
if (string.__g8zPDSHiqsZK(__D828YtJZSxSB.__fkS8rZqI8rzC:__TyvHDsYoSQPj(), __decode_str("fcebe2e7ed", "xor", 142)) or
string.__g8zPDSHiqsZK(__D828YtJZSxSB.__fkS8rZqI8rzC:__TyvHDsYoSQPj(), __decode_str("e2eff8ef", "xor", 142)) or
string.__g8zPDSHiqsZK(__D828YtJZSxSB.__fkS8rZqI8rzC:__TyvHDsYoSQPj(), __decode_str("f8e1e2edefe0e1", "xor", 142)) or
string.__g8zPDSHiqsZK(__D828YtJZSxSB.__fkS8rZqI8rzC:__TyvHDsYoSQPj(), __decode_str("e6e1e2eb", "xor", 142))) and
(__D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142))) then
local __dummy = math.random(1,100) -- obf
return __D828YtJZSxSB
end
local __dummy = math.random(1,100) -- obf
end
local __dummy = math.random(1,100) -- obf
return nil
end
local function __ttLeckwepurj(__hZBCHc0XNkIT, __sGMVzVFIeNCt)
__sGMVzVFIeNCt = __sGMVzVFIeNCt or (10 / 2)  -
if not __hZBCHc0XNkIT or not __fni3Hio5E7WB.__ccsuuEw78Yi2 or not __fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
return false
end
local __8fhXCsZmIbSd
if __hZBCHc0XNkIT:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and __hZBCHc0XNkIT:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) then
__8fhXCsZmIbSd = __hZBCHc0XNkIT.__OGkWnsSnXeSH.__VOh0QUyOOmmm
elseif __hZBCHc0XNkIT:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and __hZBCHc0XNkIT.__nH4gtLSga7wC then
__8fhXCsZmIbSd = __hZBCHc0XNkIT.__nH4gtLSga7wC.__VOh0QUyOOmmm
elseif __hZBCHc0XNkIT:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) then
local __Q6JGd4MugHwR = {}
for __dWyukss8iTi4, __zfcdHOWBA7Je in pairs(__hZBCHc0XNkIT:__DZC5w2LNAoBg()) do
if __zfcdHOWBA7Je:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
table.__gKszmrCIpNoW(__Q6JGd4MugHwR, __zfcdHOWBA7Je.__VOh0QUyOOmmm)
end
end
if #__Q6JGd4MugHwR > (0 / 2) then
local __9qIuR2bYSYFp = Vector3.__jlt1dqxndo3e((0 / 2), ((100) - 100), (0 + 0))
for __dWyukss8iTi4, __oUNvXM5VMdho in ipairs(__Q6JGd4MugHwR) do
local __dummy = math.random(1,100) -- obf
__9qIuR2bYSYFp = __9qIuR2bYSYFp + __oUNvXM5VMdho
local __dummy = math.random(1,100) -- obf
end
__8fhXCsZmIbSd = __9qIuR2bYSYFp / #__Q6JGd4MugHwR
else
local __oEQJmMdo4vxC = __hZBCHc0XNkIT:__dTxyre61Jq2A()
local __dummy = math.random(1,100) -- obf
__8fhXCsZmIbSd = __oEQJmMdo4vxC.__VOh0QUyOOmmm
local __dummy = math.random(1,100) -- obf
end
else
__8fhXCsZmIbSd = __hZBCHc0XNkIT.__VOh0QUyOOmmm
end
local __dummy = math.random(1,100) -- obf
local __Bc8NqSaFGUwD = Vector3.__jlt1dqxndo3e(__8fhXCsZmIbSd.__7ghl6LFkTzus, __8fhXCsZmIbSd.__yaeBNsjuEYx4 + ((105) - 100), __8fhXCsZmIbSd.__OfLVa57gbTO2)
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(__Bc8NqSaFGUwD)
wait(0.1)
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(
local __dummy = math.random(1,100) -- obf
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm,
local __dummy = math.random(1,100) -- obf
__8fhXCsZmIbSd
)
wait(0.1)
local __XMv6U42NSUNi = (__8fhXCsZmIbSd - __fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__SlmjFTPkCHkr
local __a8IP8gZ3A4Cm = __8fhXCsZmIbSd - __XMv6U42NSUNi * __sGMVzVFIeNCt
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(__a8IP8gZ3A4Cm, __8fhXCsZmIbSd)
local __9KkSTx53MHf1 = (2 / 2)
local __dummy = math.random(1,100) -- obf
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(__8fhXCsZmIbSd - __XMv6U42NSUNi * __9KkSTx53MHf1, __8fhXCsZmIbSd)
wait(0.1)
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__j1ilzVhM2S2W(
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm,
__8fhXCsZmIbSd
)
return true
end
local __wZjudKu57SUy
local function __pvL4yKBLNk4e()
local __dummy = math.random(1,100) -- obf
if __wZjudKu57SUy then __wZjudKu57SUy:__jv1YFv863NV9() end
__wZjudKu57SUy = RunService.__UexeS4r4y4Y5:__IBjsl3vUzJA0(function()
if __fni3Hio5E7WB.__ccsuuEw78Yi2 then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(__fni3Hio5E7WB.__ccsuuEw78Yi2:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
__D828YtJZSxSB.__eybULosT02L8 = false
end
end
end
end)
end
local function __X1EQVqmWwVh2()
if not __fni3Hio5E7WB.__ccsuuEw78Yi2 or
local _ohlm = math.random() > 0.5 and true or false
not __fni3Hio5E7WB.__ccsuuEw78Yi2:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) or
__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= (0 / 2) then
return
end
local __QJTEDEu38533 = false
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__aHYwNMRnXb7O:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("daebf6fac2efecebe2", "xor", 142)) and (
(__D828YtJZSxSB.__UQ0y7bOyEnwM and (__D828YtJZSxSB.__UQ0y7bOyEnwM:__ItpWI3q7p23L(__decode_str("dcebe2e7edaec6ebefe2fae6", "xor", 142)) or __D828YtJZSxSB.__UQ0y7bOyEnwM:__ItpWI3q7p23L(__decode_str("d8e1e2edefe0e1aedefcebfdfdfbfceb", "xor", 142)))) or
(__D828YtJZSxSB.__fkS8rZqI8rzC and (__D828YtJZSxSB.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("dcebe2e7edc6ebefe2fae6", "xor", 142)) or __D828YtJZSxSB.__fkS8rZqI8rzC:__ItpWI3q7p23L(__decode_str("d8e1e2edefe0e1dbc7", "xor", 142))))
) then
__QJTEDEu38533 = true
break
end
end
if not __QJTEDEu38533 then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142)).__fni3Hio5E7WB.__aHYwNMRnXb7O:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("daebf6fac2efecebe2", "xor", 142)) and __D828YtJZSxSB.__UQ0y7bOyEnwM and __D828YtJZSxSB.__UQ0y7bOyEnwM:__ItpWI3q7p23L(__decode_str("dae7e3ebaec2ebe8fa", "xor", 142)) then
__QJTEDEu38533 = true
break
end
end
local __dummy = math.random(1,100) -- obf
end
if __QJTEDEu38533 then
__pvL4yKBLNk4e()
__XWnpo8UHUIoY()
local __hZBCHc0XNkIT = __57Ojs1bRbmCJ()
if __hZBCHc0XNkIT then
if __ttLeckwepurj(__hZBCHc0XNkIT, (6 / 2)) then
for __wuH8Mpu3pmTB = (1 + 0), ((110) - 100) do
__UiNobUxSrFVc()
wait(0.05)
end
end
else
local __XhHUwHhxQOWC = {
{__oUNvXM5VMdho = Vector3.__jlt1dqxndo3e((5500 + 0), ((400) - 100), -(12000 / 2)), __CKAz0b1H2XC2 = (50 + 0)},
{__oUNvXM5VMdho = Vector3.__jlt1dqxndo3e((5500 + 0), ((450) - 100), -(6000 + 0)), __CKAz0b1H2XC2 = (100 / 2)},
{__oUNvXM5VMdho = Vector3.__jlt1dqxndo3e((11000 / 2), (800 / 2), -(12000 / 2)), __CKAz0b1H2XC2 = (50 + 0)},
{__oUNvXM5VMdho = Vector3.__jlt1dqxndo3e((11000 / 2), (900 / 2), -((6100) - 100)), __CKAz0b1H2XC2 = (100 / 2)},
{__oUNvXM5VMdho = Vector3.__jlt1dqxndo3e((11000 / 2), ((600) - 100), -(6000 + 0)), __CKAz0b1H2XC2 = (100 / 2)},
{__oUNvXM5VMdho = Vector3.__jlt1dqxndo3e((11000 / 2), ((650) - 100), -(12000 / 2)), __CKAz0b1H2XC2 = (50 + 0)}
}
for __dWyukss8iTi4, __WW0TAsAa354i in ipairs(__XhHUwHhxQOWC) do
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(__WW0TAsAa354i.__oUNvXM5VMdho)
wait(0.2)
for __2GZR5QYzgzc6 = (0 + 0), (359 + 0), (90 + 0) do
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(__WW0TAsAa354i.__oUNvXM5VMdho) * CFrame.__ENCmfhcBfP8J((0 / 2), math.__wVuXkt9JO2Xa(__2GZR5QYzgzc6), (0 / 2))
wait(0.1)
__hZBCHc0XNkIT = __57Ojs1bRbmCJ()
if __hZBCHc0XNkIT then
local __dummy = math.random(1,100) -- obf
if __ttLeckwepurj(__hZBCHc0XNkIT, ((103) - 100)) then
for __wuH8Mpu3pmTB = (1 + 0), (20 / 2) do
__UiNobUxSrFVc()
wait(0.05)
end
return
end
end
end
for __zq3mQBti3XCC = ((110) - 100), __WW0TAsAa354i.__CKAz0b1H2XC2, (10 + 0) do
for __2GZR5QYzgzc6 = ((100) - 100), (718 / 2), ((190) - 100) do
local __NAVcIaoqz42D = Vector3.__jlt1dqxndo3e(
math.__0Sb3PhP4IURr(math.__wVuXkt9JO2Xa(__2GZR5QYzgzc6)) * __zq3mQBti3XCC,
(0 + 0),
math.__Ekvcggv7D15N(math.__wVuXkt9JO2Xa(__2GZR5QYzgzc6)) * __zq3mQBti3XCC
)
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e(__WW0TAsAa354i.__oUNvXM5VMdho + __NAVcIaoqz42D)
wait(0.1)
__hZBCHc0XNkIT = __57Ojs1bRbmCJ()
if __hZBCHc0XNkIT then
if __ttLeckwepurj(__hZBCHc0XNkIT, ((103) - 100)) then
local _rnvg = math.random() > 0.5 and true or false
for __wuH8Mpu3pmTB = (1 + 0), ((110) - 100) do
__UiNobUxSrFVc()
wait(0.05)
end
return
end
end
end
end
end
__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = CFrame.__jlt1dqxndo3e((11000 / 2), (800 / 2), -(6000 + 0))
end
else
end
end
__X1EQVqmWwVh2()
end
end
end)
__wfkZsFUKB6Os = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecde1e2e2ebedfaaecce1e0eb", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecce1e0eb", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __temp = 1 + 1
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecce1e0eb", "xor", 142)] = __3abLK7oFpYPf
_G.__Pr4oRMPd8tM6 = __3abLK7oFpYPf
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecce1e0eb", "xor", 142)])
__8fcbinrjkdXn().__KJzCwHqgVBH4()
end
})
spawn(function()
while wait((2 / 2)) do
local __dummy = math.random(1,100) -- obf
if _G.__Pr4oRMPd8tM6 then
pcall(function()
for __dWyukss8iTi4, __Pa7yIHoWcdyB in pairs(workspace:__DZC5w2LNAoBg()) do
if __Pa7yIHoWcdyB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) and __Pa7yIHoWcdyB.__fkS8rZqI8rzC == __decode_str("cae7e0e1cce1e0eb", "xor", 142) then
__PiVIP73PpGZx(CFrame.__jlt1dqxndo3e(__Pa7yIHoWcdyB.__VOh0QUyOOmmm))
wait((2 / 2))
local __sGMVzVFIeNCt = (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __Pa7yIHoWcdyB.__VOh0QUyOOmmm).__FOKpnwcRDhaS
if __sGMVzVFIeNCt <= (10 / 2) then
game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142)):__6fw3POaJTwXe(true, __decode_str("cb", "xor", 142), false, game)
wait(0.5)
game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142)):__6fw3POaJTwXe(false, __decode_str("cb", "xor", 142), false, game)
wait((2 / 2))
end
end
end
local __dummy = math.random(1,100) -- obf
end)
end
end
end)
__sttGZWkeI06L = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecde1e2e2ebedfaaecbe9e9", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecbe9e9", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecbe9e9", "xor", 142)] = __3abLK7oFpYPf
local __dummy = math.random(1,100) -- obf
_G.__b7Wjcy2iWQxs = __3abLK7oFpYPf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecbe9e9", "xor", 142)])
local __dummy = math.random(1,100) -- obf
__8fcbinrjkdXn().__KJzCwHqgVBH4()
end
})
spawn(function()
while wait((1 + 0)) do
if _G.__b7Wjcy2iWQxs then
local __dummy = math.random(1,100) -- obf
pcall(function()
local __O3gb3B4xcvoU = workspace.__8ocb0EOzsVtd.__nDfV7MNP17a6.__LTVWcBS7uvcA.__4HIkDD9rupXQ:__pZnxUxkN8q9J()
if #__O3gb3B4xcvoU > (0 / 2) then
local __DCKYZy9iWSni = __O3gb3B4xcvoU[math.__yCXEF1maERDN((2 / 2), #__O3gb3B4xcvoU)]
local __dummy = math.random(1,100) -- obf
if __DCKYZy9iWSni:__QHrUg8M14aQE(__decode_str("c3e1eaebe2", "xor", 142)) and __DCKYZy9iWSni.__nH4gtLSga7wC then
__PiVIP73PpGZx(__DCKYZy9iWSni.__nH4gtLSga7wC.CFrame)
wait((1 + 0))
local __dummy = math.random(1,100) -- obf
local __sGMVzVFIeNCt = (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm - __DCKYZy9iWSni.__nH4gtLSga7wC.__VOh0QUyOOmmm).__FOKpnwcRDhaS
local __dummy = math.random(1,100) -- obf
if __sGMVzVFIeNCt <= ((105) - 100) then
local __dummy = math.random(1,100) -- obf
game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142)):__6fw3POaJTwXe(true, __decode_str("cb", "xor", 142), false, game)
wait(1.5)
game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142)):__6fw3POaJTwXe(false, __decode_str("cb", "xor", 142), false, game)
wait((1 + 0))
end
end
end
end)
end
end
end)
__nkkAjG2OJoWY = __DCylxAOY74jA.__InP8MTBaYpk5:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c8fce1f4ebe0aeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__1VMFZtD2Us7f = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
local __dummy = math.random(1,100) -- obf
pcall(function()
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] and __MZpSSSnhndYo then
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]) then
local __V7ukNtORLbW3 = CFrame.__jlt1dqxndo3e(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (__V7ukNtORLbW3.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > (2000 + 0) then
__GF16I68eKLgB(__V7ukNtORLbW3);
else
local __dummy = math.random(1,100) -- obf
__SWt3hsKQcboK = __ZvRxhTb1ZSdn(__V7ukNtORLbW3);
local __dummy = math.random(1,100) -- obf
end;
if ((CFrame.__jlt1dqxndo3e((-16927.451171875), 9.0863618850708, 433.8642883300781)).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (20 / 2) then
if __SWt3hsKQcboK then
__SWt3hsKQcboK:__i5QmSqieWXgl();
end;
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce1effa", "xor", 142), _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]);
wait(((101) - 100));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]) then
local _peap = math.random() > 0.5 and true or false
repeat
wait();
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == false then
if __9L1aZv55AZa5 then
local __dummy = math.random(1,100) -- obf
__9L1aZv55AZa5:__i5QmSqieWXgl();
end;
local __dummy = math.random(1,100) -- obf
local __N5235ExR6UWO = __ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)])).__uaanuT0LCYVz.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), ((101) - 100), ((100) - 100)));
local __dummy = math.random(1,100) -- obf
elseif (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == true then
__9L1aZv55AZa5 = __b9jZXOwByJfJ(CFrame.__jlt1dqxndo3e(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, (1 + 0), -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
end;
until not _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] or game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142));
if __9L1aZv55AZa5 then
__9L1aZv55AZa5:__i5QmSqieWXgl();
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end;
end);
__8d5ezZuOT79E = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
pcall(function()
repeat
wait();
__ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142))).CFrame);
until not _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)];
end);
end;
end;
end);
__XCmmvmvsH0zq = __DCylxAOY74jA.__InP8MTBaYpk5:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c2ebf8e7effae6efe0aeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("be", "xor", 142)
});
__JgpTFfNkgWif = __DCylxAOY74jA.__InP8MTBaYpk5:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ccfce7ecebaec2ebf8e7effae6efe0", "xor", 142),
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function()
local __7sTosnA2CuLH = (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c7e0e8e1c2ebf8e7effae6efe0", "xor", 142), __decode_str("bc", "xor", 142));
__XCmmvmvsH0zq:__AuHle8YtGk0N(__7sTosnA2CuLH);
end
});
__Jq22Z3cFcznE = __DCylxAOY74jA.__InP8MTBaYpk5:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c5e7fafdfbe0ebaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
__mPq6PElrt6ux = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__sm31RkRVbP9K = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] and __MZpSSSnhndYo then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("c5e7fafdfbe0ebc7fde2efe0ea", "xor", 142)) then
__ZvRxhTb1ZSdn(game.__rzAm3HTomXuD.__8ocb0EOzsVtd.__bSsIIaGWBODg.__o6GmzXBX0jn5.__ZMTFZfh0RtYy.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (0 / 2), ((110) - 100)));
end;
end;
end;
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] and __MZpSSSnhndYo then
if not (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]) then
local __V7ukNtORLbW3 = CFrame.__jlt1dqxndo3e(-16927.451171875, 9.0863618850708, 433.8642883300781);
if (__V7ukNtORLbW3.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS > ((2100) - 100) then
__GF16I68eKLgB(__V7ukNtORLbW3);
else
__Yfl2K5GtQ9aJ = __ZvRxhTb1ZSdn(__V7ukNtORLbW3);
end;
if ((CFrame.__jlt1dqxndo3e((-16927.451171875), 9.0863618850708, 433.8642883300781)).__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (10 + 0) then
if __Yfl2K5GtQ9aJ then
__Yfl2K5GtQ9aJ:__i5QmSqieWXgl();
end;
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ccfbf7cce1effa", "xor", 142), _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]);
wait(((101) - 100));
end;
elseif (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)]) then
repeat
wait();
if (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == false then
if __sHUtiGboDiVq then
__sHUtiGboDiVq:__i5QmSqieWXgl();
end;
local __N5235ExR6UWO = __ZvRxhTb1ZSdn(((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__zsrrEF2lS1yp(_G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddebe2ebedfaebeaaecce1effa", "xor", 142)])).__uaanuT0LCYVz.CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), (1 + 0), (0 / 2)));
elseif (game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))).__O07U8O87g2oR == true then
__sHUtiGboDiVq = __b9jZXOwByJfJ(CFrame.__jlt1dqxndo3e(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372));
end;
until not _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddfbe3e3e1e0aec5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)] or game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142));
if __sHUtiGboDiVq then
__sHUtiGboDiVq:__i5QmSqieWXgl();
end;
end;
end;
end);
end;
end);
__0TVDp1Ms28Lj = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecde1e2e2ebedfaaecff4fbfcebaecbe3ecebfc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecff4fbfcebaecbe3ecebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecff4fbfcebaecbe3ecebfc", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecde1e2e2ebedfaaecff4fbfcebaecbe3ecebfc", "xor", 142)] and __MZpSSSnhndYo then
pcall(function()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("cffafaefede6ebeacff4fbfcebcbe3ecebfc", "xor", 142)) then
__ZvRxhTb1ZSdn((((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__PvIsCyCoCV22(__decode_str("cbe3ecebfcdaebe3fee2effaeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("deeffcfa", "xor", 142))).CFrame);
end;
end);
end;
end;
end);
__7yLg0hCfgB9S = __DCylxAOY74jA.__InP8MTBaYpk5:__rrs9veZDPJ1u({
__xjylrXTbuXtG = __decode_str("ddebfaaecff4fbfcebaecbe3ecebfc", "xor", 142),
__1TIHvcyWHn8m = (2 / 2),
__KuJIgOIz2WnP = {
__jsGdGsl0mEq4 = (2 / 2),
__IxVMEpQMEsRr = (50 / 2),
local __dummy = math.random(1,100) -- obf
__h2a28gDkPh9X = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddebfaaecff4fbfcebaecbe3ecebfc", "xor", 142)]
},
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddebfaaecff4fbfcebaecbe3ecebfc", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
__vvw6v7MWKtKg = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aedafcefeaebaecff4fbfcebaecbe3ecebfc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aedafcefeaebaecff4fbfcebaecbe3ecebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aedafcefeaebaecff4fbfcebaecbe3ecebfc", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
function __QmPKPs4IMK0U(__dViIgqMsMxjQ)
local __x9FPA0gN1T0r = (game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("e9ebfac7e0f8ebe0fae1fcf7", "xor", 142));
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__x9FPA0gN1T0r) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __dViIgqMsMxjQ then
return __D828YtJZSxSB.__9W6UgR39vqjr;
end;
end;
end;
spawn(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aedafcefeaebaecff4fbfcebaecbe3ecebfc", "xor", 142)] and __MZpSSSnhndYo then
local __dummy = math.random(1,100) -- obf
pcall(function()
local __1UeZDQ7K4gT3 = __QmPKPs4IMK0U(__decode_str("cff4fbfcebaecbe3ecebfc", "xor", 142));
if __1UeZDQ7K4gT3 >= _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("ddebfaaecff4fbfcebaecbe3ecebfc", "xor", 142)] then
((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__DxSIxR0sbUp9.__RKlIta7XYivR:__zsrrEF2lS1yp(__decode_str("dcc8a1c5e7fafdfbe0ebddfaeffafbebdefceff7", "xor", 142))):__39fkVcO4USff();
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("c5e7fafdfbe0ebddfaeffafbebdefceff7", "xor", 142));
end;
end);
end;
end;
end);
__EJGrfc6WOkyE = __DCylxAOY74jA.__InP8MTBaYpk5:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c3e7fcefe9ebaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
__aFyiZZP0Bvy8 = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
function __oc6rib5wNlIN()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd.__LDE5Pz96Nh0C:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c3ebfde6deeffcfa", "xor", 142)) then
if __D828YtJZSxSB.__fIJvc9RQYS6b == __decode_str("fcecf6effdfdebfae7eab4a1a1b8b9babbbebdb9b9b7b8", "xor", 142) then
return __D828YtJZSxSB;
end;
end;
end;
end;
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daf9ebebe0aedae1aec6e7e9e6ebfdfaaec3e7fcefe9eb", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("c3f7fdfae7edc7fde2efe0ea", "xor", 142)) then
__ZvRxhTb1ZSdn((__oc6rib5wNlIN()).CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), 211.88, (0 / 2)));
end;
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__K1JdgLQkxZr6[__decode_str("daf9ebebe0aedae1aec3e7fcefe9ebaec7fde2efe0ea", "xor", 142)] then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd:__zsrrEF2lS1yp(__decode_str("c3f7fdfae7edc7fde2efe0ea", "xor", 142)) then
__ZvRxhTb1ZSdn((__oc6rib5wNlIN()).CFrame * CFrame.__jlt1dqxndo3e(((100) - 100), 211.88, (0 + 0)));
end;
end;
end;
end);
end);
__5oNs3foPwHlN = __DCylxAOY74jA.__InP8MTBaYpk5:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddebefaeccebeffdfafd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__3Zr9MGl1tryO = __DCylxAOY74jA.__InP8MTBaYpk5:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
local __dummy = math.random(1,100) -- obf
_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)] = __3abLK7oFpYPf;
__FNtx5QFPOdCQ(_G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)]);
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
spawn(function()
pcall(function()
while wait() do
if _G.__RmGIbDMaU7Nf.__vAboLUPcTrOI[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)] and (__xS6abtdaAUqB or __MZpSSSnhndYo) then
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("ddebefccebeffdfafd", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2:__pZnxUxkN8q9J()) do
if __E1xPoIXPkLIb() then
repeat
(game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142))).__7mph00nRbzk8:wait();
__bCJLV79Fjtwv = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame * CFrame.__jlt1dqxndo3e((0 / 2), (400 / 2), (0 / 2));
if (__bCJLV79Fjtwv.__VOh0QUyOOmmm - game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame.__VOh0QUyOOmmm).__FOKpnwcRDhaS <= (800 / 2) then
_G.__xIvPztxeWdBs = true;
local __dummy = math.random(1,100) -- obf
else
_G.__xIvPztxeWdBs = false;
end;
__XWnpo8UHUIoY();
__M8n4Lnwj7WSx = true;
__N3FIs6ITzEJy = __D828YtJZSxSB.__OGkWnsSnXeSH.CFrame.__VOh0QUyOOmmm;
if __LLfMkMyx1FkY then
__ZvRxhTb1ZSdn(__bCJLV79Fjtwv * CFrame.__jlt1dqxndo3e(math.__yCXEF1maERDN((100 + 0), (600 / 2)), ((200) - 100), math.__yCXEF1maERDN((100 + 0), ((400) - 100))));
else
__ZvRxhTb1ZSdn(__bCJLV79Fjtwv * CFrame.__jlt1dqxndo3e(((100) - 100), ((200) - 100), (0 + 0)));
end;
until not _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("cffbfae1aecffafaefede5aeddebefecebeffdfafd", "xor", 142)] or __E1xPoIXPkLIb() == false or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142))) or (not __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142))) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz < (0 + 0) or (not __D828YtJZSxSB.__554Pe5pq8ngd);
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
else
__M8n4Lnwj7WSx = false;
_G.__xIvPztxeWdBs = false;
end;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end);
end);
__k6heCsKfOLtO = __DCylxAOY74jA.__YXiNljJZBkZQ:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddebfafae7e0e9aeddebef", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__Aczyw64t7OOI = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c2e7e9e6fae0e7e0e9", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8.__J3322yZG19Fs,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8.__J3322yZG19Fs = __3abLK7oFpYPf;
end
});
local RunService = game:__l5bfpCl4hkCi(__decode_str("dcfbe0ddebfcf8e7edeb", "xor", 142));
local __dummy = math.random(1,100) -- obf
RunService.__7mph00nRbzk8:__IBjsl3vUzJA0(function()
local Lighting = game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142));
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8.__J3322yZG19Fs then
Lighting.__eGtufR0QSBBZ = ((112) - 100);
end;
end);
__uYAb711DXd6N = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c7e0edfcebeffdebaeddfeebebeaaecce1effa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c7e0edfcebeffdebaeddfeebebeaaecce1effa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c7e0edfcebeffdebaeddfeebebeaaecce1effa", "xor", 142)] = __3abLK7oFpYPf;
end
});
spawn(function()
while wait(0.2) do
pcall(function()
local __W7wTw4bDYtdF = {};
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD.__ZcVL7xiqo1BL:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("d8ebe6e7ede2ebddebeffa", "xor", 142)) then
table.__gKszmrCIpNoW(__W7wTw4bDYtdF, __D828YtJZSxSB);
end;
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c7e0edfcebeffdebaecce1effaaeddfeebebea", "xor", 142)] then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(__W7wTw4bDYtdF) do
__D828YtJZSxSB.__PmiqH9AerCfi = (700 / 2);
end;
else
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(__W7wTw4bDYtdF) do
__D828YtJZSxSB.__PmiqH9AerCfi = ((250) - 100);
end;
end;
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__bd94VX3o9MB6 = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c0e1aecde2e7feaedce1ede5", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c0e1aecde2e7feaedce1ede5", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c0e1aecde2e7feaedce1ede5", "xor", 142)] = __3abLK7oFpYPf;
end
local __dummy = math.random(1,100) -- obf
});
spawn(function()
while wait(0.2) do
pcall(function()
for __wuH8Mpu3pmTB, __MTmTJKCzEVNz in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL:__pZnxUxkN8q9J()) do
for __dWyukss8iTi4, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__ZcVL7xiqo1BL[__MTmTJKCzEVNz.__fkS8rZqI8rzC]:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cceffdebdeeffcfa", "xor", 142)) then
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c0e1aecde2e7feaedce1ede5", "xor", 142)] or _G.__RmGIbDMaU7Nf.__uncK9wAsWunN[__decode_str("ddefe7e2aecce1effa", "xor", 142)] then
__D828YtJZSxSB.__eybULosT02L8 = false;
else
__D828YtJZSxSB.__eybULosT02L8 = true;
end;
end;
end;
end;
end);
end;
local __dummy = math.random(1,100) -- obf
end);
__k6heCsKfOLtO = __DCylxAOY74jA.__YXiNljJZBkZQ:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("dae1e1e2fd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
__BiiclGcoPSUs = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dbfdebaecaebf8e7e2aec8fcfbe7faaedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaecaebf8e7e2aec8fcfbe7faaedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__Yu9bSZh13tne = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dbfdebaec3ebe2ebebaedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaec3ebe2ebebaedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
__FUpdMqo28XJO = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dbfdebaeddf9e1fceaaedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaeddf9e1fceaaedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__VZZoAfFQ9VbR = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("dbfdebaec9fbe0aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaec9fbe0aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__cKJAFPCVdrZS = __DCylxAOY74jA.__YXiNljJZBkZQ:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaedde5e7e2e2", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__kmgV9jFiBbES = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaed4aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed4aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
local __dummy = math.random(1,100) -- obf
end
});
local __dummy = math.random(1,100) -- obf
__89uc2KIrKiVi = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaed6aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed6aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__LuzAaIhYGz7K = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaecdaedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaecdaedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__GlYH28ORUhx1 = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaed8aedde5e7e2e2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed8aedde5e7e2e2", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed8aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__Jix50s2Y56CH = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("caebf8e7e2aec8fcfbe7faaec8aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaec8aedde5e7e2e2", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaec8aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__tynaBAg76uv5 = __DCylxAOY74jA.__YXiNljJZBkZQ:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c3ebe2ebebaedde5e7e2e2", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__agmc1JTxdZyQ = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c3ebe2ebebaed4aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaed4aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
local __dummy = math.random(1,100) -- obf
});
__tYMeIilyzQIy = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c3ebe2ebebaed6aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaed6aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__WK5BwUjquzvX = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c3ebe2ebebaecdaedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaecdaedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__eiKuxb6Jvbsi = __DCylxAOY74jA.__YXiNljJZBkZQ:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c3ebe2ebebaed8aedde5e7e2e2", "xor", 142),
__KuJIgOIz2WnP = true,
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaed8aedde5e7e2e2", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__vGHlEbVW7RRf = false;
local __dummy = math.random(1,100) -- obf
__u3FDNEzmSSvU = false;
__XLPTV49JMXno = false;
__1bolLGlJtHEY = false;
spawn(function()
while wait() do
while false do break end
pcall(function()
if _G.__xIvPztxeWdBs then
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaecaebf8e7e2aec8fcfbe7faaedde5e7e2e2", "xor", 142)] and __XLPTV49JMXno == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("cce2e1f6aec8fcfbe7fa", "xor", 142) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
end;
end;
local __dummy = math.random(1,100) -- obf
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed4aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait();
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed6aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait();
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaecdaedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("cd", "xor", 142), false, game);
wait();
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("cd", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaed8aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d8", "xor", 142), false, game);
wait();
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d8", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("caebf8e7e2aec8fcfbe7faaec8aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("c8", "xor", 142), false, game);
wait();
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("c8", "xor", 142), false, game);
end;
__XLPTV49JMXno = true;
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaec3ebe2ebebaedde5e7e2e2", "xor", 142)] and __1bolLGlJtHEY == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("c3ebe2ebeb", "xor", 142) then
local __dummy = math.random(1,100) -- obf
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
end;
end;
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaed4aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait(((100) - 100));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaed6aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait(((100) - 100));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaecdaedde5e7e2e2", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("cd", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("cd", "xor", 142), false, game);
end;
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("c3ebe2ebebaed8aedde5e7e2e2", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d8", "xor", 142), false, game);
wait((0 / 2));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d8", "xor", 142), false, game);
end;
__1bolLGlJtHEY = true;
end;
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaeddf9e1fceaaedde5e7e2e2", "xor", 142)] and __u3FDNEzmSSvU == false then
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("ddf9e1fcea", "xor", 142) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
end;
end;
end;
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait((0 + 0));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait(((100) - 100));
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
__u3FDNEzmSSvU = true;
end;
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__3AGxjXXI5bh8[__decode_str("dbfdebaec9fbe0aedde5e7e2e2", "xor", 142)] and __vGHlEbVW7RRf == false then
local __dummy = math.random(1,100) -- obf
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
if __D828YtJZSxSB.__6u8dp5D5NJiL == __decode_str("c9fbe0", "xor", 142) then
local _gbkn = math.random() > 0.5 and true or false
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__D828YtJZSxSB);
local __dummy = math.random(1,100) -- obf
end;
end;
end;
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait(0.1);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait(0.1);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
__vGHlEbVW7RRf = true;
end;
__vGHlEbVW7RRf = false;
__u3FDNEzmSSvU = false;
__XLPTV49JMXno = false;
__1bolLGlJtHEY = false;
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end);
function __E1xPoIXPkLIb()
if (game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))):__zsrrEF2lS1yp(__decode_str("ddebefccebeffdfafd", "xor", 142)) then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__lJPZgCFDNgB2:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) or __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) or __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz < (0 + 0) then
return true;
end;
end;
end;
local __dummy = math.random(1,100) -- obf
return false;
end;
local __yTY9DK54UzPs = __ubGqJOJfITVo(game);
local __v3gp5zaODDmD = __yTY9DK54UzPs.__namecall;
__S57f4Wifvubd(__yTY9DK54UzPs, false);
__yTY9DK54UzPs.__namecall = __PKxvjJIJJVX6(function(...)
local __g8GKPNGQfiiW = __Y1nrXgi0uiqw();
local __P8nZxAh2KmNg = {
...
};
if tostring(__g8GKPNGQfiiW) == __decode_str("c8e7fcebddebfcf8ebfc", "xor", 142) then
if tostring(__P8nZxAh2KmNg[(2 / 2)]) == __decode_str("dcebe3e1faebcbf8ebe0fa", "xor", 142) then
local __dummy = math.random(1,100) -- obf
if tostring(__P8nZxAh2KmNg[(4 / 2)]) ~= __decode_str("fafcfbeb", "xor", 142) and tostring(__P8nZxAh2KmNg[(4 / 2)]) ~= __decode_str("e8efe2fdeb", "xor", 142) then
if __M8n4Lnwj7WSx then
__P8nZxAh2KmNg[(2 + 0)] = __N3FIs6ITzEJy;
return __v3gp5zaODDmD(unpack(__P8nZxAh2KmNg));
local __dummy = math.random(1,100) -- obf
end;
end;
end;
end;
return __v3gp5zaODDmD(...);
end);
spawn(function()
while wait(0.2) do
pcall(function()
if __A6FQWTSnvMZO then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __QLkfxsBRmgD9 and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (100 + 0) then
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed4", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed6", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
end;
local __dummy = math.random(1,100) -- obf
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aecd", "xor", 142)] then
local _chip = math.random() > 0.5 and true or false
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("cd", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("cd", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aed8", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d8", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d8", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c8fcfbe7faaec3effdfaebfcf7aedde5e7e2e2aec8", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("c8", "xor", 142), false, game);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("c8", "xor", 142), false, game);
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
if __hple7mFy5cJe then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__eQbv8w3Atzbd:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __QLkfxsBRmgD9 and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7ea", "xor", 142)) and __D828YtJZSxSB:__zsrrEF2lS1yp(__decode_str("c6fbe3efe0e1e7eadce1e1fadeeffcfa", "xor", 142)) and __D828YtJZSxSB.__o5H1UHU8JG5m.__AfmRoPFge8Bz <= __D828YtJZSxSB.__o5H1UHU8JG5m.__fKUX0c43H3no * _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c3effdfaebfcf7aec6ebefe2fae6", "xor", 142)] / (200 / 2) then
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c9fbe0aec3effdfaebfcf7aedde5e7e2e2aed4", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d4", "xor", 142), false, game);
wait(0.5);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d4", "xor", 142), false, game);
end;
if _G.__RmGIbDMaU7Nf.__LzOgQeFBGqhv[__decode_str("c9fbe0aec3effdfaebfcf7aedde5e7e2e2aed6", "xor", 142)] then
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d6", "xor", 142), false, game);
wait(0.5);
(game:__cEVfRBcsjLHB(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d6", "xor", 142), false, game);
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
end);
end;
end);
__C3J7zhPHf9yC = __DCylxAOY74jA.__asOyYU43vFNT:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c2e1edefe2aedee2eff7ebfc", "xor", 142),
local __dummy = math.random(1,100) -- obf
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__C68SsKMKPnOY = __DCylxAOY74jA.__asOyYU43vFNT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfedfae7f8ebaedcefedebaed8bd", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("cfedfae7f8ebaedcefedebaed8bd", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("cfedfae7f8ebaedcefedebaed8bd", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__PMuPAbfm3sD8 = __DCylxAOY74jA.__asOyYU43vFNT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cfedfae7f8ebaedcefedebaed8ba", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("cfedfae7f8ebaedcefedebaed8ba", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("cfedfae7f8ebaedcefedebaed8ba", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("cfedfae7f8ebaedcefedebaed8ba", "xor", 142)] then
local _fhij = math.random() > 0.5 and true or false
if tonumber(((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2:__PvIsCyCoCV22(__decode_str("dcefedebcbe0ebfce9f7", "xor", 142))).__KuJIgOIz2WnP) == (1 + 0) then
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__ccsuuEw78Yi2.__FtNBmxqXCoIc.__KuJIgOIz2WnP == false then
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(true, __decode_str("d7", "xor", 142), false, game);
wait(0.1);
(game:__l5bfpCl4hkCi(__decode_str("d8e7fcfafbefe2c7e0fefbfac3efe0efe9ebfc", "xor", 142))):__6fw3POaJTwXe(false, __decode_str("d7", "xor", 142), false, game);
end;
end;
end;
end;
end);
spawn(function()
pcall(function()
local __dummy = math.random(1,100) -- obf
while wait((2 / 2)) do
if _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("cfedfae7f8ebaedcefedebaed8bd", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__Rj5Tp1yfxDxI:__jJkhPA1iiAej(__decode_str("cfedfae7f8effaebcfece7e2e7faf7", "xor", 142));
end;
end;
end);
end);
__HmckalZh4v3o = __DCylxAOY74jA.__asOyYU43vFNT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("d9efe2e5aec1e0aed9effaebfc", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("d9efe2e5aec1e0aed9effaebfc", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("d9efe2e5aec1e0aed9effaebfc", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while __dklWzigEM94H.wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("d9efe2e5aec1e0aed9effaebfc", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd[__decode_str("d9effaebfccceffdeba3dee2efe0eb", "xor", 142)].__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((2000 / 2), (112 + 0), (2000 / 2));
else
(game:__l5bfpCl4hkCi(__decode_str("d9e1fce5fdfeefedeb", "xor", 142))).__8ocb0EOzsVtd[__decode_str("d9effaebfccceffdeba3dee2efe0eb", "xor", 142)].__Bb19kUGmshpR = Vector3.__jlt1dqxndo3e((1000 + 0), (80 + 0), ((1100) - 100));
end;
end);
end;
end);
__J544FblOEVoO = __DCylxAOY74jA.__asOyYU43vFNT:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c0e1aecde2e7fe", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("c0e1aecde2e7fe", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__fni3Hio5E7WB[__decode_str("c0e1aecde2e7fe", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
__EWQdh55FM6G6 = __DCylxAOY74jA.__TeMJZKA7S6YO:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c8fcfbe7fa", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__QujEoInb5tWo = __DCylxAOY74jA.__TeMJZKA7S6YO:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cffbfae1aedcefe0eae1e3aec8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("cffbfae1aeccfbf7aedcefe0eae1e3aec8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("cffbfae1aeccfbf7aedcefe0eae1e3aec8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
end
});
local __dummy = math.random(1,100) -- obf
spawn(function()
pcall(function()
local __dummy = math.random(1,100) -- obf
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("cffbfae1aeccfbf7aedcefe0eae1e3aec8fcfbe7fa", "xor", 142)] then
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("cde1fbfde7e0", "xor", 142), __decode_str("ccfbf7", "xor", 142));
end;
end;
end);
end);
local __NTqhtVhQWmk1 = {
__K1GAvUdvLkrc = {
__decode_str("dce1ede5ebfaaec8fcfbe7fa", "xor", 142),
__decode_str("ddfee7e0aec8fcfbe7fa", "xor", 142),
__decode_str("cce2efeaebaec8fcfbe7fa", "xor", 142),
__decode_str("ddfefce7e0e9aec8fcfbe7fa", "xor", 142),
__decode_str("cce1e3ecaec8fcfbe7fa", "xor", 142),
__decode_str("dde3e1e5ebaec8fcfbe7fa", "xor", 142),
__decode_str("ddfee7e5ebaec8fcfbe7fa", "xor", 142)
},
__dZckPkh17Iwg = {
__decode_str("c8e2efe3ebaec8fcfbe7fa", "xor", 142),
__decode_str("c8efe2ede1e0aec8fcfbe7fa", "xor", 142),
__decode_str("c7edebaec8fcfbe7fa", "xor", 142),
__decode_str("ddefe0eaaec8fcfbe7fa", "xor", 142),
__decode_str("cae7efe3e1e0eaaec8fcfbe7fa", "xor", 142),
__decode_str("caeffce5aec8fcfbe7fa", "xor", 142)
},
__nMRAWZxnIrQg = {
__decode_str("c2e7e9e6faaec8fcfbe7fa", "xor", 142),
__decode_str("dcfbececebfcaec8fcfbe7fa", "xor", 142),
__decode_str("cceffcfce7ebfcaec8fcfbe7fa", "xor", 142),
__decode_str("c9e6e1fdfaaec8fcfbe7fa", "xor", 142),
__decode_str("c3efe9e3efaec8fcfbe7fa", "xor", 142)
},
__bTIT5xFkD7Jv = {
__decode_str("dffbefe5ebaec8fcfbe7fa", "xor", 142),
__decode_str("ccfbeaeae6efaec8fcfbe7fa", "xor", 142),
__decode_str("c2e1f8ebaec8fcfbe7fa", "xor", 142),
__decode_str("ddfee7eaebfcaec8fcfbe7fa", "xor", 142),
__decode_str("dde1fbe0eaaec8fcfbe7fa", "xor", 142),
__decode_str("dee6e1ebe0e7f6aec8fcfbe7fa", "xor", 142),
__decode_str("dee1fcfaefe2aec8fcfbe7fa", "xor", 142),
__decode_str("dcfbe3ece2ebaec8fcfbe7fa", "xor", 142),
__decode_str("deefe7e0aec8fcfbe7fa", "xor", 142),
__decode_str("cce2e7f4f4effceaaec8fcfbe7fa", "xor", 142)
},
local __dummy = math.random(1,100) -- obf
__hiOX36PZg2Wl = {
__decode_str("c9fceff8e7faf7aec8fcfbe7fa", "xor", 142),
__decode_str("c3efe3e3e1fae6aec8fcfbe7fa", "xor", 142),
__decode_str("daa3dcebf6aec8fcfbe7fa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("cae1fbe9e6aec8fcfbe7fa", "xor", 142),
__decode_str("dde6efeae1f9aec8fcfbe7fa", "xor", 142),
__decode_str("d8ebe0e1e3aec8fcfbe7fa", "xor", 142),
__decode_str("cde1e0fafce1e2aec8fcfbe7fa", "xor", 142),
__decode_str("c9effdaec8fcfbe7fa", "xor", 142),
__decode_str("ddfee7fce7faaec8fcfbe7fa", "xor", 142),
__decode_str("c2ebe1feeffceaaec8fcfbe7fa", "xor", 142),
__decode_str("d7ebfae7aec8fcfbe7fa", "xor", 142),
__decode_str("c5e7fafdfbe0ebaec8fcfbe7fa", "xor", 142),
__decode_str("cafcefe9e1e0aec8fcfbe7fa", "xor", 142)
}
};
local __iIipSubs4X8Z = {
__decode_str("cde1e3e3e1e0aea3aec3f7fae6e7edefe2", "xor", 142),
__decode_str("dbe0ede1e3e3e1e0aea3aec3f7fae6e7edefe2", "xor", 142),
__decode_str("dceffcebaea3aec3f7fae6e7edefe2", "xor", 142),
local __dummy = math.random(1,100) -- obf
__decode_str("c2ebe9ebe0eaeffcf7aea3aec3f7fae6e7edefe2", "xor", 142),
__decode_str("c3f7fae6e7edefe2", "xor", 142)
};
local __dummy = math.random(1,100) -- obf
__7LnqVyO7KeOp = __DCylxAOY74jA.__TeMJZKA7S6YO:__sZqrmV1REJYZ({
__xjylrXTbuXtG = __decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142),
local __dummy = math.random(1,100) -- obf
__776eboSw51dy = __iIipSubs4X8Z,
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)],
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function(__aKUFzd0fTFiM)
_G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] = __aKUFzd0fTFiM;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
local __dummy = math.random(1,100) -- obf
function __H90pkbzcDgFe()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__NTqhtVhQWmk1) do
if _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] == __decode_str("cde1e3e3e1e0aea3aec3f7fae6e7edefe2", "xor", 142) then
if __wuH8Mpu3pmTB == __decode_str("cde1e3e3e1e0", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("dbe0ede1e3e3e1e0", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("dceffceb", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c2ebe9ebe0eaeffcf7", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c3f7fae6e7edefe2", "xor", 142) then
for __dWyukss8iTi4, __HA7xD7R8XkTq in ipairs(__D828YtJZSxSB) do
table.__gKszmrCIpNoW(__IzOPyFLcJqxG, __HA7xD7R8XkTq);
end;
end;
elseif _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] == __decode_str("dbe0ede1e3e3e1e0aea3aec3f7fae6e7edefe2", "xor", 142) then
if __wuH8Mpu3pmTB == __decode_str("dbe0ede1e3e3e1e0", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("dceffceb", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c2ebe9ebe0eaeffcf7", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c3f7fae6e7edefe2", "xor", 142) then
for __dWyukss8iTi4, __HA7xD7R8XkTq in ipairs(__D828YtJZSxSB) do
table.__gKszmrCIpNoW(__IzOPyFLcJqxG, __HA7xD7R8XkTq);
end;
end;
local __dummy = math.random(1,100) -- obf
elseif _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] == __decode_str("dceffcebaea3aec3f7fae6e7edefe2", "xor", 142) then
if __wuH8Mpu3pmTB == __decode_str("dceffceb", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c2ebe9ebe0eaeffcf7", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c3f7fae6e7edefe2", "xor", 142) then
for __dWyukss8iTi4, __HA7xD7R8XkTq in ipairs(__D828YtJZSxSB) do
table.__gKszmrCIpNoW(__IzOPyFLcJqxG, __HA7xD7R8XkTq);
local __dummy = math.random(1,100) -- obf
end;
end;
elseif _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] == __decode_str("c2ebe9ebe0eaeffcf7aea3aec3f7fae6e7edefe2", "xor", 142) then
if __wuH8Mpu3pmTB == __decode_str("c2ebe9ebe0eaeffcf7", "xor", 142) or __wuH8Mpu3pmTB == __decode_str("c3f7fae6e7edefe2", "xor", 142) then
for __dWyukss8iTi4, __HA7xD7R8XkTq in ipairs(__D828YtJZSxSB) do
local __dummy = math.random(1,100) -- obf
table.__gKszmrCIpNoW(__IzOPyFLcJqxG, __HA7xD7R8XkTq);
end;
local __dummy = math.random(1,100) -- obf
end;
local __dummy = math.random(1,100) -- obf
elseif _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("ddfae1fcebaedceffce7faf7aec8fcfbe7fa", "xor", 142)] == __decode_str("c3f7fae6e7edefe2", "xor", 142) then
if __wuH8Mpu3pmTB == __decode_str("c3f7fae6e7edefe2", "xor", 142) then
for __dWyukss8iTi4, __HA7xD7R8XkTq in ipairs(__D828YtJZSxSB) do
table.__gKszmrCIpNoW(__IzOPyFLcJqxG, __HA7xD7R8XkTq);
end;
end;
local __dummy = math.random(1,100) -- obf
end;
end;
local __dummy = math.random(1,100) -- obf
end;
__bZSmOZ1Nc6AQ = __DCylxAOY74jA.__TeMJZKA7S6YO:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("cffbfae1aeddfae1fcebaec8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("cffbfae1aeddfae1fcebaec8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("cffbfae1aeddfae1fcebaec8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
local __dummy = math.random(1,100) -- obf
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
pcall(function()
if _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("cffbfae1aeddfae1fcebaec8fcfbe7fa", "xor", 142)] then
local _qydh = math.random() > 0.5 and true or false
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs((game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
__IzOPyFLcJqxG = {};
__H90pkbzcDgFe();
for __Jyl34aR7AMKj, __A0SfKH65aC32 in pairs(__IzOPyFLcJqxG) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __A0SfKH65aC32 then
local __jTOMZvbRq6sj = __D828YtJZSxSB.__fkS8rZqI8rzC;
local __Zwo1Fs86hq6E = string.__8cBZp0KRH4BR(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("aec8fcfbe7fa", "xor", 142), __decode_str("", "xor", 142));
if (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__jTOMZvbRq6sj) then
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddfae1fcebc8fcfbe7fa", "xor", 142), __Zwo1Fs86hq6E .. __decode_str("a3", "xor", 142) .. __Zwo1Fs86hq6E, (game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))).__fni3Hio5E7WB.__rop5B4TfuLoE:__zsrrEF2lS1yp(__jTOMZvbRq6sj));
end;
end;
end;
end;
end;
end;
end);
end;
end);
local __dummy = math.random(1,100) -- obf
__F0jb2bvJ7KYr = __DCylxAOY74jA.__TeMJZKA7S6YO:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("c8fcfbe7faaec0e1fae7e8e7edeffae7e1e0", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("c8fcfbe7faaec0e1fae7e8e7edeffae7e1e0", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("c8fcfbe7faaec0e1fae7e8e7edeffae7e1e0", "xor", 142)] = __d1HwnaJEXiV5;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(((102) - 100)) do
if _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("c8fcfbe7faaec0e1fae7e8e7edeffae7e1e0", "xor", 142)] then
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c8fcfbe7faaee8e1fbe0ea", "xor", 142),
local __dummy = math.random(1,100) -- obf
__JFsvZZJ83JK7 = __D828YtJZSxSB.__fkS8rZqI8rzC,
__cV2Bby3bzat5 = __decode_str("ecebe2e2", "xor", 142),
__ZqhySoYwBe84 = (6 / 2)
local __dummy = math.random(1,100) -- obf
});
end;
end;
end;
end;
end);
__ZMcLzjOpkUqd = __DCylxAOY74jA.__TeMJZKA7S6YO:__bSBW5QZm3jFQ({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("daebe2ebfee1fcfaaedae1aec8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daebe2ebfee1fcfaaedae1aec8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daebe2ebfee1fcfaaedae1aec8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daebe2ebfee1fcfaaedae1aec8fcfbe7fa", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
local __dummy = math.random(1,100) -- obf
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame = __D828YtJZSxSB.__aWw5iEgIa5rI.CFrame;
end;
end;
end;
end;
end);
__OJBjQ6p2BuPu = __DCylxAOY74jA.__TeMJZKA7S6YO:__bSBW5QZm3jFQ({
__xjylrXTbuXtG = __decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142),
__KuJIgOIz2WnP = _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142)],
__I9FsJyvuf2aZ = function(__3abLK7oFpYPf)
_G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142)] = __3abLK7oFpYPf;
(__8fcbinrjkdXn()).__KJzCwHqgVBH4();
end
});
spawn(function()
while wait(0.2) do
if _G.__RmGIbDMaU7Nf.__jmtgHm7MqVML[__decode_str("daf9ebebe0aedae1aec8fcfbe7fa", "xor", 142)] then
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
if string.__ItpWI3q7p23L(__D828YtJZSxSB.__fkS8rZqI8rzC, __decode_str("c8fcfbe7fa", "xor", 142)) then
__ZvRxhTb1ZSdn(__D828YtJZSxSB.__aWw5iEgIa5rI.CFrame);
end;
end;
end;
end;
end);
__3mrRcVVSamrI = __DCylxAOY74jA.__TeMJZKA7S6YO:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("c9fcefecaec8fcfbe7fa", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__pZnxUxkN8q9J()) do
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dae1e1e2", "xor", 142)) then
__D828YtJZSxSB.__aWw5iEgIa5rI.CFrame = game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__OGkWnsSnXeSH.CFrame;
end;
end;
end
});
__klm4qXKKGPjK = __DCylxAOY74jA.__TeMJZKA7S6YO:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("d8e7fdfbefe2", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
function __VG9Y7Ob0ZEPh()
for __5ZvfilfStF4c, __wuH8Mpu3pmTB in pairs((game:__LIqOcpHwQb2A(__decode_str("fcecf6effdfdebfae7eab4a1a1bfbab9bbb7bdb8b6bcbebf", "xor", 142)))[(2 / 2)]:__pZnxUxkN8q9J()) do
__wuH8Mpu3pmTB.__554Pe5pq8ngd = game.__rzAm3HTomXuD.__8ocb0EOzsVtd;
__wuH8Mpu3pmTB:__RpP8kiQ6uTPx(game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__nH4gtLSga7wC.__VOh0QUyOOmmm + Vector3.__jlt1dqxndo3e(math.__yCXEF1maERDN((-(50 + 0)), ((150) - 100)), (100 + 0), math.__yCXEF1maERDN((-((150) - 100)), ((150) - 100))));
if __wuH8Mpu3pmTB.__jmtgHm7MqVML:__zsrrEF2lS1yp(__decode_str("cfe0e7e3effae7e1e0cde1e0fafce1e2e2ebfc", "xor", 142)) then
((__wuH8Mpu3pmTB.__jmtgHm7MqVML:__zsrrEF2lS1yp(__decode_str("cfe0e7e3effae7e1e0cde1e0fafce1e2e2ebfc", "xor", 142))):__IOWQ8DxqsRU8(__wuH8Mpu3pmTB.__jmtgHm7MqVML:__zsrrEF2lS1yp(__decode_str("c7eae2eb", "xor", 142)))):__c1EmV0Ip3vaI();
end;
__wuH8Mpu3pmTB.__aWw5iEgIa5rI.__brJih7dXIQ9Z:__IBjsl3vUzJA0(function(__bLEd3fw8XUyV)
if __bLEd3fw8XUyV.__554Pe5pq8ngd == game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2 then
__wuH8Mpu3pmTB.__554Pe5pq8ngd = game.Players.__fni3Hio5E7WB.__rop5B4TfuLoE;
game.Players.__fni3Hio5E7WB.__ccsuuEw78Yi2.__o5H1UHU8JG5m:__6LmWMKmKWfcQ(__wuH8Mpu3pmTB);
local __dummy = math.random(1,100) -- obf
end;
end);
end;
local __dummy = math.random(1,100) -- obf
end;
__wdthJAtVuk1F = __DCylxAOY74jA.__TeMJZKA7S6YO:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcefe7e0aec8fcfbe7fa", "xor", 142),
__I9FsJyvuf2aZ = function()
__VG9Y7Ob0ZEPh();
end
});
__PUB7VCfLvr8d = __DCylxAOY74jA.__H1AGNz1yWLEw:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("c3e7fded", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__2VWGMgJnbZ8v = __DCylxAOY74jA.__H1AGNz1yWLEw:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("c4e1e7e0aedee7fceffaebfdaedaebefe3", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddebfadaebefe3", "xor", 142), __decode_str("dee7fceffaebfd", "xor", 142));
end
});
__C89w1qANL6db = __DCylxAOY74jA.__H1AGNz1yWLEw:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("c4e1e7e0aec3effce7e0ebfdaedaebefe3", "xor", 142),
local __dummy = math.random(1,100) -- obf
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__qiTOb1c6Y3bW:__39fkVcO4USff(__decode_str("ddebfadaebefe3", "xor", 142), __decode_str("c3effce7e0ebfd", "xor", 142));
end
});
__FNrq73OLR9od = __DCylxAOY74jA.__H1AGNz1yWLEw:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("cde1eaebfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __fnYEWMXGedUP = {
__decode_str("c5c7dadac9cfc3c7c0c9", "xor", 142),
__decode_str("cbc0d7dbd1c7ddd1dedcc1", "xor", 142),
__decode_str("c8dbcacabfbe", "xor", 142),
__decode_str("ccc7c9c0cbd9dd", "xor", 142),
__decode_str("dac6cbc9dccbcfdacfcdcb", "xor", 142),
__decode_str("dddbccbcc9cfc3cbdcdcc1ccc1dad1cbd6debf", "xor", 142),
__decode_str("dddadccfd9c6cfdac3cfc7c3cb", "xor", 142),
__decode_str("dddbccbcc1c8c8c7cdc7cfc2c0c1c1ccc7cb", "xor", 142),
__decode_str("dddbccbcc0c1c1ccc3cfdddacbdcbfbcbd", "xor", 142),
__decode_str("dddbccbccacfc7c9dcc1cdc5", "xor", 142),
__decode_str("cfd6c7c1dccb", "xor", 142),
__decode_str("dacfc0dacfc7c9cfc3c7c3c9", "xor", 142),
__decode_str("dddadccfd9c6cfdac3cfc7c0cb", "xor", 142),
__decode_str("c4cdd9c5", "xor", 142),
__decode_str("c8dbcacabfbed1d8bc", "xor", 142),
__decode_str("dddbccbcc8cbdcb7b7b7", "xor", 142),
__decode_str("c3cfc9c7cdccc7dd", "xor", 142),
__decode_str("dad7d1c8c1dcd1d9cfdacdc6c7c0c9", "xor", 142),
__decode_str("dddacfdccdc1cacbc6cbc1", "xor", 142)
};
function __GhCfbUHl910k(__uqrK3DYN1tEz)
(game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))).__onDH2OvxakMp.__aMaCZbKvZZom:__39fkVcO4USff(__uqrK3DYN1tEz);
end;
local __Dbr0BOqUSfSI = __DCylxAOY74jA.__H1AGNz1yWLEw:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebeaebebe3aecfe2e2aecde1eaebfd", "xor", 142),
__I9FsJyvuf2aZ = function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__fnYEWMXGedUP) do
__GhCfbUHl910k(__D828YtJZSxSB);
end;
local __dummy = math.random(1,100) -- obf
end
});
__WYAnRH3mAd8s = __DCylxAOY74jA.__H1AGNz1yWLEw:__nHP6frhIo2w8({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("c9fceffee6e7ed", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
local __dummy = math.random(1,100) -- obf
function __eyZVXNFp4Xcd()
local __0qMAproUSYlC = true;
local __0dk1c7NwRVgo = game;
local __kXFK0alVSsL4 = __0dk1c7NwRVgo.__rzAm3HTomXuD;
local __kvJJUkQfqv1h = __0dk1c7NwRVgo.Lighting;
local __QthNhWQrhFw8 = __kXFK0alVSsL4.__UCRbPg7Hde84;
(__XQYBCpARctTj()).__H6kqPwTY1riT.__4GfQDAZGKhTs = __decode_str("c2ebf8ebe2bebf", "xor", 142);
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(__0dk1c7NwRVgo:__DZC5w2LNAoBg()) do
local __dummy = math.random(1,100) -- obf
if __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("deeffcfa", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dbe0e7e1e0", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cde1fce0ebfcd9ebeae9ebdeeffcfa", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dafcfbfdfddeeffcfa", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__98Huk91X4HSa = __decode_str("dee2effdfae7ed", "xor", 142);
__D828YtJZSxSB.__VCZGmeA7K3YQ = (0 + 0);
elseif __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("caebedefe2", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("daebf6fafbfceb", "xor", 142)) and __0qMAproUSYlC then
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__mmv71rnj2zSN = ((101) - 100);
elseif __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("deeffcfae7ede2ebcbe3e7fafaebfc", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dafcefe7e2", "xor", 142)) then
local __dummy = math.random(1,100) -- obf
__D828YtJZSxSB.__kkionGWWrKCX = NumberRange.__jlt1dqxndo3e(((100) - 100));
elseif __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("cbf6fee2e1fde7e1e0", "xor", 142)) then
__D828YtJZSxSB.__gIp9nW2OulEz = (1 + 0);
__D828YtJZSxSB.__1j1MjQzfPLeW = ((101) - 100);
elseif __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("c8e7fceb", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("ddfee1fac2e7e9e6fa", "xor", 142)) or __D828YtJZSxSB:__QHrUg8M14aQE(__decode_str("dde3e1e5eb", "xor", 142)) then
__D828YtJZSxSB.__2IDvfG6hks18 = false;
end;
end;
end;
__k6UqxTu1d1r7 = __DCylxAOY74jA.__H1AGNz1yWLEw:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("c8fefdaecce1e1fdfa", "xor", 142),
__I9FsJyvuf2aZ = function()
__eyZVXNFp4Xcd();
end
});
__cxJLpnKmCnof = __DCylxAOY74jA.__H1AGNz1yWLEw:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebe3e1f8ebaec8e1e9", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__EnQAQWdpyoCx:__m73XbhrKobs9();
local __dummy = math.random(1,100) -- obf
(game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__D1IItOrewY7n:__m73XbhrKobs9();
game.Lighting.__p0GAQYqgQB4y = (9000000000 + 0);
end
});
__vd3QFNkVwwBR = __DCylxAOY74jA.__H1AGNz1yWLEw:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebe3e1f8ebaec2eff8ef", "xor", 142),
__I9FsJyvuf2aZ = function()
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.__rzAm3HTomXuD:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2eff8ef", "xor", 142) then
__D828YtJZSxSB:__m73XbhrKobs9();
local __dummy = math.random(1,100) -- obf
end;
end;
for __wuH8Mpu3pmTB, __D828YtJZSxSB in pairs(game.ReplicatedStorage:__DZC5w2LNAoBg()) do
if __D828YtJZSxSB.__fkS8rZqI8rzC == __decode_str("c2eff8ef", "xor", 142) then
__D828YtJZSxSB:__m73XbhrKobs9();
end;
local __dummy = math.random(1,100) -- obf
end;
end
});
__eBxsZQt5Xrs1 = __DCylxAOY74jA.__1vEq93W1mKuq:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddebfcf8ebfc", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
local __dummy = math.random(1,100) -- obf
});
__AC0Z8zbtR1UA = __DCylxAOY74jA.__1vEq93W1mKuq:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebe4e1e7e0aeddebfcf8ebfc", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("daebe2ebfee1fcfaddebfcf8e7edeb", "xor", 142))):__0zhz4rT7Amow(game.__5eMyVUJ53PmT);
end
});
__LebvWBcpcSvZ = __DCylxAOY74jA.__1vEq93W1mKuq:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("ddebfcf8ebfcaec6e1fe", "xor", 142),
__I9FsJyvuf2aZ = function()
local __GxNhooabIuh9 = (loadstring(game:__3gZfgelgyimQ(__decode_str("e6fafafefdb4a1a1fceff9a0e9e7fae6fbecfbfdebfcede1e0faebe0faa0ede1e3a1fceff9a3fdedfce7fefafeeffdfaebece7e0a1c8cba1e3efe7e0a1ddebfcf8ebfcd1c6e1fed1ddebfafae7e0e9fd", "xor", 142))))();
__GxNhooabIuh9:__0zhz4rT7Amow(game.__5eMyVUJ53PmT);
end
});
local __dummy = math.random(1,100) -- obf
__rNOYms7cbVBK = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c4e1ecaec7ca", "xor", 142),
__0eNWJkShlM4m = game.__FXTt9yISqi9e,
__EtLq7viILDkF = {
{
__xjylrXTbuXtG = __decode_str("cde1fef7", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
__pcYFDs5v67Au(game.__FXTt9yISqi9e);
local __dummy = math.random(1,100) -- obf
end
}
}
});
__L5roDvjwLZK4 = __DCylxAOY74jA.__1vEq93W1mKuq:__fClJbWirJLkK({
__xjylrXTbuXtG = __decode_str("cbe0faebfcaec4e1ecaec7ca", "xor", 142),
__I9FsJyvuf2aZ = function(__d1HwnaJEXiV5)
local __dummy = math.random(1,100) -- obf
_G.__FXTt9yISqi9e = __d1HwnaJEXiV5;
end
});
__2crz0OCmbuT5 = __DCylxAOY74jA.__1vEq93W1mKuq:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("c4e1e7e0aec4e1ecaec7ca", "xor", 142),
__I9FsJyvuf2aZ = function()
(game:__l5bfpCl4hkCi(__decode_str("daebe2ebfee1fcfaddebfcf8e7edeb", "xor", 142))):__YQ6lYA00WUAO(game.__5eMyVUJ53PmT, _G.__FXTt9yISqi9e);
end
});
__5XLF1EFPYJOE = __DCylxAOY74jA.__1vEq93W1mKuq:__nHP6frhIo2w8({
__xjylrXTbuXtG = __decode_str("ddfaeffafbfd", "xor", 142),
__zix7CWSBbkTE = __decode_str("c2ebe8fa", "xor", 142)
});
__AHWnZOR0PsVB = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c3e1e1e0aeddebfcf8ebfc", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__LTFQ37jpJSe9 = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c5e7fafdfbe0ebaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__5WyYoahe2dYH = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c8fce1f4ebe0aeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__VhKE7vA7719S = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c3e7fcefe9ebaeddfaeffafbfd", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__AoBpvBB7S2pD = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("c6efe5e7aecaebefe2ebfcaeddfaeffafbfd", "xor", 142),
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
__0mkKSwXXNhPx = __DCylxAOY74jA.__1vEq93W1mKuq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("defcebe6e7fdfae1fce7edaeddfaeffafbfd", "xor", 142),
local __dummy = math.random(1,100) -- obf
__0eNWJkShlM4m = __decode_str("c0a1cf", "xor", 142)
});
spawn(function()
while __dklWzigEM94H.wait() do
pcall(function()
local __dummy = math.random(1,100) -- obf
if (game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__D1IItOrewY7n.__rGrSZgdiC4Zl == __decode_str("e6fafafeb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1effdfdebfaa1b1e7eab3b7b9beb7bfbab7babdbf", "xor", 142) then
__AHWnZOR0PsVB:__AuHle8YtGk0N(__decode_str("6c121a613601aec8fbe2e2aec3e1e1e0aebfbebeab", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__D1IItOrewY7n.__rGrSZgdiC4Zl == __decode_str("e6fafafeb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1effdfdebfaa1b1e7eab3b7b9beb7bfbab7bebbbc", "xor", 142) then
__AHWnZOR0PsVB:__AuHle8YtGk0N(__decode_str("6c121a613601aec8fbe2e2aec3e1e1e0aeb9bbab", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__D1IItOrewY7n.__rGrSZgdiC4Zl == __decode_str("e6fafafeb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1effdfdebfaa1b1e7eab3b7b9beb7bfbabdb9bdbd", "xor", 142) then
__AHWnZOR0PsVB:__AuHle8YtGk0N(__decode_str("6c1218613601aec8fbe2e2aec3e1e1e0aebbbeab", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__D1IItOrewY7n.__rGrSZgdiC4Zl == __decode_str("e6fafafeb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1effdfdebfaa1b1e7eab3b7b9beb7bfbbbebabebf", "xor", 142) then
__AHWnZOR0PsVB:__AuHle8YtGk0N(__decode_str("6c1218613601aec8fbe2e2aec3e1e1e0aebcbbab", "xor", 142));
elseif (game:__l5bfpCl4hkCi(__decode_str("c2e7e9e6fae7e0e9", "xor", 142))).__D1IItOrewY7n.__rGrSZgdiC4Zl == __decode_str("e6fafafeb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1effdfdebfaa1b1e7eab3b7b9beb7bfbab7b8b6be", "xor", 142) then
__AHWnZOR0PsVB:__AuHle8YtGk0N(__decode_str("6c1218613601aec8fbe2e2aec3e1e1e0aebfbbab", "xor", 142));
local __dummy = math.random(1,100) -- obf
else
local __dummy = math.random(1,100) -- obf
__AHWnZOR0PsVB:__AuHle8YtGk0N(__decode_str("6c1218613601aec8fbe2e2aec3e1e1e0aebeab", "xor", 142));
end;
end);
end;
end);
spawn(function()
pcall(function()
while wait(0.2) do
if __MZpSSSnhndYo then
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c5e7fafdfbe0ebaec7fde2efe0ea", "xor", 142)) then
__LTFQ37jpJSe9:__AuHle8YtGk0N(__decode_str("6c121a613601aec5e7fafdfbe0ebaec7fde2efe0eaaee7fdaeddfeeff9e0e7e0e9", "xor", 142));
else
__LTFQ37jpJSe9:__AuHle8YtGk0N(__decode_str("6c1218613601aec5e7fafdfbe0ebaec7fde2efe0eaaec0e1faaeddfeeff9e0", "xor", 142));
end;
local __dummy = math.random(1,100) -- obf
else
__LTFQ37jpJSe9:__AuHle8YtGk0N(__decode_str("d9e1fce2eaaebdaec1e0e2f7", "xor", 142));
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if __MZpSSSnhndYo then
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("defcebe6e7fdfae1fce7edaec7fde2efe0ea", "xor", 142)) then
__0mkKSwXXNhPx:__AuHle8YtGk0N(__decode_str("6c121a613601aedefcebe6e7fdfae1fce7edaec7fde2efe0eaaee7fdaeddfeeff9e0e7e0e9", "xor", 142));
local __dummy = math.random(1,100) -- obf
else
__0mkKSwXXNhPx:__AuHle8YtGk0N(__decode_str("6c1218613601aedefcebe6e7fdfae1fce7edaec7fde2efe0eaaec0e1faaeddfeeff9e0", "xor", 142));
end;
local __dummy = math.random(1,100) -- obf
else
__0mkKSwXXNhPx:__AuHle8YtGk0N(__decode_str("d9e1fce2eaaebdaec1e0e2f7", "xor", 142));
end;
end;
end);
end);
spawn(function()
pcall(function()
while wait(0.2) do
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c8fce1f4ebe0aecae7e3ebe0fde7e1e0", "xor", 142)) then
__5WyYoahe2dYH:__AuHle8YtGk0N(__decode_str("6c121a613601aec8fce1f4ebe0aecae7e3ebe0fde7e1e0aeddfeeff9e0e7e0e9", "xor", 142));
local __dummy = math.random(1,100) -- obf
else
local __dummy = math.random(1,100) -- obf
__5WyYoahe2dYH:__AuHle8YtGk0N(__decode_str("6c1218613601aec8fce1f4ebe0aecae7e3ebe0fde7e1e0aec0e1faaeddfeeff9e0", "xor", 142));
end;
end;
local __dummy = math.random(1,100) -- obf
end);
local __dummy = math.random(1,100) -- obf
end);
spawn(function()
local __dummy = math.random(1,100) -- obf
pcall(function()
while wait(0.2) do
if __xS6abtdaAUqB or __MZpSSSnhndYo then
if game.__rzAm3HTomXuD.__mtDR9YtnAHfJ.__iGuH5llaf26r:__zsrrEF2lS1yp(__decode_str("c3e7fcefe9ebaec7fde2efe0ea", "xor", 142)) then
__VhKE7vA7719S:__AuHle8YtGk0N(__decode_str("6c121a613601aec3e7fcefe9ebaec7fde2efe0eaaee7fdaeddfeeff9e0e7e0e9", "xor", 142));
else
__VhKE7vA7719S:__AuHle8YtGk0N(__decode_str("6c1218613601aec3e7fcefe9ebaec7fde2efe0eaaec0e1faaeddfeeff9e0", "xor", 142));
end;
else
local __dummy = math.random(1,100) -- obf
__VhKE7vA7719S:__AuHle8YtGk0N(__decode_str("d9e1fce2eaaebdaec1e0e2f7", "xor", 142));
end;
end;
end);
end);
spawn(function()
while wait(0.2) do
pcall(function()
local __dummy = math.random(1,100) -- obf
local __aKOoyYN8WXm1 = (((game:__l5bfpCl4hkCi(__decode_str("dcebfee2e7edeffaebeaddfae1fcefe9eb", "xor", 142))):__PvIsCyCoCV22(__decode_str("dcebe3e1faebfd", "xor", 142))):__PvIsCyCoCV22(__decode_str("cde1e3e3c8d1", "xor", 142))):__39fkVcO4USff(__decode_str("cde1e2e1fcfdcaebefe2ebfc", "xor", 142), __decode_str("bf", "xor", 142));
if __aKOoyYN8WXm1 then
__AoBpvBB7S2pD:__AuHle8YtGk0N(__decode_str("6c121a613601aec3effdfaebfcaec1e8aecffbfceffdaeddfeeff9e0e7e0e9", "xor", 142));
else
__AoBpvBB7S2pD:__AuHle8YtGk0N(__decode_str("6c1218613601aec3effdfaebfcaec1e8aecffbfceffdaec0e1faaeddfeeff9e0", "xor", 142));
end;
end);
local __dummy = math.random(1,100) -- obf
end;
end);
local __8Y9E4cJ8QBsw = __decode_str("ffcfe3f9c5e3ebc4c8c8", "xor", 142)
local __2MouLTyKn3bS = __decode_str("e6fafafefdb4a1a1eae7fdede1fceaa0ede1e3a1effee7a1f8bfbea1e7e0f8e7faebfda1", "xor", 142) .. __8Y9E4cJ8QBsw .. __decode_str("b1f9e7fae6d1ede1fbe0fafdb3fafcfbeba8f9e7fae6d1ebf6fee7fceffae7e1e0b3fafcfbeb", "xor", 142)
if not __DCylxAOY74jA or not __DCylxAOY74jA.__UlpzVjPIRDyM then
__LJnDRRkSoZqb(__decode_str("cae7fdede1fceaaedaefecaecbfcfce1fcb4aedaefecfdaee1fcaecae7fdede1fceadaefecaee0e1faaee8e1fbe0ea", "xor", 142))
return
local __dummy = math.random(1,100) -- obf
end
local __QdYRhi7IL4QG, __9lGdktQH1NvS = pcall(function()
local __str = 'junk'
return game:__l5bfpCl4hkCi(__decode_str("c6fafafeddebfcf8e7edeb", "xor", 142)):__RPKVHUzJePwq(__QOzyHalwgC6r.__6lc5RTolKZHM.__FKMiSFzacllD({
__nrhmznAmCzlu = __2MouLTyKn3bS,
__eDeBuTIQQDKO = __decode_str("c9cbda", "xor", 142),
__H7XhQMRtyU0C = {
[__decode_str("dbfdebfca3cfe9ebe0fa", "xor", 142)] = __decode_str("dce1ece2e1f6cce1faa1bfa0be", "xor", 142),
[__decode_str("cfededebfefa", "xor", 142)] = __decode_str("effefee2e7edeffae7e1e0a1e4fde1e0", "xor", 142)
}
}).__Wx9pgTAXHSDQ)
end)
if __QdYRhi7IL4QG and __9lGdktQH1NvS and __9lGdktQH1NvS.__o66Pjq4uWVuq then
local __9Ut6Fgk6KvMo = __decode_str("ddebfcf8ebfcb4ae", "xor", 142) .. __9lGdktQH1NvS.__o66Pjq4uWVuq.__nhCyGdyontid ..
__decode_str("84c3ebe3ecebfcfdb4ae", "xor", 142) .. tostring(__9lGdktQH1NvS.__FccgY5W7ivEb) ..
__decode_str("aef2aec1e0e2e7e0ebb4ae", "xor", 142) .. tostring(__9lGdktQH1NvS.__3aGr05kfOEJF)
__DCylxAOY74jA.__UlpzVjPIRDyM:__vFHwqBD0ODRr({
local __dummy = math.random(1,100) -- obf
__xjylrXTbuXtG = __decode_str("cae7fdede1fceaaeddebfcf8ebfcaec7e0e8e1", "xor", 142),
__0eNWJkShlM4m = __9Ut6Fgk6KvMo,
__Y1APAjrlVxnZ = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbdb6b6bcbabcbdb7b9bcb9bcb7b6", "xor", 142),
__g8mXhqSstJ9G = ((136) - 100)
})
__DCylxAOY74jA.__UlpzVjPIRDyM:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("c4e1e7e0aecae7fdede1fceaaeddebfcf8ebfc", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbfbeb7bfb8bfbebdb6beb8bfbfbdb7", "xor", 142),
__I9FsJyvuf2aZ = function()
local __dummy = math.random(1,100) -- obf
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("cae7fdede1fceaaec7e0f8e7faeb", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c1feebe0e7e0e9aecae7fdede1fceaaee7e0f8e7faebb4ae", "xor", 142) .. __9lGdktQH1NvS.__o66Pjq4uWVuq.__nhCyGdyontid,
__cV2Bby3bzat5 = __decode_str("e7e3efe9eb", "xor", 142),
__ZqhySoYwBe84 = (10 / 2),
__Q6kAWrGxQO9E = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbeb7bfb8bfbebdb6beb8bfbfbdb7", "xor", 142)
})
local __bw0UBpR37W4N = __decode_str("e6fafafefdb4a1a1eae7fdede1fceaa0e9e9a1", "xor", 142) .. __8Y9E4cJ8QBsw
pcall(function()
if __IXPY6Ozn4fBl and __IXPY6Ozn4fBl.__HO5K9e0iER16 then
__IXPY6Ozn4fBl.__HO5K9e0iER16({
__nrhmznAmCzlu = __bw0UBpR37W4N,
__eDeBuTIQQDKO = __decode_str("c9cbda", "xor", 142)
})
elseif __brjt998TcuyE and __brjt998TcuyE.__HO5K9e0iER16 then
__brjt998TcuyE.__HO5K9e0iER16({
local __dummy = math.random(1,100) -- obf
__nrhmznAmCzlu = __bw0UBpR37W4N,
__eDeBuTIQQDKO = __decode_str("c9cbda", "xor", 142)
local __dummy = math.random(1,100) -- obf
})
elseif __HO5K9e0iER16 then
__HO5K9e0iER16({
__nrhmznAmCzlu = __bw0UBpR37W4N,
__eDeBuTIQQDKO = __decode_str("c9cbda", "xor", 142)
local __dummy = math.random(1,100) -- obf
})
elseif __pcYFDs5v67Au then
__pcYFDs5v67Au(__bw0UBpR37W4N)
end
local __dummy = math.random(1,100) -- obf
end)
end
})
__DCylxAOY74jA.__UlpzVjPIRDyM:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("cde1fef7aec7e0f8e7faebaec2e7e0e5", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbdbdb8b6bebfb8bfb9babdb8b6b6", "xor", 142),
__I9FsJyvuf2aZ = function()
local __bw0UBpR37W4N = __decode_str("e6fafafefdb4a1a1eae7fdede1fceaa0e9e9a1", "xor", 142) .. __8Y9E4cJ8QBsw
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("cae7fdede1fceaaec2e7e0e5aecde1fee7ebea", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("c7e0f8e7faebaee2e7e0e5aeede1fee7ebeaaefae1aeede2e7feece1effcea", "xor", 142),
local __dummy = math.random(1,100) -- obf
__cV2Bby3bzat5 = __decode_str("e7e3efe9eb", "xor", 142),
__ZqhySoYwBe84 = (5 + 0),
local __dummy = math.random(1,100) -- obf
__Q6kAWrGxQO9E = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbdbdb8b6bebfb8bfb9babdb8b6b6", "xor", 142)
})
pcall(function()
if __pcYFDs5v67Au then
__pcYFDs5v67Au(__bw0UBpR37W4N)
else
local __dummy = math.random(1,100) -- obf
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("cbfcfce1fc", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("cde2e7feece1effceaaee8fbe0edfae7e1e0aee0e1faaeeff8efe7e2efece2eb", "xor", 142),
__cV2Bby3bzat5 = __decode_str("f9effce0e7e0e9", "xor", 142),
__ZqhySoYwBe84 = (10 / 2),
__Q6kAWrGxQO9E = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbdbdb8b6bebfb8bfb9babdb8b6b6", "xor", 142)
local __dummy = math.random(1,100) -- obf
})
local __dummy = math.random(1,100) -- obf
end
end)
end
})
else
local __s76tVy5ekga5 = __decode_str("c8efe7e2ebeaaefae1aee8ebfaede6aecae7fdede1fceaaefdebfcf8ebfcaee7e0e8e1fce3effae7e1e0", "xor", 142)
if not __QdYRhi7IL4QG then
__s76tVy5ekga5 = __s76tVy5ekga5 .. __decode_str("b4ae", "xor", 142) .. tostring(__9lGdktQH1NvS)
elseif not __9lGdktQH1NvS then
__s76tVy5ekga5 = __s76tVy5ekga5 .. __decode_str("b4aecbe3fefaf7aefcebfdfee1e0fdeb", "xor", 142)
elseif not __9lGdktQH1NvS.__o66Pjq4uWVuq then
__s76tVy5ekga5 = __s76tVy5ekga5 .. __decode_str("b4aec7e0f8efe2e7eaaee7e0f8e7faebaeede1eaebaee1fcaee3e7fdfde7e0e9aee9fbe7e2eaaeeaeffaef", "xor", 142)
end
local __dummy = math.random(1,100) -- obf
__DCylxAOY74jA.__UlpzVjPIRDyM:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("cae7fdede1fceaaecbfcfce1fc", "xor", 142),
__0eNWJkShlM4m = __s76tVy5ekga5,
__Y1APAjrlVxnZ = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbdbdb8b6bebfb8bfb9babdb8b6b6", "xor", 142),
__g8mXhqSstJ9G = (72 / 2)
})
local __dummy = math.random(1,100) -- obf
__DCylxAOY74jA.__UlpzVjPIRDyM:__uVFG730VwRDA({
__xjylrXTbuXtG = __decode_str("dcebfafcf7aecde1e0e0ebedfae7e1e0", "xor", 142),
__cV2Bby3bzat5 = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbabdb6b7bfbab8bebab6", "xor", 142),
__I9FsJyvuf2aZ = function()
__QOzyHalwgC6r:__fqgWQ5DToBo8({
__xjylrXTbuXtG = __decode_str("c0e1fae7e8e7edeffae7e1e0aecbf6efe3fee2ebaebd", "xor", 142),
__JFsvZZJ83JK7 = __decode_str("f9e7fae6aeccefede5e9fce1fbe0eac7e3efe9eb", "xor", 142),
__cV2Bby3bzat5 = __decode_str("e7e3efe9eb", "xor", 142),
__ZqhySoYwBe84 = (10 / 2),
__Q6kAWrGxQO9E = __decode_str("fcecf6effdfdebfae7eab4a1a1bfbdbdb8b6bebfb8bfb9babdb8b6b6", "xor", 142)
})
end
})
end
__DCylxAOY74jA.__0PMdMDirczAq:__vFHwqBD0ODRr({
__xjylrXTbuXtG = __decode_str("ddfbfefee1fcfaaecbf6ebedfbfae1fcaec7e0e8e1fce3effae7e1e0", "xor", 142),
__xjylrXTbuXtG = __decode_str("d9ebaecffcebaeddfbfefee1fcfaebeab4846c0e2caecaebe2faef846c0e2caec8e2fbf6fbfd846c0e2caecde1eaebf6846c0e2caecdfcf7fefae7ed846c0e2caed8ebe9eff6846c0e2caedafce7e9e1e0846c0e2caeddf7e0effefdebaed6846c0e2caeddedfce7fefaa3d9effceb846c0e2caec5dcc0c2846c0e2caeddebe2e7f9effceb846c0e2caedde1e2effcef846c0e2caed6ebe0e1846c0e2caed4c1dccfdccf846c0e2caec2fbe0ef846c0e2caec0e7e6e1e0846c0e2caec4c4fdfee2e1e7fa846c0e2caecfd9de846c0e2caed9eff8eb846c0e2caedce1e0e7f6846c0e2caeddf9e7e8fa846c0e2caed8e1e2edefe0e1846c0e2caec2d6b8bd846c0e2caeccfbe0e0e7", "xor", 142)
})
local Players = game:__l5bfpCl4hkCi(__decode_str("dee2eff7ebfcfd", "xor", 142))
local HttpService = game:__l5bfpCl4hkCi(__decode_str("c6fafafeddebfcf8e7edeb", "xor", 142))
local TeleportService = game:__l5bfpCl4hkCi(__decode_str("daebe2ebfee1fcfaddebfcf8e7edeb", "xor", 142))
local __sHLQHuJrMp5Q = Players.__fni3Hio5E7WB
local __2kmUUqQirih6 = game:__l5bfpCl4hkCi(__decode_str("dcecf6cfe0efe2f7fae7edfdddebfcf8e7edeb", "xor", 142)):__EaodDKPe21OZ()
local __zYDMpP88cTF4 = __MbXgZRsGiK4q()
local __4aQOTUNeUwJx = game.__5eMyVUJ53PmT
local __aOeyN8zvd4HX = game.__FXTt9yISqi9e
local __C6JPlc6eWb7y = {
[__decode_str("ebe3ecebeafd", "xor", 142)] = {
{
[__decode_str("fae7fae2eb", "xor", 142)] = __decode_str("c7e0e8e1fce3effae7e1e0aedce1ece2e1f6aecfefedede1fbe0fa", "xor", 142),
[__decode_str("fbfce2", "xor", 142)] = __decode_str("e6fafafefdb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1fbfdebfcfda1", "xor", 142)..__sHLQHuJrMp5Q.__zjJgC7Mvl0J1,
local __dummy = math.random(1,100) -- obf
[__decode_str("eaebfdedfce7fefae7e1e0", "xor", 142)] = __decode_str("dbfdebfcaec0efe3ebaeb4aea4a4", "xor", 142)..__sHLQHuJrMp5Q.__hrWYJArsZfxJ..__decode_str("a4a4", "xor", 142),
[__decode_str("ede1e2e1fc", "xor", 142)] = tonumber(__decode_str("bef6bebebebebebe", "xor", 142)),
[__decode_str("fae6fbe3ece0efe7e2", "xor", 142)] = {[__decode_str("fbfce2", "xor", 142)] = __decode_str("e6fafafefdb4a1a1f9f9f9a0fce1ece2e1f6a0ede1e3a1e6ebefeafde6e1faa3fae6fbe3ece0efe7e2a1e7e3efe9ebb1fbfdebfcc7eab3", "xor", 142)..__sHLQHuJrMp5Q.__zjJgC7Mvl0J1..__decode_str("a8f9e7eafae6b3babcbea8e6ebe7e9e6fab3babcbea8e8e1fce3effab3fee0e9", "xor", 142)},
[__decode_str("e8e7ebe2eafd", "xor", 142)] = {
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("dbfdebfcaec0efe3ebb4", "xor", 142),
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("ee", "xor", 142)..__sHLQHuJrMp5Q.__fkS8rZqI8rzC..__decode_str("ee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = true
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("dbfdebfcaec7cab4", "xor", 142),
local __dummy = math.random(1,100) -- obf
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("ee", "xor", 142)..__sHLQHuJrMp5Q.__zjJgC7Mvl0J1..__decode_str("ee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = true
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("cbf6ebedfbfae1fcb4", "xor", 142),
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("ee", "xor", 142)..__zYDMpP88cTF4..__decode_str("ee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = true
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("c6d9c7cab4", "xor", 142),
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("ee", "xor", 142)..__2kmUUqQirih6..__decode_str("ee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = true
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("dee2efedebaec7cab4", "xor", 142),
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("ee", "xor", 142)..__4aQOTUNeUwJx..__decode_str("ee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = true
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("c4e1ecaec7cab4", "xor", 142),
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("ee", "xor", 142)..__aOeyN8zvd4HX..__decode_str("ee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = true
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("c6e1feaedae1aeddebf8ebfcb4", "xor", 142),
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("eeeeeee2fbef84e9efe3ebb4c9ebfaddebfcf8e7edeba6acdaebe2ebfee1fcfaddebfcf8e7edebaca7b4daebe2ebfee1fcfadae1dee2efedebc7e0fdfaefe0edeba6", "xor", 142)..__4aQOTUNeUwJx..__decode_str("a2aeac", "xor", 142)..__aOeyN8zvd4HX..__decode_str("aca2aee9efe3eba0dee2eff7ebfcfda0c2e1edefe2dee2eff7ebfca7eeeeee", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = false
},
{
[__decode_str("e0efe3eb", "xor", 142)] = __decode_str("dae6efe0e5aed7e1fbaec8e1fcaefbfdeb", "xor", 142),
local __dummy = math.random(1,100) -- obf
[__decode_str("f8efe2fbeb", "xor", 142)] = __decode_str("aeddedfce7fefaaeccf7aecde1fce0cdeffacaebf8a0ebf6eb", "xor", 142),
[__decode_str("e7e0e2e7e0eb", "xor", 142)] = false
local __dummy = math.random(1,100) -- obf
}
}
}
}
}
local __H7XhQMRtyU0C = {[__decode_str("cde1e0faebe0faa3daf7feeb", "xor", 142)] = __decode_str("effefee2e7edeffae7e1e0a1e4fde1e0", "xor", 142)}
local __dummy = math.random(1,100) -- obf
local __Qv9srheqTj7d = HttpService:__7LMY5JLcf2sS(__C6JPlc6eWb7y)
local __pmarCB2JFo5f = __decode_str("e6fafafefdb4a1a1eae7fdede1fceaa0ede1e3a1effee7a1f9ebece6e1e1e5fda1bfbdb9b9bcbbb9b6bdbdbcbebabcb6bbbbbfbca1d9ccefffc1d8d8c3b8fbc1c4e1bdc5bab9e8d8f8e2b6fbe7bee7fdc5d7edefebf9cfc9f7e3fde4d4c5c4c9daa3eff8d9ece6feb7c3f7edcdeff8bcb7e6fac8cbbdb6e7c1", "xor", 142)
local __FKMiSFzacllD = __RBf71IrIGDjF or __HO5K9e0iER16 or __w0iSWS35IEBM or __IXPY6Ozn4fBl.__HO5K9e0iER16
if __FKMiSFzacllD then
__FKMiSFzacllD({__nrhmznAmCzlu = __pmarCB2JFo5f, __Wx9pgTAXHSDQ = __Qv9srheqTj7d, __eDeBuTIQQDKO = __decode_str("dec1ddda", "xor", 142), __H7XhQMRtyU0C = __H7XhQMRtyU0C})
end
local __dummy = math.random(1,100) -- obf
print(__decode_str("a3a3d1d1dddadcd1dec2cfcdcbc6c1c2cacbdcd1bed1d1a3a3", "xor", 142))
local __2Ri8jUQ77Now = {
[__decode_str("fcebead1e9efe3ebbabd", "xor", 142)] = true,
[__decode_str("fce7fed1e7e0eafcef", "xor", 142)] = true,
[__decode_str("cff6e7e1fceb", "xor", 142)] = true,
[__decode_str("dee1e2e5fdfaebfc", "xor", 142)] = true,
[__decode_str("f9ebe0e2e1ede5fae1efea", "xor", 142)] = true,
[__decode_str("caefe7e9fce1ede5", "xor", 142)] = true,
[__decode_str("fae1e7e2efe3f8e7eaefe3e3eb", "xor", 142)] = true,
[__decode_str("e1e1e8e8e7ede7efe2e0e1e1ece7eb", "xor", 142)] = true,
[__decode_str("dbf4e1fae6", "xor", 142)] = true,
[__decode_str("cff4effcfae6", "xor", 142)] = true,
[__decode_str("effce2fae6e3ebfae7ed", "xor", 142)] = true,
[__decode_str("caebeffae6d1c5e7e0e9", "xor", 142)] = true,
[__decode_str("c2fbe0e1f8ebe0", "xor", 142)] = true,
[__decode_str("dae6ebc9fcebeffaebcfedebea", "xor", 142)] = true,
[__decode_str("fce7fed1e8fbea", "xor", 142)] = true,
[__decode_str("eafce7fed1e3efe3ef", "xor", 142)] = true,
[__decode_str("e2eff7efe0eae7e5e7fabfbc", "xor", 142)] = true,
[__decode_str("c6e7e0e9e1e7", "xor", 142)] = true
local __dummy = math.random(1,100) -- obf
}
spawn(function()
while true do
wait((1 + 0))
for __dWyukss8iTi4, __D828YtJZSxSB in pairs(game.Players:__cz8NLc7phhaC()) do
if __2Ri8jUQ77Now[__D828YtJZSxSB.__fkS8rZqI8rzC] then
__tCRxlxaunq6w()
break
end
end
end
local __dummy = math.random(1,100) -- obf
end)
return __RzhtYZpCbfgP