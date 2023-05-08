--注释配合 More Weapon Stats 模组看--
local old_init = WeaponTweakData.init
local margin = 1.35

---@diagnostic disable-next-line: duplicate-set-field
function WeaponTweakData:init(tweak_data)
    old_init(self, tweak_data)
    -- primary
    self:inject_pk_lmg()
    self:inject_pk_akimbo_smg()
    self:inject_pk_wpn_special()

    -- foregin
    self:inject_fk_wpn_special()
end

function WeaponTweakData:inject_pk_lmg()
    local high = { 18 / margin, 23 / margin }
    local low = { 17 / margin, 21 / margin }
    local special = { 7 / margin, 7.5 / margin }

    -- RPK轻机枪
    self.rpk.AMMO_PICKUP = low

    -- KSP 58轻机枪
    self.par.AMMO_PICKUP = high

    -- M60轻机枪
    self.m60.CLIP_AMMO_MAX = 200
    self.m60.NR_CLIPS_MAX = 2
    self.m60.AMMO_MAX = self.m60.CLIP_AMMO_MAX * self.m60.NR_CLIPS_MAX
    self.m60.AMMO_PICKUP = low

    -- SG Versteckt 51D 轻机枪
    self.hk51b.AMMO_PICKUP = low

    -- Campbell 74轻机枪
    self.kacchainsaw.AMMO_PICKUP = special

    -- KSP轻机枪
    self.m249.AMMO_PICKUP = high

    -- Akron HC 轻机枪
    self.hcar.AMMO_PICKUP = special

    -- Buzzsaw 42轻机枪
    self.mg42.AMMO_PICKUP = high

    -- Brenner-21轻机枪
    self.hk21.AMMO_PICKUP = low
end

function WeaponTweakData:inject_pk_akimbo_smg()
    local high = { 5.8 / margin, 16 / margin }
    local medium = { 4.5 / margin, 11 / margin }
    local low = { 3.8 / margin, 9.2 / margin }

    -- 双持 Krinkov 冲锋枪
    self.x_akmsu.AMMO_PICKUP = medium

    -- 双持 Swedish K 冲锋枪
    self.x_m45.AMMO_PICKUP = low

    -- 双持 Compact-5 冲锋枪
    self.x_mp5.AMMO_PICKUP = high

    -- 双持 SpecOps 冲锋枪
    self.x_mp7.AMMO_PICKUP = medium

    -- 双持  Heather 冲锋枪
    self.x_sr2.AMMO_PICKUP = medium

    -- 双持 CR 805B 冲锋枪
    self.x_hajk.AMMO_PICKUP = low

    -- 双持 Mark 10 冲锋枪
    self.x_mac10.AMMO_PICKUP = medium

    -- 双持夹克男爱枪
    self.x_cobray.AMMO_PICKUP = medium

    -- 双持 Chicago Typewriter 冲锋枪
    self.x_m1928.AMMO_PICKUP = medium

    -- 双持 Miyaka 10 Special 冲锋枪
    self.x_pm9.AMMO_PICKUP = high

    -- 双持 Cobra 冲锋枪
    self.x_scorpion.AMMO_PICKUP = high

    -- Micro Uzi 冲锋枪
    self.x_baka.AMMO_PICKUP = high

    -- 双持 CMP 冲锋枪
    self.x_mp9.AMMO_PICKUP = high

    -- 双持 Para 冲锋枪
    self.x_olympic.AMMO_PICKUP = medium

    -- 双持 Jackal 冲锋枪
    self.x_schakal.AMMO_PICKUP = low

    -- 双持 Signature 冲锋枪
    self.x_shepheard.AMMO_PICKUP = high

    -- 双持 AK Gen 21 Tactical 冲锋枪
    self.x_vityaz.AMMO_PICKUP = medium

    -- 双持 Blaster 9mm 冲锋枪
    self.x_tec9.AMMO_PICKUP = high

    -- 双持 Kobus 90 冲锋枪
    self.x_p90.AMMO_PICKUP = high

    -- 双持 Kross Vertex 冲锋枪
    self.x_polymer.AMMO_PICKUP = high

    -- 双持 Tatonka 冲锋枪
    self.x_coal.AMMO_PICKUP = low

    -- 双持 Patchett L2A1 冲锋枪
    self.x_sterling.AMMO_PICKUP = low

    -- 双持 Uzi 冲锋枪
    self.x_uzi.AMMO_PICKUP = low

    -- 双持 MP40 冲锋枪
    self.x_erma.AMMO_PICKUP = low
end

function WeaponTweakData:inject_pk_wpn_special()
    local grenade_pickup = { 0.45 / margin, 0.65 / margin }
    local flamethrower_pickup = { 9 / margin, 18 / margin }
    local lmg_high_pickup = { 23 / margin, 35 / margin }
    local lmg_low_pickup = { 18.5 / margin, 35 / margin }

    -- XL 5.56速射机枪
    self.shuno.AMMO_PICKUP = lmg_high_pickup

    -- Vulcan 转轮机枪
    self.m134.AMMO_PICKUP = lmg_high_pickup

    -- Hailstorm Mk5
    self.hailstorm.AMMO_PICKUP = lmg_low_pickup

    -- Piglet 榴弹发射器
    self.m32.AMMO_PICKUP = grenade_pickup

    -- 火焰喷射器 Mk.1
    self.flamethrower_mk2.AMMO_PICKUP = flamethrower_pickup

    -- GL40 榴弹发射器
    self.gre_m79.AMMO_PICKUP = grenade_pickup
end

function WeaponTweakData:inject_fk_wpn_special()
    local grenade_pickup = { 0.45 / margin, 0.65 / margin }
    local flamethrower_pickup = { 9 / margin, 18 / margin }

    -- Compact 40mm 榴弹发射器
    self.slap.AMMO_PICKUP = grenade_pickup

    -- China Puff 40mm 榴弹发射器
    self.china.AMMO_PICKUP = grenade_pickup

    -- MA-17 火焰喷射器
    self.system = flamethrower_pickup

    -- Arbiter 榴弹发射器
    self.arbiter = grenade_pickup

    -- Basilisk 3V 榴弹发射器
    self.ms3gl = grenade_pickup
end
