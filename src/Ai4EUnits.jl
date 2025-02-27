module Ai4EUnits
import Unitful
using Unitful: @unit, @derived_dimension, @dimension, @refunit, @u_str, uconvert, Quantity
using Unitful: m, km, g, kg, s, A, K, mol, cd

# 无量纲量
"    Ai4EUnitful.unitless
\nA dimensionless unit.
\n无量纲单位。"
@unit dimless "dimless" DimLess 1.0 false true

# 参照https://github.com/invenia/PowerSystemsUnits.jl
# 把必须的单位使用@unit等定义一下

include("utils.jl")

const localunits = Unitful.basefactors
const localpromotion = Unitful.promotion

function __init__()
    merge!(Unitful.basefactors, localunits)
    merge!(Unitful.promotion, localpromotion) 
    Unitful.register(Ai4EUnits)
end


end # module Ai4EUnitful
