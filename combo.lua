local magias = {
    ["regeneration"] = 2000,
    ["throw kunai"] = 3000,

}

macro(1, "Cast", function()
    for i, magia in pairs(magias) do 
        cast(i, magia)
    end
end)
