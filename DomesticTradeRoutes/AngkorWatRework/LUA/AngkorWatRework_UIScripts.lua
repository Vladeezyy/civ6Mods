--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
-- INCLUDES
--==========================================================================================================================

--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
print("Angkor Wat Rework UI Functions Loaded")
--==========================================================================================================================
-- Variables
--==========================================================================================================================












--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
--==========================================================================================================================
--==========================================================================================================================
-- UTILITY FUNCTIONS
--==========================================================================================================================
-- UTILS
----------------------------------------------------------------------------------------------------------------------------
iMod = (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100;


--==========================================================================================================================
-- CORE FUNCTIONS
--==========================================================================================================================
-- Local Owned Trading Post Property
---------------------------------------------------------

function Leu_CheckLocalOwnedTradingPosts(playerID)
	local pPlayer = Players[playerID]
	if pPlayer == nil then return end
	local playerCities = pPlayer:GetCities()
		for _, pCity in playerCities:Members() do
			if pCity ~= nil then
				if pCity:GetTrade():HasActiveTradingPost(pPlayer) then
						local iCityName = pCity:GetName();
						local iCityX = pCity:GetX();
						local iCityY = pCity:GetY();
						local pPlot = Map.GetPlot(iCityX, iCityY);
					if pPlot:GetProperty("LeuHasOwnedTradePost") == nil or pCity:GetProperty("LeuHasOwnedTradePost") == 0 then
					
						print("A new local Trading Post is established at " .. iCityName .. ".")
						-----------------------------------------
						-- Parameters ---------------------------
						-----------------------------------------
						local parameters = {}
							parameters.playerID = playerID;
							parameters.Leu_CityX = iCityX;
							parameters.Leu_CityY = iCityY;
							parameters.Leu_CityName = iCityName;

							parameters.OnStart = "Leu_LocalOwnedTradingPostProperty";
							UI.RequestPlayerOperation(playerID, PlayerOperations.EXECUTE_SCRIPT, parameters);
					end
				end
			end
		end

end
			

Events.PlayerTurnActivated.Add(Leu_CheckLocalOwnedTradingPosts);

function Leu_CheckTradingWithAngkor(playerID)
	local pPlayer = Players[playerID]
	if pPlayer == nil then return end
	local playerCities = pPlayer:GetCities()
		for _, pCity in playerCities:Members() do
			if pCity ~= nil then
				local AngkoredWat = 0
				local tOutgoingRoutes = pCity:GetTrade():GetOutgoingRoutes()
				for _, tRoute in ipairs(tOutgoingRoutes) do
					local destinationPlayer:table = Players[tRoute.DestinationCityPlayer];
					if destinationPlayer == pPlayer then
						--the trade route is local
						-- so now we check if the origin city has Angkor Wat
						local iCityX = pCity:GetX();
						local iCityY = pCity:GetY();
						local pPlot = Map.GetPlot(iCityX, iCityY);
						if pPlot:GetProperty("LeuHasAngkor") == 1 then AngkoredWat = 1 end
						-- and we also check if the destination city has Angkor Wat
						local destinationCity = destinationPlayer:GetCities():FindID(tRoute.DestinationCityID);
						local dCityX = destinationCity:GetX();
						local dCityY = destinationCity:GetY();
						local dPlot = Map.GetPlot(dCityX, dCityY);
						if dPlot:GetProperty("LeuHasAngkor") == 1 then AngkoredWat = 1 end
						--
					end
				end
				local tIncomingRoutes = pCity:GetTrade():GetIncomingRoutes()
				for _, tRoute in ipairs(tIncomingRoutes) do
					local originPlayer:table = Players[tRoute.OriginCityPlayer];
					if originPlayer == pPlayer then
						--the trade route is local
						-- so now we check if the origin city has Angkor Wat
						local iCityX = pCity:GetX();
						local iCityY = pCity:GetY();
						local pPlot = Map.GetPlot(iCityX, iCityY);
						if pPlot:GetProperty("LeuHasAngkor") == 1 then AngkoredWat = 1 end
						-- and we also check if the destination city has Angkor Wat
						local originCity = originPlayer:GetCities():FindID(tRoute.OriginCityID);
						local oCityX = originCity:GetX();
						local oCityY = originCity:GetY();
						local oPlot = Map.GetPlot(oCityX, oCityY);
						if oPlot:GetProperty("LeuHasAngkor") == 1 then AngkoredWat = 1 end
						--
					end
				end
				local iCityX = pCity:GetX();
				local iCityY = pCity:GetY();
				
						-----------------------------------------
						-- Parameters ---------------------------
						-----------------------------------------
						local parameters = {}
							parameters.playerID = playerID;
							parameters.Leu_CityX = iCityX;
							parameters.Leu_CityY = iCityY;
							parameters.Leu_IsAngkored = AngkoredWat

							parameters.OnStart = "Leu_CheckAngkoredCities";
							UI.RequestPlayerOperation(playerID, PlayerOperations.EXECUTE_SCRIPT, parameters);
				
			end
		end
	
end
			

Events.PlayerTurnActivated.Add(Leu_CheckTradingWithAngkor);
Events.TradeRouteActivityChanged.Add(Leu_CheckTradingWithAngkor)



--==========================================================================================================================
--==========================================================================================================================