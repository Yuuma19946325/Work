--------------------------------------------------------------------------------
-- public.order_details のレイアウト変更
--   注意！！：テーブルに依存するオブジェクト（ビューなど）が削除される場合があります。それらのオブジェクトは復元されません。
--   2024/05/30 小林 雄磨
--------------------------------------------------------------------------------


-- 新テーブルの作成
create table public.order_details (
  order_details_id bigserial not null
  , order_id integer not null
  , goods_id integer not null
  , quantity integer not null
  , quantity_amount integer not null
  , update_data timestamp(6) without time zone
)
/


-- 主キーの作成
alter table public.order_details  add primary key (order_details_id,order_id,goods_id)
/


-- コメントの作成
comment on table public.order_details is '注文詳細'
/

comment on column public.order_details.order_details_id is '注文詳細ID'
/

comment on column public.order_details.order_id is '注文ID'
/

comment on column public.order_details.goods_id is '商品ID'
/

comment on column public.order_details.quantity is '数量'
/

comment on column public.order_details.quantity_amount is '数量合計金額'
/

comment on column public.order_details.update_data is '更新日時'
/

