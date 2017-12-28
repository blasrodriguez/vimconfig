# Chuleta

## VimGO
- control x+ control o Autocompletar
- :GoDoc documentacion de la funcion

## Vim
- gt GT //movimiento entre tabs
- :b<numero> //movimiento entre buffer
- :bd //chapar buffer
- :Explore //abrir el navegador de achivos
- :new //nuevo buffer
- q: //sacar la dynnamic list (historial de comandos)
- :h index //Mostrar los builtin keybindings
- CTRL-W + // Añadir lineas a la ventana de buffer
- :map //mostrar los keybindings
- :e /path/del-fichero //Abrir fichero
- :read fichero.txt :read !comando bash //inserta resultado de fichero o comando
- numeroDeBuffer<C-6> //Moverse al otro buffer
- :wqa //Grabar todos los buffers y salir
- :cd ~/Code/ProjectB //Cambiar de directorio

## git (vim fugitive)
- Git comando // Ejecuta un commando de git
- Gwrite // Graba fichero y hace add

## Mapeos que dan la vida
- \s // Search & replace

## Operadores
- **yy Yanks (i.e., copies) the entire line**
- **p Pastes content after the current cursor position**
- P Pastes content before the current cursor position
- i Puts you into INSERT mode before the current cursor position
- a Puts you into INSERT mode after the current cursor position
- **f Finds specified character to the right of current cursor position**
- t Same as f but searches until the specified character
- **o Moves cursor to the next line and enters INSERT mode**
- O Moves cursor to the previous line and enters INSERT mode
- x Cuts the character (or the selection of characters)
- s Substitutes the character (or the selection of characters)
- S Substitutes the entire line
- u Undoes the last edit
- **~ Swaps character casing (e.g., converts a to A)**
- **. Repeats the last INSERT edit**
- dd Deletes the current line
- **D Deletes from the cursor until the end of the line (same as d$)**
- **gx Opens the URL under your cursor in a web browser**
