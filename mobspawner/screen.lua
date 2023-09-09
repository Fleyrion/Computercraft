os.loadAPI("variables.lua")

for i,j in ipairs(variables.mobnames) do
    print(j)
end

x,y = term.getSize()

function draw()
    for dx=1,x do
        for dy=1,y do
            term.setCursorPos(dx,dy)
            term.write("#")
        end
    end
    window.create(term.current(), 3, 3, x-4, y-4)
end