## Install
```bash
bundle install --path vendor/bundle
```

## 準備
```bash
touch in.txt
```
* `in.txt` にQR化したい文字列を記載

## 使用
### 標準出力に出力
```bash
bundle exec rake print
```

### .pngファイルに出力
```bash
bundle exec rake png
```
* `out` ディレクトリに.pngファイルが出力される
