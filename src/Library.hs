{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Library where
import PdePreludat

data Color = Rojo | Verde | Amarillo | Azul deriving(Show,Eq)
data Simbolo = Reversa | Mas4 | SaltarTurno deriving (Eq, Show)

data Carta =
    CartaNumerica { numero :: Number, color :: Color } |
    CartaEspecial { simbolo :: Simbolo, color :: Color }
    deriving (Eq, Show)

factorial :: Number -> Number
factorial n
    | n == 0 = 1
    | n > 0 = n * factorial (n - 1)

fibonacci :: Number -> Number
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n
    | n >= 2 = fibonacci (n-1) + fibonacci (n - 2)

rellenar :: String -> Number -> Char -> String
rellenar string numero caracter
 | length string >= numero = string
 | otherwise =
    rellenar (agregarAlFinal caracter string) numero caracter

agregarAlFinal :: Char -> String -> String
agregarAlFinal caracter string = string ++ [caracter]

dividirAux :: Number -> Number -> Number -> Number
dividirAux dividendo divisor contador
    | dividendo < divisor && divisor /= 0 =
        contador
    | otherwise && divisor /= 0 =
        dividirAux (dividendo - divisor)
                    divisor
                    (contador + 1)

dividir :: Number -> Number -> Number
dividir dividendo divisor =
    dividirAux dividendo divisor 0

dividir' :: Number -> Number -> Number
dividir' dividendo divisor
    | dividendo < divisor =
        0
    | otherwise =
        1 + dividir' (dividendo-divisor) divisor


-----

ultimaCarta = implementame

primeras = implementame

cartasAColores = implementame

obtenerElemento = implementame

sacarHastaEncontrar = implementame

lasRojas = implementame

lasQueSonDeColor = implementame

lasFiguras = implementame

sumatoria = implementame
