---@diagnostic disable: discard-returns
--REQUERIDOS
require "Avanzadas"
require "basicas"

--TEXTO DE INICIO

--ESTE ES LE MENU CONVENCIONAL
function MenuEspecial()
    local operaciones = {"Suma", "Resta", "Multiplicacion", "Division", "Potencia", "Raiz", "Pi"}

	io.write(operaciones[1], "\n")
	io.write(operaciones[2], "\n")
	io.write(operaciones[3], "\n")
	io.write(operaciones[4], "\n")
	io.write(operaciones[5], "\n")
	io.write(operaciones[6], "\n")
	io.write(operaciones[7], "\n")

	print("Escibe tu operacion a realizar", "\n")
end

--ESTEES EL MENU TRABAJADO
function MenuTrabajado()
    --VARIABLES DE LA FUNCION
    local keyWord1 = "Normal"
    local keyWord2 = "Cientifica"
    local br = "\n"
    local modos = {"Normal", "Cientifica"}

    --IMPRIMIR LOS MODOS DE TRABAJO
    io.write(modos[1], br)
    io.write(modos[2], br, br)

    local input = io.read("*l")
    io.write(br)

    if input == modos[1] then
        MenuEspecial()
    end

    if input == modos[2] then
        AvanGlobal()
    end
end

--MENU DE SELECCION DE MEDIDA DE ANGULOS
function MenuTipos()
    --VARIABLES DE LA FUNCION
    local br = "\n"
    local tipos = {"Grados", "Radianes", "Gradianes"}

    --IMPRIMIR TEXTOS 
    io.write(tipos[1], br)
    io.write(tipos[2], br)
    io.write(tipos[3], br)

    local input = io.read("l")
    io.write(br)

    if input == tipos[1] then
        
    elseif input == tipos[2] then

    elseif input == tipos[3] then
        
    end

end

--cientifico()