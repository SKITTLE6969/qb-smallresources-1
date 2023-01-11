
CreateThread(function()
    SetPedSuffersCriticalHits(PlayerPedId(), false)
end)

function WheelBurst()
    local ped = PlayerPedId()
    local inveh = IsPedSittingInAnyVehicle(ped)
    local veh = GetVehiclePedIsUsing(ped)
    local maxs = GetVehicleMaxSpeed(veh)
    if inveh then
        if (IsVehicleTyreBurst(veh, 0, true) and IsVehicleTyreBurst(veh, 1, true)) or (IsVehicleTyreBurst(veh, 4, true) and IsVehicleTyreBurst(veh, 5, true)) 
        or (IsVehicleTyreBurst(veh, 0, true) and IsVehicleTyreBurst(veh, 4, true)) or (IsVehicleTyreBurst(veh, 1, true) and IsVehicleTyreBurst(veh, 5, true))
        or (IsVehicleTyreBurst(veh, 0, true) and IsVehicleTyreBurst(veh, 5, true)) or (IsVehicleTyreBurst(veh, 1, true) and IsVehicleTyreBurst(veh, 4, true)) then
            SetVehicleUndriveable(veh, true)
        else
            SetVehicleUndriveable(veh, false)
        end
    end
end

CreateThread(function()
    while true do
      Wait(250)
      if IsPedSittingInAnyVehicle(PlayerPedId()) then
        WheelBurst()
      end
    end
end)

CreateThread(function()
    while Config.AntiCombatRoll do
        Wait(5)
        if IsAimCamActive() then
            if IsPedArmed(PlayerPedId(), 4 | 2) then
                DisableControlAction(0, 22, true)
            end
        end
    end
end)

local vehicleClassDisableControl = {
	[0] = true, --compacts
	[1] = true, --sedans
	[2] = true, --SUV's
	[3] = true, --coupes
	[4] = true, --muscle
	[5] = true, --sport classic
	[6] = true, --sport
	[7] = true, --super
	[8] = false, --motorcycle
	[9] = true, --offroad
	[10] = true, --industrial
	[11] = true, --utility
	[12] = true, --vans
	[13] = false, --bicycles
	[14] = false, --boats
	[15] = false, --helicopter
	[16] = false, --plane
	[17] = true, --service
	[18] = true, --emergency
	[19] = false --military
}

-- Main thread
CreateThread(function()
	while Config.MidAirVehControl do
	-- Loop forever and update every frame
	Wait(0)
		-- Get player, vehicle and vehicle class
		local player = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(player, false)
		local vehicleClass = GetVehicleClass(vehicle)

		-- Disable control if player is in the driver seat and vehicle class matches array
		if ((GetPedInVehicleSeat(vehicle, -1) == player) and vehicleClassDisableControl[vehicleClass]) then
			-- Check if vehicle is in the air and disable L/R and UP/DN controls
			if IsEntityInAir(vehicle) then
				DisableControlAction(2, 59)
				DisableControlAction(2, 60)
			end
		end
	end
end)

-- Pistol Whipping
Citizen.CreateThread(function()
    while(true)do
            if globalIsPedArmed then
                DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
            else
                Citizen.Wait(100)
            end
        Citizen.Wait(0)
    end
end)

-- Accidental Punching
Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(0)
        DisableControlAction(1, 140, true)
        if not IsPlayerTargettingAnything(PlayerId()) then
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end
    end
end)


local ragdoll_chance = 0.1
CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            local chance_result = math.random()
            if chance_result < ragdoll_chance then 
                Wait(600)
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
                SetPedToRagdoll(ped, 5000, 1, 2)
            else
                Wait(2000)
            end
        end
    end
end)