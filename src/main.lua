local ENV = getfenv()

for i, v in pairs(ENV) do
    print(i, v)
end