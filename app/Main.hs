module Main where

import GHC.IO
import Graphics.Rendering.Chart.Backend.Cairo
import Graphics.Rendering.Chart.Easy
import qualified MyLib (lifn)

main = toFile def "output.png" $ do
  layout_title .= "Simulated Lossy Integrate & Fire Neuron"
  setColors [opaque blue, opaque red]
  plot (line "node potential" $ lifn 3.0 0 4 0.0)
  plot (points "node potential" $ lifn 3.0 0 4 0.0)

main :: IO ()
main = do
