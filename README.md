# pysparkの設定
pysparkをローカル環境(vscode)で楽しむための設定をまとめています。  

## VsCodeのバージョン

以下のバージョンでのみ動作確認を行っております。  
うまく動作しない場合は、お手数ですが以下のバージョンにあわせていただけますと幸いです。

November 2022 (version 1.74)


## setting.ipynb(build by your-self)
ご自身で環境設定を楽しみたい人向けです。

以下のUdemyコースで有効です
1. **「データサイエンスのための前処理入門PythonとSparkで学ぶビッグデータエンジニアリング(PySpark) 速習講座」**
https://www.udemy.com/course/python-spark-pyspark/?referralCode=E67BF8B61F65866794EB
※コース内では簡易インストールを用いた解説を行なっていますが、本手順でも問題ありません。

2. **「【PythonとSparkで始めるデータマネジメント入門】 ビッグデータレイクのための統合メタデータ管理入門」**
https://www.udemy.com/course/draft/4367192/?referralCode=AB48AD18D10E55DCB0E5

3. **「超速入門!【データサイエンスへの最初の一歩】PythonとSparkで学ぶデータ分析のための前処理と分散処理 一気見講座」**
https://www.udemy.com/course/draft/4415660/?referralCode=EF89D5D240FB483AF4A1

## コンテナ環境で作成したい(Docker.ipynb)
Docker.ipynbを参照ください。VsCodeとコンテナを接続しながら作業を行います。
コース内の解説では簡易インストール「pip3 install pyspark」を実行していますが、本手順であれば不要です。

以下のUdemyコースで有効です。

1. **「データサイエンスのための前処理入門PythonとSparkで学ぶビッグデータエンジニアリング(PySpark) 速習講座」**
https://www.udemy.com/course/python-spark-pyspark/?referralCode=E67BF8B61F65866794EB

※コース内では簡易インストール(Dockerを使わないインストール)を用いた解説を行なっていますが、本手順でも大きな差はなく受講可能です。  

2. **「【PythonとSparkで始めるデータマネジメント入門】 ビッグデータレイクのための統合メタデータ管理入門」**
https://www.udemy.com/course/draft/4367192/?referralCode=AB48AD18D10E55DCB0E5

3. **「【データサイエンスのためのストリーミング前処理入門　PythonとSparkで始めるビッグデータストリーミング処理入門」**
https://www.udemy.com/course/python-spark-streaming/?referralCode=F5E3B429A5C47468BDAD

4. **「超速入門!【データサイエンスへの最初の一歩】PythonとSparkで学ぶデータ分析のための前処理と分散処理 一気見講座」**
https://www.udemy.com/course/draft/4415660/?referralCode=EF89D5D240FB483AF4A1

5. **「【PythonとSparkで始めるデータマネジメント入門】 ビッグデータレイクのためのテーブルデータ品質管理入門」**
https://www.udemy.com/course/draft/4774996/?referralCode=AD3E7A4EE4CAE4C7D221

# 補助教材
私の執筆した書籍もよろしくお願いいたします。
エンジニアのための データ分析基盤入門 データ活用を促進する! プラットフォーム&データ品質の考え方
https://amzn.to/34a0uPn

# 更新履歴
1. 2021/11/17 : first commit
2. 2021/11/19 : JDBCドライバのバージョンをMysqlに合わせました。またlatin1になっていたのでUTF-8に統一しました。
3. 2021/11/21 : Sparkのバージョンを明記しました
4. 2021/11/22 : Log4jにおけるファイル出力のフォーマットを変更しました
5. 2021/11/23 : Log4jにおけるファイル出力のフォーマットを変更しました。環境構築の文言をより明確に記載するようにしました。
6. 2021/11/26 : 適用可能なコースを追加しました。
7. 2021/11/29 : Dockerの設定を追加しました
8. 2021/11/30 : Dockernize
9. 2021/12/16 : add streaming course
10. 2022/01/07 : add super_pyspark_crush_course
11. 2022/03/01 : Spark3.2.0のtgzが削除されていたので3.2.1に変更
12. 2022/04/13 : Kafkaのバージョンの調整とvimを削除
13. 2022/07/20 : sparkのバージョンの調整3.2.2
14. 2022/08/11 : mysqlのディレクトリを作成するように変更
15. 2022/08/27 : 対象のコースとしてデータ品質コースを追加
16. 2022/09/26 : kafkaのバージョン調整
17. 2023/04/28 : Sparkのバージョン調整
18. 2023/07/01 : kafkaのバージョン固定
19. 2023/11/19 : Sparkのバージョン固定