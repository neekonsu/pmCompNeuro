module MyLib (activate) where

type X = [Float]
data TVEC a = [Float..Float] | [Int..Int]
data Inital = Int | Float


forward-euler :: Initial -> TVEC -> X 
forward-euler Int [Int..Int] = lastX + dt*dxdt -- TODO: ~ write recursive definition of lastX, dt, dxdt to generate list of x values to plot against t
	where lastX = 
forward-euler Float [Float..Float] = 
forward-euler _ [_.._] = Nothing
