local weaponsOnly = false -- Weapons only that drop?


local Ox = require '@ox_core.lib.init' --[[@as OxServer]]

local function onPlayerDeath()
    local rawInventory = exports.ox_inventory:Inventory(source).items
    local inventory = {}
    if weaponsOnly then
        for _,v in pairs(rawInventory) do
            if v.name:sub(0, 7) == 'WEAPON_' then
                inventory[#inventory + 1] = {
                    v.name,
                    v.count,
                    v.metadata
                }
                exports.ox_inventory:RemoveItem(source, v.name, v.count, v.metadata)
            end
        end
    else
        for _,v in pairs(rawInventory) do
            inventory[#inventory + 1] = {
                v.name,
                v.count,
                v.metadata
            }
        end
    end
    
    local xPlayer = Ox.GetPlayer(source) -- ESX.GetPlayerFromId(source)
    if not xPlayer then return end
    local deathCoords = xPlayer.getCoords()
    if #inventory > 0 then
        exports.ox_inventory:CustomDrop('Death Drop', inventory, deathCoords)
    end
    if not weaponsOnly then
        exports.ox_inventory:ClearInventory(source, false)
    end
end

RegisterNetEvent('ox:onPlayerDeath', onPlayerDeath)