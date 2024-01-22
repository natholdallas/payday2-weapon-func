-- 注释配合 More Weapon Stats 模组看--
local init = WeaponTweakData.init
local merge = 1.35

---@diagnostic disable-next-line: duplicate-set-field
function WeaponTweakData:init(tweak_data)
    init(self, tweak_data)

    -- primary
    self:inject_pk_lmg()
    self:inject_pk_akimbo_smg()
    self:inject_pk_wpn_special()

    -- foregin
    self:inject_fk_wpn_special()
end

function WeaponTweakData:inject_pk_lmg()
    local high = { 18 / merge, 23 / merge }
    local low = { 17 / merge, 21 / merge }
    local special = { 4 / merge, 5.5 / merge }


    self.rpk.AMMO_PICKUP = low             -- RPK
    self.par.AMMO_PICKUP = high            -- KSP 58
    self.m60.AMMO_PICKUP = low             -- M60
    self.hk51b.AMMO_PICKUP = low           -- SG Versteckt 51D
    self.kacchainsaw.AMMO_PICKUP = special -- Campbell 74
    self.m249.AMMO_PICKUP = high           -- KSP
    self.hcar.AMMO_PICKUP = special        -- Akron HC
    self.mg42.AMMO_PICKUP = high           -- Buzzsaw 42
    self.hk21.AMMO_PICKUP = low            -- Brenner-21
end

function WeaponTweakData:inject_pk_akimbo_smg()
    local high = { 5.8 / merge, 16 / merge }
    local medium = { 4.5 / merge, 11 / merge }
    local low = { 3.8 / merge, 9.2 / merge }

    self.x_akmsu.AMMO_PICKUP = medium   -- 双持 Krinkov 冲锋枪
    self.x_m45.AMMO_PICKUP = low        -- 双持 Swedish K 冲锋枪
    self.x_mp5.AMMO_PICKUP = high       -- 双持 Compact-5 冲锋枪
    self.x_mp7.AMMO_PICKUP = medium     -- 双持 SpecOps 冲锋枪
    self.x_sr2.AMMO_PICKUP = medium     -- 双持 Heather 冲锋枪
    self.x_hajk.AMMO_PICKUP = low       -- 双持 CR 805B 冲锋枪
    self.x_mac10.AMMO_PICKUP = medium   -- 双持 Mark 10 冲锋枪
    self.x_cobray.AMMO_PICKUP = medium  -- 双持夹克男爱枪
    self.x_m1928.AMMO_PICKUP = medium   -- 双持 Chicago Typewriter 冲锋枪
    self.x_pm9.AMMO_PICKUP = high       -- 双持 Miyaka 10 Special 冲锋枪
    self.x_scorpion.AMMO_PICKUP = high  -- 双持 Cobra 冲锋枪
    self.x_baka.AMMO_PICKUP = high      -- 双持 Micro Uzi 冲锋枪
    self.x_mp9.AMMO_PICKUP = high       -- 双持 CMP 冲锋枪
    self.x_olympic.AMMO_PICKUP = medium -- 双持 Para 冲锋枪
    self.x_schakal.AMMO_PICKUP = low    -- 双持 Jackal 冲锋枪
    self.x_shepheard.AMMO_PICKUP = high -- 双持 Signature 冲锋枪
    self.x_vityaz.AMMO_PICKUP = medium  -- 双持 AK Gen 21 Tactical 冲锋枪
    self.x_tec9.AMMO_PICKUP = high      -- 双持 Blaster 9mm 冲锋枪
    self.x_p90.AMMO_PICKUP = high       -- 双持 Kobus 90 冲锋枪
    self.x_polymer.AMMO_PICKUP = high   -- 双持 Kross Vertex 冲锋枪
    self.x_coal.AMMO_PICKUP = low       -- 双持 Tatonka 冲锋枪
    self.x_sterling.AMMO_PICKUP = low   -- 双持 Patchett L2A1 冲锋枪
    self.x_uzi.AMMO_PICKUP = low        -- 双持 Uzi 冲锋枪
    self.x_erma.AMMO_PICKUP = low       -- 双持 MP40 冲锋枪
end

function WeaponTweakData:inject_pk_wpn_special()
    local grenade_pickup = { 0.45 / merge, 0.65 / merge }
    local flamethrower_pickup = { 9 / merge, 18 / merge }
    local lmg_high_pickup = { 23 / merge, 35 / merge }
    local lmg_low_pickup = { 18.5 / merge, 35 / merge }

    self.shuno.AMMO_PICKUP = lmg_high_pickup                -- XL 5.56速射机枪
    self.m134.AMMO_PICKUP = lmg_high_pickup                 -- Vulcan 转轮机枪
    self.hailstorm.AMMO_PICKUP = lmg_low_pickup             -- Hailstorm Mk5
    self.m32.AMMO_PICKUP = grenade_pickup                   -- Piglet 榴弹发射器
    self.flamethrower_mk2.AMMO_PICKUP = flamethrower_pickup -- 火焰喷射器 Mk.1
    self.gre_m79.AMMO_PICKUP = grenade_pickup               -- GL40 榴弹发射器
end

