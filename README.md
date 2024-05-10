# モチベの泉
[![Image from Gyazo](https://i.gyazo.com/541b2f20674e91d96dee9e40f8230640.jpg)](https://gyazo.com/541b2f20674e91d96dee9e40f8230640)

## サービスのURL
https://mochibe.com/

## 発案経緯
プログラミングスクールに入学して以来、学習を進める中で経験したモチベーションの波や、同期の受講生が直面していた同様の課題に着目し、「モチベの泉」という多角的な動機づけを促すことに特化した掲示板アプリを開発しました。

このプラットフォームは、掲示板機能やルーレット機能を使って他者からインスピレーションを受け取り、マイページ機能を通じてユーザーが自らの経験を振り返ることで、新たなモチベーションのきっかけを提供することを目的としています。

また、各ページに動きを加えることで、使用感を楽しく演出し、初めてのユーザーでも直感的に操作可能なUIデザインとなるよう注力しました。

##  機能一覧
<table>
    <th width="100%" colspan="2" >トップページ・ルーレット機能</th>
      <tr>
        <td width="50%"><a href="https://gyazo.com/937b449776ad462ededa2c28f27c5067"><img src="https://i.gyazo.com/937b449776ad462ededa2c28f27c5067.png" alt="Image from Gyazo" width="1162"/></a></td>
        <td><a href="https://gyazo.com/f89f8f9ede7057bb17fbab321c85f5ca"><img src="https://i.gyazo.com/f89f8f9ede7057bb17fbab321c85f5ca.png" alt="Image from Gyazo" width="1162"/></a></td>
      </tr>
      <tr>
        <td>トップページには、ルーレット機能、投稿一覧、SNSシェアボタン、アプリの説明モーダルを配置しています。</td>
        <td>
        ルーレット機能ではランダムに投稿が表示されます。使用感を楽しく演出するため、アニメーション効果を取り入れました。この機能はログイン不要でアクセス可能です。上記画像はルーレットボタンを押した後のロード画面を示しています。
        </td>
      </tr>
</table>

<table>
  <th width="50%">投稿一覧</th><th width="100%">投稿詳細</th>
    <tr>
      <td><a href="https://gyazo.com/ec03ef8ae564fa88907fb3b9610499d9"><img src="https://i.gyazo.com/ec03ef8ae564fa88907fb3b9610499d9.png" alt="Image from Gyazo" width="1164"/></a></td>
      <td><a href="https://gyazo.com/4a109f8922820134f0560352d9c64b39"><img src="https://i.gyazo.com/4a109f8922820134f0560352d9c64b39.png" alt="Image from Gyazo" width="1162"/></a></td>
    </tr>
    <tr>
      <td>投稿一覧画面にはおすすめ機能とオートコンプリート検索機能を実装しました。おすすめ機能では、ユーザーの「いいね」に基づいて関連の高い投稿を表示します。「いいね」が無い場合は、最も頻繁に使用されるタグが付けられた投稿を表示します。</td><td>いいね機能とSNSシェア機能を実装しました。</td>
    </tr>
</table>

<table>
  <th width="50%">投稿作成</th><th width="100%">投稿編集・削除</th>
    <tr>
      <td><a href="https://gyazo.com/77e91db70db1a24a16eea2a3ac4b0a5d"><img src="https://i.gyazo.com/77e91db70db1a24a16eea2a3ac4b0a5d.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td><a href="https://gyazo.com/4e9c9770e60aeb2f07c5eb88b237f022"><img src="https://i.gyazo.com/4e9c9770e60aeb2f07c5eb88b237f022.png" alt="Image from Gyazo" width="1162"/></a></td></tr>
    <tr>
      <td>投稿の作成ではタグ付け機能、ドラッグ&ドロップで画像をアップロードできる機能を実装しました。アプリケーションの軽量化を図るため、画像は自動的にWebP形式に変換され、Amazon S3に保存されます。また、エラーメッセージは理解しやすいように集約して表示されるよう工夫しました。</td><td>上記は投稿の編集・削除画面です。</td>
    </tr>
</table>

<table>
  <th width="50%">マイページ機能</th><th width="100%"></th>
    <tr>
      <td><a href="https://gyazo.com/f309e5b7bf302d7676ccaea8753e99e1"><img src="https://i.gyazo.com/f309e5b7bf302d7676ccaea8753e99e1.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td></td></tr>
    <tr>
      <td>作成した投稿やいいねした投稿が一覧で表示されるマイページを実装しました。登録情報の編集や通知設定のボタンを配置しています。
      </td><td></td>
    </tr>
</table>

<table>
  <th width="100%" colspan="2" >新規登録・ログイン</th>
    <tr>
      <td width="50%"><a href="https://gyazo.com/afc26d9ea9ff28260b2eb6c77b50e209"><img src="https://i.gyazo.com/afc26d9ea9ff28260b2eb6c77b50e209.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td><a href="https://gyazo.com/4e05efb398c1e68f336af6576e989da5"><img src="https://i.gyazo.com/4e05efb398c1e68f336af6576e989da5.png" alt="Image from Gyazo" width="1162"/></a></td>
    </tr>
    <tr>
      <td width="50%"><a href="https://gyazo.com/f286532522051233d7d9d40680e68756"><img src="https://i.gyazo.com/f286532522051233d7d9d40680e68756.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td><a href="https://gyazo.com/87e1676df836145cde4bd87789af2429"><img src="https://i.gyazo.com/87e1676df836145cde4bd87789af2429.png" alt="Image from Gyazo" width="1162"/></a></td>
    </tr>
    <tr>
      <td>新規登録とログインには、GoogleアカウントおよびX(Twitter)アカウントを使用した認証機能を実装しました。</td>
      <td>上記はそれぞれの認証画面です。</td>
    </tr>
</table>

<table>
  <th width="100%" colspan="2" >メール通知機能</th>
    <tr>
      <td width="50%"><a href="https://gyazo.com/f9ca70a099620a0df6227d87e1659b29"><img src="https://i.gyazo.com/f9ca70a099620a0df6227d87e1659b29.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td><a href="https://gyazo.com/f124f622a03dab0ab840f7be4ea5d149"><img src="https://i.gyazo.com/f124f622a03dab0ab840f7be4ea5d149.png" alt="Image from Gyazo" width="776"/></a></td></tr>
   <tr>
      <td>ユーザーをアプリに誘導する目的で、ログインから30日以上経過したユーザーに対してリマインドメールを自動送信する機能を実装しました。マイページの通知設定から、または新規登録時に送信されるメールから設定の変更が可能です。</td>
      <td>上記は新規登録時に送信されるメールです。</td>
    </tr>
</table>

<table>
  <th width="50%">パスワードの変更</th><th width="100%">パスワードリセット</th>
    <tr>
      <td><a href="https://gyazo.com/d63ac4006f14ed1c668d0964f7b23a08"><img src="https://i.gyazo.com/d63ac4006f14ed1c668d0964f7b23a08.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td><a href="https://gyazo.com/40b9ffe605640f227f83c91f2ee6feb4"><img src="https://i.gyazo.com/40b9ffe605640f227f83c91f2ee6feb4.png" alt="Image from Gyazo" width="1162"/></a></td>
    </tr>
    <tr>
      <td>パスワードの変更と、ユーザーの削除機能を備えたページを作成しました。</td>
      <td>パスワードリセット機能を実装し、登録時のメールアドレスに再設定用のリンクを送信するようにしました。</td>
    </tr>
</table>

<table>
  <th width="50%">お問い合わせ</th><th width="100%"></th></tr>
    <tr>
      <td><a href="https://gyazo.com/caead036b7ab7b4b72945daa2c5954a5"><img src="https://i.gyazo.com/caead036b7ab7b4b72945daa2c5954a5.png" alt="Image from Gyazo" width="1162"/></a></td>
      <td></td>
    </tr>
    <tr>
      <td>ログインの有無に関わらずご利用いただけるお問い合わせページを作成しました。</td><td>
      </td>
    </tr>
</table>

### ●機能まとめ
- ユーザー登録・ログイン機能
- SNSアカウント認証機能
- ルーレット機能
- 掲示板機能
- 投稿のタグ付け機能
- いいね機能
- SNS共有機能
- マイページ機能
- お問合せ機能
- パスワード変更・リセット機能
- メール通知機能
- 検索機能(autocomplete)
- レコメンド機能

## ER図
<a href="https://gyazo.com/93ca5fcb3a9fa408c93420a029c13863"><img src="https://i.gyazo.com/93ca5fcb3a9fa408c93420a029c13863.png" alt="Image from Gyazo" width="1656"/></a>

## インフラ構成図



## 技術スタック

- サーバサイド: Ruby on Rails 7系(Ruby 3.2.2 Rails 7.0.4.3)
- フロントエンド: HotWire(Turbo, Stimulus)
- CSSフレームワーク: TailwindCSS
- インフラ:
  - Webアプリケーションサーバ: Fly.io
  - ファイルサーバ: AWS S3
  - データベースサーバ: PostgreSQL（Fly Postgres）
  - バックグラウンドジョブの管理: Redis
- その他：VCS: GitHub

----

### ※サービス発案経緯(詳細)
#### ●発案経緯
- 目標達成のためには継続的に取り組むこと、物怖じせずトライアンドエラーを繰り返すことが必要不可欠であるが、そのためにモチベーションを維持することはとても難しい。
- RUNTEQに入学してからは特にそれを実感した。
- 学習のペースを掴み、モチベーションに左右されない段階になるまで、自分の気合を入れ直したり気分を高めるため試行錯誤した。
- RUNTEQのイベントを眺めていても感じるように(モチベアップ会など)モチベーションの維持は永遠の課題であり、絶えず人々が興味関心を寄せている。
- モチベーションを保つには、ポジティブな人々や環境に身を置くことが重要である。
- ユーザー主体となり多角的にモチベーションアップのきっかけを共有し合うことができる、心が前向きになるようなアプリを作りたいと思った。

#### ●想定されるユーザー層
10代後半から30代前半の男女。
目標を持って継続的に何かを取り組んでいる方。
主に学習中、就職活動中の方である、高校生、大学生、就活生、RUNTEQ生を想定。

#### ●ユーザーが抱える課題
モチベーショが低下し、取り掛かりが遅くなってしまったり継続ができないことで、負のループに陥ってしまう。

#### ●解決方法
ユーザが面接や学習において、緊張した瞬間や学びの中で気づいたことなど、モチベーション向上に関連するエピソードやアドバイスを共有できる掲示板を提供する。
(例：面接の時など緊張した時の対処法、心構え。学習前の切り替え方、継続的に学習に向き合う中で悟ったこと。救われた名言など)
自分の投稿をまとめて見ることができるページ(お守り)を作り、自分の成長や達成を振り返ることができるようにする。
ランダムに他者の投稿が表示されるルーレット機能を設け、ユーザーの嗜好に捉われず、他者の成功体験や前向きなエピソードに触れる機会を提供する。異なるインスピレーションを得て、意欲が湧き上がること、新たな行動のきっかけとなることを目指す。

#### ●サービスの差別化ポイント・推しポイント
- ユーザー主体
モチベーションアップに関する記事は多いが、似たようなことがまとめられていたり、記事を書いた人の趣向によるものが多い。ユーザーがざっくばらんに投稿し合い、多種多様な方法を一度に目にすることができる点が他と異なる。
- ルーレット機能
ランダムに他者の投稿が表示され、ユーザーが予測できないアイデアや情報を取得できる点が推しポイント。新たな刺激となりモチベーションのアップに繋がる。
- ユーザー専用ページ
自分の投稿や活動を振り返りやすいような専用ページを強化することで、過去の成功体験を可視化し、モチベーションを維持しやすくなる。

#### ●画面遷移図(Figma)
https://www.figma.com/file/4GXJTlkz2Htgkx93LCApyi/%5B%E6%8F%90%E5%87%BA%E7%94%A8%5D-%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?type=design&node-id=0%3A1&mode=design&t=R6rA83kVpSEvvDvd-1
