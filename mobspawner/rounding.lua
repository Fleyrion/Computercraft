local x = 0
local y = ""
local z = 0
function round(z)
    x = z * 10
    y = tostring(x)
    y = string.reverse(y)
    x = tonumber(y)/10
    x = math.floor(x)
    if x >= 5 then
        math.ceil(z)
    else
        math.floor(z)
    end
    return z
end