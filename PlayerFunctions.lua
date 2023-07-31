function mouseOverBlock()
    local n, v, x, y, z = player.over_mouse()
    if n == 2 then
        return x, y, z
    end
    return nil
end

function findHotbarSlot(item)
	for i = 1, 9 do
        local name = player.inventory.item_information(35 + i)

        if name ~= nil and string.match(name, item) then
            return i
        end
    end

    return -1
end
