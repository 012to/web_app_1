# モチベの泉

## ●サービス概要
人々が日常生活や学習の中で感じる悩みやモチベーションの低下に対し、
ユーザー同士で様々な角度からきっかけを提供し合い、
新たな気づきを与える、モチベーションを引き出すサービスです。

#### ●発案経緯
- 日々の生活は大小様々な挑戦の連続であり、自分を鼓舞しなければいけない瞬間がある。
- RUNTEQに入学してからは新たな出来事の連続で、特にそれを実感した。
- 学習のペースを掴み、モチベーションに左右されない段階になるまで、自分の気合を入れ直したり気分を高めるため試行錯誤した。
- RUNTEQのイベントを眺めていると「モチベアップ会」など、モチベーションアップへの興味関心が高いように感じる。
- モチベーションアップの方法は多種多様であり、効果にも個人差がある。
- ユーザー主体となり、多角的にモチベーションアップのきっかけを共有し合うことができるアプリを作りたいと思った。

#### ●想定されるユーザー層
10代後半から30代前半の男女。
目標を持って継続的に何かを取り組んでいる方。
主に学習中、就職活動中の方である、高校生、大学生、就活生、RUNTEQ生を想定。
#### ●ユーザーが抱える課題
モチベーショが低下し、取り掛かりが遅くなってしまったり継続ができないことで、負のループに陥ってしまう。
#### ●解決方法
モチベーションが高まった行動や名言、考え方などを共有し合う掲示板を用意する。
自分の投稿まとめて見ることのできるページも作り、同じ状況に陥った時にいつでも振り返ることができるようにする。
ユーザーの嗜好に捉われない(ランダムに投稿が表示される)ルーレット機能を設け、新たな発見を提供することで前向きなアクションに繋がる。

#### ●サービスの差別化ポイント・推しポイント
・ユーザー主体
モチベーションアップに関する記事は多いが、似たようなことがまとめられていたり、記事を書いた人の趣向によるものが多い。
ユーザーがざっくばらんに投稿し合うことで、多種多様な方法を一度に目にすることができる。
・ルーレット機能
ランダムに他者の投稿が表示されることで、ユーザーが予測できないアイデアや情報にアクセスでき、モチベーションのアップに繋がるような新たな刺激を提供できる。

#### 実装を予定している機能
【MVP】
・会員登録
・マイページ機能
・掲示板機能
・ルーレット機能
・投稿のタグ付け機能
・いいねや共有機能

【本リリース】
・検索機能
・レコメンド機能

## 機能の実装方針予定
・ルーレット機能
ランダムに他者の投稿が表示される機能。
→フロントエンドで表示切り替えのためのJavaScriptを使用。
・投稿のタグ付機能
ユーザーが自分の投稿に関連するタグを選択、入力できる機能。
・いいねや共有機能
ユーザーが他の投稿に対して「いいね」を押したり、共有できる機能。
・検索機能
ユーザーが特定のキーワードやタグで投稿を検索できる機能。

・レコメンド機能
ユーザーの過去の投稿や行動履歴を元に、関連する投稿を推薦する機能。
→レコメンドアルゴリズムの選定
　機械学習フレームワーク、データベース、APIフレームワークの選定...?



