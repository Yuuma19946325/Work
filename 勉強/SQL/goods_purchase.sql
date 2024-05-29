--------------------------------------------------------------------------------
-- public.goods_purchase �̃��C�A�E�g�ύX
--   ���ӁI�I�F�e�[�u���Ɉˑ�����I�u�W�F�N�g�i�r���[�Ȃǁj���폜�����ꍇ������܂��B�����̃I�u�W�F�N�g�͕�������܂���B
--   2024/05/29 ���� �Y��
--------------------------------------------------------------------------------


-- �V�e�[�u���̍쐬
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


-- ��L�[�̍쐬
alter table public.goods_purchase  add primary key (goods_purchase_id,account_id,goods_id)
/


-- �R�����g�̍쐬
comment on table public.goods_purchase is '���i�w��'
/

comment on column public.goods_purchase.goods_purchase_id is '���i�w��ID'
/

comment on column public.goods_purchase.account_id is '�A�J�E���gID'
/

comment on column public.goods_purchase.goods_id is '���iID'
/

comment on column public.goods_purchase.purchas_number is '�w����'
/

comment on column public.goods_purchase.update_data is '�X�V����'
/

comment on column public.goods_purchase.delete_data is '�폜����'
/

comment on column public.goods_purchase.delete_flag is '�폜�t���O'
/

