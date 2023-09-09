local mobcolor = {
--Spawner Cable Configuration
spider=colors.brown,
zombie=colors.pink,
creeper=colors.blue,
slime=colors.green,
blaze=colors.white,
wither_skeleton=colors.red,
--End of Configuration
off=0
}
local output=0
local active={}
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
    input = read()
    toggle(mobcolor[input])
end