prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>49061394803238251641
,p_default_application_id=>95416
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WPJPAULORCTRAINING'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(49072317651837507290)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Treinamento'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JPAULORC@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220318144344'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49072327046695507300)
,p_plug_name=>'Treinamento'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(49072198269417507246)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
