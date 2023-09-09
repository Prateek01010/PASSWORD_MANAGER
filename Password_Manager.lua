local Manager = {}

function addpass(platform, password)
    Manager [platform] = password
end

function getpass(platform)
    return Manager[platform]
end

io.write("ENTER THE PLATFORM NAME FOR WHICH YOU WANT TO SAVE THE PASSWORD: ")
local a = io.read()
io.write("ENTER THE PASSWORD FOR ABOVE PLATFORM: ")
local b = io.read()

addpass(a, b)

local passwd  = getpass(a)
if passwd ~= nil then
    print("YOUR PASSWORD FOR ".. a .. " IS " .. b)
else
    print("PASSWORD NOT AVAILAIBLE")
end
