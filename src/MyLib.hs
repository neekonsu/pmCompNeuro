module MyLib (euler) where

euler :: (Function -> Float -> Float -> Float -> Float) -> Float
euler dxdt t dt x = x + (dt *) . dxdt x

timeseries :: Float -> Float -> Float -> Float -> List
timeseries x0 t0 tf dt = x0:(map (\t (dxdt t dt x)) [t0:dt:tf])
