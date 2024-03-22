# 準備０：PCを準備する
- Windows or Mac or ChromeOS or Linux

# 準備１：Gitのインストール
- https://git-scm.com/downloads
- ターミナルでバージョンを確認。
  ```
  git --version
  ```
# 準備２：Gitの初期設定
- ターミナルを開き、下記の項目を入力
  ```
   git config --global user.name 'username'
   git config --global user.email 'username@example.com'
   git config --global core.editor 'code --wait'
   git config --global merge.tool 'code --wait "$MERGED"'
   git config --global push.default simple
   ```
# 連携手順１：VSCodeでローカルリポジトリを作成
- ファイルを格納する空のフォルダを作成
- 作成した空のフォルダを開いた状態で、Gitアイコンをクリックし、「リポジトリを初期化する」をクリック

# 連携手順２：ローカルリポジトリにコミットしてみる
- Gitアイコンを押したら、Git管理メニューが表示される。＋マークをクリックするとステージングできる。
- メッセージのところにコミット名を入力し、✓アイコンをクリックすることでコミットできる。

# 連携手順３：GitHubにてリモートリポジトリを作成
- GitHubにサインインして、リポジトリを新規作成。
- 作成したリポジトリのURLをコピーしておく。

# 連携完了：VsCodeからGitHubに接続
- メニューバーの「ターミナル」からターミナルを開く。
- リモートリポジトリの接続コマンドを入力する
  ```
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin コピーしたURL
  git push -u origin main
  ```
# 新しいフォルダをMergeする場合
- unrelated errorがでる場合は以下のコマンドを入力
  ```
  git merge --allow-unrelated-histories origin/main
  ```
# 403エラーが出る場合
- GitHubにサインインして、右上のアカウントアイコンをクリック
- Settingsを開く
- 左のメニューから、<>Developer settingsを開く
- 左のメニューのPersonal access tokensを開き、Fine-graind tokensを開く
- 右上のGenerate new tokenをクリック
- Token name に適当な名前を入力
- Repository accessはAll repositoriesを選択
- Repository permissionsを開く
- Contentsを開きaccesslevelをRead and write を選択
- 一番下のGenerate token をクリック
- 生成されたtokenをコピー（一度しか表示されないので注意）
- VsCodeのターミナルでpush origin main と入力すると初回はダイアログが開くので、tokenの入力画面を開き、コピーしたtokenを入力する。
- pushが成功したことを確認する。