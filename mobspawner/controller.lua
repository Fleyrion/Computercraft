os.loadAPI("variables.lua")
os.loadAPI("screen.lua")
local output=0
local active={}
local mob=""
variables.mobcolor["off"]=0
function toggle(mob)
    if mob=="off" then
        output = 0
    elseif active[mob] then
        output = output - mob
        active[mob]=false
    else
        output = output + mob
        active[mob]=true
    end
    rs.setBundledOutput("back",output)
end

while true do
    input = read()
    toggle(variables.mobcolor[input])
end