prompt --application/shared_components/user_interface/lovs/lov_yes_no
begin
--   Manifest
--     LOV_YES_NO
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
 p_id=>wwv_flow_api.id(49114085267408726421)
,p_lov_name=>'LOV_YES_NO'
,p_lov_query=>'.'||wwv_flow_api.id(49114085267408726421)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(49114085526376726422)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Sim'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(49114085996320726422)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('N\00E3o')
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
