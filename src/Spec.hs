module Spec where
import PdePreludat
import Library
import Test.Hspec
import Control.Exception (evaluate)

unoRojo :: Carta
unoRojo = CartaNumerica 1 Rojo
dosVerde = CartaNumerica 2 Verde
tresAzul = CartaNumerica 3 Azul
cuatroAmarillo = CartaNumerica 4 Amarillo 

manoVacia :: [Carta]
manoVacia = []

listaDeColoresVacia :: [Color]
listaDeColoresVacia = []

correrTests :: IO ()
correrTests = hspec $ do
  focus $ describe "fibonacci" $ do
    it "el primer numero de la serie es 0" $ do
      fibonacci 0 `shouldBe` 0
    it "el segundo numero de la serie es 1" $ do
      fibonacci 1 `shouldBe` 1
    it "cada numero desde el tercero es la suma de los dos numeros anteriores" $ do
      fibonacci 2 `shouldBe` 1
      fibonacci 3 `shouldBe` 2
      fibonacci 4 `shouldBe` 3
      fibonacci 5 `shouldBe` 5
  describe "rellenar" $ do
    it "dado un caracter, un numero y un string de longitud igual al numero, retorna ese string" $ do
      rellenar "hola" 4 '!' `shouldBe` "hola"
    it "dado un caracter, un numero y un string de longitud menor al numero, retorna ese string" $ do
      rellenar "hola" 3 '!' `shouldBe` "hola"
    it "dado un caracter, un numero y un string de longitud mayor al numero, retorna un nuevo string de longitud igual al numero que se obtiene concatenando el caracter al final del string original varias veces" $ do
      rellenar "hola" 7 '!' `shouldBe` "hola!!!"
  describe "dividir" $ do
    it "si el divisor que es mayor al dividendo da 0" $ do
      dividir 3 8 `shouldBe` 0
    it "si el divisor es menor al dividendo devuelve la division entera entre ambos" $ do
      dividir 8 3 `shouldBe` 2
  describe "ultimaCarta" $ do
    it "si le pasamos una lista con solo una carta, nos devuelve esa carta" $ do
      ultimaCarta [unoRojo] `shouldBe` unoRojo
    it "si le pasamos una lista con cartas, nos devuelve la ultima" $ do
      ultimaCarta [unoRojo, dosVerde] `shouldBe` dosVerde
  describe "primeras" $ do
    it "si le pasamos 0, nos devuelve una lista vacia sin importar las cartas que le hayamos pasado" $ do
      primeras 0 [unoRojo, dosVerde] `shouldBe` manoVacia
    it "si le pasamos una lista vacia, nos devuelve una lista vacia" $ do
      primeras 2 manoVacia `shouldBe` manoVacia
    it "si le pedimos mas cartas de las que hay en la lista, nos devuelve la lista entera" $ do
      primeras 5 [unoRojo, dosVerde] `shouldBe` [unoRojo, dosVerde]
    it "si le pasamos 1, nos devuelve una lista con el primer elemento" $ do
      primeras 1 [unoRojo, dosVerde] `shouldBe` [unoRojo]
    it "nos devuelve una lista con las primeras n cartas" $ do
      primeras 3 [unoRojo, dosVerde, tresAzul, cuatroAmarillo] `shouldBe` [unoRojo, dosVerde, tresAzul]
  describe "obtenerElemento" $ do
    it "retorna el elemento que esta en la posicion pasada" $ do
      obtenerElemento 1 [1, 2, 3] `shouldBe` 2
    it "falla si se pasa una posicion negativa" $ do
      deberiaFallar (obtenerElemento (-1) [1])
    it "falla si se pasa una lista vacia" $ do
      deberiaFallar (obtenerElemento 0 [])
    it "falla si se pasa una posicion para la cual no hay elemento" $ do
      deberiaFallar (obtenerElemento 2 [1])
      

  describe "sacarHastaEncontrar" $ do 
    it "un test" $ do -- reemplacen "un test" por la descripcion del test
      pending -- reemplacen pending por el cuerpo del test
  describe "lasRojas" $ do
    it "un test" $ do
      pending
  describe "lasQueSonDeColor" $ do
    it "un test" $ do
      pending
  describe "lasFiguras" $ do
    it "un test" $ do
      pending
  describe "sumatoria" $ do
    it "un test" $ do
      pending

-- Funcion auxiliar definida para testear en obtenerElemento
deberiaFallar :: a -> Expectation
deberiaFallar unaExpresion = evaluate unaExpresion `shouldThrow` anyException

