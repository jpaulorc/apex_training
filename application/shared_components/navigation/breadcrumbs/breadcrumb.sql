prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>49061394803238251641
,p_default_application_id=>95416
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WPJPAULORCTRAINING'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(49072129546355507220)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(49072129770340507220)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(49112653077530681648)
,p_short_name=>'CURSO_RPT'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(49112654239294681649)
,p_parent_id=>wwv_flow_api.id(49112653077530681648)
,p_short_name=>'CURSO_FRM'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.component_end;
end;
/
