-- ------------------------------------------------------------
-- V00_001_017__add_announcement_management_permission.sql
--   アナウンスマスタメンテ管理機能追加
-- ------------------------------------------------------------

/* ============================================================
   0025 : パーミッション
   ANNOUNCEMENT_MNG を追加
   ============================================================ */
INSERT INTO m_code (
    code_type, code_type_name, code_type_name_en, code_value, name,
    display_name_ja, display_name_en, display_name_es,
    remarks, display_order,
    create_user_id, create_program, created_at,
    update_user_id, update_program, updated_at
) VALUES
    ('0025', 'パーミッション', 'Permission', '40', 'AnnouncementMng',
     'アナウンス管理', 'Announcement Management', 'Gestión de anuncios',
     'アナウンスの管理', '10040',
     1, 'INIT_DATA', NOW(6), 1, 'INIT_DATA', NOW(6));

/* ============================================================
   m_role_permission : ロール・パーミッションマッピング
   ADMIN / SUPPORT 両方にアナウンス管理権限を付与
   ============================================================ */
INSERT INTO m_role_permission (
    role, permission,
    create_user_id, create_program, created_at,
    update_user_id, update_program, updated_at
) VALUES
    ('ADMIN', '40', 1, 'INIT_DATA', NOW(6), 1, 'INIT_DATA', NOW(6)),
    ('SPPRT', '40', 1, 'INIT_DATA', NOW(6), 1, 'INIT_DATA', NOW(6));

/* ============================================================
   0012 : プログラム種別 - アナウンス管理
   ============================================================ */
INSERT INTO m_code (
    code_type, code_type_name, code_type_name_en, code_value, name,
    display_name_ja, display_name_en, display_name_es,
    remarks, display_order,
    create_user_id, create_program, created_at,
    update_user_id, update_program, updated_at
) VALUES
    ('0012', 'プログラム種別', 'ProgramType', 'OnlAdmAnn', 'ONL_ADM_ANN',
     'ONL_ADM_ANN', 'ONL_ADM_ANN', 'ONL_ADM_ANN',
     null, '20021',
     1, 'INIT_DATA', NOW(6),
     1, 'INIT_DATA', NOW(6));
