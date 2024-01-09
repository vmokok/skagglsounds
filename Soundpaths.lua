local LSM = LibStub("LibSharedMedia-3.0")

local soundsPath = "Interface\\Addons\\SharedMedia_Skagglsound\\sounds\\"
local colors = {
    green = "00FF00"
}
local titlePrefix = "Скагглсок: "
local debug = false
local sounds = {
    {
        title = "Ответ неверный!",
        fileName = "wrong",
        color = colors.green
    },
    {
        title = "Бэкап",
        fileName = "backup",
        color = colors.green
    },
    {
        title = "Вы че угораете?",
        fileName = "are-you-fucking-rofling",
        color = colors.green
    },
    {
        title = "Вы че прикалываетесь?",
        fileName = "prikalivaetes",
        color = colors.green
    },
    {
        title = "Блин",
        fileName = "blin2",
        color = colors.green
    },
    {
        title = "Метка",
        fileName = "mark",
        color = colors.green
    },
    {
        title = "Стоят дрочат",
        fileName = "masturbation",
        color = colors.green
    },
    {
        title = "Пиздец",
        fileName = "prostopizdec",
        color = colors.green
    },
    {
        title = "Беги!",
        fileName = "run_better",
        color = colors.green
    },
    {
        title = "Съебали!",
        fileName = "syebali",
        color = colors.green
    },
    {
        title = "Съебали блять!!",
        fileName = "syebaliblyat",
        color = colors.green
    },
    {
        title = "Съебали нахуй!!!",
        fileName = "syebalinaxyu",
        color = colors.green
    },
    {
        title = "Трэш",
        fileName = "trash",
        color = colors.green
    },
    {
        title = "Не там стоишь",
        fileName = "xylevistoite",
        color = colors.green
    },
}

for _, sound in ipairs(sounds) do
    local result = LSM:Register(
        "sound",
        "|cFF" .. sound.color .. titlePrefix .. sound.title .. "|r",
        soundsPath .. sound.fileName .. ".ogg"
    )
    if debug and not result then print("some shit") end
end
