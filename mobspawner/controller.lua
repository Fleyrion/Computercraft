os.loadAPI("variables.lua")
local output=0
active={}
local mob=""
variables.mobcolor["off"]=0
function toggle(mob)
    if mob==nil then
        return false
    elseif mob==0 then
        output = 0
        active = {}
    elseif active[mob] then
        output = output - mob
        active[mob]=false
    else
        output = output + mob
        active[mob]=true
    end
    rs.setBundledOutput(variables.bundledcable,output)
end