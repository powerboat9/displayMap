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

function display(scale) --Scale: 1:2000000, 1
