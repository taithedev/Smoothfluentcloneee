local Themes = {
    Names = {
        "AMOLED",
        "Ash Gray",
        "Charcoal",
        "Pearl White",
        "Blood Red",
        "Deep Ocean",
        "Midnight Blue",
        "Royal Blue",
        "Neon Cyber",
        "Neon Purple",
        "Galaxy Purple",
        "RGB",
        "Midnight Purple",
        "Emerald Glass",
        "Ocean Glass",
        "Sunset",
        "Cyber Pink",
        "Arctic",
    },
}

for _, Theme in ipairs(script:GetChildren()) do
    if Theme:IsA("ModuleScript") and Theme.Name ~= "init" then
        local ok, required = pcall(require, Theme)
        if ok and type(required) == "table" and required.Name then
            Themes[required.Name] = required
        end
    end
end

return Themes
