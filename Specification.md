# 仕様
仮プロジェクト名: microStocklist
社内向けに必要最小限の構成で在庫管理機能を実装する

棚卸データからの増減値で現在庫を割り出すなどは考えない
現在庫データのみを保持し、増減値は別途データにて保存する
分析用の増減値データは表示が遅くてもかまわないので日毎テキスト形式で保存
- レコード/日: 行フォーマット: sku, [into|out], value, user_id

## 処理の流れ
初期ページでは大きな検索窓と、よく売れる商品TOP10みたいなのを表示？(後で)
あいまい検索で品番から商品品番を検索
 → item.skuの一致リストを表示
 → item.alias_skuの一致リストを別項目で表示
表示されたテーブル形式のリストに直接在庫入力欄を設け、そこに在庫を入力
 → 入力された在庫増減値から対象item.skuのitem.stockを変更
 → 入力された在庫増減値をtradesテーブルに保存
在庫増減値(trades)のデータからグラフとか売れ筋とか適宜表示させるページ(後で)

## Tables

*users*
use devise
+ username
+ organization_id

*organizations table*
- name
- email
- tel
- fax

*comapnies table*
- name
- staff
- email
- tel
- fax
- address
- organization_id

*items table*
- sku
- name
- sell
- buy
- stock
- sku-alias
- company_id
- organization_id

*trades table*
- date
- varies
- organization_id