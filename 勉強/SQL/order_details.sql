--------------------------------------------------------------------------------
-- public.order_details �̃��C�A�E�g�ύX
--   ���ӁI�I�F�e�[�u���Ɉˑ�����I�u�W�F�N�g�i�r���[�Ȃǁj���폜�����ꍇ������܂��B�����̃I�u�W�F�N�g�͕�������܂���B
--   2024/05/30 ���� �Y��
--------------------------------------------------------------------------------


-- �V�e�[�u���̍쐬
create table public.order_details (
  order_details_id bigserial not null
  , order_id integer not null
  , goods_id integer not null
  , quantity integer not null
  , quantity_amount integer not null
  , update_data timestamp(6) without time zone
)
/


-- ��L�[�̍쐬
alter table public.order_details  add primary key (order_details_id,order_id,goods_id)
/


-- �R�����g�̍쐬
comment on table public.order_details is '�����ڍ�'
/

comment on column public.order_details.order_details_id is '�����ڍ�ID'
/

comment on column public.order_details.order_id is '����ID'
/

comment on column public.order_details.goods_id is '���iID'
/

comment on column public.order_details.quantity is '����'
/

comment on column public.order_details.quantity_amount is '���ʍ��v���z'
/

comment on column public.order_details.update_data is '�X�V����'
/

