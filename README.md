# Weapon Function-提升你在 Payday 中的游戏体验模组 | 🥰

## 他修改了什么? | 🍚

- 修改部分武器的配件限制数据
- 修改武器的部分数据

## 注入的文件

```lua
require("lib/tweakdata/weaponfactorytweakdata")
require("lib/tweakdata/weapontweakdata")
```

## ~~简易模式~~

~~如果你想使用近乎与作弊般的捡弹量, 请在 `mod.txt` 中的 `hooks` 键替换成以下代码~~

```json
"hooks": [
    {
        "hook_id": "lib/tweak_data/weaponfactorytweakdata",
        "script_path": "src/weaponfactorytweakdata_inject.lua"
    },
    {
        "hook_id": "lib/tweak_data/weapontweakdata",
        "script_path": "cheat/weapontweakdata_inject.lua"
    }
]
```

## 致谢 | 📄

> 非常感谢
> PAYDAY2: 提供了如此优秀的游戏
> Superblt: 提供了如此优秀的模组开发平台
