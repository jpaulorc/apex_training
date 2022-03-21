prompt --application/shared_components/user_interface/lovs/lov_uf
begin
--   Manifest
--     LOV_UF
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
 p_id=>wwv_flow_api.id(49764845165283587076)
,p_lov_name=>'LOV_UF'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UF D, UF R',
'  FROM estado',
' ORDER BY D '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_api.component_end;
end;
/
