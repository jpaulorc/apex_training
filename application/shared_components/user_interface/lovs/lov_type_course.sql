prompt --application/shared_components/user_interface/lovs/lov_type_course
begin
--   Manifest
--     LOV_TYPE_COURSE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>49061394803238251641
,p_default_application_id=>95416
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WPJPAULORCTRAINING'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(49117045745807798290)
,p_lov_name=>'LOV_TYPE_COURSE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descricao D, valor R ',
'  FROM tipo_curso',
' ORDER BY D'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
