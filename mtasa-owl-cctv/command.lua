addCommandHandler("cctv",
	function(source, cmd)
		if getElementData(source, "loggedin") == 1 then
			if getElementData(source, "faction") == 1 or getElementData(source, "faction") == 6 then
				if not getElementData(source, "cctv") then
					lastint = getElementInterior(source)
					lastdim = getElementDimension(source)
					setElementInterior(source, 0)
					setElementDimension(source, 0)

					setElementFrozen(source, true)
					setElementData(source, "cctv", true)
					triggerClientEvent(source,"ShowBtns",source)
					outputChatBox("[CCTV] #f9f9f9Arayüzü açtınız, kapatmak için /cctv.", source, 30, 30, 30, true)
				else
					setElementInterior(source, lastint)
					setElementDimension(source, lastdim)

					triggerClientEvent(source,"HideBtns",source)
					setElementFrozen(source, false)
					setElementData(source, "cctv", nil)
					setCameraTarget(source)
				end
			end
		end
	end
)
