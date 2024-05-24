--------------------------------------------------------------------------------
-- public.goods のレイアウト変更
--   注意！！：テーブルに依存するオブジェクト（ビューなど）が削除される場合があります。それらのオブジェクトは復元されません。
--   2024/05/24 小林 雄磨
--------------------------------------------------------------------------------


-- 新テーブルの作成
create table public.goods (
  goods_id bigserial not null
  , goods_name varchar(100) not null
  , category_id integer not null
  , amount integer not null
  , stock integer not null
  , set integer
  , material varchar(100)
  , brand varchar(100)
  , theme varchar(100)
  , target integer
  , point integer
  , update_data timestamp not null
  , delete_data timestamp
  , delete_flag boolean
)
/


-- 主キーの作成
alter table public.goods  add primary key (goods_id)
/


-- コメントの作成
comment on table public.goods is '商品'
/

comment on column public.goods.goods_id is '商品ID'
/

comment on column public.goods.goods_name is '商品名'
/

comment on column public.goods.category_id is 'カテゴリーID'
/

comment on column public.goods.amount is '金額'
/

comment on column public.goods.stock is '在庫'
/

comment on column public.goods.set is 'セット個数'
/

comment on column public.goods.material is '材質,'
/

comment on column public.goods.brand is 'ブランド'
/

comment on column public.goods.theme is 'テーマ'
/

comment on column public.goods.target is '対象年齢'
/

comment on column public.goods.point is '付与ポイント'
/

comment on column public.goods.update_data is '更新日時'
/

comment on column public.goods.delete_data is '削除日時'
/

comment on column public.goods.delete_flag is '削除フラグ'
/

