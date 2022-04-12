QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-fishing:GetItemData', function(source, cb, itemName)
	local retval = false
	local Player = QBCore.Functions.GetPlayer(source)
	if Player ~= nil then 
		if Player.Functions.GetItemByName(itemName) ~= nil then
			retval = true
		end
	end
	
	cb(retval)
end)	

QBCore.Functions.CreateUseableItem("fishingrod", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)

    TriggerClientEvent('qb-fishing:tryToFish', source)
end)

RegisterServerEvent('qb-fishing:receiveFish', function(cabin, house)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 100)
    local itemFound = true
    local itemCount = 1

    if itemFound then
        for i = 1, itemCount, 1 do
            local randomItem = Config.FishingItems["type"]math.random(1, 2)
            local itemInfo = QBCore.Shared.Items[randomItem]
            if luck == 100 then
                randomItem = "killerwhalemeat"
                itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 99 and luck <= 100 then
				randomItem = "stingraymeat"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 98 and luck <= 99 then
				randomItem = "tigersharkmeat"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 97 and luck <= 98 then
				randomItem = "turtle"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 95 and luck <= 96 then
				randomItem = "dolphin"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 94 and luck <= 95 then
				randomItem = "octopus"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 93 and luck <= 94 then
				randomItem = "catfish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 92 and luck <= 93 then
				randomItem = "salmon"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 90 and luck <= 92 then
				randomItem = "largemouthbass"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 88 and luck <= 90 then
				randomItem = "goldfish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 87 and luck <= 88 then
				randomItem = "pacifichalibut"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 85 and luck <= 87 then
				randomItem = "redfish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 83 and luck <= 85 then
				randomItem = "yellowfish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 80 and luck <= 83 then
				randomItem = "bluefish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 75 and luck <= 80 then
				randomItem = "flounder"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 70 and luck <= 75 then
				randomItem = "kelp"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 65 and luck <= 70 then
				randomItem = "cod"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 60 and luck <= 65 then
				randomItem = "mackerel"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 50 and luck <= 60 then
				randomItem = "stripedbass"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
			elseif luck >= 0 and luck <= 50 then
				randomItem = "fish"
				itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
				TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            end
            Wait(500)
        end
    end
end)

RegisterServerEvent("qb-fishing:sellFish", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local price = 0
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "fish" then 
                    price = price + (Config.FishingItems["fish"]["price"] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("fish", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "stripedbass" then 
                    price = price + (Config.FishingItems["stripedbass"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("stripedbass", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "bluefish" then 
                    price = price + (Config.FishingItems["bluefish"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("bluefish", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "redfish" then 
                    price = price + (Config.FishingItems["redfish"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("redfish", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "yellowfish" then 
                    price = price + (Config.FishingItems["yellowfish"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("yellowfish", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "pacifichalibut" then 
                    price = price + (Config.FishingItems["pacifichalibut"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("pacifichalibut", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "octopus" then 
                    price = price + (Config.FishingItems["octopus"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("octopus", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "flounder" then 
                    price = price + (Config.FishingItems["flounder"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("flounder", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "kelp" then 
                    price = price + (Config.FishingItems["kelp"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("kelp", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "cod" then 
                    price = price + (Config.FishingItems["cod"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("cod", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "mackerel" then 
                    price = price + (Config.FishingItems["mackerel"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("mackerel", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "turtle" then 
                    price = price + (Config.FishingItems["turtle"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("turtle", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "dolphin" then 
                    price = price + (Config.FishingItems["dolphin"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("dolphin", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "goldfish" then 
                    price = price + (Config.FishingItems["goldfish"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("goldfish", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "largemouthbass" then 
                    price = price + (Config.FishingItems["largemouthbass"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("largemouthbass", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "salmon" then 
                    price = price + (Config.FishingItems["salmon"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("salmon", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "catfish" then 
                    price = price + (Config.FishingItems["catfish"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("catfish", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "stingraymeat" then 
                    price = price + (Config.FishingItems["stingraymeat"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("stingraymeat", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "tigersharkmeat" then 
                    price = price + (Config.FishingItems["tigersharkmeat"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("tigersharkmeat", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "killerwhalemeat" then 
                    price = price + (Config.FishingItems["killerwhalemeat"]["price"] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("killerwhalemeat", Player.PlayerData.items[k].amount, k)
                end
            end
        end
        Player.Functions.AddMoney("cash", price, "sold-fish")
		TriggerClientEvent('QBCore:Notify', src, "You have sold your fish")
	end
end)
