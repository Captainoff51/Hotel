ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
RegisterServerEvent('hotel:combination1') -- Item Combination 1 
AddEventHandler('hotel:combination1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('casserole') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('spatule') -- Item 2 
	
	if xItem1.count > 0 then  -- Item 1  count 
		if xItem2.count > 0 then -- Item 2 count
			TriggerClientEvent('hotel:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('steak', 1)	-- add the combination Items
		else 
			TriggerClientEvent('esx:showNotification', source, 'Tu n\'as pas x1 Casserole.')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'Tu n\'as pas x1 Spatule.')
	end
end)

 
RegisterServerEvent('hotel:combination2') -- Item Combination 2
AddEventHandler('hotel:combination2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xItem1 = xPlayer.getInventoryItem('casserole') -- Item 1 
	local xItem2 = xPlayer.getInventoryItem('spatule') -- Item 2 
	
	if xItem1.count > 0 then  -- Item 1  count 
		if xItem2.count > 0 then -- Item 2 count
			TriggerClientEvent('hotel:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('petitdéjeuner', 1)	-- add the combination Items
		else 
			TriggerClientEvent('esx:showNotification', source, 'Tu n\'as pas x1 Casserole.')
		end
	else 
		TriggerClientEvent('esx:showNotification', source, 'Tu n\'as pas x1 Spatule.')
	end
end)

RegisterServerEvent('hotel:combination3') -- Item Combination 2
AddEventHandler('hotel:combination3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle01', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination4') -- Item Combination 2
AddEventHandler('hotel:combination4', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle02', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination5') -- Item Combination 2
AddEventHandler('hotel:combination5', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle03', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination6') -- Item Combination 2
AddEventHandler('hotel:combination6', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle04', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination7') -- Item Combination 2
AddEventHandler('hotel:combination7', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle05', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination8') -- Item Combination 2
AddEventHandler('hotel:combination8', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle06', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination9') -- Item Combination 2
AddEventHandler('hotel:combination9', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle07', 1)	-- add the combination Items
end)

RegisterServerEvent('hotel:combination10') -- Item Combination 2
AddEventHandler('hotel:combination10', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle08', 1)	-- add the combination Items
end)
RegisterServerEvent('hotel:combination11') -- Item Combination 2
AddEventHandler('hotel:combination11', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle09', 1)	-- add the combination Items
end)
RegisterServerEvent('hotel:combination12') -- Item Combination 2
AddEventHandler('hotel:combination12', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle10', 1)	-- add the combination Items
end)
RegisterServerEvent('hotel:combination13') -- Item Combination 2
AddEventHandler('hotel:combination13', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle11', 1)	-- add the combination Items
end)
RegisterServerEvent('hotel:combination14') -- Item Combination 2
AddEventHandler('hotel:combination14', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle12', 1)	-- add the combination Items
end)
RegisterServerEvent('hotel:combination15') -- Item Combination 2
AddEventHandler('hotel:combination15', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	
			TriggerClientEvent('hotel2:animation' , source) -- Play animation 
			Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
			xPlayer.addInventoryItem('cle13', 1)	-- add the combination Items
end)