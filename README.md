amazonlinux ベースの Docker 環境です。

### Dockerfile を使わないでコマンドで run するとき

```bash
docker run -it --rm --name myamazonlinux -v ~/.aws:/root/.aws amazonlinux:latest bash
```

### インストール済み

* pyenv 

### venv 設定方法

```bash
cd /var/tmp
python -m venv .venv
source .venv/bin/activate
# 抜ける方法
deactivate
```

### Python パッケージの作り方

```bash
# pandas
pip install pandas --target pandas
zip -r pandas.zip ./pandas/
# japanize-matplotlib
pip install japanize-matplotlib --target japanize-matplotlib
zip -r japanize-matplotlib.zip ./japanize-matplotlib/
```
