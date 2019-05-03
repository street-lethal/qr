## docker-compose使用する場合
### 準備
* 以下コマンド実行
```bash
./scripts/00_setup.sh
```
* `in.txt` にQR化したい文字列を記載  
(複数行ある場合は複数行記載 / 空行は無視される)

### 使用
* Base64文字列を標準出力に出力
```bash
./scripts/01_output.sh
```
* \<img\>タグを標準出力に出力
```bash
./scripts/02_img.sh
```
* HTMLを標準出力に出力
```bash
./scripts/03_html.sh
```
* .pngファイルに出力  
(`out` ディレクトリに.pngファイルが出力される)
```bash
./scripts/04_png.sh
```

## docker-compose使用しない場合
### 事前コマンド
```bash
cd app
```
### 準備
* インストール
```bash
bundle install --path vendor/bundle
```
* 元ファイル生成
```bash
touch ../io/in.txt
```
* `in.txt` にQR化したい文字列を記載  
(複数ある場合は複数行記載 / 空行は無視される)

### 使用
* Base64文字列を標準出力に出力
```bash
bundle exec rake output
```
* \<img\>タグを標準出力に出力
```bash
bundle exec rake img
```
* HTMLを標準出力に出力
```bash
bundle exec rake html
```
* .pngファイルに出力  
(`out` ディレクトリに.pngファイルが出力される)
```bash
bundle exec rake png
```

### in.txt内容クリア + .pngファイル削除
```bash
bundle exec rake clear
```
