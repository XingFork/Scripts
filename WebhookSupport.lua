--NOTE :Logging is just a way to check Who executed the script, we won't share your information with others

local Players = game:GetService("Players")
local CoreGui = cloneref(game:GetService("CoreGui"))
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer

local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", LP.UserId))
Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
local AvatarImage = Thing.imageUrl
local Device = tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3]

local Success, MapName = pcall(function()
    return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end)
if not Success then
    MapName = "无法获取"
end

local Fields = {
    {
        name = "名称",
        value = LP.Name.." / "..LP.DisplayName
    },
    {
        name = "UserId",
        value = "["..LP.UserId.."](" .. tostring("https://www.roblox.com/users/" .. LP.UserId .. "/profile")..")"
    },
    {
        name = "地图",
        value = "["..MapName.."](" .. tostring("https://www.roblox.com/games/" .. game.PlaceId) ..")"
    },
    {
        name = "注入器",
        value = identifyexecutor()
    },
    {
        name = "设备",
        value = Device
    }
}

if not _G.XALoaded then
    _G.XALoaded = true
    request({
        Url = ({...})[1],
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode({
            embeds = {
                {
                    color = 65280,
                    title = "有人使用了XA Hub",
                    thumbnail = {
                        url = AvatarImage
                    },
                    fields = Fields,
                    footer = {
                        text = "执行时间"
                    },
                    timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                }
            }
        })
    })
end
