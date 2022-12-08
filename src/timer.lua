--CREACION DE UN TEMPORIZADOR

--VARIABLE REQUERIDA
local clock = os.clock

--FUNCION PARA CREAR UN TEMPORIZADOR
function Sleep(n) --n : seconds

    --VARIABLE ESPECIAL
    
    local t0 = clock()
    
    --local resultado = clock() - t0
    
    while clock() - t0 <= n do 
        Terminado = false

        if clock() - t0 <= n then
            Terminado = true
        end
    end

    --[[if Terminado == true then
        print("DEBUG: Tiempo terminado")
    end]]
end

--Sleep(io.read("n"))