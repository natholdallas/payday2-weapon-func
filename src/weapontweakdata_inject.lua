local init = WeaponTweakData.init

local function range(min, max)
    local merge = 1.35
    return { min / merge, max / merge }
end

---@diagnostic disable-next-line: duplicate-set-field
function WeaponTweakData:init(tweak_data)
    init(self, tweak_data)

    -- Primary
    self:assault_rifle()
    self:shotgun()
    self:lmg()
    self:sniper()
    self:x_pistol()
    self:x_smg()
    self:x_shotgun()
end

function WeaponTweakData:assault_rifle()
    local ty = range(4, 6)
    local sm = range(8, 10)
    local md = range(10, 14)
    local lg = range(12, 18)

    self.amcar.AMMO_PICKUP = lg      -- Colt M733
    self.corgi.AMMO_PICKUP = md      -- FN F2000
    self.s552.AMMO_PICKUP = lg       -- Swiss Arms SG 552-2
    self.scar.AMMO_PICKUP = sm       -- FN SCAR-H STD
    self.ak74.AMMO_PICKUP = md       -- Izhmash AKS-74
    self.new_m4.AMMO_PICKUP = md     -- Colt M4A1
    self.aug.AMMO_PICKUP = md        -- Steyr AUG-A2
    self.groza.AMMO_PICKUP = sm      -- OTs-14 Groza
    self.sub2000.AMMO_PICKUP = ty    -- Kel-tec SUB-2000
    self.akm.AMMO_PICKUP = sm        -- Izhmash AKMS
    self.g36.AMMO_PICKUP = lg        -- H&K G36KV
    self.flint.AMMO_PICKUP = sm      -- Izhmash AK-12
    self.akm_gold.AMMO_PICKUP = sm   -- Golden AKMS
    self.tecci.AMMO_PICKUP = md      -- H&K 416C
    self.l85a2.AMMO_PICKUP = md      -- Enfield L85A2
    self.ching.AMMO_PICKUP = ty      -- Springfield Armory M1 Garand
    self.new_m14.AMMO_PICKUP = ty    -- Springfield Armory M1A SOCOM 16
    self.famas.AMMO_PICKUP = lg      -- FAMAS F1
    self.vhs.AMMO_PICKUP = md        -- VHS-D2
    self.asval.AMMO_PICKUP = lg      -- AS VAL
    self.ak5.AMMO_PICKUP = md        -- Bofors Ak 5
    self.galil.AMMO_PICKUP = md      -- IMI Galil ARM
    self.komodo.AMMO_PICKUP = md     -- IWI X95
    self.m16.AMMO_PICKUP = sm        -- Colt M16A4
    self.shak12.AMMO_PICKUP = sm     -- Izhmash ShAK-12
    self.contraband.AMMO_PICKUP = ty -- H&K 417 w/M203 GL
    self.fal.AMMO_PICKUP = sm        -- FN FAL
    self.tkb.AMMO_PICKUP = md        -- TKB-059
    self.g3.AMMO_PICKUP = sm         -- H&K G3A3
end

function WeaponTweakData:shotgun()
    local sm = range(2, 3)
    local lg = range(5, 8)

    self.spas12.AMMO_PICKUP = lg    -- Franchi SPAS-12
    self.boot.AMMO_PICKUP = sm      -- Winchester Model 1887
    self.r870.AMMO_PICKUP = sm      -- Remington M870
    self.m590.AMMO_PICKUP = sm      -- Mossberg 590
    self.sko12.AMMO_PICKUP = lg     -- SKO-12
    self.benelli.AMMO_PICKUP = lg   -- Benelli M4 Super 90
    self.ksg.AMMO_PICKUP = sm       -- Kel-tec K5G
    self.saiga.AMMO_PICKUP = lg     -- Izhmash Saiga-12K
    self.m1897.AMMO_PICKUP = sm     -- Winchester Model 1897
    self.supernova.AMMO_PICKUP = sm -- Benelli Supernova
    self.huntsman.AMMO_PICKUP = sm  -- Stoeger/IGA Coach
    self.b682.AMMO_PICKUP = sm      -- CZ Redhead Deluxe
    self.aa12.AMMO_PICKUP = lg      -- MPS AA-12 CQB
