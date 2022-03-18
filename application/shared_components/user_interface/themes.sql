prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 95416
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>49061394803238251641
,p_default_application_id=>95416
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WPJPAULORCTRAINING'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(49072295913959507282)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(49072155812792507231)
,p_default_dialog_template=>wwv_flow_api.id(49072150641124507229)
,p_error_template=>wwv_flow_api.id(49072140990397507225)
,p_printer_friendly_template=>wwv_flow_api.id(49072155812792507231)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(49072140990397507225)
,p_default_button_template=>wwv_flow_api.id(49072292949459507280)
,p_default_region_template=>wwv_flow_api.id(49072220351227507253)
,p_default_chart_template=>wwv_flow_api.id(49072220351227507253)
,p_default_form_template=>wwv_flow_api.id(49072220351227507253)
,p_default_reportr_template=>wwv_flow_api.id(49072220351227507253)
,p_default_tabform_template=>wwv_flow_api.id(49072220351227507253)
,p_default_wizard_template=>wwv_flow_api.id(49072220351227507253)
,p_default_menur_template=>wwv_flow_api.id(49072232484978507258)
,p_default_listr_template=>wwv_flow_api.id(49072220351227507253)
,p_default_irr_template=>wwv_flow_api.id(49072216072106507252)
,p_default_report_template=>wwv_flow_api.id(49072257961603507267)
,p_default_label_template=>wwv_flow_api.id(49072290442174507279)
,p_default_menu_template=>wwv_flow_api.id(49072294502092507281)
,p_default_calendar_template=>wwv_flow_api.id(49072294687688507281)
,p_default_list_template=>wwv_flow_api.id(49072274394046507273)
,p_default_nav_list_template=>wwv_flow_api.id(49072286106699507277)
,p_default_top_nav_list_temp=>wwv_flow_api.id(49072286106699507277)
,p_default_side_nav_list_temp=>wwv_flow_api.id(49072280716457507275)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(49072168744771507236)
,p_default_dialogr_template=>wwv_flow_api.id(49072165917059507235)
,p_default_option_label=>wwv_flow_api.id(49072290442174507279)
,p_default_required_label=>wwv_flow_api.id(49072291707045507279)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(49072280370002507275)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
