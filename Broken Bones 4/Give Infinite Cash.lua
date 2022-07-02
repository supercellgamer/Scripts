function GetScript()
    for i,v in pairs(game:GetService("ReplicatedFirst"):GetChildren()) do
        if (v.Name):match("^%-?%d+$") then
            return v    
        end
    end
end
local FireServer = getupvalue(getsenv(GetScript()).Respawn,5)
local Remotes = getupvalue(getsenv(GetScript()).Respawn,6)
function GiveMoney(Money)
    u5 = getupvalue(getconnections(Remotes["19574636"].OnClientEvent)[1].Function,1)
    u6 = getupvalue(getconnections(Remotes["38593640"].OnClientEvent)[1].Function,1)
    u7 = getupvalue(getconnections(Remotes["75924856"].OnClientEvent)[1].Function,1)
    Code = ("money"):byte() * Money + u5 * -21 + u6 * -45 + u7 * -63
    Remotes.UpdateStat:InvokeServer('money',Money,nil,Code)
    getsenv(GetScript()).pstats.money = getsenv(GetScript()).pstats.money + Money
    getsenv(GetScript()).gui.Data.Money.Text = getsenv(GetScript()).Comma(getsenv(GetScript()).pstats.money)
end

    GiveMoney(1859314758347507952349859834275928347859431750237459238475902348759023847509834275903247598234759832475098234598234592347598203457094)
