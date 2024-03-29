# モチベの泉

## サービス概要
人々が日常や学習の中で感じるモチベーションの低下に対し、
ユーザー同士で様々な角度からきっかけを提供し合い、
新たな気づきや前向きなエネルギーを提供することを目指したサービスです。

### ●発案経緯
- 目標達成のためには継続的に取り組むこと、物怖じせずトライアンドエラーを繰り返すことが必要不可欠であるが、そのためにモチベーションを維持することはとても難しい。
- RUNTEQに入学してからは特にそれを実感した。
- 学習のペースを掴み、モチベーションに左右されない段階になるまで、自分の気合を入れ直したり気分を高めるため試行錯誤した。
- RUNTEQのイベントを眺めていても感じるように(モチベアップ会など)モチベーションの維持は永遠の課題であり、絶えず人々が興味関心を寄せている。
- モチベーションを保つには、ポジティブな人々や環境に身を置くことが重要である。
- ユーザー主体となり多角的にモチベーションアップのきっかけを共有し合うことができる、心が前向きになるようなアプリを作りたいと思った。

### ●想定されるユーザー層
10代後半から30代前半の男女。
目標を持って継続的に何かを取り組んでいる方。
主に学習中、就職活動中の方である、高校生、大学生、就活生、RUNTEQ生を想定。
### ●ユーザーが抱える課題
モチベーショが低下し、取り掛かりが遅くなってしまったり継続ができないことで、負のループに陥ってしまう。
### ●解決方法
ユーザが面接や学習において、緊張した瞬間や学びの中で気づいたことなど、モチベーション向上に関連するエピソードやアドバイスを共有できる掲示板を提供する。
(例：面接の時など緊張した時の対処法、心構え。学習前の切り替え方、継続的に学習に向き合う中で悟ったこと。救われた名言など)
自分の投稿をまとめて見ることができるページ(お守り)を作り、自分の成長や達成を振り返ることができるようにする。
ランダムに他者の投稿が表示されるルーレット機能を設け、ユーザーの嗜好に捉われず、他者の成功体験や前向きなエピソードに触れる機会を提供する。異なるインスピレーションを得て、意欲が湧き上がること、新たな行動のきっかけとなることを目指す。

### ●サービスの差別化ポイント・推しポイント
- ユーザー主体
モチベーションアップに関する記事は多いが、似たようなことがまとめられていたり、記事を書いた人の趣向によるものが多い。ユーザーがざっくばらんに投稿し合い、多種多様な方法を一度に目にすることができる点が他と異なる。
- ルーレット機能
ランダムに他者の投稿が表示され、ユーザーが予測できないアイデアや情報を取得できる点が推しポイント。新たな刺激となりモチベーションのアップに繋がる。
- ユーザー専用ページ
自分の投稿や活動を振り返りやすいような専用ページを強化することで、過去の成功体験を可視化し、モチベーションを維持しやすくなる。

### ●実装を予定している機能
【MVP】
- 会員登録
- マイページ機能
- 掲示板機能
- ルーレット機能
- 投稿のタグ付け機能
- いいねや共有機能
- 通知機能

【本リリース】
- 検索機能(autocomplete)
- レコメンド機能

### ●機能の実装方針予定
- ルーレット機能
ランダムに他者の投稿が表示される機能。
→ フロントエンドで表示切り替えのためのJavaScriptを使用。
- 投稿のタグ付機能
ユーザーが自分の投稿に関連するタグを選択、入力できる機能。
- いいねや共有機能
ユーザーが他の投稿に対して「いいね」を押したり、共有できる機能。
- 検索機能
ユーザーが特定のキーワードやタグで投稿を検索できる機能。
- アプリ通知機能
一定期間アプリに来ていないユーザーに通知を送る機能。

- レコメンド機能
ユーザーの過去の投稿や行動履歴を元に、関連する投稿を推薦する機能。
→ レコメンドアルゴリズムの選定 (機械学習フレームワーク、データベース、APIフレームワークの選定...?)

- 画面遷移図(Figma)
https://www.figma.com/file/4GXJTlkz2Htgkx93LCApyi/%5B%E6%8F%90%E5%87%BA%E7%94%A8%5D-%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?type=design&node-id=0%3A1&mode=design&t=R6rA83kVpSEvvDvd-1

- ER図
https://i.gyazo.com/db54561b6bf667e5e68e3b2e9be5c4c3.png
