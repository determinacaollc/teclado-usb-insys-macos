# Teclado USB Mac

Layout, scripts e instaladores do teclado USB `insys KY1-K211` adaptado para macOS.

![Layout do teclado USB com teclas Mac](docs/assets/teclado-usb-mac-layout.svg)

## Estado Atual

- Teclado-alvo: `Teclado USB` com `VendorID 0x1a2c` e `ProductID 0x2d23`.
- Remapeamento ativo por `hidutil`, aplicado apenas a esse teclado USB.
- Layout personalizado `pt_pt.keylayout` para manter acentuação portuguesa e `option + E = €`.
- F1 e F2 ficam reservados para o brilho do monitor Philips através da app `Brilho Philips Hotkeys`.
- F3 a F12 usam funções de macOS/multimédia.

## Em Que Consiste

Este projeto adapta um teclado USB de layout Windows para uma utilização mais natural em macOS.

O mapeamento principal troca teclas modificadoras para ficarem próximas da lógica do teclado Apple: `Ctrl`, `Windows`, `Alt`, `AltGr` e a tecla entre `Windows direito` e `Ctrl direito` passam a executar funções equivalentes a `command`, `option`, `control` e `fn`, conforme o mapa abaixo.

As teclas `F3` a `F12` ficam associadas a funções de sistema e multimédia. As regras são aplicadas com `hidutil` apenas ao teclado USB identificado por `VendorID 0x1a2c` e `ProductID 0x2d23`, para não alterar o teclado interno do Mac.

## Mapa Principal

| Tecla física | Função no macOS |
| --- | --- |
| Ctrl esquerdo | command |
| Ctrl direito | control |
| Windows esquerdo | option |
| Windows direito | command |
| Alt | command |
| AltGr | option |
| Tecla entre Windows direito e Ctrl direito | fn |
| F3 | Mission Control |
| F4 | Spotlight / pesquisa |
| F5 | Ditado |
| F6 | Foco |
| F7 | Multimédia anterior |
| F8 | Play/Pause |
| F9 | Multimédia seguinte |
| F10 | Silenciar |
| F11 | Volume - |
| F12 | Volume + |

## Ficheiros

- `teclado-usb-mac-layout.svg`: desenho principal do teclado.
- `layout/teclado-usb-mac-layout.pdf`: PDF horizontal para impressão ou arquivo.
- `docs/index.html`: página para GitHub Pages.
- `scripts/apply-usb-keyboard-remap.sh`: aplica as regras `hidutil` ao teclado USB.
- `scripts/watch-usb-keyboard-remap.sh`: reaplica as regras quando o teclado é desligado e ligado.
- `keyboard-layouts/pt_pt.keylayout`: layout PT personalizado, incluindo `option + E = €`.
- `installers/BrilhoPhilips-2.0.dmg` e `installers/BrilhoPhilips-2.0.pkg`: instaladores atuais da app.

## GitHub Pages

Depois de publicar o repositório, ativa em:

`Settings > Pages > Build and deployment > Source: Deploy from a branch`

Escolhe:

- Branch: `main`
- Folder: `/docs`

A página deverá ficar disponível em:

`https://determinacaollc.github.io/teclado-usb-mac/`

## Nota Sobre Instaladores

Os ficheiros `.dmg` e `.pkg` estão incluídos neste repositório porque são pequenos. Para versões futuras, o ideal é publicar instaladores em `GitHub Releases` e manter no repositório apenas scripts, documentação e ficheiros fonte.

## Direitos

Copyright © 2026 Determinação LLC. Todos os direitos reservados.
