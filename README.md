# pysparkの設定
pysparkをローカル環境(vscode)で楽しむための設定をまとめています。  

## setting.ipynb(build by your-self)
ご自身で環境設定を楽しみたい人向けです。

以下のUdemyコースで有効です
1. **「データサイエンスのための前処理入門PythonとSparkで学ぶビッグデータエンジニアリング(PySpark) 速習講座」**
https://www.udemy.com/course/python-spark-pyspark/?referralCode=E67BF8B61F65866794EB
※コース内では簡易インストールを用いた解説を行なっていますが、本手順でも問題ありません。

2. **「【PythonとSparkで始めるデータマネジメント入門】 ビッグデータレイクのための統合メタデータ管理入門」**
https://www.udemy.com/course/draft/4367192/?referralCode=AB48AD18D10E55DCB0E5

## コンテナ環境で作成したい(Docker.ipynb)
Docker.ipynbを参照ください。VsCodeとコンテナを接続しながら作業を行います。
コース内の解説では簡易インストール「pip3 install pyspark」を実行していますが、本手順であれば不要です。

以下のUdemyコースで有効です。

1. **「データサイエンスのための前処理入門PythonとSparkで学ぶビッグデータエンジニアリング(PySpark) 速習講座」**
https://www.udemy.com/course/python-spark-pyspark/?referralCode=E67BF8B61F65866794EB
※コース内では簡易インストールを用いた解説を行なっていますが、本手順でも問題ありません。

2. **「【PythonとSparkで始めるデータマネジメント入門】 ビッグデータレイクのための統合メタデータ管理入門」**
https://www.udemy.com/course/draft/4367192/?referralCode=AB48AD18D10E55DCB0E5

3. **「【データサイエンスのためのストリーミング前処理入門　PythonとSparkで始めるビッグデータストリーミング処理入門」**
https://www.udemy.com/course/python-spark-streaming/?referralCode=F5E3B429A5C47468BDAD

## ????

# 更新履歴
1. 2021/11/17 : first commit
2. 2021/11/19 : JDBCドライバのバージョンをMysqlに合わせました。またlatin1になっていたのでUTF-8に統一しました。
3. 2021/11/21 : Sparkのバージョンを明記しました
4. 2021/11/22 : Log4jにおけるファイル出力のフォーマットを変更しました
5. 2021/11/23 : Log4jにおけるファイル出力のフォーマットを変更しました。環境構築の文言をより明確に記載するようにしました。
6. 2021/11/26 : 適用可能なコースを追加しました。
7. 2021/11/29 : Dockerの設定を追加しました
8. 2021/11/30 : Dockenize
