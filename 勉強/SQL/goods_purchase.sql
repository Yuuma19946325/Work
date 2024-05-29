--------------------------------------------------------------------------------
-- public.goods_purchase のレイアウト変更
--   注意！！：テーブルに依存するオブジェクト（ビューなど）が削除される場合があります。それらのオブジェクトは復元されません。
--   2024/05/29 小林 雄磨
--------------------------------------------------------------------------------


-- 新テーブルの作成
create table public.goods_purchase (
  goods_purchase_id bigserial not null
  , account_id integer not null
  , goods_id integer not null
  , purchas_number integer not null
  , update_data timestamp(6) without time zone
  , delete_data timestamp(6) without time zone
  , delete_flag boolean
)
/


-- 主キーの作成
alter table public.goods_purchase  add primary key (goods_purchase_id,account_id,goods_id)
/


-- コメントの作成
comment on table public.goods_purchase is '商品購入'
/

comment on column public.goods_purchase.goods_purchase_id is '商品購入ID'
/

comment on column public.goods_purchase.account_id is 'アカウントID'
/

comment on column public.goods_purchase.goods_id is '商品ID'
/

comment on column public.goods_purchase.purchas_number is '購入回数'
/

comment on column public.goods_purchase.update_data is '更新日時'
/

comment on column public.goods_purchase.delete_data is '削除日時'
/

comment on column public.goods_purchase.delete_flag is '削除フラグ'
/

