local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PlayerData              = {}
local isBlip              = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
	
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
	PlayerData.job = job
	Citizen.Wait(5000)
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
	if PlayerData.job ~= nil and PlayerData.job.name == 'hotel' and not isBlip then
	isBlip = true
	--blip = AddBlipForCoord(-163.76,-1344.97,30.0) -- Blip on Map Position
	--SetBlipSprite  (blip, 103) -- Blip Model , you can change it from : https://wiki.gtanet.work/index.php?title=Blips
	--SetBlipDisplay (blip, 4)
	--SetBlipScale   (blip, 1.2)
	--SetBlipCategory(blip, 3)
	--SetBlipColour  (blip, 4) -- Blip Color , you can change it from : https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
	--SetBlipAsShortRange(blip, true)
	--BeginTextCommandSetBlipName("STRING")
	--AddTextComponentString("Kitchen Location") -- Name of the Blip on the map
	--EndTextCommandSetBlipName(blip)
  end
  end
end)


local inKitchen = false


-- Citizen.CreateThread(function()
-- 	while true do
-- 		Citizen.Wait(1)
		
-- 		if PlayerData.job ~= nil and PlayerData.job.name == 'hotel' then
-- 		DrawMarker(21, -1012.95,-746.63,21.01, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) --Hotel Marker Position.
			
-- 		local coords = GetEntityCoords(PlayerPedId())
-- 		local distance = GetDistanceBetweenCoords(coords, -1012.95,-746.63,21.01, true)
		
-- 		if distance < 1.0 then
-- 			ESX.ShowHelpNotification('~g~Appuyer sur [E] Pour Préparer à Manger.')	
-- 			inKitchen = true
-- 		elseif distance > 1.0 then
-- 			inKitchen = false
-- 		end
		
-- 		if IsControlJustReleased(0, Keys['E']) and inKitchen then
-- 			ESX.UI.Menu.CloseAll()
-- 			openMenu()
-- 		end
-- 		end
-- 	end
-- end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		
		if PlayerData.job ~= nil and PlayerData.job.name == 'hotel' then
			DrawMarker(21, 397.69,-22.28,91.40, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.5, 1.0, 0.25, 255,0,0, 100, false, true, 2, false, false, false, false) --Hotel Marker Position.
			
		local coords = GetEntityCoords(PlayerPedId())
		local distance = GetDistanceBetweenCoords(coords, 397.69,-22.28,91.40, true)
		
		if distance < 1.0 then
			ESX.ShowHelpNotification('~g~Appuyer sur [E] Pour Prendre une Clé.')	
			inKitchen = true
		elseif distance > 1.0 then
			inKitchen = false
		end
		
		if IsControlJustReleased(0, Keys['E']) and inKitchen then
			ESX.UI.Menu.CloseAll()
			openMenu2()
		end
		end
	end
end)

RegisterNetEvent('hotel:animation')
AddEventHandler('hotel:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "prop_human_bbq", 0, true) -- Animaton 
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
	ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
end)

RegisterNetEvent('hotel2:animation')
AddEventHandler('hotel2:animation', function()
	TaskStartScenarioInPlace(PlayerPedId(), "world_human_hang_out_street", 0, true) -- Animaton 
	Citizen.Wait(10000) -- Time progress , in ms, 1 second = 1000 ms , the value is 10000 so , its 10 seconds
	ClearPedTasksImmediately(PlayerPedId()) -- Function to stop the animation
end)


function openMenu()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'hotel',
        {
            title    = 'Menu Hotel',
            align    = 'top-right',
            elements = { 
                { label = 'Préparer un Steak Haché ', value = 'polo01' }, -- Change the "Menu 1" label to your combination item 
                { label = 'Préparer un Petit Déjeuner ', value = 'polo' }
   
            }
        },
    function(data, menu)
        local value = data.current.value

        if value == 'polo1' then
            menu.close()
            TriggerServerEvent('hotel:combination1')
		elseif value == 'polo2' then
            menu.close()
            TriggerServerEvent('hotel:combination2')
			
        end
    end,
    function(data, menu)
        menu.close()
    end)
end

function openMenu2()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'hotel',
        {
            title    = 'Menu Hotel',
            align    = 'top-right',
            elements = { 
                { label = 'prendre la Clé 01', value = 'polo3' }, -- Change the "Menu 1" label to your combination item 
                { label = 'prendre la Clé 02 ', value = 'polo4' },
                { label = 'prendre la Clé 03 ', value = 'polo5' },
                { label = 'prendre la Clé 04 ', value = 'polo6' },
                { label = 'prendre la Clé 05 ', value = 'polo7' },
                { label = 'prendre la Clé 06 ', value = 'polo8' },
				{ label = 'prendre la Clé 07 ', value = 'polo9' },
                { label = 'prendre la Clé 08 ', value = 'polo10' },
				{ label = 'prendre la Clé 09 ', value = 'polo11' },
				{ label = 'prendre la Clé 10 ', value = 'polo12' },
				{ label = 'prendre la Clé 11 ', value = 'polo13' },
				{ label = 'prendre la Clé 12 ', value = 'polo14' },
				{ label = 'prendre la Clé 13 ', value = 'polo15' }
   
            }
        },
    function(data, menu)
        local value = data.current.value

        if value == 'polo3' then
            menu.close()
            TriggerServerEvent('hotel:combination3')
		elseif value == 'polo4' then
            menu.close()
            TriggerServerEvent('hotel:combination4')
		elseif value == 'polo5' then
            menu.close()
            TriggerServerEvent('hotel:combination5')
		elseif value == 'polo6' then
            menu.close()
            TriggerServerEvent('hotel:combination6')
		elseif value == 'polo7' then
            menu.close()
            TriggerServerEvent('hotel:combination7')
		elseif value == 'polo8' then
            menu.close()
            TriggerServerEvent('hotel:combination8')
		elseif value == 'polo9' then
            menu.close()
            TriggerServerEvent('hotel:combination9')
		elseif value == 'polo10' then
            menu.close()
            TriggerServerEvent('hotel:combination10')
		elseif value == 'polo11' then
            menu.close()
            TriggerServerEvent('hotel:combination11')
		elseif value == 'polo12' then
            menu.close()
            TriggerServerEvent('hotel:combination12')
		elseif value == 'polo13' then
            menu.close()
            TriggerServerEvent('hotel:combination13')
		elseif value == 'polo14' then
            menu.close()
            TriggerServerEvent('hotel:combination14')
		elseif value == 'polo15' then
            menu.close()
            TriggerServerEvent('hotel:combination15')


			
        end
    end,
    function(data, menu)
        menu.close()
    end)
end