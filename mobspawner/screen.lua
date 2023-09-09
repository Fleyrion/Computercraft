os.loadAPI("variables.lua")
local mobs=0
local px=0
x,y = term.getSize()
for mi,mj in pairs(variables.mobnames) do
    mobs=mobs+1
end

function draw()
    for dx=1,x do
        for dy=1,y do
            term.setCursorPos(dx,dy)
            term.write("#")
        end
    end
    win1 = window.create(term.current(), 3, 3, x-4, y-4)
    win1x,win1y = win1.getSize()
    win1.setCursorPos(win1x/2,1)
    center=win1y/2-mobs/2
    for pi,pj in pairs(variables.mobnames) do
        win1.setCursorPos(8,center+px)
        if variables.mobcolor[pi]==colors.white then
            win1.setTextColor(colors.black)
            win1.setBackgroudColor(colors.white)
            win1.write(pj)
            win1.setTextColor(colors.white)
        else
            win1.setBackgroudColor(variables.mobcolor[pi])
            win1.write(pj)
        end
        px=px+1
    end
end