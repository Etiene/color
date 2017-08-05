local M = {
    colors = {
        fucsia = 0xFF00FF,
        blue = 0x0000FF,
        red = 0xFF0000,
        green = 0x00FF00,
        white = 0xFFFFFF,
        off = 0
    }
}

local function hex_to_rgb(hex_color)
        return {r = hex_color/(2^16) % 0x100,
                g = hex_color/(2^8) % 0x100,
                b = hex_color % 0x100
                }
end

-- The color can be specified either by name, or by its hex value
function M.hex(color)
    if type(color) == "string" then
        color = M.colors[color]
        if color == nil then
            error("Color doesn't exist.  Feel free to add it and send a PR")
        end
    end
    local c = hex_to_rgb(color)
    return string.char(c.g, c.r, c.b)
end

return M
