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
    return {r = math.floor(hex_color/(2^16) % 0x100),
            g = math.floor(hex_color/(2^8) % 0x100),
            b = math.floor(hex_color % 0x100)
    }
end

function M.hex(hex_color)
    local c = hex_to_rgb(hex_color)
    return string.char(c.g, c.r, c.b)
end

return M
