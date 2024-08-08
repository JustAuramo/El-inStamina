local IsAnimal = false

CreateThread(function()

	Citizen.Wait(0)	
	
	while true do
		Citizen.Wait(1000)
		local player = GetPlayerPed(-1)
		if IsPedHuman(player) == false and not IsAnimal then
			IsAnimal = true
			StatSetInt(GetHashKey("MP0_STAMINA"), 100, true)
		elseif IsPedHuman(player) == 1 and IsAnimal then
			IsAnimal = false
			StatSetInt(GetHashKey("MP0_STAMINA"), 0, true)
		end		
	end		
end)
