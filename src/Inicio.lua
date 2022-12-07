---@diagnostic disable: discard-returns

--SCRIPTS NECESITADOS
require "menu"

--CREACION DEL MENU DE INICIO
function Bienvenida()
    --IMMPRIMIR TEXTO DE BIENVENIDA
    print("Bienvenido a la calculadora 'LUMAR'", "\n")
	io.read("*l")

	print("Como primer paso escoje tu modo de trabajo", "\n")
	io.read("*l")

    --INICIALIZAR LA CALCULADORA
    MenuTrabajado()

end