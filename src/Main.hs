module Main where

import Graphics.QML
import Data.Text (Text)
import qualified Data.Text as T
import Cal

import Paths_qmlCalculator

main :: IO ()
main = do
    clazz <- newClass [
        defMethod' "calculate" (\_ txt ->
            let n = T.unpack txt
            in return . T.pack $ cal n :: IO Text)]
    ctx <- newObject clazz ()
    runEngineLoop defaultEngineConfig {
        initialDocument = fileDocument "qml/main.qml",
        contextObject = Just $ anyObjRef ctx}
