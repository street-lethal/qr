## Install
```bash
bundle install --path vendor/bundle
```

## 準備
```bash
touch in.txt
```
* `in.txt` にQR化したい文字列を記載
* 複数ある場合は複数行記載(空行は無視される)

## 使用
### Base64文字列を標準出力に出力
```bash
bundle exec rake output
```

### \<img\>タグを標準出力に出力
```bash
bundle exec rake img
```

### HTMLを標準出力に出力
```bash
bundle exec rake html
```

### .pngファイルに出力
```bash
bundle exec rake png
```
* `out` ディレクトリに.pngファイルが出力される
