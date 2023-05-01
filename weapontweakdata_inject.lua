local old_init = WeaponTweakData.init
local margin = 1.35

---@diagnostic disable-next-line: duplicate-set-field
function WeaponTweakData:init(tweak_data)

    old_init(self, tweak_data)
    self:inject_lmg()

end


function WeaponTweakData:inject_lmg()

    local high_pickup = {16/margin, 18/margin}
    local low_pickup = {13/margin, 15/margin}
    local special_pickup = {6/margin, 7/margin}

    ---[[
        self.rpk.AMMO_PICKUP = low_pickup
    ---]]

    ---[[
        self.par.AMMO_PICKUP = high_pickup
    ---]]

    ---[[
        self.m60.CLIP_AMMO_MAX = 200
        self.m60.NR_CLIPS_MAX = 2
        self.m60.AMMO_MAX = self.m60.CLIP_AMMO_MAX * self.m60.NR_CLIPS_MAX
        self.m60.AMMO_PICKUP = low_pickup
    ---]]

    ---[[
        self.hk51b.AMMO_PICKUP = low_pickup
    ---]]

    ---[[
        self.kacchainsaw.AMMO_PICKUP = special_pickup
    ---]]

    ---[[
        self.m249.AMMO_PICKUP = high_pickup
    ---]]

    ---[[
        self.hcar.AMMO_PICKUP = special_pickup
    ---]]

    ---[[
        self.mg42.AMMO_PICKUP = high_pickup
    ---]]

    ---[[
        self.hk21.AMMO_PICKUP = low_pickup
    ---]]

end