function WeaponTweakData:inject_fk_wpn_special()
    local grenade_pickup = { 0.45 / merge, 0.65 / merge }
    local flamethrower_pickup = { 9 / merge, 18 / merge }

    self.slap.AMMO_PICKUP = grenade_pickup        -- Compact 40mm 榴弹发射器
    self.china.AMMO_PICKUP = grenade_pickup       -- China Puff 40mm 榴弹发射器
    self.system.AMMO_PICKUP = flamethrower_pickup -- MA-17 火焰喷射器
    self.arbiter.AMMO_PICKUP = grenade_pickup     -- Arbiter 榴弹发射器
    self.ms3gl.AMMO_PICKUP = grenade_pickup       -- Basilisk 3V 榴弹发射器
end

-- 总体微调参数
---@diagnostic disable-next-line: duplicate-set-field
WeaponTweakData._pickup_chance = function(self, max_ammo, selection_index)
    local low, high = nil, nil

    local PICKUP = {
        AR_LOW_CAPACITY = 7,
        SHOTGUN_HIGH_CAPACITY = 4,
        OTHER = 1,
        LMG_CAPACITY = 9,
        AR_MED_CAPACITY = 3,
        SNIPER_HIGH_DAMAGE = 6,
        AR_HIGH_CAPACITY = 2,
        SNIPER_LOW_DAMAGE = 5,
        AR_DMR_CAPACITY = 8
    }

    if _G.IS_VR then
        if selection_index == WeaponTweakData.PICKUP.AR_HIGH_CAPACITY then
            low = 0.03
            high = 0.055
        elseif selection_index == WeaponTweakData.PICKUP.AR_MED_CAPACITY then
            low = 0.03
            high = 0.055
        elseif selection_index == WeaponTweakData.PICKUP.AR_LOW_CAPACITY then
            low = 0.03
            high = 0.045
        elseif selection_index == WeaponTweakData.PICKUP.AR_DMR_CAPACITY then
            low = 0.018
            high = 0.04
        elseif selection_index == WeaponTweakData.PICKUP.LMG_DMR_CAPACITY then
            low = 0.01
            high = 0.04
        elseif selection_index == WeaponTweakData.PICKUP.PISTOL_HIGH_CAPACITY then
            low = 0.025
            high = 0.035
        elseif selection_index == WeaponTweakData.PICKUP.PISTOL_LOW_CAPACITY then
            low = 0.025
            high = 0.038
        elseif selection_index == WeaponTweakData.PICKUP.LMG_CAPACITY then
            low = 0.025
            high = 0.03
        elseif selection_index == WeaponTweakData.PICKUP.LMG_HIGH_CAPACITY then
            low = 0.02
            high = 0.024
        elseif selection_index == WeaponTweakData.PICKUP.SHOTGUN_HIGH_CAPACITY then
            low = 0.05
            high = 0.075
        elseif selection_index == WeaponTweakData.PICKUP.SNIPER_LOW_DAMAGE then
            low = 0.05
            high = 0.075
        elseif selection_index == WeaponTweakData.PICKUP.SNIPER_HIGH_DAMAGE then
            low = 0.005
            high = 0.015
        else
            low = 0.01
            high = 0.035
        end
    elseif selection_index == PICKUP.AR_HIGH_CAPACITY then
        low = 0.03 + 0.01
        high = 0.055 + 0.01
    elseif selection_index == PICKUP.AR_MED_CAPACITY then
        low = 0.03 + 0.01
        high = 0.055 + 0.01
    elseif selection_index == PICKUP.AR_LOW_CAPACITY then
        low = 0.03 + 0.01
        high = 0.045 + 0.01
    elseif selection_index == PICKUP.AR_DMR_CAPACITY then
        low = 0.018 + 0.01
        high = 0.04 + 0.01
    elseif selection_index == PICKUP.PISTOL_HIGH_CAPACITY then
        low = 0.025 + 0.03
        high = 0.035 + 0.03
    elseif selection_index == PICKUP.PISTOL_LOW_CAPACITY then
        low = 0.025 + 0.03
        high = 0.038 + 0.03
    elseif selection_index == PICKUP.LMG_CAPACITY then
        low = 0.025 + 0.002
        high = 0.03 + 0.002
    elseif selection_index == PICKUP.LMG_HIGH_CAPACITY then
        low = 0.02 + 0.01
        high = 0.024 + 0.01
    elseif selection_index == PICKUP.LMG_DMR_CAPACITY then
        low = 0.005 + 0.003
        high = 0.02 + 0.003
    elseif selection_index == PICKUP.SHOTGUN_HIGH_CAPACITY then
        low = 0.05 + 0.03
        high = 0.075 + 0.03
    elseif selection_index == PICKUP.SHOTGUN_SECOND_CAPACITY then
        low = 0.03 + 0.02
        high = 0.055 + 0.02
    elseif selection_index == PICKUP.SNIPER_LOW_DAMAGE then
        low = 0.05 + 0.02
        high = 0.075 + 0.02
    elseif selection_index == PICKUP.SNIPER_HIGH_DAMAGE then
        low = 0.005 + 0.005
        high = 0.015 + 0.01
    else
        low = 0.01 + 0.01
        high = 0.035 + 0.01
    end

    return {
        max_ammo * low,
        max_ammo * high
    }
end
