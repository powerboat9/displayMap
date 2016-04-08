local points = {}

function numbBetween(n, min, max)
    return (type(n) == "number") and (n <= max) and (n >= min)
end

function createPoint(x, y, z, color)
    if numbBetween(x, -32000000, 32000000) and numbBetween(z, -32000000, 32000000) and numbBetween(y, 0, 255) and numbBetween(color, 0, (2 ^ 16) - 1) then
        points[#points + 1] = {
            pos = {
                x = x, y = y, z = z
            },
            color = color
        }
        return true
    end
    return false
end

function display(scale) --Scale: 1:x
    --Actual Size is 33,554,432
    local scrollX, scrollY = 1, 1
    local display = {}
    for i = 1, 16 do
        display[j] = {}
        for j = 1, 16 do
            local realPos = 0
            if i <= 8 then
                realPos = i - 9
            else
                realPos = i - 8
            end
            local actualPos = realPos * (scale - 1)
            if ((actualPos + 1) > 32000000) or ((actualPos - 1) < 32) then
                display[i][j] == colors.grey
            else
                display[i][j] = colors.black
            end
        end
    end
    for _, v in ipairs(points) do
        
        
    