end

function WeaponTweakData:sniper()
    local sm = range(1, 2)
    local md = range(3, 5)
    local lg = range(5, 7)

    self.msr.AMMO_PICKUP = md            -- Remington MSR
    self.r700.AMMO_PICKUP = md           -- Remington Model 700P
    self.sbl.AMMO_PICKUP = lg            -- Marlin Model 1895
    self.qbu88.AMMO_PICKUP = md          -- Norinco QBU-88
    self.model70.AMMO_PICKUP = sm        -- Winchester Model 70
    self.wa2000.AMMO_PICKUP = lg         -- Walther WA 2000
    self.desertfox.AMMO_PICKUP = sm      -- Desert Tech SRSA1
    self.tti.AMMO_PICKUP = lg            -- KAC SR-25
    self.r93.AMMO_PICKUP = sm            -- Blaser R93 LRS2
    self.winchester1874.AMMO_PICKUP = md -- Winchester Model 1873
    self.siltstone.AMMO_PICKUP = md      -- SVD Dragunov
    self.mosin.AMMO_PICKUP = sm          -- Mosin-Nagant M1907
end

function WeaponTweakData:lmg()
    local sm = range(10, 18)
    local lg = range(14, 21)
    local special = range(16, 26)

    self.rpk.AMMO_PICKUP = sm            -- Izhmash RPK
    self.par.AMMO_PICKUP = lg            -- FN M240B
    self.m60.AMMO_PICKUP = sm            -- M60
    self.hk51b.AMMO_PICKUP = sm          -- Vollmer HK51B
    self.kacchainsaw.AMMO_PICKUP = lg    -- KAC ChainSAW
    self.m249.AMMO_PICKUP = lg           -- FN M249 Para
    self.hcar.AMMO_PICKUP = sm           -- Ohio Ordnance HCAR
    self.mg42.AMMO_PICKUP = lg           -- MG-42
    self.hk21.AMMO_PICKUP = sm           -- H&K 21E

    self.shuno.AMMO_PICKUP = special     -- XL 5.56 Microgun
    self.m134.AMMO_PICKUP = special      -- M134 Minigun
    self.hailstorm.AMMO_PICKUP = special -- Metal Storm Based Fictional Gun
end

function WeaponTweakData:x_pistol()
    local sm = range(3, 6)
    local md = range(4, 8)
    local lg = range(6, 8)

    self.jowi.AMMO_PICKUP = lg         -- Akimbo Glock 26
    self.x_1911.AMMO_PICKUP = md       -- Akimbo M1911 Lightweight Operator
    self.x_b92fs.AMMO_PICKUP = lg      -- Akimbo Beretta 92FS Centurion
    self.x_deagle.AMMO_PICKUP = sm     -- Akimbo IMI Desert Eagle Mark XIX
    self.x_g17.AMMO_PICKUP = lg        -- Akimbo Glock 17
    self.x_g22c.AMMO_PICKUP = md       -- Akimbo Glock 22C
    self.x_p226.AMMO_PICKUP = md       -- Akimbo Sig-sauer P226
    self.x_ppk.AMMO_PICKUP = lg        -- Akimbo Walther PPK
    self.x_usp.AMMO_PICKUP = md        -- Akimbo USP Tactical .45
    self.x_packrat.AMMO_PICKUP = md    -- Akimbo H&K P30L
    self.x_rage.AMMO_PICKUP = sm       -- Akimbo Taurus Raging Bull.44
    self.x_pl14.AMMO_PICKUP = sm       -- Akimbo PL-14 Lebedev
    self.x_sparrow.AMMO_PICKUP = sm    -- Akimbo Jericho 941 RPL
    self.x_legacy.AMMO_PICKUP = lg     -- Akimbo M13 9mm Pistols
    self.x_c96.AMMO_PICKUP = md        -- Akimbo Mauser C96
    self.x_m1911.AMMO_PICKUP = sm      -- Akimbo Colt M1911
    self.x_type54.AMMO_PICKUP = md     -- Akimbo Tokarev TT-33
    self.x_maxim9.AMMO_PICKUP = sm     -- Akimbo Maxim 9
    self.x_breech.AMMO_PICKUP = sm     -- Akimbo Luger P08
    self.x_chinchilla.AMMO_PICKUP = sm -- Akimbo S&W Model 29
    self.x_model3.AMMO_PICKUP = sm     -- Akimbo S&W No.3 Russian Model
    self.x_shrew.AMMO_PICKUP = lg      -- Akimbo Colt Defender
    self.x_hs2000.AMMO_PICKUP = md     -- Akimbo SA XDM
    self.x_g18c.AMMO_PICKUP = lg       -- Akimbo Glock 18C
    self.x_beer.AMMO_PICKUP = lg       -- Akimbo Beretta 93R
    self.x_czech.AMMO_PICKUP = lg      -- Akimbo CZ AccuShadow 2
    self.x_stech.AMMO_PICKUP = md      -- Akimbo Stechkin Automatic Pistol
    self.x_holt.AMMO_PICKUP = md       -- Akimbo HOLT 9mm Pistols
    self.x_korth.AMMO_PICKUP = sm      -- Akimbo Korth NXA/NXS
    self.x_2006m.AMMO_PICKUP = sm      -- Akimbo Mateba 2006M
