# Verificador Android - Galaxy S10 Plus

Este repositório contém um script `.bat` para Windows que ajuda a verificar se o sistema Android instalado em um **Samsung Galaxy S10 Plus** é original ou se foi modificado (root, Magisk, bootloader desbloqueado, etc.).

## 🔍 O que o script verifica

- Estado do bootloader (`verifiedbootstate`)
- Root ativo (`su`)
- Presença de Magisk (`/sbin/magisk`)
- Modo SELinux (`Enforcing` ou `Permissive`)
- Fingerprint do sistema (para identificar ROMs modificadas)

## ⚙️ Requisitos

- Um PC com Windows
- [ADB (Android Debug Bridge)](https://developer.android.com/tools/releases/platform-tools) instalado
- Depuração USB ativada no Galaxy S10 Plus
- Cabo USB conectado

## 🧪 Como usar

1. Baixe o script [`verificar_android.bat`](verificar_android.bat)
2. Coloque-o na mesma pasta do `adb.exe`
3. Execute o script com **duplo clique**
4. Siga as instruções na tela para interpretar os resultados

## 📦 ZIP opcional

Você pode compactar o arquivo `.bat` como `verificador-android.zip` para facilitar o envio ou distribuição.

## 🛡️ Importante

Este script **não altera nenhum dado do dispositivo**, apenas consulta informações de leitura via ADB. Funciona **sem root**.

---

Criado por [@rtab886](https://github.com/rtab886) · Licença MIT
