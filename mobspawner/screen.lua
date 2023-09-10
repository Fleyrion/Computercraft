os.loadAPI("variables.lua")
os.loadAPI("controller.lua")
local mobs=0
local px=0
local index = {}
x,y = term.getSize()
for mi,mj in pairs(variables.mobnames) do
    mobs=mobs+1
    table.insert(index, variables.mobcolor[mi])
end
local indextemp = 0
if #(index) == 6 then
    indextemp = 0
elseif #(index) == 7 then
    indextemp = 1
elseif #(index) == 8 then
    indextemp = 3
elseif #(index) == 9 then
    indextemp = 4
elseif #(index) == 10 then
    indextemp = 6
elseif #(index) == 11 then
    indextemp = 7
elseif #(index) == 12 then
    indextemp = 9
end

function draw()
    for dx=1,x do
        for dy=1,y do
            term.setCursorPos(dx,dy)
            term.write("+")
        end
    end
    win1 = window.create(term.current(), 3, 3, x-4, y-4)
    x=0
    y=0
    win1x,win1y = win1.getSize()
    win1.setCursorPos(win1x/2,1)
    center=math.floor(win1y/2-mobs/2)+1
    for pi,pj in pairs(variables.mobnames) do
        win1.setCursorPos(1,center+px)
        win1.setBackgroundColor(colors.red)
        win1.write("        ")
        win1.setBackgroundColor(colors.black)
        win1.setCursorPos(9,center+px)
        win1.setTextColor(colors.black)
        win1.setBackgroundColor(variables.mobcolor[pi])
        win1.write(pj)
        px=px+1
    end
    px=0

    while true do
        local event, button, x, y = os.pullEvent("mouse_click")
        local outindex = 0
        local outcenter = center -2
        if x >= 1 and x <= 9 then
            outindex = y - #(index)
        end
        controller.toggle(index[outindex])
        win1.setCursorPos(1,outcenter+outindex+1)
        if controller.active[index[outindex]] == nil then
        elseif controller.active[index[outindex]] then
            win1.setBackgroundColor(colors.green)
            win1.write("        ")
        else
            win1.setBackgroundColor(colors.red)
            win1.write("        ")
        end
    end
end
