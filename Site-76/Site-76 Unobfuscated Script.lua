-- This file was generated using Luraph Obfuscator v12.5 by memcorrupt.

local I1iIllIil11I1iilI11, IlliiIliIiilIlIlIIl = #{1913}, #{ 4109, 4903, 2726, 3335, 4022, 3501, 1921, 6796, 5270, 4255, 494, 3126, 1668, 3669, 2183, 1956, 2326, 3190, 4207, 4099, 1844 } + string.byte("s", 1) + 130935
local numberValue = 1
local I1l1lIi1iiiIiiIiIII, iiIl1iiIi1iiII1illl
local function IIIlll11ii1IiIliiIi(iiI1iiIl1Il11lli1lI, lIlI1Il1Ii1iIi1iii1Ii)
    local ii1ili1ll1I111Iiili iiI1iiIl1Il11lli1lI = string.gsub(string.sub(iiI1iiIl1Il11lli1lI, 5), "..", function(iI1lIlIl11lilIlilIi) 
        if string.byte(iI1lIlIl11lilIlilIi, 2) == 72 then 
            ii1ili1ll1I111Iiili = tonumber(string.sub(iI1lIlIl11lilIlilIi, 1, 1)) 
            return ""
        else
            local liIii1ii1iI1I1IlI1i = string.char(tonumber(iI1lIlIl11lilIlilIi, 16)) 
            if ii1ili1ll1I111Iiili then 
                local l1lliIl1i1I1Illlili = string.rep(liIii1ii1iI1I1IlI1i, ii1ili1ll1I111Iiili) ii1ili1ll1I111Iiili = nil 
                return l1lliIl1i1I1Illlili 
            else 
                return liIii1ii1iI1I1IlI1i
             end
             end 
            end) 
            local function iI11lIIlillliI1IiiI() 
                local lIliiIill1IlilIiilI1i = string.byte(iiI1iiIl1Il11lli1lI, 1, 1) numberValue = numberValue + 1 
                return lIliiIill1IlilIiilI1i
             end 
             local function lIl11ilIll1lI11li1I11() 
                local lIliiIill1IlilIiilI1i, liIii1ii1iI1I1IlI1i, l1lliIl1i1I1Illlili, lIlIIIiii1l1lIliIIii1 = string.byte(iiI1iiIl1Il11lli1lI, numberValue, numberValue + 3) numberValue = numberValue + 4 
                return lIlIIIiii1l1lIliIIii1 * 16777216 + l1lliIl1i1I1Illlili * 65536 + liIii1ii1iI1I1IlI1i * 256 + lIliiIill1IlilIiilI1i
             end 
             local function lIl1i1l1i1iliIllIIi1l(iIli1lI1ili1iIlIiIl, Ilii1iiIiIl1I1il11i, llIlI1Illl1iil1ill1) 
                if llIlI1Illl1iil1ill1 then
                     local lIlI11l11iIiiliil11l1, lIIiIi1IIlIIiI11I1l = 0, 0 
                     for I1IIlllIlli1lii111i = Ilii1iiIiIl1I1il11i, llIlI1Illl1iil1ill1 do 
                        lIlI11l11iIiiliil11l1 = lIlI11l11iIiiliil11l1 + 2 ^ lIIiIi1IIlIIiI11I1l * lIl1i1l1i1iliIllIIi1l(iIli1lI1ili1iIlIiIl, I1IIlllIlli1lii111i) lIIiIi1IIlIIiI11I1l = lIIiIi1IIlIIiI11I1l + 1 
                    end 
                    return lIlI11l11iIiiliil11l1 
                else 
                    local ii1i1I1lI1lIiIi11li = 2 ^ (Ilii1iiIiIl1I1il11i - 1) 
                    return ii1i1I1lI1lIiIi11li <= iIli1lI1ili1iIlIiIl % (ii1i1I1lI1lIiIi11li + ii1i1I1lI1lIiIi11li) and 1 or 0 
                end 
            end 
            local function l11Ii1i1iilillil1Ii() 
                local lIliiIill1IlilIiilI1i, liIii1ii1iI1I1IlI1i = lIl11ilIll1lI11li1I11(), lIl11ilIll1lI11li1I11() 
                if lIliiIill1IlilIiilI1i == 0 and liIii1ii1iI1I1IlI1i == 0 then 
                    return 0 
                end
                 return (-2 * lIl1i1l1i1iliIllIIi1l(liIii1ii1iI1I1IlI1i, 32) + 1) * 2 ^ (lIl1i1l1i1iliIllIIi1l(liIii1ii1iI1I1IlI1i, 21, 31) - 1023) * ((lIl1i1l1i1iliIllIIi1l(liIii1ii1iI1I1IlI1i, 1, 20) * 4294967296 + lIliiIill1IlilIiilI1i) / 4503599627370496 + 1)
                 end 
                 local iiIiIiI1iiiIIIilI1l = bit or bit32
                 local lIli1iIli1IIi1lIll11i = iiIiIiI1iiiIIIilI1l and iiIiIiI1iiiIIIilI1l.bxor or 
                 function(lIliiIill1IlilIiilI1i, liIii1ii1iI1I1IlI1i) 
                    local iIii11iiIlli11I1ll1 = 1 
                    local l1lliIl1i1I1Illlili = 0 
                    while lIliiIill1IlilIiilI1i > 0 and liIii1ii1iI1I1IlI1i > 0 do 
                        local llllIll1IiiIiIll1Il = lIliiIill1IlilIiilI1i % 2 
                        local iIIlIIliiiliIi1l111 = liIii1ii1iI1I1IlI1i % 2 if llllIll1IiiIiIll1Il ~= iIIlIIliiiliIi1l111 then 
                            l1lliIl1i1I1Illlili = l1lliIl1i1I1Illlili + iIii11iiIlli11I1ll1 
                        end 
                        lIliiIill1IlilIiilI1i = (lIliiIill1IlilIiilI1i - llllIll1IiiIiIll1Il) / 2 liIii1ii1iI1I1IlI1i = (liIii1ii1iI1I1IlI1i - iIIlIIliiiliIi1l111) / 2 iIii11iiIlli11I1ll1 = iIii11iiIlli11I1ll1 * 2 end 
                        if lIliiIill1IlilIiilI1i < liIii1ii1iI1I1IlI1i then 
                            lIliiIill1IlilIiilI1i = liIii1ii1iI1I1IlI1i 
                        end
                             while lIliiIill1IlilIiilI1i > 0 do
                                 local llllIll1IiiIiIll1Il = lIliiIill1IlilIiilI1i % 2 if llllIll1IiiIiIll1Il > 0 then 
                                    l1lliIl1i1I1Illlili = l1lliIl1i1I1Illlili + iIii11iiIlli11I1ll1 
                                end 
                                lIliiIill1IlilIiilI1i = (lIliiIill1IlilIiilI1i - llllIll1IiiIiIll1Il) / 2 iIii11iiIlli11I1ll1 = iIii11iiIlli11I1ll1 * 2 
                            end 
                            return 
                            l1lliIl1i1I1Illlili
                         end 
                         local function lillilIIlIililIii1i(lIlIIIIIIII1iiIii1lII) 
                            local lIlIil1IliIIi1I1iIl1I = {string.byte(iiI1iiIl1Il11lli1lI, numberValue, numberValue + 3) } numberValue = numberValue + 4 
                            local lIliiIill1IlilIiilI1i = lIli1iIli1IIi1lIll11i(lIlIil1IliIIi1I1iIl1I[1], iiIl1iiIi1iiII1illl) 
                            local liIii1ii1iI1I1IlI1i = lIli1iIli1IIi1lIll11i(lIlIil1IliIIi1I1iIl1I[2], iiIl1iiIi1iiII1illl) 
                            local l1lliIl1i1I1Illlili = lIli1iIli1IIi1lIll11i(lIlIil1IliIIi1I1iIl1I[3], iiIl1iiIi1iiII1illl) 
                            local lIlIIIiii1l1lIliIIii1 = lIli1iIli1IIi1lIll11i(lIlIil1IliIIi1I1iIl1I[4], iiIl1iiIi1iiII1illl) iiIl1iiIi1iiII1illl = (193 * iiIl1iiIi1iiII1illl + lIlIIIIIIII1iiIii1lII) % 256 
                            return lIlIIIiii1l1lIliIIii1 * 16777216 + l1lliIl1i1I1Illlili * 65536 + liIii1ii1iI1I1IlI1i * 256 + lIliiIill1IlilIiilI1i
                         end 
                         local function lIlIiii1lIl1III1I1lli(lIl1l1i1I1i1iIii1II1i)
                             local IillIi1lllllIiIlIIl = lIl11ilIll1lI11li1I11()
                              local lIli1i11lIIIilii1ili1 = "" 
                              for I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, IillIi1lllllIiIlIIl do
                                 lIli1i11lIIIilii1ili1 = lIli1i11lIIIilii1ili1 .. string.char(lIli1iIli1IIi1lIll11i(string.byte(iiI1iiIl1Il11lli1lI, numberValue + I1IIlllIlli1lii111i - 1), I1l1lIi1iiiIiiIiIII)) I1l1lIi1iiiIiiIiIII = (lIl1l1i1I1i1iIii1II1i * I1l1lIi1iiiIiiIiIII + 27) % 256
                                 end 
                                 numberValue = numberValue + IillIi1lllllIiIlIIl
                                 return 
                                 lIli1i11lIIIilii1ili1 
                                end 
                                 I1l1lIi1iiiIiiIiIII = iI11lIIlillliI1IiiI() iiIl1iiIi1iiII1illl = iI11lIIlillliI1IiiI() 
                                 local ililI1iiI11II1111i1 = {} 
                                 for I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, iI11lIIlillliI1IiiI() do 
                                    local i1illliIiiIiIlI1IIi = iI11lIIlillliI1IiiI() 
                                    local iilIllll1il1ilI1iIl = (I1IIlllIlli1lii111i - 1) * 2 ililI1iiI11II1111i1[iilIllll1il1ilI1iIl] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, 1, 4) ililI1iiI11II1111i1[iilIllll1il1ilI1iIl + 1] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, 5, 8) 
                                end 
                                local function ill1111iIi111il11il()
                                    local II1IlllI1i1lII1II1I = { {}, nil, nil, nil, {}, {}, {} } 
                                    local IliI1IIIiiil1l1lIlI = lIl11ilIll1lI11li1I11() - (#{ 3867, 5000, 5225, 4437, 5757, 6500, 1680, 5351, 573, 5680, 3516, 6829, 299, 188, 2319, 3325, 6941, 933, 572, 5928, 5932, 4587, 3313 } + string.byte("s", 1) + 133587) 
                                    local ll1l1IlIl1II1ii1i1i = iI11lIIlillliI1IiiI() for
                                     I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, IliI1IIIiiil1l1lIlI do 
                                        local ii1lii1IiIl11i11l11 
                                        local type = iI11lIIlillliI1IiiI() if type == #{} then 
                                            ii1lii1IiIl11i11l11 = #{ 1211, 5018, 3736, 3532, 2683, 1290, 1117, 5982, 3178, 5566, 5514, 3443, 176, 2002, 1292, 515, 722, 6587, 4174, 3919, 6005, 4303, 2698, 3997 } + string.byte("s", 1) + 6445 == #{ 5225, 1795, 45, 6925, 1519, 6674, 5139, 1427, 4164, 6427, 5979, 3447, 1477, 241, 566, 3848, 5902, 5077, 3556, 2142 } + string.byte("s", 1) + 132130 
                                        end 
                                        if type == #{ 5344, 3613, 5542, 2650, 6537, 1618, 5021, 4947, 4052, 3365, 6888, 6820, 6661, 5812, 4517, 5111, 2110, 4176, 529, 4101, 3022, 3062 } + string.byte("s", 1) + 25 then 
                                            ii1lii1IiIl11i11l11 = string.sub(lIlIiii1lIl1III1I1lli(ll1l1IlIl1II1ii1i1i), #{ 5777, 4953, 4238 }) 
                                        end
                                         if type == #{ 2737, 5884, 5973, 1390, 1572, 3084, 431, 4309, 2889, 2017, 4755 } then 
                                            ii1lii1IiIl11i11l11 = l11Ii1i1iilillil1Ii() 
                                        end 
                                        if type == #{ 5573, 6548, 822, 2927, 6348, 4758, 884, 4791, 4448, 4599, 5403, 2322, 290, 1028, 3980, 2671, 3599, 2882, 6530, 1688, 1435, 4621, 6026 } + string.byte("s", 1) + -78 then 
                                            ii1lii1IiIl11i11l11 = string.sub(lIlIiii1lIl1III1I1lli(ll1l1IlIl1II1ii1i1i), #{ 5007, 1418, 4871, 30, 4882, 5480 }) 
                                        end 
                                        if type == #{ 2762, 2449, 1060, 2027, 4338, 6433, 4713, 1599, 249, 3542, 3454, 4473, 4561, 4221, 6013, 6387, 6634, 978, 4594, 329, 4182, 6948 } + string.byte("s", 1) + 112 then
                                             ii1lii1IiIl11i11l11 = lIl11ilIll1lI11li1I11() 
                                            end 
                                            if type == #{ 4055, 5527, 6711, 4128, 86, 3240, 2453, 5567, 5808, 88, 1484, 4082, 6757, 2952, 3013, 5096, 1538, 3134, 2168, 3995, 4685 } + string.byte("s", 1) + 15 then 
                                                ii1lii1IiIl11i11l11 = lIl11ilIll1lI11li1I11() 
                                            end
                                                 if type == #{ 1976, 2719, 5395, 5826, 1095, 5834, 3846, 1343, 851, 3971, 387, 443, 3053, 4759, 2612, 5304, 3087, 3988, 1243, 916, 2664, 1767, 3034 } + string.byte("s", 1) + -106 then 
                                                    ii1lii1IiIl11i11l11 = l11Ii1i1iilillil1Ii()
                                                 end
                                                  if type == #{ 5731, 1237, 3349, 6138, 5757, 3414, 3747, 5573, 2818, 6160, 6893, 247, 114, 1315, 2464, 6465, 2414, 4529, 6530, 4800, 282 } + string.byte("s", 1) + -34 then 
                                                    ii1lii1IiIl11i11l11 = #{ 5187, 1596, 2430, 1306, 5445, 248, 2410, 4528, 6165, 3786, 1744, 332, 365, 722, 3500, 4885, 4124, 3801, 216, 2265, 2852 } + string.byte("s", 1) + 20532 == #{ 5187, 1596, 2430, 1306, 5445, 248, 2410, 4528, 6165, 3786, 1744, 332, 365, 722, 3500, 4885, 4124, 3801, 216, 2265, 2852 } + string.byte("s", 1) + 20532 
                                                end 
                                                if type == #{ 5510, 2695, 5682, 5182, 3621, 2362, 5935, 660, 3769, 698, 4992, 977, 2306, 3550, 3682, 1365, 6772, 2654, 2265, 3625, 4349, 4648 } + string.byte("s", 1) + -74 
                                                then ii1lii1IiIl11i11l11 = iI11lIIlillliI1IiiI() + lIl11ilIll1lI11li1I11() + l11Ii1i1iilillil1Ii() end II1IlllI1i1lII1II1I[1][I1IIlllIlli1lii111i - I1iIllIil11I1iilI11] = ii1lii1IiIl11i11l11
                                             end 
                                             iI11lIIlillliI1IiiI() II1IlllI1i1lII1II1I[4] = iI11lIIlillliI1IiiI()
                                              local ii1lliIl1Il1l1llIii = lIl11ilIll1lI11li1I11() - (#{ 1261, 6846, 4260, 2119, 6797, 6015, 2483, 6065, 1094, 5611, 4075, 6393, 2365, 6762, 4094, 5131, 6208, 4872, 6844, 1742, 5561, 6327, 273 } + string.byte("s", 1) + 133627)
                                               local lIlIi1Ill1IIl1Illlii1 = iI11lIIlillliI1IiiI()
                                                for I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, ii1lliIl1Il1l1llIii do 
                                                    local lIii1Il1lIi1iI1I1ll = { nil, nil, nil, nil, nil, nil, nil, nil, nil, nil } 
                                                    local i1illliIiiIiIlI1IIi = lillilIIlIililIii1i(lIlIi1Ill1IIl1Illlii1) lIii1Il1lIi1iI1I1ll[7] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, #{ 2050, 6544, 3467, 2030, 4662, 4830, 298, 186, 3538, 637, 2922, 3908, 5675, 2794, 5761, 4421, 3630, 5873, 1838, 5935, 6551, 1286, 3597 } + string.byte("s", 1) + -111, #{ 2897, 919, 1372, 2039, 1017, 3817, 516, 5819, 831, 5193, 988, 4410, 6878, 6279, 779, 2993, 5526, 5702, 5645, 5944 } + string.byte("s", 1) + -103) lIii1Il1lIi1iI1I1ll[1] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, #{2273}, #{ 1335, 178, 5483, 2299, 4474, 6483, 4046, 3140, 1283 }) lIii1Il1lIi1iI1I1ll[4] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, #{6517}, #{ 3721, 6479, 2903, 1005, 3395, 3811, 4058, 884, 4974, 6961, 92, 1925, 5952, 2989, 4962, 6049, 2911, 5367 }) lIii1Il1lIi1iI1I1ll[3] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, #{ 3821, 514, 258, 6683, 5830, 5222, 3734, 5111, 4893, 189, 6282, 3019, 6315, 2458, 1387, 4570, 3187, 2214, 105 }, #{ 4000, 1850, 6533, 1105, 1189, 1266, 5265, 2364, 5897, 6706, 5192, 1302, 6117, 4191, 6414, 3033, 85, 4538, 2936, 3240, 146, 3828, 4701 } + string.byte("s", 1) + -112) lIii1Il1lIi1iI1I1ll[6] = lIl1i1l1i1iliIllIIi1l(i1illliIiiIiIlI1IIi, #{ 350, 2351, 1785, 5753, 335, 2594, 5605, 1323, 5100, 4555 }, #{ 5551, 2013, 3806, 1625, 4421, 4833, 4427, 3902, 884, 3675, 1344, 4318, 205, 867, 6175, 3030, 753, 5025 }) II1IlllI1i1lII1II1I[7][I1IIlllIlli1lii111i] = lIii1Il1lIi1iI1I1ll
                                                end 
                                                for I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, ii1lliIl1Il1l1llIii do 
                                                    local lIii1Il1lIi1iI1I1ll = II1IlllI1i1lII1II1I[7][I1IIlllIlli1lii111i] 
                                                    local lIl11IiIiiilliIlliI1I = ililI1iiI11II1111i1[lIii1Il1lIi1iI1I1ll[7]] 
                                                    if lIl11IiIiiilliIlliI1I == #{ 6323, 6884, 5739, 3056 } then 
                                                        lIii1Il1lIi1iI1I1ll[9] = II1IlllI1i1lII1II1I[1][lIii1Il1lIi1iI1I1ll[4]] 
                                                    end 
                                                    if lIl11IiIiiilliIlliI1I == #{ 3760, 1739, 5465 } then 
                                                        if lIii1Il1lIi1iI1I1ll[1] > 255 then 
                                                            lIii1Il1lIi1iI1I1ll[5] = true lIii1Il1lIi1iI1I1ll[2] = II1IlllI1i1lII1II1I[1][lIii1Il1lIi1iI1I1ll[1] - 256] end 
                                                            if lIii1Il1lIi1iI1I1ll[6] > 255 then 
                                                                lIii1Il1lIi1iI1I1ll[8] = true lIii1Il1lIi1iI1I1ll[10] = II1IlllI1i1lII1II1I[1][lIii1Il1lIi1iI1I1ll[6] - 256] 
                                                            end 
                                                        end 
                                                        if lIl11IiIiiilliIlliI1I == #{4789, 3301} and lIii1Il1lIi1iI1I1ll[6] > 255 then 
                                                            lIii1Il1lIi1iI1I1ll[8] = true lIii1Il1lIi1iI1I1ll[10] = II1IlllI1i1lII1II1I[1][lIii1Il1lIi1iI1I1ll[6] - 256] 
                                                        end 
                                                        if lIl11IiIiiilliIlliI1I == #{2745} and lIii1Il1lIi1iI1I1ll[1] > 255 then
                                                             lIii1Il1lIi1iI1I1ll[5] = true lIii1Il1lIi1iI1I1ll[2] = II1IlllI1i1lII1II1I[1][lIii1Il1lIi1iI1I1ll[1] - 256] 
                                                            end 
                                                        end 
                                                        II1IlllI1i1lII1II1I[2] = iI11lIIlillliI1IiiI() II1IlllI1i1lII1II1I[3] = iI11lIIlillliI1IiiI() iI11lIIlillliI1IiiI() lIl11ilIll1lI11li1I11() lIl11ilIll1lI11li1I11() 
                                                        local IliI1IIIiiil1l1lIlI = lIl11ilIll1lI11li1I11() 
                                                        for I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, IliI1IIIiiil1l1lIlI do 
                                                            II1IlllI1i1lII1II1I[6][I1IIlllIlli1lii111i - I1iIllIil11I1iilI11] = ill1111iIi111il11il() 
                                                        end 
                                                        local IliI1IIIiiil1l1lIlI = lIl11ilIll1lI11li1I11() 
                                                        for I1IIlllIlli1lii111i = I1iIllIil11I1iilI11, IliI1IIIiiil1l1lIlI do 
                                                            II1IlllI1i1lII1II1I[5][I1IIlllIlli1lii111i] = lIl11ilIll1lI11li1I11() 
                                                        end
                                                         return II1IlllI1i1lII1II1I 
                                                        end
                                                         local function IllilI1lIIiiIlliI11(II1IlllI1i1lII1II1I, lIlI1Il1Ii1iIi1iii1Ii, Ii11l11IiI1i1Il1lil) 
                                                            local lIllI1iIlIiliI11lllll, I1lii1ill1lIilIill1 = 13, -1 
                                                            local II1liIl1I1IillI1lIi = II1IlllI1i1lII1II1I[7]
                                                             local IlI1I1I1lli11lil1i1 = 2 
                                                             local I1lIIiiIIIIii1lll1i = II1IlllI1i1lII1II1I[6] 
                                                             local I1iiIiII1Il1I1l11il = II1IlllI1i1lII1II1I[4] 
                                                             local IiII1iIlilIi1Il1i11 = II1IlllI1i1lII1II1I[3] 
                                                             local lIlIiliiI1l1II1i1liI1 = 7
                                                              local l111Iillli1lI1I1iII = II1IlllI1i1lII1II1I[5] 
                                                              local lIiil1IiIiI11l11lIl = 1 
                                                              local 
                                                              function mainGui(...)
                                                                 local l11I111lIllll1iliI1 = 0 
                                                                 local II1Iill11iIlllil1ii = { unpack({}, 1, IiII1iIlilIi1Il1i11) }
                                                                  local lIl1I1I111lI1ii111III = 1 
                                                                  local lIlIiilill1li1Ill11I1 = {}
                                                                   local il111lli1I11lI1i1iI = {} 
                                                                   local lIlI1Il1Ii1iIi1iii1Ii = getfenv() 
                                                                   local lIl11iil1l1l11ill1lIl = { ... } 
                                                                   local l1iil1l11Illll1I1li = #lIl11iil1l1l11ill1lIl - 1 
                                                                   for I1IIlllIlli1lii111i = 0, l1iil1l11Illll1I1li do 
                                                                    if I1IIlllIlli1lii111i < I1iiIiII1Il1I1l11il then 
                                                                        II1Iill11iIlllil1ii[I1IIlllIlli1lii111i] = lIl11iil1l1l11ill1lIl[I1IIlllIlli1lii111i + 1] 
                                                                    end 
                                                                end 
                                                                local function ii1IiIlil1I1lii1lIl(...) 
                                                                    local l1lliIl1i1I1Illlili = select("#", ...) 
                                                                    local lIli1il11IIliIiiIli1l = { ... }
                                                                     return l1lliIl1i1I1Illlili, lIli1il11IIliIiiIli1l
                                                                     end
                                                                      local function lilI11I1iII1li1IIIl()
                                                                         while true do 
                                                                            local i1I1l111iI1Il1IIIll = II1liIl1I1IillI1lIi[lIl1I1I111lI1ii111III] 
                                                                            local llIi1IIll1Iill1i111 = i1I1l111iI1Il1IIIll[7] lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III + 1 
                                                                            if llIi1IIll1Iill1i111 >= 8 then 
                                                                                if llIi1IIll1Iill1i111 < 12 then 
                                                                                    if llIi1IIll1Iill1i111 >= 10 then 
                                                                                        if llIi1IIll1Iill1i111 == 11 then lIlI1Il1Ii1iIi1iii1Ii[i1I1l111iI1Il1IIIll[9]] = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] 
                                                                                        else 
                                                                                            local iliI1III1i11lI1liiI = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[1]] local l1lliIl1i1I1Illlili 
                                                                                            if i1I1l111iI1Il1IIIll[8] then 
                                                                                                l1lliIl1i1I1Illlili = i1I1l111iI1Il1IIIll[10] 
                                                                                            else l1lliIl1i1I1Illlili = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[6]] 
                                                                                            end 
                                                                                            II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3] + 1] = iliI1III1i11lI1liiI II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = iliI1III1i11lI1liiI[l1lliIl1i1I1Illlili] 
                                                                                        end 
                                                                                    elseif llIi1IIll1Iill1i111 == 9 then 
                                                                                        local IllIiIIiIlii1lli1li = i1I1l111iI1Il1IIIll[3] 
                                                                                        local lIl11iil1l1l11ill1lIl = i1I1l111iI1Il1IIIll[1] 
                                                                                        local lIl1I1IlililIlI1iillI = i1I1l111iI1Il1IIIll[6] 
                                                                                        local iIIIIl1IliIi1Iil11l, iI1illIlllllIiIIiI1, lilI11I1iII1li1IIIl
                                                                                         if lIl11iil1l1l11ill1lIl ~= 1 then 
                                                                                            if lIl11iil1l1l11ill1lIl ~= 0 then 
                                                                                                iI1illIlllllIiIIiI1 = IllIiIIiIlii1lli1li + lIl11iil1l1l11ill1lIl - 1
                                                                                             else iI1illIlllllIiIIiI1 = l11I111lIllll1iliI1 
                                                                                            end 
                                                                                            iI1illIlllllIiIIiI1, iIIIIl1IliIi1Iil11l = ii1IiIlil1I1lii1lIl(II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li](unpack(II1Iill11iIlllil1ii, IllIiIIiIlii1lli1li + 1, iI1illIlllllIiIIiI1))) 
                                                                                        else iI1illIlllllIiIIiI1, iIIIIl1IliIi1Iil11l = ii1IiIlil1I1lii1lIl(II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li]())
                                                                                         end 
                                                                                         if lIl1I1IlililIlI1iillI ~= 1 then 
                                                                                            if lIl1I1IlililIlI1iillI ~= 0 then 
                                                                                                iI1illIlllllIiIIiI1 = IllIiIIiIlii1lli1li + lIl1I1IlililIlI1iillI - 2 l11I111lIllll1iliI1 = iI1illIlllllIiIIiI1 + 1 else iI1illIlllllIiIIiI1 = iI1illIlllllIiIIiI1 + IllIiIIiIlii1lli1li - 1 l11I111lIllll1iliI1 = iI1illIlllllIiIIiI1 
                                                                                                end lilI11I1iII1li1IIIl = 0 
                                                                                                for I1IIlllIlli1lii111i = IllIiIIiIlii1lli1li, iI1illIlllllIiIIiI1 do 
                                                                                                    lilI11I1iII1li1IIIl = lilI11I1iII1li1IIIl + 1 II1Iill11iIlllil1ii[I1IIlllIlli1lii111i] = iIIIIl1IliIi1Iil11l[lilI11I1iII1li1IIIl]
                                                                                                 end 
                                                                                                else l11I111lIllll1iliI1 = IllIiIIiIlii1lli1li - 1 
                                                                                                end
                                                                                                 for I1IIlllIlli1lii111i = l11I111lIllll1iliI1 + 1, IiII1iIlilIi1Il1i11 do 
                                                                                                    II1Iill11iIlllil1ii[I1IIlllIlli1lii111i] = nil 
                                                                                                end
                                                                                             else lIlIiilill1li1Ill11I1[II1Iill11iIlllil1ii] = nil 
                                                                                                local IllIiIIiIlii1lli1li = i1I1l111iI1Il1IIIll[3] 
                                                                                                local lIlI11llliiIii1lIllIl = i1I1l111iI1Il1IIIll[1] 
                                                                                                if lIlI11llliiIii1lIllIl == 1 then
                                                                                                     return true 
                                                                                                    end 
                                                                                                    local iI1illIlllllIiIIiI1 = IllIiIIiIlii1lli1li + lIlI11llliiIii1lIllIl - 2 
                                                                                                    if lIlI11llliiIii1lIllIl == 0 then iI1illIlllllIiIIiI1 = l11I111lIllll1iliI1
                                                                                                     end
                                                                                                      return true, IllIiIIiIlii1lli1li, iI1illIlllllIiIIiI1 
                                                                                                    end 
                                                                                                elseif llIi1IIll1Iill1i111 >= 14 then 
                                                                                                    if llIi1IIll1Iill1i111 == 15 then 
                                                                                                        local IllIiIIiIlii1lli1li = i1I1l111iI1Il1IIIll[3] 
                                                                                                        local iilIllll1il1ilI1iIl = IllIiIIiIlii1lli1li + 2 
                                                                                                        local llIliI1IlIl1liliiIi = { II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li](II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li + 1], II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li + 2]) } 
                                                                                                        for I1IIlllIlli1lii111i = 1, i1I1l111iI1Il1IIIll[6] do 
                                                                                                            II1Iill11iIlllil1ii[iilIllll1il1ilI1iIl + I1IIlllIlli1lii111i] = llIliI1IlIl1liliiIi[I1IIlllIlli1lii111i] end 
                                                                                                            if II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li + 3] ~= nil then 
                                                                                                                II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li + 2] = II1Iill11iIlllil1ii[IllIiIIiIlii1lli1li + 3] 
                                                                                                            else lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III + 1
                                                                                                             end 
                                                                                                            else II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = i1I1l111iI1Il1IIIll[1] ~= 0 
                                                                                                                if i1I1l111iI1Il1IIIll[6] ~= 0 then 
                                                                                                                    lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III + 1 
                                                                                                                end
                                                                                                             end
                                                                                                             elseif llIi1IIll1Iill1i111 ~= 13 then 
                                                                                                                local lI1liliiIiiiiIIlIlI = I1lIIiiIIIIii1lll1i[i1I1l111iI1Il1IIIll[4]] 
                                                                                                                local li11ilIi1I1liiIll1l = {} 
                                                                                                                if lI1liliiIiiiiIIlIlI[IlI1I1I1lli11lil1i1] > 0 then 
                                                                                                                    do 
                                                                                                                        local Ii1iiI1ii1ll1l1ll1i = {} li11ilIi1I1liiIll1l = setmetatable({}, { __index = 
                                                                                                                        function(lIli1il11IIliIiiIli1l, l1II111i1IlliIilI1I) local liIi1i11i11lIliIlIi = Ii1iiI1ii1ll1l1ll1i[l1II111i1IlliIilI1I] 
                                                                                                                            return liIi1i11i11lIliIlIi[1][liIi1i11i11lIliIlIi[2]] 
                                                                                                                        end, __newindex = function(lIli1il11IIliIiiIli1l, l1II111i1IlliIilI1I, IIIiliIl11il1Ili1l1) local liIi1i11i11lIliIlIi = Ii1iiI1ii1ll1l1ll1i[l1II111i1IlliIilI1I] liIi1i11i11lIliIlIi[1][liIi1i11i11lIliIlIi[2]] = IIIiliIl11il1Ili1l1 
                                                                                                                        end })
                                                                                                                         for I1IIlllIlli1lii111i = 1, lI1liliiIiiiiIIlIlI[IlI1I1I1lli11lil1i1] do 
                                                                                                                            local lIlIiiiil1llIliIliI1I = II1liIl1I1IillI1lIi[lIl1I1I111lI1ii111III] 
                                                                                                                            if lIlIiiiil1llIliIliI1I[lIlIiliiI1l1II1i1liI1] == lIllI1iIlIiliI11lllll then 
                                                                                                                                Ii1iiI1ii1ll1l1ll1i[I1IIlllIlli1lii111i - 1] = { II1Iill11iIlllil1ii, lIlIiiiil1llIliIliI1I[lIiil1IiIiI11l11lIl] } 
                                                                                                                            elseif lIlIiiiil1llIliIliI1I[lIlIiliiI1l1II1i1liI1] == I1lii1ill1lIilIill1 then Ii1iiI1ii1ll1l1ll1i[I1IIlllIlli1lii111i - 1] = { Ii11l11IiI1i1Il1lil, lIlIiiiil1llIliIliI1I[lIiil1IiIiI11l11lIl] }
                                                                                                                             end 
                                                                                                                             lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III + 1 
                                                                                                                            end 
                                                                                                                            if not lIlIiilill1li1Ill11I1[II1Iill11iIlllil1ii] then 
                                                                                                                                lIlIiilill1li1Ill11I1[II1Iill11iIlllil1ii] = {Ii1iiI1ii1ll1l1ll1i} 
                                                                                                                            else table.insert(lIlIiilill1li1Ill11I1[II1Iill11iIlllil1ii], Ii1iiI1ii1ll1l1ll1i) end 
                                                                                                                        end 
                                                                                                                    end 
                                                                                                                    local lIlilliiliI11IiIIIIil = IllilI1lIIiiIlliI11(lI1liliiIiiiiIIlIlI, lIlI1Il1Ii1iIi1iii1Ii, li11ilIi1I1liiIll1l) II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = lIlilliiliI11IiIIIIil 
                                                                                                                elseif i1I1l111iI1Il1IIIll[6] == 75 then 
                                                                                                                    lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III - 1 II1liIl1I1IillI1lIi[lIl1I1I111lI1ii111III] = { [7] = 8, [3] = (i1I1l111iI1Il1IIIll[3] - 87) % 256, [1] = (i1I1l111iI1Il1IIIll[1] - 87) % 256 } 
                                                                                                                else 
                                                                                                                    II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[1]] 
                                                                                                                    end 
                                                                                                                elseif 
                                                                                                                llIi1IIll1Iill1i111 < 4 then 
                                                                                                                    if llIi1IIll1Iill1i111 < 2 then 
                                                                                                                        if llIi1IIll1Iill1i111 == 1 then 
                                                                                                                            local liIii1ii1iI1I1IlI1i, l1lliIl1i1I1Illlili 
                                                                                                                            if i1I1l111iI1Il1IIIll[5] then 
                                                                                                                                liIii1ii1iI1I1IlI1i = i1I1l111iI1Il1IIIll[2] 
                                                                                                                            else liIii1ii1iI1I1IlI1i = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[1]] 
                                                                                                                            end 
                                                                                                                            if i1I1l111iI1Il1IIIll[8] then 
                                                                                                                                l1lliIl1i1I1Illlili = i1I1l111iI1Il1IIIll[10] 
                                                                                                                            else l1lliIl1i1I1Illlili = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[6]] 
                                                                                                                            end
                                                                                                                             II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]][liIii1ii1iI1I1IlI1i] = l1lliIl1i1I1Illlili else II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = i1I1l111iI1Il1IIIll[9] 
                                                                                                                            end
                                                                                                                         elseif llIi1IIll1Iill1i111 ~= 3 then 
                                                                                                                            II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = { unpack({}, 1, i1I1l111iI1Il1IIIll[1] == 0 and 255 or i1I1l111iI1Il1IIIll[1]) } 
                                                                                                                        else 
                                                                                                                            local liIii1ii1iI1I1IlI1i, l1lliIl1i1I1Illlili 
                                                                                                                            if i1I1l111iI1Il1IIIll[5] then 
                                                                                                                                liIii1ii1iI1I1IlI1i = i1I1l111iI1Il1IIIll[2] 
                                                                                                                            else liIii1ii1iI1I1IlI1i = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[1]] 
                                                                                                                            end 
                                                                                                                            if i1I1l111iI1Il1IIIll[8] then 
                                                                                                                                l1lliIl1i1I1Illlili = i1I1l111iI1Il1IIIll[10] 
                                                                                                                            else l1lliIl1i1I1Illlili = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[6]] 
                                                                                                                            end 
                                                                                                                            if liIii1ii1iI1I1IlI1i == l1lliIl1i1I1Illlili ~= (i1I1l111iI1Il1IIIll[3] ~= 0) then lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III + 1 
                                                                                                                            end 
                                                                                                                        end 
                                                                                                                    elseif llIi1IIll1Iill1i111 >= 6 then 
                                                                                                                        if llIi1IIll1Iill1i111 == 7 then 
                                                                                                                            if i1I1l111iI1Il1IIIll[6] == 85 then 
                                                                                                                                lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III - 1 II1liIl1I1IillI1lIi[lIl1I1I111lI1ii111III] = { [7] = 13, [3] = (i1I1l111iI1Il1IIIll[3] - 215) % 256, [1] = (i1I1l111iI1Il1IIIll[1] - 215) % 256 } 
                                                                                                                            elseif i1I1l111iI1Il1IIIll[6] == 18 then
                                                                                                                                 lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III - 1 II1liIl1I1IillI1lIi[lIl1I1I111lI1ii111III] = { [7] = 15, [3] = (i1I1l111iI1Il1IIIll[3] - 126) % 256, [6] = (i1I1l111iI1Il1IIIll[1] - 126) % 256 }
                                                                                                                                 else Ii11l11IiI1i1Il1lil[i1I1l111iI1Il1IIIll[1]] = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] 
                                                                                                                                end 
                                                                                                                            else lIl1I1I111lI1ii111III = lIl1I1I111lI1ii111III + (i1I1l111iI1Il1IIIll[4] - IlliiIliIiilIlIlIIl) 
                                                                                                                            end 
                                                                                                                        elseif llIi1IIll1Iill1i111 == 5 then
                                                                                                                             II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = lIlI1Il1Ii1iIi1iii1Ii[i1I1l111iI1Il1IIIll[9]] 
                                                                                                                            else 
                                                                                                                                local l1lliIl1i1I1Illlili 
                                                                                                                                if i1I1l111iI1Il1IIIll[8] then 
                                                                                                                                    l1lliIl1i1I1Illlili = i1I1l111iI1Il1IIIll[10] 
                                                                                                                                else l1lliIl1i1I1Illlili = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[6]] 
                                                                                                                                end 
                                                                                                                                II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[3]] = II1Iill11iIlllil1ii[i1I1l111iI1Il1IIIll[1]][l1lliIl1i1I1Illlili] 
                                                                                                                            end 
                                                                                                                        end 
                                                                                                                    end 
                                                                                                                    local lI1illIIiIllIil1i1l, lIli1i11lIIIilii1ili1, ll11IiiIl111iIlllII, iiIiiii1IIIliiiIl11 = pcall(lilI11I1iII1li1IIIl)
                                                                                                                     if lI1illIIiIllIil1i1l then 
                                                                                                                        if ll11IiiIl111iIlllII then 
                                                                                                                            return unpack(II1Iill11iIlllil1ii, ll11IiiIl111iIlllII, iiIiiii1IIIliiiIl11) end 
                                                                                                                        else error("Luraph Script:" .. (l111Iillli1lI1I1iII[lIl1I1I111lI1ii111III - 1] or "") .. ": " .. tostring(lIli1i11lIIIilii1ili1), 0) 
                                                                                                                        end 
                                                                                                                    end 
                                                                                                                    setfenv(mainGui, lIlI1Il1Ii1iIi1iii1Ii) 
                                                                                                                    return
                                                                                                                     mainGui 
                                                                                                                    end 
                                                                                                                    local lIllilliIIliIillIilIl = ill1111iIi111il11il() 
                                                                                                                    return IllilI1lIIiiIlliI11(lIllilliIIliIillIilIl, lIlI1Il1Ii1iIi1iii1Ii)() 
                                                                                                                end 
                                                                                                                IIIlll11ii1IiIliiIi("LPH!5C6F083430422H00422H005E0A02006D0B5H00E4944037008C0A02003F2H6F6D77EF2HEEDE3HAD9D3HAC803HEBFF6B2H6A4E3H29092H00C8EFD8714866C44D32013H00860A0200013C0F3H005C7792ADC88F9178503C1EF7C9D5B13C093H00F10C27425D1FF2C3AC3C0C3H00E4FF1A355023F2D5CC9097793C513H0028435E7994C7BE9170680C7E43F5C3CAF694675D2C2A18E0C3AE946273592608E6D790BA9B620502121EF3DF88826C7217050BE7DDC7F7A059060A081EE5D3BF912C73583D01A5D6AFAE847249690E08F93C083H00B3CEE9041F5430073C303H008BA6C1DCF741443C0653AE82F5CA552H52251EE28794ECD83E0E0F0B13FECCF0AB26570F251FE4C4AFB7967A012400F40B2H0040B4DFACF2413C0F3H009BB6D1EC07605C3B18E9DBABAA94713C0B3H00304B66819CF4BD8167510D3C0C3H0059748FAAC58689795C1E20C00B6H0038403C093H009DB8D3EE09635335020B8H003C0B3H0090ABC6E1FC56512E0DEDEA0B6H0024403C123H00B9D4EF0A250C3211F9D8848D936C412F1AF00B6H0034403C113H009FBAD5F00B62202E1CD1C2A6978C78473B0B6H002C403C0E3H006A85A0BBD6A5695F361E17FFC1BB0B5H00E06F403C0C3H00E4FF1A35500AE2C5ECB695683C093H0028435E7994E2AB8C6E0B2H0050CB55ACF2413C0F3H001B36516C87C3D9BCA06B4A303615FB3C0C3H00B0CBE6011C703703EDD1DFB53C0D3H00F40F2A456032E2D4A1C7474E683C0F3H00536E89A4BF8A99715223135CD2E19D3C0E3H00E8031E39540EEEC182AE826543293C143H00627D98B3CEBB616C5F2150C8CEA0AE9671592D113C153H007E99B4CFEA5745563907E98783B194336A260B0DE93C0E3H00B5D0EB06215D3316DEC4AABA9C663C0E3H002F4A65809BE1B0806C514D3D16EA0B6H0030400B6H0059403C143H00A9C4DFFA15752507E3F0D2F2A47C46537931DCFA3C153H00C5E0FB1631080EF1FCDABF8B296D4B3F18B0EE95B13C393H00FC17324D68C6F0D8B6836F05103717E8C9B5C2B84B636E41F6FACAA7957855613E02E6D9A78DD2395A204AE1C9C8B7936042622E17E1DCB0CD3C0F3H00FF1A35506BD5C4D0B291797822391C3C0A3H0094AFCAE5006B573609F40B6H00F03F0900E90A0200EF3H283C161713034742406EB6B5B9B56764604053575377838682A6F1F9F7E1A5A0A8A0898F838FBD2HBA9A2D212H25D4DCD02HC8D9C5DBF0FAEAFA63697D69121800182H030B232H313E32ADA5A9B157465A444F4353437E726672EDE1F9E12H949CB47478777BA6AEA2BA1E0F130DC2CCDCCCB5BBAFBBE4EAF2EA2H5D557D050F000CFFF7FBE325342836859585955444504423332B332H666E46DED6D9D588808C946C7D617F8C9E8E9E1F0D190DAEBCA4BC2HAFA78FCBDDD2DE4149455DFBEAF6E8F3E7F7E70216021691859D852H30381030242B2753785C7AD7C1D5C1677068702H5B537B8DBE9CA6E4FDE5FDAFA8BC8898AB8DB3D0CAD6CA3A3D2D1DEBD8F2C0CCD7F7D705021E22714D6B5D392400242H133B2346405E66B589AF997E6044604E4F677F7A7C625AE9D3F3C5BC9CB89CAA8BA38BB6BA96BA0B291929DAD8ECE8C0C5DBE3F3CEE8DE4665416517143C2407011F27370A2C1A85A185A1545078603B3D231B68567046F8DDF9DD898CA4BC7F79675FABE6B48218573F09C198EED8B6B79F8FE2E4FAC20DC30960000E2A14A3A16DABDDA248063H00640A0200713C093H00A29D68036ECED5E25F3C0C3H00B5001B06C11CCBB3B4FD41ED3C103H00D9E4BF6AE57C24559010876E9CB106BC3C0E3H000914EF9A1523130753CD6446488A3C0D3H0093FE39441F8230FDCAF83EB5533C0B3H00625D28C32E21112E9601A80B8H00FC008C0A0200CF3H0410D32HD1C3E2E6E0F231373321C0C8C2D08A828D8BC608C2AB00020E4C7CD667E5C3B5714H00073H001A3H001A3H001A3H001A3H001A3H001A3H001B3H00670A0200D93C0A3H00DBBE29DC976A4411A1853C093H00A1948F529D57AA437C3C0E3H004C878A15E8B409E36F0CB2ECC3DE3C133H009E09BC77FA423DC792E4070C571374CA608D5F3C093H00676AF5C8A30810893A3C093H00A26D809B7EADF338A83C0C3H00E53893B661102A612982E4973C0A3H00D90C474AD52HEC4923B73C0F3H003F824D607B0DBE1559DD81771CE4323C0E3H00342FF23DD038B9D082406EDAE7115800A40A0200C93HEDF977767262BEBBB9AFC92HCEE0939195B51A121A3E6763617B68647A7C303F3739BFBEBCA6030B112F2H12043459FD21C49A9D637A3HABBFB5B4B0A07C797B6D070800164E5F495F592H5E7023212505AAA2AA8EF7F3F1EBF8F4EAECC0D7C7C94F4E4C56939B81BF2HA2B484E94D91740A0DF3EA63AD670E0007E739999D7DE1150C6D4H001F3H001E3H001E3H001E3H001E3H001E3H001E3H001E3H001F3H001F3H001F3H00203H00203H001E3H00213H00243H00243H00243H00243H00243H00243H00243H00243H00243H00253H00253H00253H00263H00263H00243H00273H00293H00630A0200293C093H000611D40F828A71C61B3C0C3H0049CCC7FA25580F97F8A10D013C103H005D001B6EB9F05889F494838A90CD8A103C0E3H00CDF08B5E29EFCFBB778920A204D63C0D3H005F523DE0FB06ECF176A41AB1D73C0E3H00C6D194CF42FAB107555AFCE2DF8188018C0A0200572H4440509A999D8B33363422082H0F192128263072762H735698523B0002C86A1F591DE89D6A344H00073H002C3H002C3H002C3H002C3H002C3H002C3H002D3H00830A0200393C0A3H00C8A366D1A4EFE36472683C093H001EC9DC173A6259FEB33C0E3H00C1148FF2FD0764FCD23F77CB96CD3C113H008346B1847F2B998596ADD9DD8074806A003C133H00B6A1F46FD29A359F2AFC5F84EFBBEC0248E5173C093H005F42CDC0DB90E8F1B23C0F3H00FAC5F85396C8A02ADFED59A8250C7C3C0D3H00C76AB568434F1F374B432HC3DE3C083H00BE697CB7DACBBD443C113H007661B42F92DF79C7423B83C638F10F568F3C123H0051241F028DEFE8F77B2BFD83F2DD62322BAD3C093H000F727DF08B5D50B6E23C0A3H002A752803C66440968F5F0B6H0024400B8H003C103H00607B7E293C36F612F98A456E1ABB3D2D663C0A3H00D06BEE19AC21783465860B6H00E03F3C1B3H00A611E4DFC20F2138352H6E380F2B1C8764603ABC425CC22EA09AF50BCD5HCCEC3F3C143H0047EA35E8C3C49EB6DBC75F7352448CAC5E2240343C113H00B3F6E134AF5072E24FCBAB2F48A67ABA903C0B3H0066D1A49F824E6F7771BBEF0B5H00E06F403C153H00173A05389394A077E4958F1F7EE0DD0F68C69ADAB03C0E3H0046B1847F62B985838AE5DD957F890B6H00F03F0B6H3301403C0D3H001873B6A1F43BB7A524B807E3490B6H0034403C093H00E78AD5886372F41C2B3C0F3H0042CDC0DBDEDDF9AF8E86973FF9F3E70B6H006F403C093H004FB2BD30CB081662B33C103H006AB5684306362B4B4ACCCDF9D2081FDC3C153H00DAA5D8337635D157E6C962CA402A9CC638F026409F0B6H33D33F3E00DB0A0200CF3HE5F1757470604247452H532H5442A0A9A78932303414FFF7FFDB440E0C1659574B4DE9E0EEE0FCBBB9A3CDCA2HDE1C090F09A1A8B0A8ACDD0F68858292A2D0C0C3D168647C70352329234F425E429F91B1912D200420E1EFC7EFFBFAE6DA46405949D3FDCAD8ACABB3BFBCAAA0AA180915094432E48764637F437A766A62C2D5DBD5465474542D23072320321A328F81AD8115140C34D4D0C7DBFDC7F4EA28202739DBCCD0D89C8B858BA4AA8AAAE1F9DDF99088A0882H534B7370697E62A2B5A9A143545A541D1333133A2206227F7159712H041C24D6C0D7CBD9DEC2CA2A3D333DA6BC9CBC56210B94999E86BEE5E9C9FD70685A685C47634758567E56B9A589A53A3404340607232719030E16747C7F65EDCDEEF4BBB59DAFD1DFD2CA00060319BBAC8CB8736B596BAB8AAE8AF8D9F1D9496844682H33171366575A42B7D28B91006F3A20E0C4EDF78226FA1FE3AE5049B876BCD5000DD40FCCC93D4B9C64564H00563H00303H00303H00303H00303H00303H00303H00303H00303H00313H00313H00313H00323H00323H00323H00323H00323H00333H00343H00343H00343H00343H00343H00343H00343H00343H00353H00363H00363H00363H00363H00363H00373H00373H00373H00373H00373H00373H00373H00373H00383H00393H003A3H003A3H003A3H003A3H003A3H003A3H003A3H003B3H003B3H003B3H003B3H003B3H003B3H003B3H003C3H003C3H003C3H003C3H003C3H003D3H003D3H003D3H003D3H003D3H003D3H003D3H003D3H003E3H003F3H00403H00403H00413H00423H00423H00423H00423H00423H00423H00423H00433H00443H00453H00303H00463H00483H00660A02005D3C0A3H00518883B2C5DCF69F0B633C093H00EB7A6DB47F59C0F5363C0E3H004215BC6786BE4FC961CEB42EAD943C113H00A823D265CC7E627C5DD8EA6CA3713B33CB3C133H00F362B5DC07E10C341F4F2E878A80F5A9AD86763C093H00ECD736B95065DBC0913C0F3H00BF7EE1D893CB2199CA966003903F8D3C123H00048F0E31E80C61CC3E003C6007AEAB297E663C0C3H009E81F833A2B1793492DBEFE27B00960A02009F3HAFBB8F8E8A9AACA9ABBD0D2H0A1CAAA3AD83888A8EAEA9A1A98D0D080A10A3ADB1B7838A848AA7A5A7BD000A1214A6B3B58B2H8096A6218559BCF7FF0118C709C3AA0007C9AFC838005A5677594H00113H004B3H004B3H004B3H004B3H004B3H004B3H004B3H004B3H004C3H004C3H004C3H004D3H004D3H004D3H004B3H004E3H00503H00820A0200CD3C0A3H006AFDB43F8EA1195A80963C093H007C679639C0BC1BA0213C0C3H008F9EA1088352D96DCEC37B233C0C3H002B8A9DD4DFDE1DF9AA77F7EF3C0E3H0007B6D9E07BD92H055DDF225C46503C133H00552C57C6A937AEDE79910CAD74D617534BC8D43C093H00D679001BBA43E5A2BB3C093H00E148C342F50492872D3C0D3H00906BCADD145680C2AC723CA6B93C083H0047F61920BBB4C8D33C113H006FFE81686320FC00FB6486D1798E3A41D63C143H000E51F8B3720A8F8E24CE2A628D28B56B7418D7313C093H0082358C3726DAB9D16F3C0A3H001D545F2EF14D17FB682E0B6H0024400B8H003C103H0087365960FB5B8193CE47B2E7CDF6BADC663C0A3H00D74629F04B6CCF15922B0B6H00E03F3C1B3H009138F3B2A57E463592E7E955F86A2B0A13A92DB105AD0503A773920B6H00F03F3C143H004A5D949F6E7337E1B6202E941FE3C56B335541833C113H007E01E8E3E2578365E20C42C80591DB4DBD3C0B3H00D17833F2E53F08FA56B2E80B5H00E06F403C153H007ACD448F9EE369E069D27ED8D3673468E5F1BBAD9D3C0E3H007198D31285C862CEADAC1AF82H080B6H3301403C0D3H002FBE4128237630542395C00AAE0B6H0034403C093H00AA3DF47FCE45DD0B463C0F3H0025BCA7D679547EC279C7A0B28E3AF03C093H0042F54CF7E60FFF05BE3C103H00DD141FEEB19F7C26ADBD2AB47541D8B13C153H00ADA46FFE813C061AE138E56787C37B8B0F51D16D280B6H33D33F2200E20A0200673H7E6A646561718D888A9CF22HF5DB989A9EBE818981A5FAA8AAB02H0F2H1BB2BEACA69B9787B5C6C4DCE02B233F0F98D2D0CAB0B593A9EAEEE2EC0047455FE6EEC6FADFC7FFC5F6FCD0FC83C9EF7C090E222EF7E6DBF51518340C746D516F28261626020D390D3A340C34949BA79B47466E66253E012D40737A54BFB79BA3554C704E574575458DC6FC73D0D7FFF7777A4A6E6D7353719B88BC88E0EFD7EF8596AA96727D3D7DA1A094800712270FA6999CB68F86B79DD8C0F0D42B351537C1CEFACEACB58DB5C5DCE0DC2H477367FDF3C6EEC9D1E1C5F4EACAE8505F6B5F1F063E06E2EDD1ED2H1024306162577F2A221236051B3B192B300430753D03883D3A0E1A28251131415E7A5CA6B38BB3555A665A5D41014167682C68CACBFBEB7A6D46724B426F5999B9B680EFE7DDFB8D89A2962H644B7DB8A094B40A153117B7AE96AE8C95A995B3BCFCBC2H271707EAD1FACE90F483B5FB91EADC2B140D3B66C2EAF87F32CCD574D00CE9F1A45A435A945E370012E50928E450FCF60E3C4H005D3H00533H00533H00533H00533H00533H00533H00533H00543H00543H00543H00543H00543H00543H00553H00553H00553H00563H00563H00563H00563H00563H00573H00583H00583H00583H00583H00583H00583H00583H00583H00593H005A3H005A3H005A3H005A3H005A3H005B3H005B3H005B3H005B3H005B3H005B3H005B3H005B3H005C3H005D3H005E3H005E3H005E3H005E3H005E3H005E3H005E3H005F3H005F3H005F3H005F3H005F3H005F3H005F3H00603H00603H00603H00603H00603H00613H00613H00613H00613H00613H00613H00613H00613H00623H00633H00643H00643H00653H00663H00663H00663H00663H00663H00663H00663H00673H00683H00693H00543H006A3H00533H006B3H006D3H00643H00023H00023H00023H00023H00023H00023H00023H00033H00033H00033H00033H00063H00073H00073H00073H00073H00073H00073H00073H00083H00083H00083H00083H00083H00083H00083H00093H00093H00093H00093H00093H00093H00093H000A3H000A3H000A3H000A3H000A3H000A3H000A3H000B3H000B3H000B3H000B3H000B3H000B3H000B3H000C3H000C3H000C3H000C3H000C3H000C3H000C3H00103H00103H00103H00103H00113H00113H00113H00123H00123H00123H00133H00133H00133H00193H00193H001B3H00193H001D3H001D3H00293H001D3H002B3H002B3H002B3H002B3H002B3H002D3H002B3H002F3H002F3H00483H002F3H004A3H004A3H00503H004A3H00523H00523H006D3H00523H00713H00713H00713H00713H00713H00717H00", getfenv()) 