--[[

Nome da Criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Inteligência
Habilidades
    Furtividade
    Explosão
========================================
/
/ CREEPER
/ Um monstro muito sagaz que explode na sua cara.
/
/
/ Som: Tssssss
/
/ Atributos:
/    Ataque:########00
/    Defesa:###0000000
/    ...
/
========================================


]]
os.execute("chcp 65001")


-- Criatura
local monsterName = "CREEPER"
local description = "Um creeper é uma criatura hostil comum que se aproxima silenciosamente dos jogadores e explode, \n| podendo destruir blocos e matar jogadores sem armadura em qualquer dificuldade (exceto no modo pacífico)."
local behavior = "Hostil"
local appearance = "\n|🟩🟩🟩🟩🟩🟩🟩🟩\n|🟩⬛⬛🟩🟩⬛⬛🟩\n|🟩⬛⬛🟩🟩⬛⬛🟩\n|🟩🟩🟩⬛⬛🟩🟩🟩\n|🟩🟩⬛⬛⬛⬛🟩🟩\n|🟩🟩⬛⬛⬛⬛🟩🟩\n|🟩🟩⬛🟩🟩⬛🟩🟩\n|    🟩🟩🟩🟩\n|    🟩🟩🟩🟩"
local sound = "Tssssss"
local favoriteTime = "Noite"
local item = "Polvora"


-- Atributos
local attackAttribute = 10
local defenseAttribute = 3
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

--função que recebe um atributo e retorna uma barra de progresso em string / texto
local function getProgressBar(attribute) 
    local fullChar = "◈"
    local emptyChar = "◇"

    local result = ""
    for i = 1, 10, 1 do
        if i <=attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
end

--Cartão
print("==================================================================================================================")
print("|")
print("| " .. monsterName)
print("|")
print("| " .. description)
print("|")
print("| Aparência: " .. appearance)
print("| Comportamento: " .. behavior)
print("| Hora que Aparece: " .. favoriteTime)
print("| Som: " .. sound)
print("| Drop: " .. item)
print("|")
print("| Atributos")
print("|     Ataque:       " .. getProgressBar(attackAttribute))
print("|     Defesa:       " .. getProgressBar(defenseAttribute))
print("|     Vitalidade:   " .. getProgressBar(lifeAttribute))
print("|     Velocidade:   " .. getProgressBar(speedAttribute))
print("|     Inteligência: " .. getProgressBar(inteligenceAttribute))
print("|")
print("==================================================================================================================")
