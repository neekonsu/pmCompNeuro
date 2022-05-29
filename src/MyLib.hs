module MyLib (lifn) where

lifn :: Float -> Int -> Int -> Float -> [(Int, Float)]
lifn iapp t tn v
  | t == tn = [(t, v)]
  | v <= vth = (t, v) : lifn iapp (t + 1) tn (v + dt * cm * (el - v) / rm + iapp)
  | otherwise = (t, v) : lifn iapp (t + 1) tn vrst
  where
    dt = 0.1 -- s
    el = -70.0 * 10 ^ (-3) -- mV
    rm = 5.0 * 10 ^ 6 -- MΩ
    cm = 2.0 * 10 ^ (-9) -- nF
    vth = -50.0 * 10 ^ (-3) -- mV
    vrst = -65.0 * 10 ^ (-3) -- mV
