Docker環境上にてLeft4Dead2（l4d2）（多人数キャンペーン向け）のサーバーを構築する。

# 導入プラグインなど
- Metamod v1.10.7
- SourceMod v1.10.0
- L4DToolZ v1.0.0.9h
- L4D2 Bug Fixes v1.0.2
- L4D2 Defib Fix v???
- ABM v0.1.95

> 詳しくは docker-file/install-script.list や docker-file\install-script内のファイルを参照してください。

# 前提
- docker,docker-composeがインストールされていること。

# 利用手順
- サーバーファイルインストール先ディレクトリを作成する。
- サーバーファイルインストール先ディレクトリのオーナーであるユーザーのユーザー名、ユーザーIDを控える。
- 本gitリポジトリを任意のディレクトリに`git clone`する。
- clone先に格納されている設定ファイル`docker-file/.env`を編集する。
  ```
  SERVER_UNAME=${サーバーファイルインストール先ディレクトリのオーナーであるユーザーのユーザー名}
  SERVER_UID=${サーバーファイルインストール先ディレクトリのオーナーであるユーザーのユーザーID}
  MOUNT_PATH=${サーバーファイルインストール先ディレクトリ}

  例
  SERVER_UNAME=steam
  SERVER_UID=1001
  MOUNT_PATH=/home/steam/l4f2server_volume
  ```
- clone先にて`sh install.sh`を実行し、サーバーをインストールする。
- clone先にて`sh attach.sh`を実行するとサーバーが起動する。サーバー起動後、コンソールにて`ctrl + c`でサーバーを停止できる。
