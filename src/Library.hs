module Library where
import PdePreludat

data Color = Rojo | Verde | Amarillo | Azul deriving(Show,Eq)
data Simbolo = Reversa | Mas4 | SaltarTurno deriving (Eq, Show)

data Carta =
    CartaNumerica { numero :: Number, color :: Color } |
    CartaEspecial { simbolo :: Simbolo, color :: Color }
    deriving (Eq, Show)

fibonacci = implementame

rellenar = implementame

dividir = implementame

ultimaCarta = implementame

primeras = implementame

cartasAColores = implementame

obtenerElemento = implementame

sacarHastaEncontrar = implementame

lasRojas = implementame

lasQueSonDeColor = implementame

lasFiguras = implementame

sumatoria = implementame
