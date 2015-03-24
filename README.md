dotfiles + Ansible
================================

# Provisioning

## Xcode

全ての源。

```
$ sudo xcode build -license
```

最後までスクロールして確認

> By typing 'agree' you are agreeing to the terms of the software license agreements. Type 'print' to print them or anything else to cancel, [agree, print, cancel]

確認したら、```agree```とタイプ

## Homebrew

```
$ xcode-select --install
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```

## Ansible

 * http://docs.ansible.com/intro_installation.html

```
$ brew update
$ brew install ansible
```

## Provisioning

```
$ mkdir ~/.macbook-provisioning
$ cd ~/.macbook-provisioning
$ echo localhost > hosts
```

* 使用するyamlは以下のURL
 * [.macbook-provisioning/playbook.yml](.macbook-provisioning/playbook.yml)

テストしてから実行
```
$ ansible-playbook -i hosts --syntax-check playbook.yml
$ ansible-playbook -i hosts --check playbook.yml
$ ansible-playbook -i hosts -K -vv playbook.yml
```

# その後

* 後は手動でApp Storeや直接ダウンロードしてインストール
  * 下記yamlのapp_storeやothersの項目を確認
  * [.macbook-provisioning/playbook.yml](.macbook-provisioning/playbook.yml)


# 参考

[Mac の開発環境構築を自動化する (2015 年初旬編)](http://t-wada.hatenablog.jp/entry/mac-provisioning-by-ansible)
