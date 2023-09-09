os.loadAPI("variables.lua")
os.loadAPI("screen.lua")
screen.draw()
local output=0
local active={}
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
    rs.setBundledOutput("back",output)
end

while true do
    --input = read()
    sleep(60)
    toggle(variables.mobcolor[input])
end