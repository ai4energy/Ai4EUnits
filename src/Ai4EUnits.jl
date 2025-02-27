module Ai4EUnits
import Unitful
using Unitful: @unit, @derived_dimension, @dimension, @refunit, @u_str, uconvert, Quantity
using Unitful: m, km, g, kg, s, A, K, mol, cd

# 无量纲量
"    Ai4EUnitful.no_unit
\nA dimensionless unit.
\n无量纲单位。"
@unit no_unit "no_unit" No_unit 1.0 false true

# 长度
const metre = Unitful.m
const centimetre = Unitful.cm
const millimetre = Unitful.mm
const nanometre = Unitful.nm
const foot = Unitful.ft
const inch = Unitful.inch

# 质量
const gram=Unitful.g
const kilogram = Unitful.kg
@unit tonne "ton" Tonne 1000.0*kilogram true false

# 时间
const second=Unitful.s
const minute=Unitful.minute
const hour=Unitful.hr
const day=Unitful.d
const week=Unitful.wk
const year=Unitful.yr

# 电磁单位
const ampere=Unitful.A
const ohm=Unitful.Ω
const siemens=Unitful.S
const farad=Unitful.F
const henry=Unitful.H
const tesla=Unitful.T
const weber=Unitful.Wb
const coulomb=Unitful.C
const volt=Unitful.V

# 温度
const kelvin = Unitful.K
const celsius = Unitful.°C
const fahrenheit = Unitful.°F

# 物质的量
const mole = Unitful.mol
const kilomole = Unitful.kmol

# 发光强度
const candle = Unitful.cd

# 体积

const litre = Unitful.L

@unit cubic_metres "m^3" Cubic_Metres 1u"m^3" false false
@unit cubic_centimetres "cm^3" Cubic_Centimetres 1centimetre^3 false false

# 角度
const radian = Unitful.rad


# 能量
const joule = Unitful.J
const kilojoule = Unitful.kJ
const megajoule = Unitful.MJ
const gigajoule = Unitful.GJ
const calorie=Unitful.cal
const btu=Unitful.btu

# 压力
const pascal = Unitful.Pa
const kilopascal = Unitful.kPa
const bar = Unitful.bar
const atmosphere = Unitful.atm
const torr=Unitful.Torr
const psi= Unitful.psi

# 流量
const litre_per_second = litre / second
const cubic_metre_per_second = cubic_metres / second

# 速度
const metre_per_second = metre / second

# 密度
const kilogram_per_cubic_metre = kilogram / cubic_metres
const gram_per_cubic_centimetre = gram / cubic_centimetres

# 动力和功率
const watt = Unitful.W
const kilowatt = Unitful.kW
const megawatt = Unitful.MW

# 力单位
const newton = Unitful.N
const kilonewton = Unitful.kN

# 百分比和分数
const percent = Unitful.percent

const steradian=Unitful.sr
const radian=Unitful.rad

const dB = Unitful.dB


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
