# EVE Online linux
Resolving compatibility issues between Steam and Eve Launcher on Linux systems.

## Important thread
[https://forums.eveonline.com/t/eve-launcher-on-linux-lutris-not-working-after-launcher-update-5-08-2025/485547/22](https://forums.eveonline.com/t/eve-launcher-on-linux-lutris-not-working-after-launcher-update-5-08-2025/485547/22)

## Notes
- With launcher (app-1.9.4) the launcher works with proton 9.x
- However, the game won't launch
- Proton version: Try switching to a different Proton version in Steam (right-click EVE > Properties > Compatibility). Proton Experimental or the latest stable Proton often work best
- Launch options: In Steam launch options, try adding: PROTON_USE_WINED3D=1 %command% or DXVK_ASYNC=1 %command%
- Clear shader cache: Sometimes helps with launch issues - delete the shader cache in Steam settings

## Automating the whole process
See bash script in this repo
