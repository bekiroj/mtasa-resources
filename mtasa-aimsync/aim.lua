aimfps = 60
maxfps = 100

function aimSync(target)
	if isPedAiming(getLocalPlayer()) then
		setGameSpeed(1.25)
		setFPSLimit(aimfps)
	else
		setGameSpeed(1)
		setFPSLimit(maxfps)
	end
end
addEventHandler("onClientRender", getRootElement(), aimSync)

function isPedAiming (thePedToCheck)
	if isElement(thePedToCheck) then
		if getElementType(thePedToCheck) == "player" or getElementType(thePedToCheck) == "ped" then
			if getPedTask(thePedToCheck, "secondary", 0) == "TASK_SIMPLE_USE_GUN" or isPedDoingGangDriveby(thePedToCheck) then
				return true
			end
		end
	end
	return false
end