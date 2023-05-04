--注释配合 More Weapon Stats 模组看--
local old_init = WeaponTweakData.init
local margin = 1.35

---@diagnostic disable-next-line: duplicate-set-field
function WeaponTweakData:init(tweak_data)
    old_init(self, tweak_data)
    self:inject_lmg()
    self:inject_wpn_special()
end

function WeaponTweakData:inject_lmg()
    local high_pickup = { 18 / margin, 23 / margin }
    local low_pickup = { 17 / margin, 21 / margin }
    local special_pickup = { 7 / margin, 7.5 / margin }

    -- RPK轻机枪
    self.rpk.AMMO_PICKUP = low_pickup

    -- KSP 58轻机枪
    self.par.AMMO_PICKUP = high_pickup

    -- M60轻机枪
    self.m60.CLIP_AMMO_MAX = 200
    self.m60.NR_CLIPS_MAX = 2
    self.m60.AMMO_MAX = self.m60.CLIP_AMMO_MAX * self.m60.NR_CLIPS_MAX
    self.m60.AMMO_PICKUP = low_pickup

    -- SG Versteckt 51D 轻机枪
    self.hk51b.AMMO_PICKUP = low_pickup

    -- Campbell 74轻机枪
    self.kacchainsaw.AMMO_PICKUP = special_pickup

    -- KSP轻机枪
    self.m249.AMMO_PICKUP = high_pickup

    -- Akron HC 轻机枪
    self.hcar.AMMO_PICKUP = special_pickup

    -- Buzzsaw 42轻机枪
    self.mg42.AMMO_PICKUP = high_pickup

    -- Brenner-21轻机枪
    self.hk21.AMMO_PICKUP = low_pickup
end

function WeaponTweakData:inject_wpn_special()
    local grenade_pickup = {0.45/margin, 0.65/margin}
    local flamethrower_pickup = {9/margin, 18/margin}

    -- XL 5.56速射机枪
    self.shuno.AMMO_PICKUP = {23/margin, 35/margin}

    -- Vulcan 转轮机枪
    self.m134.AMMO_PICKUP = {23/margin, 35/margin}

    -- Hailstorm Mk5
    self.hailstorm.AMMO_PICKUP = {18.5/margin, 35/margin}

    -- Piglet 榴弹发射器
    self.m32.AMMO_PICKUP = grenade_pickup

    -- 火焰喷射器 Mk.1
    self.flamethrower_mk2.AMMO_PICKUP = flamethrower_pickup

    -- GL40 榴弹发射器
    self.gre_m79.AMMO_PICKUP = grenade_pickup
end
