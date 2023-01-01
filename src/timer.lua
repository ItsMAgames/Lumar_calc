--CREACION DE UN TEMPORIZADOR

--VARIABLE REQUERIDA
local clock = os.clock

--FUNCION PARA CREAR UN TEMPORIZADOR
function Sleep(n) --n : seconds

    --VARIABLE ESPECIAL
    
    local t0 = clock()
    
    --local resultado = clock() - t0
    
    while clock() - t0 <= n do 
        --print(math.ceil(n - (clock() - t0)))
    end

    --[[if Terminado == true then
        print("DEBUG: Tiempo terminado")
    end]]
end

--Sleep(io.read("n"))