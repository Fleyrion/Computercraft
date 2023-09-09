--Spawner Cable Configuration
local spider=colors.brown
local zombie=colors.pink
local creeper=colors.blue
local slime=colors.green
local blaze=colors.white
local wither_skeleton=colors.red
--End of Configuration

local output=0
local active[]=""
local mob=""

function toggle(mob)
    if active[mob] then
        output = output - mob
        active[mob]=false
    else
        output = output + mob
        active[mob]=true
    end
    rs.setBundledOutput("back",output)
end

while true do
    mob = read()
end