Citizen.CreateThread(function()

    while true do

        Citizen.Wait(5)

        SetBlackout(false)

        SetPedSuffersCriticalHits(PlayerPedId(), false)

        if IsPlayerFreeAiming(PlayerId()) then        

            else

            ShakeGameplayCam("DRUNK_SHAKE", 0.5)

        end

    end

end)

function GunRecoil()
    local playerPed = PlayerPedId()
    local playerId = PlayerId()

    local weapon = GetCurrentPedWeapon(playerPed)

    -- drunk effect
    if not ignoredWeapons[weapon] then
        if IsPlayerFreeAiming(playerId) then
            -- HideHudComponentThisFrame( 14 )

            -- Citizen.Wait(3000)
            -- HideHudComponentThisFrame( 14 )
            enableDrunkCamera()
        elseif IsPedShooting(playerPed) then
            enableDrunkCamera()
        else
            if toggleDrunk then
                toggleDrunk = false
                ShakeGameplayCam("DRUNK_SHAKE", 0.0)
            end
        end
    end
end

function enableDrunkCamera()
    if not toggleDrunk then
        toggleDrunk = true
        ShakeGameplayCam("DRUNK_SHAKE", 0.5)
    end
end