end

function WeaponTweakData:x_smg()
    local sm = range(4, 10)
    local lg = range(6, 12)

    self.x_akmsu.AMMO_PICKUP = sm     -- Akimbo Izhmash AKMSU
    self.x_m45.AMMO_PICKUP = sm       -- Akimbo Carl Gustav M/45
    self.x_mp5.AMMO_PICKUP = lg       -- Akimbo H&K MP5A4
    self.x_mp7.AMMO_PICKUP = lg       -- Akimbo H&K MP7A2
    self.x_sr2.AMMO_PICKUP = lg       -- Akimbo SR-2M Veresk
    self.x_hajk.AMMO_PICKUP = sm      -- Akimbo CZ 805 BREN A1
    self.x_mac10.AMMO_PICKUP = lg     -- Akimbo Ingram MAC-10
    self.x_cobray.AMMO_PICKUP = lg    -- Akimbo Cobray M11/9
    self.x_m1928.AMMO_PICKUP = lg     -- Akimbo Thompson M1928A1
    self.x_pm9.AMMO_PICKUP = lg       -- Akimbo Minebea PM-9
    self.x_scorpion.AMMO_PICKUP = lg  -- Akimbo Scorpion vz.61
    self.x_baka.AMMO_PICKUP = lg      -- Akimbo IMI Micro Uzi
    self.x_mp9.AMMO_PICKUP = lg       -- Akimbo B&T MP9
    self.x_olympic.AMMO_PICKUP = lg   -- Akimbo K23B Tactical
    self.x_schakal.AMMO_PICKUP = sm   -- Akimbo H&K UMP-45
    self.x_shepheard.AMMO_PICKUP = lg -- Akimbo SIG-Sauer MPX
    self.x_vityaz.AMMO_PICKUP = lg    -- Akimbo PP-19 Vityaz-SN
    self.x_erma.AMMO_PICKUP = sm      -- Akimbo MP40
    self.x_tec9.AMMO_PICKUP = lg      -- Akimbo Intratec TEC-9
    self.x_p90.AMMO_PICKUP = lg       -- Akimbo FN P90 TR
    self.x_polymer.AMMO_PICKUP = lg   -- Akimbo KRISS Vector
    self.x_coal.AMMO_PICKUP = sm      -- Akimbo PP-19 Bizon
    self.x_sterling.AMMO_PICKUP = sm  -- Akimbo Sterling L2A1
    self.x_uzi.AMMO_PICKUP = sm       -- Akimbo IMI Uzi
end

function WeaponTweakData:x_shotgun()
    local sm = range(0.45, 0.8)
    local md = range(5, 8)
    local lg = range(8, 12)

    self.x_rota.AMMO_PICKUP = md   -- Akimbo Crye Precision SIX12
    self.x_sko12.AMMO_PICKUP = md  -- Akimbo SKO-12
    self.x_basset.AMMO_PICKUP = lg -- Akimbo CBRPS Saiga Spike X1S
    self.x_judge.AMMO_PICKUP = sm  -- Akimbo Taurus Judge
end
