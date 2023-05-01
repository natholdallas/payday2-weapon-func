local inject = WeaponFactoryTweakData.init

---@diagnostic disable-next-line: duplicate-set-field
function WeaponFactoryTweakData:init()

    inject(self)
    self:hcar_inject()
    self:kacchainsaw_inject()

end

function WeaponFactoryTweakData:hcar_inject()
    self.parts.wpn_fps_lmg_hcar_body_conversionkit.forbids = {
        "wpn_fps_upg_ns_ass_smg_firepig",
        "wpn_fps_upg_ns_ass_smg_stubby",
        "wpn_fps_upg_ns_ass_smg_tank",
        "wpn_fps_lmg_kacchainsaw_ns_muzzle",
        "wpn_fps_upg_ns_ass_smg_large",
        "wpn_fps_upg_ns_ass_smg_medium",
        "wpn_fps_upg_ns_ass_smg_small",
        "wpn_fps_upg_ass_ns_linear",
        "wpn_fps_upg_ass_ns_surefire",
        "wpn_fps_upg_ass_ns_battle",
        "wpn_fps_upg_ass_ns_jprifles",
        "wpn_fps_lmg_hcar_barrel_short",
        "wpn_fps_lmg_hcar_barrel_dmr",
        "wpn_fps_lmg_hcar_m_stick",
        "wpn_fps_lmg_hcar_m_drum",
        "wpn_fps_upg_m4_s_crane",
        "wpn_fps_upg_m4_s_pts",
        "wpn_fps_upg_m4_s_mk46",
        "wpn_fps_upg_m4_s_standard_vanilla",
        "wpn_fps_upg_m4_s_ubr",
        "wpn_fps_m4_uupg_s_fold",
        "wpn_fps_snp_tti_s_vltor",
        "wpn_fps_m4_uupg_s_zulu",
        "wpn_fps_snp_victor_s_mod0",
        "wpn_fps_sho_sko12_stock",
        "wpn_fps_upg_ns_ass_smg_v6",
        "wpn_fps_upg_ns_ass_smg_v6",
        "wpn_fps_lmg_hk51b_ns_jcomp"
    }
end

function WeaponFactoryTweakData:kacchainsaw_inject()
    self.parts.wpn_fps_lmg_kacchainsaw_conversionkit.forbids = {
        "wpn_fps_lmg_kacchainsaw_ns_muzzle",
        "wpn_fps_lmg_kacchainsaw_b_short",
        "wpn_fps_lmg_kacchainsaw_b_long",
        "wpn_fps_lmg_kacchainsaw_sling",
        "wpn_fps_lmg_kacchainsaw_mag_b",
        "wpn_fps_upg_ns_ass_smg_firepig",
        "wpn_fps_upg_ns_ass_smg_stubby",
        "wpn_fps_upg_ns_ass_smg_tank",
        "wpn_fps_upg_ns_ass_smg_large",
        "wpn_fps_upg_ns_ass_smg_medium",
        "wpn_fps_upg_ns_ass_smg_small",
        "wpn_fps_upg_ass_ns_linear",
        "wpn_fps_upg_ass_ns_surefire",
        "wpn_fps_upg_ass_ns_battle",
        "wpn_fps_upg_ass_ns_jprifles"
    }
end