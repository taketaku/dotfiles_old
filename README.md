this is private dotfile
based:
- https://github.com/sloria/dotfiles
- https://github.com/kaizoa/xdg-config

macOS & Ubuntu

## はじめにやること(macOS)
#### clone
> ホームティレクトリ下にdotfilesをclone
#### 設定値
>  `group_vars / local`の以下の変数を更新する
#### Run
> $ make first-setting-for-mac
#### Iterm設定
> iterm2
forMac/ 以下の設定
> Iterm2にフォントを当てる
iTerm2 > Preferences > Profiles > Text > Font
- Ricty for powerline

#### 半角スペース(macOS Mojave)
```
Space = 半角スペース (通常は、全角スペース)
Shift + Space = 全角スペース (通常は、半角スペース)
```

1. Command + R を押しながら Mac を起動するリカバリモード
2. ユーティリティ > ターミナル
3. csrutil disable
4. PC再起動
5. 設定ファイルを変更する
> $ sudo vim "/System/Library/Input Methods/JapaneseIM.app/Contents/PlugIns/JapaneseIM.appex/Contents/Resources/KeySetting_Default.plist"
6. 設定ファイルを編集する
以下のように修正する
https://qiita.com/kotashiratsuka/items/72df6dae6333fe7f663e
7. Command + R を押しながら Mac を起動するリカバリモード
8. ユーティリティ > ターミナル
9. csrutil enable


## TODO
- Ubuntuの設定