
    create table RS_ACE (
        ENTITY_ID int8 not null,
        accesstype int4 not null,
        n int4 not null,
        ENTITY_VERSION int4,
        acl_id int8 not null,
        folk_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_ACE_2_ACCESS_MAPS (
        ace_id int8 not null,
        access_maps_id int8 not null,
        primary key (ace_id, access_maps_id)
    );

    create table RS_ACE_2_ACCESS_MAPS_A (
        REV int4 not null,
        ace_id int8 not null,
        access_maps_id int8 not null,
        revtype int2,
        primary key (REV, ace_id, access_maps_id)
    );

    create table RS_ACE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        accesstype int4,
        n int4,
        acl_id int8,
        folk_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_ACE_ACCESS_MAP (
        ENTITY_ID int8 not null,
        ACCESS_FIELD int8,
        securee varchar(32),
        ENTITY_VERSION int4,
        primary key (ENTITY_ID)
    );

    create table RS_ACE_ACCESS_MAP_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        ACCESS_FIELD int8,
        securee varchar(32),
        primary key (ENTITY_ID, REV)
    );

    create table RS_ACL (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int4,
        primary key (ENTITY_ID)
    );

    create table RS_ACL_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        primary key (ENTITY_ID, REV)
    );

    create table RS_ADD_COLUMN_SPEC (
        id int8 not null,
        primary key (id)
    );

    create table RS_ADD_COLUMN_SPEC_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_AMAZONS3_DATASINK (
        app_key text,
        bucket_name text,
        folder varchar(1024),
        region_name varchar(1024),
        secret_key text,
        storage_class varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_AMAZONS3_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        app_key text,
        bucket_name text,
        folder varchar(1024),
        region_name varchar(1024),
        secret_key text,
        storage_class varchar(255),
        primary key (id, REV)
    );

    create table RS_AUDIT_LOG_ENTRY (
        ENTITY_ID int8 not null,
        action varchar(64),
        DATE_FIELD timestamp,
        user_id int8,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_AUDIT_LOG_PROPERTY (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(64) not null,
        value text,
        ENTITY_VERSION int8,
        LOG_ENTRY_ID int8,
        primary key (ENTITY_ID)
    );

    create table RS_BINARY_COLUMN_FILTER (
        operator int4,
        id int8 not null,
        columna_id int8,
        columnb_id int8,
        primary key (id)
    );

    create table RS_BINARY_COLUMN_FILTER_A (
        id int8 not null,
        REV int4 not null,
        operator int4,
        columna_id int8,
        columnb_id int8,
        primary key (id, REV)
    );

    create table RS_BIRT_REPORT (
        id int8 not null,
        report_file_id int8,
        primary key (id)
    );

    create table RS_BIRT_REPORT_A (
        id int8 not null,
        REV int4 not null,
        report_file_id int8,
        primary key (id, REV)
    );

    create table RS_BIRT_REPORT_DATASRC (
        database_cache int4 not null,
        id int8 not null,
        primary key (id)
    );

    create table RS_BIRT_REPORT_DATASRC_A (
        id int8 not null,
        REV int4 not null,
        database_cache int4,
        primary key (id, REV)
    );

    create table RS_BIRT_REPORT_DATASRC_CFG (
        query_wrapper varchar(4096),
        target varchar(255),
        target_type int4,
        id int8 not null,
        report_id int8,
        primary key (id)
    );

    create table RS_BIRT_REPORT_DATASRC_CFG_A (
        id int8 not null,
        REV int4 not null,
        query_wrapper varchar(4096),
        target varchar(255),
        target_type int4,
        report_id int8,
        primary key (id, REV)
    );

    create table RS_BIRT_REPORT_FILE (
        ENTITY_ID int8 not null,
        content text,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_BIRT_REPORT_FILE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content text,
        NAME_FIELD varchar(128),
        primary key (ENTITY_ID, REV)
    );

    create table RS_BIRT_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_BIRT_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_BLATEXT_PARAM_DEF (
        value text,
        id int8 not null,
        primary key (id)
    );

    create table RS_BLATEXT_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        value text,
        primary key (id, REV)
    );

    create table RS_BLATEXT_PARAM_INST (
        id int8 not null,
        primary key (id)
    );

    create table RS_BLATEXT_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_BOX_DATASINK (
        app_key text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        id int8 not null,
        primary key (id)
    );

    create table RS_BOX_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        app_key text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        primary key (id, REV)
    );

    create table RS_COLUMN (
        ENTITY_ID int8 not null,
        aggregate_function int4,
        alias varchar(255),
        dimension varchar(255),
        hidden boolean,
        NAME_FIELD varchar(255),
        null_handling int4,
        null_replacement_format varchar(255),
        ORDER_FIELD int4,
        position int4 not null,
        preview_width int4,
        subtotal_group boolean,
        type int4,
        ENTITY_VERSION int8,
        filter_id int8,
        format_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_COLUMN_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        aggregate_function int4,
        alias varchar(255),
        dimension varchar(255),
        hidden boolean,
        NAME_FIELD varchar(255),
        null_handling int4,
        null_replacement_format varchar(255),
        ORDER_FIELD int4,
        position int4,
        preview_width int4,
        subtotal_group boolean,
        type int4,
        filter_id int8,
        format_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_COLUMN_FILTER (
        id int8 not null,
        column_id int8,
        primary key (id)
    );

    create table RS_COLUMN_FILTER_A (
        id int8 not null,
        REV int4 not null,
        column_id int8,
        primary key (id, REV)
    );

    create table RS_COLUMN_FORMAT (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_COLUMN_FORMAT_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        primary key (ENTITY_ID, REV)
    );

    create table RS_COLUMN_FORMAT_CURRENCY (
        currency_type int4,
        id int8 not null,
        primary key (id)
    );

    create table RS_COLUMN_FORMAT_CURRENCY_A (
        id int8 not null,
        REV int4 not null,
        currency_type int4,
        primary key (id, REV)
    );

    create table RS_COLUMN_FORMAT_DATE (
        base_format varchar(255),
        error_replacement varchar(255),
        replace_errors boolean,
        roll_over boolean,
        target_format varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_COLUMN_FORMAT_DATE_A (
        id int8 not null,
        REV int4 not null,
        base_format varchar(255),
        error_replacement varchar(255),
        replace_errors boolean,
        roll_over boolean,
        target_format varchar(255),
        primary key (id, REV)
    );

    create table RS_COLUMN_FORMAT_NUMBER (
        number_of_decimal_places int4 not null,
        thousand_separator boolean not null,
        type int4,
        id int8 not null,
        primary key (id)
    );

    create table RS_COLUMN_FORMAT_NUMBER_A (
        id int8 not null,
        REV int4 not null,
        number_of_decimal_places int4,
        thousand_separator boolean,
        type int4,
        primary key (id, REV)
    );

    create table RS_COLUMN_FORMAT_TEMPLATE (
        template varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_COLUMN_FORMAT_TEMPLATE_A (
        id int8 not null,
        REV int4 not null,
        template varchar(255),
        primary key (id, REV)
    );

    create table RS_COLUMN_FORMAT_TEXT (
        id int8 not null,
        primary key (id)
    );

    create table RS_COLUMN_FORMAT_TEXT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_COLUMN_REFERENCE (
        id int8 not null,
        reference_id int8,
        primary key (id)
    );

    create table RS_COLUMN_REFERENCE_A (
        id int8 not null,
        REV int4 not null,
        reference_id int8,
        primary key (id, REV)
    );

    create table RS_COMPILED_REPORT (
        ENTITY_ID int8 not null,
        created_on timestamp,
        serialized_report oid,
        ENTITY_VERSION int8,
        report_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_COMPUTED_COLUMN (
        description text,
        expression text,
        id int8 not null,
        primary key (id)
    );

    create table RS_COMPUTED_COLUMN_A (
        id int8 not null,
        REV int4 not null,
        description text,
        expression text,
        primary key (id, REV)
    );

    create table RS_CONDITION (
        ENTITY_ID int8 not null,
        description text,
        KEY_FIELD varchar(64),
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        report_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_CRYSTAL_REPORT (
        id int8 not null,
        report_file_id int8,
        primary key (id)
    );

    create table RS_CRYSTAL_REPORT_A (
        id int8 not null,
        REV int4 not null,
        report_file_id int8,
        primary key (id, REV)
    );

    create table RS_CRYSTAL_REPORT_FILE (
        ENTITY_ID int8 not null,
        content oid,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_CRYSTAL_REPORT_FILE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content oid,
        NAME_FIELD varchar(128),
        primary key (ENTITY_ID, REV)
    );

    create table RS_CRYSTAL_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_CRYSTAL_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_CSV_DATASOURCE (
        database_cache int4 not null,
        quote varchar(255),
        SEPARATOR_FIELD varchar(255),
        id int8 not null,
        connector_id int8,
        primary key (id)
    );

    create table RS_CSV_DATASOURCE_A (
        id int8 not null,
        REV int4 not null,
        database_cache int4,
        quote varchar(255),
        SEPARATOR_FIELD varchar(255),
        connector_id int8,
        primary key (id, REV)
    );

    create table RS_CSV_DATASOURCE_CONF (
        query_wrapper varchar(4096),
        id int8 not null,
        primary key (id)
    );

    create table RS_CSV_DATASOURCE_CONF_A (
        id int8 not null,
        REV int4 not null,
        query_wrapper varchar(4096),
        primary key (id, REV)
    );

    create table RS_DADGET (
        ENTITY_ID int8 not null,
        col int4 not null,
        container int4,
        height int4 not null,
        n int4 not null,
        reload_interval int8 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_DADGET_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        col int4,
        container int4,
        height int4,
        n int4,
        reload_interval int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DADGET_FAVORITE_LIST (
        id int8 not null,
        primary key (id)
    );

    create table RS_DADGET_LIBRARY (
        id int8 not null,
        dadget_node_id int8,
        primary key (id)
    );

    create table RS_DADGET_PARAMETER (
        id int8 not null,
        primary key (id)
    );

    create table RS_DADGET_REPORT (
        config text,
        show_execute_button boolean not null,
        id int8 not null,
        report_id int8,
        report_reference_id int8,
        primary key (id)
    );

    create table RS_DADGET_REPORT_2_PARAM_INST (
        dadget_id int8 not null,
        parameter_instances_id int8 not null,
        primary key (dadget_id, parameter_instances_id)
    );

    create table RS_DADGET_STATIC_HTML (
        data text,
        title varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_DADGET_URL (
        title varchar(255),
        url varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_DASHBOARD (
        ENTITY_ID int8 not null,
        description text,
        layout int4,
        n int4 not null,
        NAME_FIELD varchar(255),
        reload_interval int8 not null,
        single_page boolean not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_DASHBOARD_2_DADGET (
        dashboard_id int8 not null,
        dadgets_id int8 not null
    );

    create table RS_DASHBOARD_2_DADGET_A (
        REV int4 not null,
        dashboard_id int8 not null,
        dadgets_id int8 not null,
        revtype int2,
        primary key (REV, dashboard_id, dadgets_id)
    );

    create table RS_DASHBOARD_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        layout int4,
        n int4,
        NAME_FIELD varchar(255),
        reload_interval int8,
        single_page boolean,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DASHBOARD_CONTAINER (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_DASHBOARD_CONTAINER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DASHBOARD_CONT_2_DASHBRD (
        dashboard_container_id int8 not null,
        dashboards_id int8 not null
    );

    create table RS_DASHBOARD_CONT_2_DASHBRD_A (
        REV int4 not null,
        dashboard_container_id int8 not null,
        dashboards_id int8 not null,
        revtype int2,
        primary key (REV, dashboard_container_id, dashboards_id)
    );

    create table RS_DASHBOARD_DADGET_NODE (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        dadget_id int8,
        primary key (id)
    );

    create table RS_DASHBOARD_DADGET_NODE_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        dadget_id int8,
        primary key (id, REV)
    );

    create table RS_DASHBOARD_DASHBOARD_NODE (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        dashboard_id int8,
        primary key (id)
    );

    create table RS_DASHBOARD_DASHBOARD_NODE_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        dashboard_id int8,
        primary key (id, REV)
    );

    create table RS_DASHBOARD_FOLDER (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_DASHBOARD_FOLDER_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_DASHBOARD_MNGR_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DASHBOARD_MNGR_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DASHBOARD_REFERENCE (
        id int8 not null,
        dashboard_node_id int8,
        primary key (id)
    );

    create table RS_DASHBOARD_REFERENCE_A (
        id int8 not null,
        REV int4 not null,
        dashboard_node_id int8,
        primary key (id, REV)
    );

    create table RS_DASHBOARD_USER (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        dashboard_container_id int8,
        user_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DASHBOARD_USER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        dashboard_container_id int8,
        user_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATABASE_BUNDLE_ENTRY (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(255),
        ENTITY_VERSION int8,
        database_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATABASE_BUNDLE_ENTRY_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        KEY_FIELD varchar(255),
        database_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATABASE_DATASOURCE (
        database_descriptor varchar(255),
        jdbc_properties text,
        password varchar(255),
        url varchar(1024),
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_DATABASE_DATASOURCE_A (
        id int8 not null,
        REV int4 not null,
        database_descriptor varchar(255),
        jdbc_properties text,
        password varchar(255),
        url varchar(1024),
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_DATABASE_DATASOURCE_CONF (
        query text,
        id int8 not null,
        primary key (id)
    );

    create table RS_DATABASE_DATASOURCE_CONF_A (
        id int8 not null,
        REV int4 not null,
        query text,
        primary key (id, REV)
    );

    create table RS_DATASINK_CONTAINER (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        datasink_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATASINK_CONTAINER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        datasink_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASINK_DEFINITION (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_DATASINK_DEFINITION_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_DATASINK_FOLDER (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_DATASINK_FOLDER_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_DATASINK_MNGR_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATASINK_MNGR_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_CONNECTOR (
        DTYPE varchar(31) not null,
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        data text,
        url varchar(255),
        primary key (ENTITY_ID)
    );

    create table RS_DATASOURCE_CONNECTOR_A (
        DTYPE varchar(31) not null,
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        url varchar(255),
        data text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_CONNECTOR_CFG (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(255),
        value text,
        primary key (ENTITY_ID)
    );

    create table RS_DATASOURCE_CONNECTOR_CFG_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        KEY_FIELD varchar(255),
        value text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_CONTAINER (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        datasource_id int8,
        datasource_config_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATASOURCE_CONTAINER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        datasource_id int8,
        datasource_config_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_DEFINITION (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_DATASOURCE_DEFINITION_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_DATASOURCE_DEF_CONFIG (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATASOURCE_DEF_CONFIG_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_FBCFG_2_DSCC (
        csv_datasource_conf_id int8 not null,
        connector_config_id int8 not null
    );

    create table RS_DATASOURCE_FOLDER (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_DATASOURCE_FOLDER_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_DATASOURCE_MNGR_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATASOURCE_MNGR_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_PARAMETER_DATA (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(255),
        value varchar(255),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_DATASOURCE_PARAMETER_DATA_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        KEY_FIELD varchar(255),
        value varchar(255),
        primary key (ENTITY_ID, REV)
    );

    create table RS_DATASOURCE_PARAM_DEF (
        box_layout_mode int4,
        box_layout_pack_col_size int4 not null,
        box_layout_pack_mode int4,
        format varchar(255),
        height int4 not null,
        MODE_FIELD int4,
        multi_selection_mode int4,
        post_process text,
        return_type int4,
        single_selection_mode int4,
        width int4 not null,
        id int8 not null,
        datasource_container_id int8,
        s_def_value_simpl_data_id int8,
        primary key (id)
    );

    create table RS_DATASOURCE_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        box_layout_mode int4,
        box_layout_pack_col_size int4,
        box_layout_pack_mode int4,
        format varchar(255),
        height int4,
        MODE_FIELD int4,
        multi_selection_mode int4,
        post_process text,
        return_type int4,
        single_selection_mode int4,
        width int4,
        datasource_container_id int8,
        s_def_value_simpl_data_id int8,
        primary key (id, REV)
    );

    create table RS_DATASOURCE_PARAM_INST (
        id int8 not null,
        single_value_id int8,
        primary key (id)
    );

    create table RS_DATASOURCE_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        single_value_id int8,
        primary key (id, REV)
    );

    create table RS_DATASOURCE_P_DF_2_ML_DEF (
        datasource_param_def_id int8 not null,
        mult_def_val_simpl_data_id int8 not null
    );

    create table RS_DATASOURCE_P_DF_2_ML_DEF_A (
        REV int4 not null,
        datasource_param_def_id int8 not null,
        mult_def_val_simpl_data_id int8 not null,
        revtype int2,
        primary key (REV, datasource_param_def_id, mult_def_val_simpl_data_id)
    );

    create table RS_DATASOURCE_P_INS_2_ML_VAL (
        datasource_param_inst_id int8 not null,
        multi_value_id int8 not null
    );

    create table RS_DATASOURCE_P_INS_2_ML_VAL_A (
        REV int4 not null,
        datasource_param_inst_id int8 not null,
        multi_value_id int8 not null,
        revtype int2,
        primary key (REV, datasource_param_inst_id, multi_value_id)
    );

    create table RS_DATETIME_PARAM_DEF (
        default_value timestamp,
        formula varchar(255),
        MODE_FIELD int4,
        use_now_as_default boolean,
        id int8 not null,
        primary key (id)
    );

    create table RS_DATETIME_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        default_value timestamp,
        formula varchar(255),
        MODE_FIELD int4,
        use_now_as_default boolean,
        primary key (id, REV)
    );

    create table RS_DATETIME_PARAM_INST (
        formula varchar(255),
        value timestamp,
        id int8 not null,
        primary key (id)
    );

    create table RS_DATETIME_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        formula varchar(255),
        value timestamp,
        primary key (id, REV)
    );

    create table RS_DATE_TRIGGER_CONFIG (
        DTYPE varchar(31) not null,
        ENTITY_ID int8 not null,
        at_time_hour int4,
        at_time_minutes int4,
        daily_repeat_type int4,
        end_type int4,
        first_execution timestamp,
        last_execution timestamp,
        number_of_executions int4,
        time_range_end_hour int4,
        time_range_end_minutes int4,
        time_range_interval int4,
        time_range_start_hour int4,
        time_range_start_minutes int4,
        time_range_unit int4,
        ENTITY_VERSION int8,
        yearly_month int4,
        yearly_nd_ay int4,
        day_in_month int4,
        month int4,
        weeklyn int4,
        dailyn int4,
        pattern int4,
        monthly_day int4,
        monthly_nth int4,
        yearly_day int4,
        yearly_nth int4,
        primary key (ENTITY_ID)
    );

    create table RS_DB_BUNDLE_2_ENTRY (
        db_bundle_datasource_id int8 not null,
        bundle_entries_id int8 not null,
        primary key (db_bundle_datasource_id, bundle_entries_id)
    );

    create table RS_DB_BUNDLE_2_ENTRY_A (
        REV int4 not null,
        db_bundle_datasource_id int8 not null,
        bundle_entries_id int8 not null,
        revtype int2,
        primary key (REV, db_bundle_datasource_id, bundle_entries_id)
    );

    create table RS_DB_BUNDLE_DATASOURCE (
        key_source varchar(255),
        key_source_param_name varchar(255),
        mapping_source varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_DB_BUNDLE_DATASOURCE_A (
        id int8 not null,
        REV int4 not null,
        key_source varchar(255),
        key_source_param_name varchar(255),
        mapping_source varchar(255),
        primary key (id, REV)
    );

    create table RS_DROPBOX_DATASINK (
        app_key text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        id int8 not null,
        primary key (id)
    );

    create table RS_DROPBOX_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        app_key text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        primary key (id, REV)
    );

    create table RS_EMAIL_DATASINK (
        encryption_policy varchar(255),
        force_sender boolean not null,
        host varchar(1024),
        password varchar(255),
        port int4 not null,
        sender varchar(255),
        sender_name varchar(255),
        ssl_enable boolean not null,
        tls_enable boolean not null,
        tls_require boolean not null,
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_EMAIL_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        encryption_policy varchar(255),
        force_sender boolean,
        host varchar(1024),
        password varchar(255),
        port int4,
        sender varchar(255),
        sender_name varchar(255),
        ssl_enable boolean,
        tls_enable boolean,
        tls_require boolean,
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_EXEC_REPORT_AS_FILE_REF (
        output_format varchar(255),
        id int8 not null,
        compiled_report_id int8,
        primary key (id)
    );

    create table RS_EXEC_REPORT_AS_FILE_REF_A (
        id int8 not null,
        REV int4 not null,
        output_format varchar(255),
        compiled_report_id int8,
        primary key (id, REV)
    );

    create table RS_FAVORITE_LIST (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        user_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_FAVORITE_LIST_2_ENTRY (
        favorite_list_id int8 not null,
        reference_entries_id int8 not null
    );

    create table RS_FAVORITE_LIST_ENTRY (
        ENTITY_ID int8 not null,
        position int4 not null,
        ENTITY_VERSION int8,
        reference_entry_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILESEL_PARAM_DEF (
        allow_download boolean not null,
        allow_file_server_selection boolean not null,
        allow_file_upload boolean not null,
        allow_team_space_selection boolean not null,
        allowed_file_extensions varchar(255),
        file_size_string varchar(255),
        height int4 not null,
        max_number_of_files int4,
        min_number_of_files int4,
        width int4 not null,
        id int8 not null,
        primary key (id)
    );

    create table RS_FILESEL_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        allow_download boolean,
        allow_file_server_selection boolean,
        allow_file_upload boolean,
        allow_team_space_selection boolean,
        allowed_file_extensions varchar(255),
        file_size_string varchar(255),
        height int4,
        max_number_of_files int4,
        min_number_of_files int4,
        width int4,
        primary key (id, REV)
    );

    create table RS_FILESEL_PARAM_INST (
        id int8 not null,
        primary key (id)
    );

    create table RS_FILESEL_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_FILESEL_PARAM_IN_2_FILE (
        filesel_param_inst_id int8 not null,
        selected_files_id int8 not null
    );

    create table RS_FILESEL_PARAM_IN_2_FILE_A (
        REV int4 not null,
        filesel_param_inst_id int8 not null,
        selected_files_id int8 not null,
        revtype int2,
        primary key (REV, filesel_param_inst_id, selected_files_id)
    );

    create table RS_FILESEL_PARAM_SEL_FILE (
        ENTITY_ID int8 not null,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        file_server_file_id int8,
        team_space_file_id int8,
        uploaded_file_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILESEL_PARAM_SEL_FILE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        NAME_FIELD varchar(128),
        file_server_file_id int8,
        team_space_file_id int8,
        uploaded_file_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILESEL_PARAM_UP_FILE (
        ENTITY_ID int8 not null,
        content oid,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILESEL_PARAM_UP_FILE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content oid,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILE_SERVER_FILE (
        content_type varchar(128),
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        file_data_id int8,
        primary key (id)
    );

    create table RS_FILE_SERVER_FILE_A (
        id int8 not null,
        REV int4 not null,
        content_type varchar(128),
        description text,
        NAME_FIELD varchar(128),
        file_data_id int8,
        primary key (id, REV)
    );

    create table RS_FILE_SERVER_FILE_DATA (
        ENTITY_ID int8 not null,
        data oid,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILE_SERVER_FILE_DATA_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        data oid,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILE_SERVER_FOLDER (
        description text,
        NAME_FIELD varchar(128),
        publicly_accessible boolean not null,
        id int8 not null,
        primary key (id)
    );

    create table RS_FILE_SERVER_FOLDER_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        publicly_accessible boolean,
        primary key (id, REV)
    );

    create table RS_FILE_SERVER_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILE_SERVER_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILTER (
        ENTITY_ID int8 not null,
        case_sensitive boolean,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILTER_2_EXCLUDE_VAL (
        filter_id int8 not null,
        exclude_values varchar(255),
        val_n int4 not null,
        primary key (filter_id, val_n)
    );

    create table RS_FILTER_2_EXCLUDE_VAL_A (
        REV int4 not null,
        filter_id int8 not null,
        exclude_values varchar(255) not null,
        val_n int4 not null,
        revtype int2,
        primary key (REV, filter_id, exclude_values, val_n)
    );

    create table RS_FILTER_2_FILTER_RNG_EXC (
        filter_id int8 not null,
        exclude_ranges_id int8 not null
    );

    create table RS_FILTER_2_FILTER_RNG_EXC_A (
        REV int4 not null,
        filter_id int8 not null,
        exclude_ranges_id int8 not null,
        revtype int2,
        primary key (REV, filter_id, exclude_ranges_id)
    );

    create table RS_FILTER_2_FILTER_RNG_INC (
        filter_id int8 not null,
        include_ranges_id int8 not null
    );

    create table RS_FILTER_2_FILTER_RNG_INC_A (
        REV int4 not null,
        filter_id int8 not null,
        include_ranges_id int8 not null,
        revtype int2,
        primary key (REV, filter_id, include_ranges_id)
    );

    create table RS_FILTER_2_INCLUDE_VAL (
        filter_id int8 not null,
        include_values varchar(255),
        val_n int4 not null,
        primary key (filter_id, val_n)
    );

    create table RS_FILTER_2_INCLUDE_VAL_A (
        REV int4 not null,
        filter_id int8 not null,
        include_values varchar(255) not null,
        val_n int4 not null,
        revtype int2,
        primary key (REV, filter_id, include_values, val_n)
    );

    create table RS_FILTER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        case_sensitive boolean,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILTER_BLOCK (
        ENTITY_ID int8 not null,
        description text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILTER_BLOCK_2_CHILD_BL (
        filter_block_id int8 not null,
        child_blocks_id int8 not null,
        primary key (filter_block_id, child_blocks_id)
    );

    create table RS_FILTER_BLOCK_2_CHILD_BL_A (
        REV int4 not null,
        filter_block_id int8 not null,
        child_blocks_id int8 not null,
        revtype int2,
        primary key (REV, filter_block_id, child_blocks_id)
    );

    create table RS_FILTER_BLOCK_2_FILTERS (
        filter_block_id int8 not null,
        filters_id int8 not null,
        primary key (filter_block_id, filters_id)
    );

    create table RS_FILTER_BLOCK_2_FILTERS_A (
        REV int4 not null,
        filter_block_id int8 not null,
        filters_id int8 not null,
        revtype int2,
        primary key (REV, filter_block_id, filters_id)
    );

    create table RS_FILTER_BLOCK_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILTER_RANGE (
        ENTITY_ID int8 not null,
        range_from varchar(255),
        range_to varchar(255),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILTER_RANGE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        range_from varchar(255),
        range_to varchar(255),
        primary key (ENTITY_ID, REV)
    );

    create table RS_FILTER_SPEC (
        ENTITY_ID int8 not null,
        description text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_FILTER_SPEC_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_FTPS_DATASINK (
        authentication_type varchar(255),
        data_channel_protect_level varchar(255),
        folder varchar(1024),
        ftp_mode varchar(255),
        host varchar(1024),
        password varchar(255),
        port int4 not null,
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_FTPS_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        authentication_type varchar(255),
        data_channel_protect_level varchar(255),
        folder varchar(1024),
        ftp_mode varchar(255),
        host varchar(1024),
        password varchar(255),
        port int4,
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_FTP_DATASINK (
        folder varchar(1024),
        ftp_mode varchar(255),
        host varchar(1024),
        password varchar(255),
        port int4 not null,
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_FTP_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        folder varchar(1024),
        ftp_mode varchar(255),
        host varchar(1024),
        password varchar(255),
        port int4,
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_GEN_SECURITY_TGT_ENTITY (
        ENTITY_ID int8 not null,
        target_identifier varchar(128),
        ENTITY_VERSION int8,
        acl_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_GEN_SECURITY_TGT_ENTITY_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        target_identifier varchar(128),
        acl_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_GLOBAL_CONSTANT (
        ENTITY_ID int8 not null,
        NAME_FIELD varchar(255),
        value varchar(255),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_GLOBAL_CONSTANT_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        NAME_FIELD varchar(255),
        value varchar(255),
        primary key (ENTITY_ID, REV)
    );

    create table RS_GOOGLEDRIVE_DATASINK (
        app_key text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        id int8 not null,
        primary key (id)
    );

    create table RS_GOOGLEDRIVE_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        app_key text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        primary key (id, REV)
    );

    create table RS_GRID_EDT_REPORT (
        arguments varchar(255),
        id int8 not null,
        script_id int8,
        primary key (id)
    );

    create table RS_GRID_EDT_REPORT_A (
        id int8 not null,
        REV int4 not null,
        arguments varchar(255),
        script_id int8,
        primary key (id, REV)
    );

    create table RS_GRID_EDT_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_GRID_EDT_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_GROUP (
        description text,
        NAME_FIELD varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_GROUP_2_GROUP (
        group_id int8 not null,
        referenced_groups_id int8 not null,
        primary key (group_id, referenced_groups_id)
    );

    create table RS_GROUP_2_GROUP_A (
        REV int4 not null,
        group_id int8 not null,
        referenced_groups_id int8 not null,
        revtype int2,
        primary key (REV, group_id, referenced_groups_id)
    );

    create table RS_GROUP_2_OU (
        group_id int8 not null,
        ous_id int8 not null,
        primary key (group_id, ous_id)
    );

    create table RS_GROUP_2_OU_A (
        REV int4 not null,
        group_id int8 not null,
        ous_id int8 not null,
        revtype int2,
        primary key (REV, group_id, ous_id)
    );

    create table RS_GROUP_2_USER (
        groups_id int8 not null,
        users_id int8 not null,
        primary key (groups_id, users_id)
    );

    create table RS_GROUP_2_USER_A (
        REV int4 not null,
        groups_id int8 not null,
        users_id int8 not null,
        revtype int2,
        primary key (REV, groups_id, users_id)
    );

    create table RS_GROUP_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(255),
        primary key (id, REV)
    );

    create table RS_HEADLINE_PARAM_DEF (
        value text,
        id int8 not null,
        primary key (id)
    );

    create table RS_HEADLINE_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        value text,
        primary key (id, REV)
    );

    create table RS_HEADLINE_PARAM_INST (
        id int8 not null,
        primary key (id)
    );

    create table RS_HEADLINE_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_HIERARCHICAL_ACE (
        inheritancetype int4 not null,
        id int8 not null,
        primary key (id)
    );

    create table RS_HIERARCHICAL_ACE_A (
        id int8 not null,
        REV int4 not null,
        inheritancetype int4,
        primary key (id, REV)
    );

    create table RS_HIERARCHICAL_ACL (
        id int8 not null,
        primary key (id)
    );

    create table RS_HIERARCHICAL_ACL_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_JASPER_REPORT (
        id int8 not null,
        master_file_id int8,
        primary key (id)
    );

    create table RS_JASPER_REPORT_2_SUB_JRXML (
        jasper_report_id int8 not null,
        sub_files_id int8 not null
    );

    create table RS_JASPER_REPORT_2_SUB_JRXML_A (
        REV int4 not null,
        jasper_report_id int8 not null,
        sub_files_id int8 not null,
        revtype int2,
        primary key (REV, jasper_report_id, sub_files_id)
    );

    create table RS_JASPER_REPORT_A (
        id int8 not null,
        REV int4 not null,
        master_file_id int8,
        primary key (id, REV)
    );

    create table RS_JASPER_REPORT_JRXML (
        ENTITY_ID int8 not null,
        content text,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_JASPER_REPORT_JRXML_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content text,
        NAME_FIELD varchar(128),
        primary key (ENTITY_ID, REV)
    );

    create table RS_JASPER_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_JASPER_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_JASPER_TO_TABLE_CONFIG (
        id int8 not null,
        datasource_container_id int8,
        primary key (id)
    );

    create table RS_JASPER_TO_TABLE_CONFIG_A (
        id int8 not null,
        REV int4 not null,
        datasource_container_id int8,
        primary key (id, REV)
    );

    create table RS_JXLS_REPORT (
        id int8 not null,
        report_file_id int8,
        primary key (id)
    );

    create table RS_JXLS_REPORT_A (
        id int8 not null,
        REV int4 not null,
        report_file_id int8,
        primary key (id, REV)
    );

    create table RS_JXLS_REPORT_FILE (
        ENTITY_ID int8 not null,
        content oid,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_JXLS_REPORT_FILE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content oid,
        NAME_FIELD varchar(128),
        primary key (ENTITY_ID, REV)
    );

    create table RS_JXLS_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_JXLS_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_LIST_USERVARIABLE_DEF (
        id int8 not null,
        primary key (id)
    );

    create table RS_LIST_USERVARIABLE_DEF_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_LIST_USERVARIABLE_INST (
        id int8 not null,
        primary key (id)
    );

    create table RS_LIST_USERVARIABLE_INST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_LIST_USERVARIABLE_INST_VL (
        list_user_var_instanc_id int8 not null,
        value varchar(255)
    );

    create table RS_LIST_USERVARIABLE_INST_VL_A (
        REV int4 not null,
        list_user_var_instanc_id int8 not null,
        value varchar(255) not null,
        revtype int2,
        primary key (REV, list_user_var_instanc_id, value)
    );

    create table RS_LOCALFILESYSTEM_DATASINK (
        folder varchar(1024),
        path varchar(1024),
        id int8 not null,
        primary key (id)
    );

    create table RS_LOCALFILESYSTEM_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        folder varchar(1024),
        path varchar(1024),
        primary key (id, REV)
    );

    create table RS_MONDRIAN_DATASOURCE (
        mondrian3 boolean not null,
        mondrian_schema text,
        password varchar(255),
        properties text,
        url varchar(255),
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_MONDRIAN_DATASOURCE_A (
        id int8 not null,
        REV int4 not null,
        mondrian3 boolean,
        mondrian_schema text,
        password varchar(255),
        properties text,
        url varchar(255),
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_MONDRIAN_DATASOURCE_CFG (
        cube_name varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_MONDRIAN_DATASOURCE_CFG_A (
        id int8 not null,
        REV int4 not null,
        cube_name varchar(255),
        primary key (id, REV)
    );

    create table RS_ONEDRIVE_DATASINK (
        app_key text,
        base_root text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        tenant_id varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_ONEDRIVE_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        app_key text,
        base_root text,
        folder varchar(1024),
        refresh_token text,
        secret_key text,
        tenant_id varchar(255),
        primary key (id, REV)
    );

    create table RS_ORGANISATIONAL_UNIT (
        description text,
        NAME_FIELD varchar(64),
        id int8 not null,
        primary key (id)
    );

    create table RS_ORGANISATIONAL_UNIT_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(64),
        primary key (id, REV)
    );

    create table RS_PARAMETER_DEFINITION (
        ENTITY_ID int8 not null,
        description text,
        display_inline boolean,
        editable boolean,
        hidden boolean,
        KEY_FIELD varchar(128),
        label_width int4,
        mandatory boolean not null,
        n int4 not null,
        NAME_FIELD varchar(255),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_PARAMETER_DEFINITION_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        display_inline boolean,
        editable boolean,
        hidden boolean,
        KEY_FIELD varchar(128),
        label_width int4,
        mandatory boolean,
        n int4,
        NAME_FIELD varchar(255),
        primary key (ENTITY_ID, REV)
    );

    create table RS_PARAMETER_INSTANCE (
        ENTITY_ID int8 not null,
        still_default boolean not null,
        ENTITY_VERSION int8,
        definition_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_PARAMETER_INSTANCE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        still_default boolean,
        definition_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_PARAM_DEF_2_DEPENDANTS (
        parameter_definition_id int8 not null,
        depends_on_id int8 not null
    );

    create table RS_PARAM_DEF_2_DEPENDANTS_A (
        REV int4 not null,
        parameter_definition_id int8 not null,
        depends_on_id int8 not null,
        revtype int2,
        primary key (REV, parameter_definition_id, depends_on_id)
    );

    create table RS_PRE_FILTER (
        ENTITY_ID int8 not null,
        description text,
        root_block_type int4,
        ENTITY_VERSION int8,
        root_block_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_PRE_FILTER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        root_block_type int4,
        root_block_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_PRINTER_DATASINK (
        printer_name varchar(2048),
        id int8 not null,
        primary key (id)
    );

    create table RS_PRINTER_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        printer_name varchar(2048),
        primary key (id, REV)
    );

    create table RS_PROPERTY (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(128) not null,
        value text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_REPORT (
        description text,
        KEY_FIELD varchar(40),
        NAME_FIELD varchar(128),
        uuid varchar(255),
        id int8 not null,
        datasource_container_id int8,
        preview_image_id int8,
        primary key (id)
    );

    create table RS_REPORT_2_METADATA (
        report_id int8 not null,
        report_metadata_id int8 not null,
        primary key (report_id, report_metadata_id)
    );

    create table RS_REPORT_2_METADATA_A (
        REV int4 not null,
        report_id int8 not null,
        report_metadata_id int8 not null,
        revtype int2,
        primary key (REV, report_id, report_metadata_id)
    );

    create table RS_REPORT_2_PARAM_DEF (
        report_id int8 not null,
        parameter_definitions_id int8 not null
    );

    create table RS_REPORT_2_PARAM_DEF_A (
        REV int4 not null,
        report_id int8 not null,
        parameter_definitions_id int8 not null,
        revtype int2,
        primary key (REV, report_id, parameter_definitions_id)
    );

    create table RS_REPORT_2_PARAM_INST (
        report_id int8 not null,
        parameter_instances_id int8 not null,
        primary key (report_id, parameter_instances_id)
    );

    create table RS_REPORT_2_PARAM_INST_A (
        REV int4 not null,
        report_id int8 not null,
        parameter_instances_id int8 not null,
        revtype int2,
        primary key (REV, report_id, parameter_instances_id)
    );

    create table RS_REPORT_2_PROPERTY (
        report_id int8 not null,
        report_properties_id int8 not null,
        primary key (report_id, report_properties_id)
    );

    create table RS_REPORT_2_PROPERTY_A (
        REV int4 not null,
        report_id int8 not null,
        report_properties_id int8 not null,
        revtype int2,
        primary key (REV, report_id, report_properties_id)
    );

    create table RS_REPORT_A (
        id int8 not null,
        REV int4 not null,
        description text,
        KEY_FIELD varchar(40),
        NAME_FIELD varchar(128),
        uuid varchar(255),
        datasource_container_id int8,
        preview_image_id int8,
        primary key (id, REV)
    );

    create table RS_REPORT_BYTE_PROPERTY (
        byte_value oid,
        id int8 not null,
        primary key (id)
    );

    create table RS_REPORT_BYTE_PROPERTY_A (
        id int8 not null,
        REV int4 not null,
        byte_value oid,
        primary key (id, REV)
    );

    create table RS_REPORT_FOLDER (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_REPORT_FOLDER_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_REPORT_METADATA (
        ENTITY_ID int8 not null,
        NAME_FIELD varchar(40) not null,
        value text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_REPORT_METADATA_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        NAME_FIELD varchar(40),
        value text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_REPORT_MNGR_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_REPORT_MNGR_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_REPORT_PREVIEW_IMAGE (
        ENTITY_ID int8 not null,
        content oid,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_REPORT_PREVIEW_IMAGE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content oid,
        NAME_FIELD varchar(128),
        primary key (ENTITY_ID, REV)
    );

    create table RS_REPORT_PROPERTY (
        ENTITY_ID int8 not null,
        NAME_FIELD varchar(40) not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_REPORT_PROPERTY_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        NAME_FIELD varchar(40),
        primary key (ENTITY_ID, REV)
    );

    create table RS_REPORT_SS_STRING_PROPERTY (
        str_value text,
        id int8 not null,
        primary key (id)
    );

    create table RS_REPORT_SS_STRING_PROPERTY_A (
        id int8 not null,
        REV int4 not null,
        str_value text,
        primary key (id, REV)
    );

    create table RS_REPORT_STRING_PROPERTY (
        str_value text,
        id int8 not null,
        primary key (id)
    );

    create table RS_REPORT_STRING_PROPERTY_A (
        id int8 not null,
        REV int4 not null,
        str_value text,
        primary key (id, REV)
    );

    create table RS_REVISION (
        ENTITY_ID int4 not null,
        timestamp int8 not null,
        user_id int8 not null,
        primary key (ENTITY_ID)
    );

    create table RS_SAIKU_REPORT (
        allow_mdx boolean not null,
        hide_parents boolean not null,
        query_xml text,
        id int8 not null,
        primary key (id)
    );

    create table RS_SAIKU_REPORT_A (
        id int8 not null,
        REV int4 not null,
        allow_mdx boolean,
        hide_parents boolean,
        query_xml text,
        primary key (id, REV)
    );

    create table RS_SAIKU_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_SAIKU_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_SAMBA_DATASINK (
        domain varchar(255),
        folder varchar(1024),
        host varchar(1024),
        password varchar(255),
        port int4 not null,
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_SAMBA_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        domain varchar(255),
        folder varchar(1024),
        host varchar(1024),
        password varchar(255),
        port int4,
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_SCHEDULER_JOB_HISTORY (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_ACTION (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_ACTION_AS_AMAZONS3_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        amazon_s3datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_BOX_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        box_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_DROPBOX_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        dropbox_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_EMAIL_FILE (
        compressed boolean,
        message text,
        NAME_FIELD varchar(255),
        subject varchar(255),
        id int8 not null,
        email_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_FILE (
        description varchar(255),
        folder_id int8,
        NAME_FIELD varchar(255),
        teamspace_id int8,
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_FTPS_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        ftps_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_FTP_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        ftp_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_GOOGLEDRIVE_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        google_drive_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_LOCAL_FILE_SYSTEM (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        local_file_system_datas_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_ONEDRIVE_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        one_drive_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_PRINTER_FILE (
        id int8 not null,
        printer_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_SAMBA_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        samba_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_SCP_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        scp_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_SFTP_FILE (
        compressed boolean,
        folder varchar(255),
        NAME_FIELD varchar(255),
        id int8 not null,
        sftp_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_AS_TABLE_DATASINK_FILE (
        id int8 not null,
        table_datasink_id int8,
        primary key (id)
    );

    create table RS_SCHED_ACTION_ENT_2_PROP (
        sched_hist_action_entry_id int8 not null,
        history_properties_id int8 not null,
        primary key (sched_hist_action_entry_id, history_properties_id)
    );

    create table RS_SCHED_ACTION_MAIL_REPORT (
        compressed boolean not null,
        message text,
        subject varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_ACTION_SEND_TO (
        send_to_id varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_ACTION_SEND_TO_V (
        ENTITY_ID int8 not null,
        the_value text,
        value_id varchar(255),
        ENTITY_VERSION int8,
        SEND_TO int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_BASE_PROPERTY (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(64) not null,
        value text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_EXECUTE_REPORT_JOB (
        output_format varchar(255),
        id int8 not null,
        executor_id int8,
        scheduled_by_id int8,
        report_id int8,
        primary key (id)
    );

    create table RS_SCHED_EXECUTE_SCRIPT_JOB (
        arguments varchar(255),
        script_id int8,
        id int8 not null,
        executor_id int8,
        scheduled_by_id int8,
        primary key (id)
    );

    create table RS_SCHED_HIST_ACTION_ENTRY (
        ENTITY_ID int8 not null,
        action_name varchar(255),
        error_description text,
        outcome int4,
        ENTITY_VERSION int8,
        EXEC_ENTRY int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_HIST_ENTRY_PROPERTY (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(64) not null,
        value text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_HIST_EXEC_ENTRY (
        ENTITY_ID int8 not null,
        bad_error_description text,
        END_FIELD timestamp,
        outcome int4,
        scheduled_start timestamp,
        START_FIELD timestamp,
        ENTITY_VERSION int8,
        veto_explanation text,
        veto_mode int4,
        job_entry_id int8,
        JOB_HISTORY int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_HIST_JOB_ENTRY (
        ENTITY_ID int8 not null,
        error_description text,
        outcome int4,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_JOB (
        ENTITY_ID int8 not null,
        created_on timestamp,
        description text,
        execution_status int4,
        last_outcome int4,
        title varchar(128),
        ENTITY_VERSION int8,
        history_id int8,
        link_to_previous_id int8,
        trigger_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_JOB_2_ACTIONS (
        sched_job_id int8 not null,
        actions_id int8 not null
    );

    create table RS_SCHED_JOB_2_OWNER (
        sched_execute_report_job_id int8 not null,
        owners_id int8 not null,
        primary key (sched_execute_report_job_id, owners_id)
    );

    create table RS_SCHED_JOB_ENT_2_PROP (
        sched_hist_job_entry_id int8 not null,
        history_properties_id int8 not null,
        primary key (sched_hist_job_entry_id, history_properties_id)
    );

    create table RS_SCHED_REP_EXEC_JOB_2_PROP (
        sched_execute_report_job_id int8 not null,
        base_properties_id int8 not null,
        primary key (sched_execute_report_job_id, base_properties_id)
    );

    create table RS_SCHED_REP_EXEC_JOB_2_RCPT (
        report_execute_job_id int8 not null,
        rcpt_ids int8
    );

    create table RS_SCHED_SCR_EXE_JOB_2_PROP (
        sched_execute_script_job_id int8 not null,
        base_properties_id int8 not null,
        primary key (sched_execute_script_job_id, base_properties_id)
    );

    create table RS_SCHED_TRIGGER (
        ENTITY_ID int8 not null,
        execute_once boolean not null,
        first_fire_time timestamp,
        misfire_instruction int4,
        next_scheduled_fire_time timestamp,
        nr_of_failed_executions int4 not null,
        nr_of_successful_executions int4 not null,
        nr_of_vetoed_executions int4 not null,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_SCHED_TRIG_DAILY_NTHDAY (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_TRIG_DAILY_WORKDAY (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_TRIG_DATE (
        id int8 not null,
        config_id int8,
        primary key (id)
    );

    create table RS_SCHED_TRIG_MONTH_NAMED_DAY (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_TRIG_MON_DAY_O_MON (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_TRIG_WEEKLY (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_TRIG_YEARLY_AT_DATE (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCHED_TRIG_YEAR_NAMED_DAY (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCP_DATASINK (
        authentication_type varchar(255),
        folder varchar(1024),
        host varchar(1024),
        password varchar(255),
        port int4 not null,
        private_key oid,
        private_key_passphrase varchar(255),
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_SCP_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        authentication_type varchar(255),
        folder varchar(1024),
        host varchar(1024),
        password varchar(255),
        port int4,
        private_key oid,
        private_key_passphrase varchar(255),
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_SCRIPT_DATASOURCE (
        database_cache int4 not null,
        define_at_target boolean not null,
        id int8 not null,
        script_id int8,
        primary key (id)
    );

    create table RS_SCRIPT_DATASOURCE_A (
        id int8 not null,
        REV int4 not null,
        database_cache int4,
        define_at_target boolean,
        script_id int8,
        primary key (id, REV)
    );

    create table RS_SCRIPT_DATASOURCE_CONFIG (
        arguments varchar(255),
        query_wrapper varchar(4096),
        script text,
        id int8 not null,
        primary key (id)
    );

    create table RS_SCRIPT_DATASOURCE_CONFIG_A (
        id int8 not null,
        REV int4 not null,
        arguments varchar(255),
        query_wrapper varchar(4096),
        script text,
        primary key (id, REV)
    );

    create table RS_SCRIPT_PARAM_DEF (
        arguments varchar(255),
        default_value text,
        height int4,
        width int4,
        id int8 not null,
        script_id int8,
        primary key (id)
    );

    create table RS_SCRIPT_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        arguments varchar(255),
        default_value text,
        height int4,
        width int4,
        script_id int8,
        primary key (id, REV)
    );

    create table RS_SCRIPT_PARAM_INST (
        value text,
        id int8 not null,
        primary key (id)
    );

    create table RS_SCRIPT_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        value text,
        primary key (id, REV)
    );

    create table RS_SCRIPT_REPORT (
        arguments varchar(255),
        id int8 not null,
        script_id int8,
        primary key (id)
    );

    create table RS_SCRIPT_REPORT_2_EX_FORMAT (
        script_report_id int8 not null,
        export_formats varchar(255),
        val_n int4 not null,
        primary key (script_report_id, val_n)
    );

    create table RS_SCRIPT_REPORT_2_EX_FORMAT_A (
        REV int4 not null,
        script_report_id int8 not null,
        export_formats varchar(255) not null,
        val_n int4 not null,
        revtype int2,
        primary key (REV, script_report_id, export_formats, val_n)
    );

    create table RS_SCRIPT_REPORT_A (
        id int8 not null,
        REV int4 not null,
        arguments varchar(255),
        script_id int8,
        primary key (id, REV)
    );

    create table RS_SCRIPT_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_SCRIPT_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_SEP_PARAM_DEF (
        id int8 not null,
        primary key (id)
    );

    create table RS_SEP_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_SEP_PARAM_INST (
        id int8 not null,
        primary key (id)
    );

    create table RS_SEP_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_SFTP_DATASINK (
        authentication_type varchar(255),
        folder varchar(1024),
        host varchar(1024),
        password varchar(255),
        port int4 not null,
        private_key oid,
        private_key_passphrase varchar(255),
        username varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_SFTP_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        authentication_type varchar(255),
        folder varchar(1024),
        host varchar(1024),
        password varchar(255),
        port int4,
        private_key oid,
        private_key_passphrase varchar(255),
        username varchar(255),
        primary key (id, REV)
    );

    create table RS_STR_USERVARIABLE_DEF (
        height int4,
        width int4,
        id int8 not null,
        primary key (id)
    );

    create table RS_STR_USERVARIABLE_DEF_A (
        id int8 not null,
        REV int4 not null,
        height int4,
        width int4,
        primary key (id, REV)
    );

    create table RS_STR_USERVARIABLE_INST (
        value varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_STR_USERVARIABLE_INST_A (
        id int8 not null,
        REV int4 not null,
        value varchar(255),
        primary key (id, REV)
    );

    create table RS_TABLE_DATASINK (
        batch_size int4 not null,
        copy_primary_keys boolean not null,
        primary_keys varchar(2048),
        table_name varchar(1024),
        id int8 not null,
        datasource_container_id int8,
        primary key (id)
    );

    create table RS_TABLE_DATASINK_A (
        id int8 not null,
        REV int4 not null,
        batch_size int4,
        copy_primary_keys boolean,
        primary_keys varchar(2048),
        table_name varchar(1024),
        datasource_container_id int8,
        primary key (id, REV)
    );

    create table RS_TABLE_REPORT (
        allow_cubification boolean not null,
        allow_mdx boolean not null,
        cube_flag boolean not null,
        cube_xml text,
        distinct_flag boolean,
        enable_subtotals boolean not null,
        hide_parents boolean not null,
        id int8 not null,
        metadata_datas_container_id int8,
        pre_filter_id int8,
        primary key (id)
    );

    create table RS_TABLE_REPORT_2_ADD_COLUMN (
        table_report_id int8 not null,
        additional_columns_id int8 not null
    );

    create table RS_TABLE_REPORT_2_ADD_COLUMN_A (
        REV int4 not null,
        table_report_id int8 not null,
        additional_columns_id int8 not null,
        revtype int2,
        primary key (REV, table_report_id, additional_columns_id)
    );

    create table RS_TABLE_REPORT_2_COLUMN (
        table_report_id int8 not null,
        columns_id int8 not null
    );

    create table RS_TABLE_REPORT_2_COLUMN_A (
        REV int4 not null,
        table_report_id int8 not null,
        columns_id int8 not null,
        revtype int2,
        primary key (REV, table_report_id, columns_id)
    );

    create table RS_TABLE_REPORT_A (
        id int8 not null,
        REV int4 not null,
        allow_cubification boolean,
        allow_mdx boolean,
        cube_flag boolean,
        cube_xml text,
        distinct_flag boolean,
        enable_subtotals boolean,
        hide_parents boolean,
        metadata_datas_container_id int8,
        pre_filter_id int8,
        primary key (id, REV)
    );

    create table RS_TABLE_REPORT_BYTE_TPL (
        template oid,
        id int8 not null,
        primary key (id)
    );

    create table RS_TABLE_REPORT_BYTE_TPL_A (
        id int8 not null,
        REV int4 not null,
        template oid,
        primary key (id, REV)
    );

    create table RS_TABLE_REPORT_STR_TEMPLATE (
        template text,
        id int8 not null,
        primary key (id)
    );

    create table RS_TABLE_REPORT_STR_TEMPLATE_A (
        id int8 not null,
        REV int4 not null,
        template text,
        primary key (id, REV)
    );

    create table RS_TABLE_REPORT_TEMPLATE (
        ENTITY_ID int8 not null,
        content_type varchar(255),
        description text,
        file_extension varchar(255),
        KEY_FIELD varchar(255),
        NAME_FIELD varchar(255),
        template_type varchar(255),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_TABLE_REPORT_TEMPLATE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        content_type varchar(255),
        description text,
        file_extension varchar(255),
        KEY_FIELD varchar(255),
        NAME_FIELD varchar(255),
        template_type varchar(255),
        primary key (ENTITY_ID, REV)
    );

    create table RS_TABLE_REPORT_TEMPLATE_LST (
        id int8 not null,
        primary key (id)
    );

    create table RS_TABLE_REPORT_TEMPLATE_LST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_TABLE_REPORT_VARIANT (
        id int8 not null,
        primary key (id)
    );

    create table RS_TABLE_REPORT_VARIANT_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_TAB_REP_TPL_LST_2_TPL (
        table_report_templat_lst_id int8 not null,
        templates_id int8 not null,
        primary key (table_report_templat_lst_id, templates_id)
    );

    create table RS_TAB_REP_TPL_LST_2_TPL_A (
        REV int4 not null,
        table_report_templat_lst_id int8 not null,
        templates_id int8 not null,
        revtype int2,
        primary key (REV, table_report_templat_lst_id, templates_id)
    );

    create table RS_TEAMSPACE (
        ENTITY_ID int8 not null,
        description text,
        NAME_FIELD varchar(255),
        ENTITY_VERSION int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_TEAMSPACE_2_APP (
        teamspace_id int8 not null,
        apps_id int8 not null,
        primary key (teamspace_id, apps_id)
    );

    create table RS_TEAMSPACE_2_APP_A (
        REV int4 not null,
        teamspace_id int8 not null,
        apps_id int8 not null,
        revtype int2,
        primary key (REV, teamspace_id, apps_id)
    );

    create table RS_TEAMSPACE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        NAME_FIELD varchar(255),
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_TEAMSPACE_APP (
        ENTITY_ID int8 not null,
        installed boolean,
        type varchar(32),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_TEAMSPACE_APP_2_PROPERTY (
        teamspace_app_id int8 not null,
        app_properties_id int8 not null,
        primary key (teamspace_app_id, app_properties_id)
    );

    create table RS_TEAMSPACE_APP_2_PROPERTY_A (
        REV int4 not null,
        teamspace_app_id int8 not null,
        app_properties_id int8 not null,
        revtype int2,
        primary key (REV, teamspace_app_id, app_properties_id)
    );

    create table RS_TEAMSPACE_APP_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        installed boolean,
        type varchar(32),
        primary key (ENTITY_ID, REV)
    );

    create table RS_TEAMSPACE_APP_PROPERTY (
        ENTITY_ID int8 not null,
        NAME_FIELD varchar(32),
        value text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_TEAMSPACE_APP_PROPERTY_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        NAME_FIELD varchar(32),
        value text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_TEAMSPACE_MEMBER (
        ENTITY_ID int8 not null,
        role int4,
        ENTITY_VERSION int8,
        folk_id int8,
        team_space_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_TEAMSPACE_MEMBER_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        role int4,
        folk_id int8,
        team_space_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_TEXT_PARAM_DEF (
        default_value varchar(255),
        height int4,
        return_null_when_empty boolean not null,
        return_type int4,
        validator_regex varchar(255),
        width int4,
        id int8 not null,
        primary key (id)
    );

    create table RS_TEXT_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        default_value varchar(255),
        height int4,
        return_null_when_empty boolean,
        return_type int4,
        validator_regex varchar(255),
        width int4,
        primary key (id, REV)
    );

    create table RS_TEXT_PARAM_INST (
        value varchar(4000),
        id int8 not null,
        primary key (id)
    );

    create table RS_TEXT_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        value varchar(4000),
        primary key (id, REV)
    );

    create table RS_TS_DISK_FILE_REFERENCE (
        data oid,
        filename varchar(255),
        id int8 not null,
        primary key (id)
    );

    create table RS_TS_DISK_FILE_REFERENCE_A (
        id int8 not null,
        REV int4 not null,
        data oid,
        filename varchar(255),
        primary key (id, REV)
    );

    create table RS_TS_DISK_FOLDER (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_TS_DISK_FOLDER_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_TS_DISK_GENERAL_REFERENCE (
        description text,
        NAME_FIELD varchar(128) not null,
        id int8 not null,
        primary key (id)
    );

    create table RS_TS_DISK_GENERAL_REFERENCE_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        primary key (id, REV)
    );

    create table RS_TS_DISK_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        parent_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_TS_DISK_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        parent_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_TS_DISK_REPORT_REFERENCE (
        hardlink boolean,
        id int8 not null,
        report_id int8,
        primary key (id)
    );

    create table RS_TS_DISK_REPORT_REFERENCE_A (
        id int8 not null,
        REV int4 not null,
        hardlink boolean,
        report_id int8,
        primary key (id, REV)
    );

    create table RS_TS_DISK_ROOT (
        description text,
        NAME_FIELD varchar(128),
        id int8 not null,
        team_space_id int8,
        primary key (id)
    );

    create table RS_TS_DISK_ROOT_A (
        id int8 not null,
        REV int4 not null,
        description text,
        NAME_FIELD varchar(128),
        team_space_id int8,
        primary key (id, REV)
    );

    create table RS_USER (
        email varchar(320),
        firstname varchar(128),
        lastname varchar(128),
        password varchar(40),
        sex int4,
        super_user boolean,
        title varchar(40),
        username varchar(128),
        id int8 not null,
        primary key (id)
    );

    create table RS_USERMANAGER_NODE (
        ENTITY_ID int8 not null,
        created_on timestamp,
        flags int8 not null,
        last_updated timestamp,
        position int4 not null,
        ENTITY_VERSION int8,
        guid varchar(128),
        origin varchar(1024),
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_USERMANAGER_NODE_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        created_on timestamp,
        flags int8,
        last_updated timestamp,
        guid varchar(128),
        origin varchar(1024),
        parent_id int8,
        acl_id int8,
        owner_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_USERVAR_DEF (
        ENTITY_ID int8 not null,
        description text,
        NAME_FIELD varchar(128),
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_USERVAR_DEF_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        description text,
        NAME_FIELD varchar(128),
        primary key (ENTITY_ID, REV)
    );

    create table RS_USERVAR_INST (
        ENTITY_ID int8 not null,
        ENTITY_VERSION int8,
        definition_id int8,
        folk_id int8,
        primary key (ENTITY_ID)
    );

    create table RS_USERVAR_INST_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        definition_id int8,
        folk_id int8,
        primary key (ENTITY_ID, REV)
    );

    create table RS_USERVAR_PARAM_DEF (
        id int8 not null,
        user_variable_definition_id int8,
        primary key (id)
    );

    create table RS_USERVAR_PARAM_DEF_A (
        id int8 not null,
        REV int4 not null,
        user_variable_definition_id int8,
        primary key (id, REV)
    );

    create table RS_USERVAR_PARAM_INST (
        id int8 not null,
        primary key (id)
    );

    create table RS_USERVAR_PARAM_INST_A (
        id int8 not null,
        REV int4 not null,
        primary key (id, REV)
    );

    create table RS_USER_2_PROPERTY (
        user_id int8 not null,
        properties_id int8 not null,
        primary key (user_id, properties_id)
    );

    create table RS_USER_2_PROPERTY_A (
        REV int4 not null,
        user_id int8 not null,
        properties_id int8 not null,
        revtype int2,
        primary key (REV, user_id, properties_id)
    );

    create table RS_USER_A (
        id int8 not null,
        REV int4 not null,
        email varchar(320),
        firstname varchar(128),
        lastname varchar(128),
        password varchar(40),
        sex int4,
        super_user boolean,
        title varchar(40),
        username varchar(128),
        primary key (id, REV)
    );

    create table RS_USER_PROPERTY (
        ENTITY_ID int8 not null,
        KEY_FIELD varchar(64) not null,
        value text,
        ENTITY_VERSION int8,
        primary key (ENTITY_ID)
    );

    create table RS_USER_PROPERTY_A (
        ENTITY_ID int8 not null,
        REV int4 not null,
        revtype int2,
        KEY_FIELD varchar(64),
        value text,
        primary key (ENTITY_ID, REV)
    );

    create table RS_WEEKLY_CONFIG_2_DAYS (
        weekly_config_id int8 not null,
        weekly_days int4
    );

    alter table RS_ACE 
        add constraint FK_41b63u9jt26kws13tx2usblq0 
        foreign key (acl_id) 
        references RS_ACL;

    alter table RS_ACE 
        add constraint FK_ifosfssq8o25pr1l9pigp2ice 
        foreign key (folk_id) 
        references RS_USERMANAGER_NODE;

    alter table RS_ACE_2_ACCESS_MAPS 
        add constraint UK_27x19f34k1llernqtf8ltkfax unique (access_maps_id);

    alter table RS_ACE_2_ACCESS_MAPS 
        add constraint FK_27x19f34k1llernqtf8ltkfax 
        foreign key (access_maps_id) 
        references RS_ACE_ACCESS_MAP;

    alter table RS_ACE_2_ACCESS_MAPS 
        add constraint FK_dkaj7gnkjjo1ey23tlowxcsov 
        foreign key (ace_id) 
        references RS_ACE;

    alter table RS_ACE_2_ACCESS_MAPS_A 
        add constraint FK_ke0v25jpbae67u1auu9vo1uum 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_ACE_A 
        add constraint FK_kfc6e5xqh5x5pa2n9ajoh3m7m 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_ACE_ACCESS_MAP_A 
        add constraint FK_ut7ypv66la6b5kw7yj72qxp5 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_ACL_A 
        add constraint FK_g1ig6c8pa6ht47mhefelyf8ww 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_ADD_COLUMN_SPEC 
        add constraint FK_7l3ysf1xd1yjbhevewgjuov3p 
        foreign key (id) 
        references RS_COLUMN;

    alter table RS_ADD_COLUMN_SPEC_A 
        add constraint FK_d3h61x0jj6odxbw47jokodxdg 
        foreign key (id, REV) 
        references RS_COLUMN_A;

    alter table RS_AMAZONS3_DATASINK 
        add constraint FK_r0yv801n79q8n9ffd6l7ujfqi 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_AMAZONS3_DATASINK_A 
        add constraint FK_q5mx2sxrph8yon2cexa4fes1o 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_AUDIT_LOG_PROPERTY 
        add constraint FK_8e9xv91kk1t0ggo9ugi62mgh5 
        foreign key (LOG_ENTRY_ID) 
        references RS_AUDIT_LOG_ENTRY;

    alter table RS_BINARY_COLUMN_FILTER 
        add constraint FK_dtfy09w92hpq6u65bjoxnscev 
        foreign key (columna_id) 
        references RS_COLUMN;

    alter table RS_BINARY_COLUMN_FILTER 
        add constraint FK_ei2eql2bj4mffd7sai6v2l1hc 
        foreign key (columnb_id) 
        references RS_COLUMN;

    alter table RS_BINARY_COLUMN_FILTER 
        add constraint FK_qv86p0ket117fh3tofauyxugj 
        foreign key (id) 
        references RS_FILTER_SPEC;

    alter table RS_BINARY_COLUMN_FILTER_A 
        add constraint FK_skmlf8aydwmktxgn9nvrcle47 
        foreign key (id, REV) 
        references RS_FILTER_SPEC_A;

    alter table RS_BIRT_REPORT 
        add constraint FK_4kfrhrtdarij5ufwxcwawb7o6 
        foreign key (report_file_id) 
        references RS_BIRT_REPORT_FILE;

    alter table RS_BIRT_REPORT 
        add constraint FK_a3udh7dcfldqnjebwwiamlm1r 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_BIRT_REPORT_A 
        add constraint FK_jtbp7r1gtlpuxr79gnyei8gi4 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_BIRT_REPORT_DATASRC 
        add constraint FK_el88nw2w56ks3gndly5jlcyvw 
        foreign key (id) 
        references RS_DATASOURCE_DEFINITION;

    alter table RS_BIRT_REPORT_DATASRC_A 
        add constraint FK_kelgsdp7dacr0inqwb74qgd22 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEFINITION_A;

    alter table RS_BIRT_REPORT_DATASRC_CFG 
        add constraint FK_n8kbf7s61t7ilf38w4rlvts6c 
        foreign key (report_id) 
        references RS_BIRT_REPORT;

    alter table RS_BIRT_REPORT_DATASRC_CFG 
        add constraint FK_7x7pwf3w7cpwkya7dor7y41qj 
        foreign key (id) 
        references RS_DATASOURCE_DEF_CONFIG;

    alter table RS_BIRT_REPORT_DATASRC_CFG_A 
        add constraint FK_k4cq0niwexse6w20tq9rywytf 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEF_CONFIG_A;

    alter table RS_BIRT_REPORT_FILE_A 
        add constraint FK_59cltbfssvceq1bakf896c05p 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_BIRT_REPORT_VARIANT 
        add constraint FK_as4ju6u086juwxwqcr1ff8ipo 
        foreign key (id) 
        references RS_BIRT_REPORT;

    alter table RS_BIRT_REPORT_VARIANT_A 
        add constraint FK_1c5l1vgpvjdvyk5dwhfo6pg9e 
        foreign key (id, REV) 
        references RS_BIRT_REPORT_A;

    alter table RS_BLATEXT_PARAM_DEF 
        add constraint FK_omuk1k2yy30t608ynsfqn7egp 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_BLATEXT_PARAM_DEF_A 
        add constraint FK_q9i8lkhblm0m98x974s3gvl1g 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_BLATEXT_PARAM_INST 
        add constraint FK_1f9nfssiger42ep9i82v35n3q 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_BLATEXT_PARAM_INST_A 
        add constraint FK_1bpxqr8t7ufnjccmvu2qbd30p 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_BOX_DATASINK 
        add constraint FK_cwpsjbnc974jrwl8gqstlrmun 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_BOX_DATASINK_A 
        add constraint FK_ideliifqxmlvc3919g6qpbui6 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_COLUMN 
        add constraint FK_9penq6b0e48w9huiubm93ekyu 
        foreign key (filter_id) 
        references RS_FILTER;

    alter table RS_COLUMN 
        add constraint FK_3ik9n12xyqgt09qoi3n1thc5 
        foreign key (format_id) 
        references RS_COLUMN_FORMAT;

    alter table RS_COLUMN_A 
        add constraint FK_vjsb21w9iscntp4imkvw12yt 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_COLUMN_FILTER 
        add constraint FK_sm3ugqrfrocbk0wlmt9i4abps 
        foreign key (column_id) 
        references RS_COLUMN;

    alter table RS_COLUMN_FILTER 
        add constraint FK_7u1ox3javqc8cx6yp9aoa47kj 
        foreign key (id) 
        references RS_FILTER_SPEC;

    alter table RS_COLUMN_FILTER_A 
        add constraint FK_6q3vcgqulobaqgm40emc6xq75 
        foreign key (id, REV) 
        references RS_FILTER_SPEC_A;

    alter table RS_COLUMN_FORMAT_A 
        add constraint FK_q7kvxplwqx81t5cfc00t65v9y 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_COLUMN_FORMAT_CURRENCY 
        add constraint FK_tkbsw1juw63iig50bxm9m30xn 
        foreign key (id) 
        references RS_COLUMN_FORMAT_NUMBER;

    alter table RS_COLUMN_FORMAT_CURRENCY_A 
        add constraint FK_7674tphgj4lnkjowj0j99l8tn 
        foreign key (id, REV) 
        references RS_COLUMN_FORMAT_NUMBER_A;

    alter table RS_COLUMN_FORMAT_DATE 
        add constraint FK_9v5897xyi40ddx12ypwq4xuf5 
        foreign key (id) 
        references RS_COLUMN_FORMAT;

    alter table RS_COLUMN_FORMAT_DATE_A 
        add constraint FK_91tgvr3x9polec0you6nddojc 
        foreign key (id, REV) 
        references RS_COLUMN_FORMAT_A;

    alter table RS_COLUMN_FORMAT_NUMBER 
        add constraint FK_6pjc1teyuqfogdfjw9rungum7 
        foreign key (id) 
        references RS_COLUMN_FORMAT;

    alter table RS_COLUMN_FORMAT_NUMBER_A 
        add constraint FK_1c4i69xthrhklpcsvwnc9dvha 
        foreign key (id, REV) 
        references RS_COLUMN_FORMAT_A;

    alter table RS_COLUMN_FORMAT_TEMPLATE 
        add constraint FK_o6ulj8cbap7kpu5ylkyygqwat 
        foreign key (id) 
        references RS_COLUMN_FORMAT;

    alter table RS_COLUMN_FORMAT_TEMPLATE_A 
        add constraint FK_prfdvu2sp73evjruirqs9fm60 
        foreign key (id, REV) 
        references RS_COLUMN_FORMAT_A;

    alter table RS_COLUMN_FORMAT_TEXT 
        add constraint FK_i5vvpvmq7r006an48lv0am9bn 
        foreign key (id) 
        references RS_COLUMN_FORMAT;

    alter table RS_COLUMN_FORMAT_TEXT_A 
        add constraint FK_irfuls4gustxm229qr9cwya10 
        foreign key (id, REV) 
        references RS_COLUMN_FORMAT_A;

    alter table RS_COLUMN_REFERENCE 
        add constraint FK_p4ke85xjpim0u4obkjl1lwkll 
        foreign key (reference_id) 
        references RS_ADD_COLUMN_SPEC;

    alter table RS_COLUMN_REFERENCE 
        add constraint FK_6ufi45qsr9qaqpk1xeb9ixtbi 
        foreign key (id) 
        references RS_COLUMN;

    alter table RS_COLUMN_REFERENCE_A 
        add constraint FK_jgwp9dqdt1e09ho7skdr0l6yg 
        foreign key (id, REV) 
        references RS_COLUMN_A;

    alter table RS_COMPILED_REPORT 
        add constraint FK_9m234rflvttdbukyrb9sdvotk 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_COMPUTED_COLUMN 
        add constraint FK_m95i94sv61o141cscv2ckwshh 
        foreign key (id) 
        references RS_ADD_COLUMN_SPEC;

    alter table RS_COMPUTED_COLUMN_A 
        add constraint FK_5upmxwsopc1ctthyku3ouicdx 
        foreign key (id, REV) 
        references RS_ADD_COLUMN_SPEC_A;

    alter table RS_CONDITION 
        add constraint FK_hktlyaaqlw8e0d2b3dm3i185n 
        foreign key (report_id) 
        references RS_TABLE_REPORT;

    alter table RS_CRYSTAL_REPORT 
        add constraint FK_oigy4smejx6hdmdtd07f8o9xp 
        foreign key (report_file_id) 
        references RS_CRYSTAL_REPORT_FILE;

    alter table RS_CRYSTAL_REPORT 
        add constraint FK_4lvccgt3mxr9dms6k55kojxdl 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_CRYSTAL_REPORT_A 
        add constraint FK_8aa29v2smd9ir3ogb0ypsagpg 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_CRYSTAL_REPORT_FILE_A 
        add constraint FK_du2x63noi6oj8butfnh0y75pm 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_CRYSTAL_REPORT_VARIANT 
        add constraint FK_bwafn9rgn0qmx3w3htpcglyaa 
        foreign key (id) 
        references RS_CRYSTAL_REPORT;

    alter table RS_CRYSTAL_REPORT_VARIANT_A 
        add constraint FK_66wfsa3ii79demq0f1asoc2ne 
        foreign key (id, REV) 
        references RS_CRYSTAL_REPORT_A;

    alter table RS_CSV_DATASOURCE 
        add constraint FK_mklifk8yintl3foxcl4xlsqep 
        foreign key (connector_id) 
        references RS_DATASOURCE_CONNECTOR;

    alter table RS_CSV_DATASOURCE 
        add constraint FK_qo0hu66ew1f2qiu540n8cpai7 
        foreign key (id) 
        references RS_DATASOURCE_DEFINITION;

    alter table RS_CSV_DATASOURCE_A 
        add constraint FK_g85vdpx9ed3ocdxfgem3dwh42 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEFINITION_A;

    alter table RS_CSV_DATASOURCE_CONF 
        add constraint FK_pi9vcfuuqpmyud3vx7ag1foem 
        foreign key (id) 
        references RS_DATASOURCE_DEF_CONFIG;

    alter table RS_CSV_DATASOURCE_CONF_A 
        add constraint FK_lqru3jh78fuwvtcu6ufwgea54 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEF_CONFIG_A;

    alter table RS_DADGET_A 
        add constraint FK_nxmyn1jg2vg0qj00sbg2onnm3 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DADGET_FAVORITE_LIST 
        add constraint FK_c5232qw4acelawul9jtjr1bl7 
        foreign key (id) 
        references RS_DADGET;

    alter table RS_DADGET_LIBRARY 
        add constraint FK_2hn2gb334vfmtgefu8xvhpy81 
        foreign key (dadget_node_id) 
        references RS_DASHBOARD_DADGET_NODE;

    alter table RS_DADGET_LIBRARY 
        add constraint FK_ajr1bedisx8a0y5qvq1n1w8qk 
        foreign key (id) 
        references RS_DADGET;

    alter table RS_DADGET_PARAMETER 
        add constraint FK_qsva85k8phltnnix43as3o74o 
        foreign key (id) 
        references RS_DADGET;

    alter table RS_DADGET_REPORT 
        add constraint FK_lpmcb0y12fqoo7n6n785silqa 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_DADGET_REPORT 
        add constraint FK_6uo29kujagr0aitmmqcgkmkmd 
        foreign key (report_reference_id) 
        references RS_TS_DISK_REPORT_REFERENCE;

    alter table RS_DADGET_REPORT 
        add constraint FK_986ty0k81tm0xybg4booc1g9 
        foreign key (id) 
        references RS_DADGET;

    alter table RS_DADGET_REPORT_2_PARAM_INST 
        add constraint UK_c6stvwayicc4nek33e6wh0wsx unique (parameter_instances_id);

    alter table RS_DADGET_REPORT_2_PARAM_INST 
        add constraint FK_c6stvwayicc4nek33e6wh0wsx 
        foreign key (parameter_instances_id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_DADGET_REPORT_2_PARAM_INST 
        add constraint FK_d2pctfqw9v1l0akpgmnjm6j8j 
        foreign key (dadget_id) 
        references RS_DADGET;

    alter table RS_DADGET_STATIC_HTML 
        add constraint FK_sy2y2oo5gf2vej5af8r6kb67u 
        foreign key (id) 
        references RS_DADGET;

    alter table RS_DADGET_URL 
        add constraint FK_spkrld97y3cpkrifingp7mndw 
        foreign key (id) 
        references RS_DADGET;

    alter table RS_DASHBOARD_2_DADGET 
        add constraint UK_j1ykoyjigv4t99m5qn517yt2i unique (dadgets_id);

    alter table RS_DASHBOARD_2_DADGET 
        add constraint FK_j1ykoyjigv4t99m5qn517yt2i 
        foreign key (dadgets_id) 
        references RS_DADGET;

    alter table RS_DASHBOARD_2_DADGET 
        add constraint FK_jwaxih6o06si6j61y6lx4cpdd 
        foreign key (dashboard_id) 
        references RS_DASHBOARD;

    alter table RS_DASHBOARD_2_DADGET_A 
        add constraint FK_tocyf2uxedy8e6go5ay4okrkh 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DASHBOARD_A 
        add constraint FK_bb4u8e7ivhpd4dl1y6ergy79u 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DASHBOARD_CONTAINER_A 
        add constraint FK_hnaijyyglpxjf4sb5wp3i9jw7 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DASHBOARD_CONT_2_DASHBRD 
        add constraint UK_j6n97pbwk8b6x3eyc6kbrmerf unique (dashboards_id);

    alter table RS_DASHBOARD_CONT_2_DASHBRD 
        add constraint FK_j6n97pbwk8b6x3eyc6kbrmerf 
        foreign key (dashboards_id) 
        references RS_DASHBOARD;

    alter table RS_DASHBOARD_CONT_2_DASHBRD 
        add constraint FK_sh5uw4q0hgju6k0sqvr5jc2eo 
        foreign key (dashboard_container_id) 
        references RS_DASHBOARD_CONTAINER;

    alter table RS_DASHBOARD_CONT_2_DASHBRD_A 
        add constraint FK_ex3dp2tjru18f40fepfl5s0me 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DASHBOARD_DADGET_NODE 
        add constraint FK_5p18wfl2t16hhliummbm7tg87 
        foreign key (dadget_id) 
        references RS_DADGET;

    alter table RS_DASHBOARD_DADGET_NODE 
        add constraint FK_3ere1rt141fgqodaplbd9te81 
        foreign key (id) 
        references RS_DASHBOARD_MNGR_NODE;

    alter table RS_DASHBOARD_DADGET_NODE_A 
        add constraint FK_s4umlmqlb7rs2ky4ylhtexl1r 
        foreign key (id, REV) 
        references RS_DASHBOARD_MNGR_NODE_A;

    alter table RS_DASHBOARD_DASHBOARD_NODE 
        add constraint FK_thu5yd9ox65pr8difavfgamhf 
        foreign key (dashboard_id) 
        references RS_DASHBOARD;

    alter table RS_DASHBOARD_DASHBOARD_NODE 
        add constraint FK_ggktm3w5j1b0xgc2batvmtxki 
        foreign key (id) 
        references RS_DASHBOARD_MNGR_NODE;

    alter table RS_DASHBOARD_DASHBOARD_NODE_A 
        add constraint FK_6tl7pfewyb0aj7c8i7020r5iq 
        foreign key (id, REV) 
        references RS_DASHBOARD_MNGR_NODE_A;

    alter table RS_DASHBOARD_FOLDER 
        add constraint FK_m8diw4yk2d1q6d6w8e2onwswf 
        foreign key (id) 
        references RS_DASHBOARD_MNGR_NODE;

    alter table RS_DASHBOARD_FOLDER_A 
        add constraint FK_1ejs2p9qcjjvm6udpibfjq8c4 
        foreign key (id, REV) 
        references RS_DASHBOARD_MNGR_NODE_A;

    alter table RS_DASHBOARD_MNGR_NODE 
        add constraint FK_72me98u9es40dt79ya5yvy0ix 
        foreign key (parent_id) 
        references RS_DASHBOARD_MNGR_NODE;

    alter table RS_DASHBOARD_MNGR_NODE 
        add constraint FK_91s7mcoyya17ai9e80dau8vam 
        foreign key (acl_id) 
        references RS_HIERARCHICAL_ACL;

    alter table RS_DASHBOARD_MNGR_NODE 
        add constraint FK_jfanvvv31omwycmeadobok4af 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_DASHBOARD_MNGR_NODE_A 
        add constraint FK_cufca6d5byxjinfxw4033h48v 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DASHBOARD_REFERENCE 
        add constraint FK_n1197kpl1muemg3rb67wu4kjx 
        foreign key (dashboard_node_id) 
        references RS_DASHBOARD_DASHBOARD_NODE;

    alter table RS_DASHBOARD_REFERENCE 
        add constraint FK_qt5xh84ia136ytmbgl55llobw 
        foreign key (id) 
        references RS_DASHBOARD;

    alter table RS_DASHBOARD_REFERENCE_A 
        add constraint FK_4sbtq3sbarqehh9li4va06s8f 
        foreign key (id, REV) 
        references RS_DASHBOARD_A;

    alter table RS_DASHBOARD_USER 
        add constraint FK_rhdnh0hqmv19gv75mwd3llwk3 
        foreign key (dashboard_container_id) 
        references RS_DASHBOARD_CONTAINER;

    alter table RS_DASHBOARD_USER 
        add constraint FK_237rnf9st00rhd6ehn9tvyvp7 
        foreign key (user_id) 
        references RS_USER;

    alter table RS_DASHBOARD_USER_A 
        add constraint FK_rvmcdn7iehlijjd3cmw4y1fak 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATABASE_BUNDLE_ENTRY 
        add constraint FK_e0q3p4hrc9grqqykcie6l4fah 
        foreign key (database_id) 
        references RS_DATASOURCE_MNGR_NODE;

    alter table RS_DATABASE_BUNDLE_ENTRY_A 
        add constraint FK_k6al43guocy7gktsrdd9yy7yd 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATABASE_DATASOURCE 
        add constraint FK_dusjl76766ywiovsoxwimvr2i 
        foreign key (id) 
        references RS_DATASOURCE_DEFINITION;

    alter table RS_DATABASE_DATASOURCE_A 
        add constraint FK_qsqkdo5brp7wfe13e8x08xcaj 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEFINITION_A;

    alter table RS_DATABASE_DATASOURCE_CONF 
        add constraint FK_ghfg4bwelu2wyww59wuo69r0x 
        foreign key (id) 
        references RS_DATASOURCE_DEF_CONFIG;

    alter table RS_DATABASE_DATASOURCE_CONF_A 
        add constraint FK_hvpe101gxbmrwblses7dn2th8 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEF_CONFIG_A;

    alter table RS_DATASINK_CONTAINER 
        add constraint FK_h1q3hjijxsegbhohixwftjfi5 
        foreign key (datasink_id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_DATASINK_CONTAINER_A 
        add constraint FK_mhqsxu075wn6respsm99qw2lk 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASINK_DEFINITION 
        add constraint FK_bgphjr2kigltjqhlhyj956elj 
        foreign key (id) 
        references RS_DATASINK_MNGR_NODE;

    alter table RS_DATASINK_DEFINITION_A 
        add constraint FK_bvph1qubtighemnp0mh4cpwl1 
        foreign key (id, REV) 
        references RS_DATASINK_MNGR_NODE_A;

    alter table RS_DATASINK_FOLDER 
        add constraint FK_1rip8ww9heqw5dudpiybgb0wp 
        foreign key (id) 
        references RS_DATASINK_MNGR_NODE;

    alter table RS_DATASINK_FOLDER_A 
        add constraint FK_3dn98yvtjr1dmqxmhd98t5e8 
        foreign key (id, REV) 
        references RS_DATASINK_MNGR_NODE_A;

    alter table RS_DATASINK_MNGR_NODE 
        add constraint FK_sd7t8lv8a1y582c6spg43nx7d 
        foreign key (parent_id) 
        references RS_DATASINK_MNGR_NODE;

    alter table RS_DATASINK_MNGR_NODE 
        add constraint FK_k8pfp4tcr0fv315jsyvlpb57d 
        foreign key (acl_id) 
        references RS_HIERARCHICAL_ACL;

    alter table RS_DATASINK_MNGR_NODE 
        add constraint FK_1i15rxobwxutotj2w2l61kxf3 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_DATASINK_MNGR_NODE_A 
        add constraint FK_oi5x0w4i14nd62ueplonjkh1h 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_CONNECTOR_A 
        add constraint FK_q43tide6rqo7hnhp8x7twvlgo 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_CONNECTOR_CFG_A 
        add constraint FK_thxg5k512c1xv8t0otfhttcwa 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_CONTAINER 
        add constraint FK_3fwh0h5cdf6w8876g21a2mof6 
        foreign key (datasource_id) 
        references RS_DATASOURCE_DEFINITION;

    alter table RS_DATASOURCE_CONTAINER 
        add constraint FK_lo7prj3u3r8h32xx2ruin19bs 
        foreign key (datasource_config_id) 
        references RS_DATASOURCE_DEF_CONFIG;

    alter table RS_DATASOURCE_CONTAINER_A 
        add constraint FK_ba7i4i6y5xod7dw7masaaco6x 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_DEFINITION 
        add constraint FK_6kr6l2v6battuke1ejpo3xyl8 
        foreign key (id) 
        references RS_DATASOURCE_MNGR_NODE;

    alter table RS_DATASOURCE_DEFINITION_A 
        add constraint FK_cx9y4ah6jos314c9bwf0r9gw0 
        foreign key (id, REV) 
        references RS_DATASOURCE_MNGR_NODE_A;

    alter table RS_DATASOURCE_DEF_CONFIG_A 
        add constraint FK_erwbayyqiqn0d2786q505x3uo 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_FBCFG_2_DSCC 
        add constraint UK_93yp8r6kafnjysvai5ufxo1t4 unique (connector_config_id);

    alter table RS_DATASOURCE_FBCFG_2_DSCC 
        add constraint FK_93yp8r6kafnjysvai5ufxo1t4 
        foreign key (connector_config_id) 
        references RS_DATASOURCE_CONNECTOR_CFG;

    alter table RS_DATASOURCE_FBCFG_2_DSCC 
        add constraint FK_7q3butkojy6896pj186puxhw 
        foreign key (csv_datasource_conf_id) 
        references RS_CSV_DATASOURCE_CONF;

    alter table RS_DATASOURCE_FOLDER 
        add constraint FK_2jads9mxc9hensvgehddm46at 
        foreign key (id) 
        references RS_DATASOURCE_MNGR_NODE;

    alter table RS_DATASOURCE_FOLDER_A 
        add constraint FK_70fq4kxb7i0s8k3m3i601ovth 
        foreign key (id, REV) 
        references RS_DATASOURCE_MNGR_NODE_A;

    alter table RS_DATASOURCE_MNGR_NODE 
        add constraint FK_fsohe90l330tsd6oj8klyf9k7 
        foreign key (parent_id) 
        references RS_DATASOURCE_MNGR_NODE;

    alter table RS_DATASOURCE_MNGR_NODE 
        add constraint FK_t1qko7dcwa7uq2obkqgncbwe9 
        foreign key (acl_id) 
        references RS_HIERARCHICAL_ACL;

    alter table RS_DATASOURCE_MNGR_NODE 
        add constraint FK_l6ef4ykkyx194mb9bhm107gj 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_DATASOURCE_MNGR_NODE_A 
        add constraint FK_5li7y1ok0w0yo3vx95we982go 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_PARAMETER_DATA_A 
        add constraint FK_sr2we9au2t0o7gi7wxdnoa5w2 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_PARAM_DEF 
        add constraint FK_6yteoqwtsq6tt0fp8nfqj3lay 
        foreign key (datasource_container_id) 
        references RS_DATASOURCE_CONTAINER;

    alter table RS_DATASOURCE_PARAM_DEF 
        add constraint FK_1vcu5d6wgck87ah9x18hstl2 
        foreign key (s_def_value_simpl_data_id) 
        references RS_DATASOURCE_PARAMETER_DATA;

    alter table RS_DATASOURCE_PARAM_DEF 
        add constraint FK_1xow1w58ol876och9yaqasyns 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_DATASOURCE_PARAM_DEF_A 
        add constraint FK_bx47i6g43q89qpdnjo7jmt8o1 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_DATASOURCE_PARAM_INST 
        add constraint FK_9m0hjcp7181evupnlu7ntydpn 
        foreign key (single_value_id) 
        references RS_DATASOURCE_PARAMETER_DATA;

    alter table RS_DATASOURCE_PARAM_INST 
        add constraint FK_t3erhqg1lkwtxwnwxb01bomk1 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_DATASOURCE_PARAM_INST_A 
        add constraint FK_iym2a45lyplkry165anvh0gpw 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_DATASOURCE_P_DF_2_ML_DEF 
        add constraint UK_aac4miqa09m9f3kejtpruuv7r unique (mult_def_val_simpl_data_id);

    alter table RS_DATASOURCE_P_DF_2_ML_DEF 
        add constraint FK_aac4miqa09m9f3kejtpruuv7r 
        foreign key (mult_def_val_simpl_data_id) 
        references RS_DATASOURCE_PARAMETER_DATA;

    alter table RS_DATASOURCE_P_DF_2_ML_DEF 
        add constraint FK_tbkqj34fw257fefgitbkcjhgb 
        foreign key (datasource_param_def_id) 
        references RS_DATASOURCE_PARAM_DEF;

    alter table RS_DATASOURCE_P_DF_2_ML_DEF_A 
        add constraint FK_fammeekos1d7kiejametxc48d 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATASOURCE_P_INS_2_ML_VAL 
        add constraint UK_a7emx7qi7ryboelxucb3o9opp unique (multi_value_id);

    alter table RS_DATASOURCE_P_INS_2_ML_VAL 
        add constraint FK_a7emx7qi7ryboelxucb3o9opp 
        foreign key (multi_value_id) 
        references RS_DATASOURCE_PARAMETER_DATA;

    alter table RS_DATASOURCE_P_INS_2_ML_VAL 
        add constraint FK_fq41r09br2nr4189x66kgj2dh 
        foreign key (datasource_param_inst_id) 
        references RS_DATASOURCE_PARAM_INST;

    alter table RS_DATASOURCE_P_INS_2_ML_VAL_A 
        add constraint FK_qxdq70gj4l180m1l66ddjusbg 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DATETIME_PARAM_DEF 
        add constraint FK_r728myt1k8c4xfvk450pjalbs 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_DATETIME_PARAM_DEF_A 
        add constraint FK_5b342bvvpd5ae94h73cpvsm0g 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_DATETIME_PARAM_INST 
        add constraint FK_le0v9g99kf0hb7eoskqhkagmm 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_DATETIME_PARAM_INST_A 
        add constraint FK_hxylsax84tdjyfdeh2h0qu7k5 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_DB_BUNDLE_2_ENTRY 
        add constraint UK_eokthbj8u5gc495gvo7jb9q3v unique (bundle_entries_id);

    alter table RS_DB_BUNDLE_2_ENTRY 
        add constraint FK_eokthbj8u5gc495gvo7jb9q3v 
        foreign key (bundle_entries_id) 
        references RS_DATABASE_BUNDLE_ENTRY;

    alter table RS_DB_BUNDLE_2_ENTRY 
        add constraint FK_1m26a3pbc4y5ay16dk6ukq1ux 
        foreign key (db_bundle_datasource_id) 
        references RS_DB_BUNDLE_DATASOURCE;

    alter table RS_DB_BUNDLE_2_ENTRY_A 
        add constraint FK_lc8eov4scdkj464sgnuttdiws 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_DB_BUNDLE_DATASOURCE 
        add constraint FK_ewaknfvj1ovob7twde2055w2m 
        foreign key (id) 
        references RS_DATABASE_DATASOURCE;

    alter table RS_DB_BUNDLE_DATASOURCE_A 
        add constraint FK_cgjqqnqn2d2t1660s7ibwfhlc 
        foreign key (id, REV) 
        references RS_DATABASE_DATASOURCE_A;

    alter table RS_DROPBOX_DATASINK 
        add constraint FK_f5397vj4k1gqecemgt60q49sp 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_DROPBOX_DATASINK_A 
        add constraint FK_hqgvpa9jwr5lc3sh8k5epmca9 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_EMAIL_DATASINK 
        add constraint FK_jw2wod139ruynb5ybuvp4ga0g 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_EMAIL_DATASINK_A 
        add constraint FK_fdyvyu0og77uspkoumt1d9ow6 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_EXEC_REPORT_AS_FILE_REF 
        add constraint FK_gulivudewy37o651onwppy6ev 
        foreign key (compiled_report_id) 
        references RS_COMPILED_REPORT;

    alter table RS_EXEC_REPORT_AS_FILE_REF 
        add constraint FK_5irwipw7c034ko8y7smbyb8n8 
        foreign key (id) 
        references RS_TS_DISK_GENERAL_REFERENCE;

    alter table RS_EXEC_REPORT_AS_FILE_REF_A 
        add constraint FK_nycy5dxd260mno8sbb6xodhdn 
        foreign key (id, REV) 
        references RS_TS_DISK_GENERAL_REFERENCE_A;

    alter table RS_FAVORITE_LIST 
        add constraint FK_1be2jre7ckkkf12dokmbj080v 
        foreign key (user_id) 
        references RS_USER;

    alter table RS_FAVORITE_LIST_2_ENTRY 
        add constraint UK_7vmj24ydud0djkton4n1prlov unique (reference_entries_id);

    alter table RS_FAVORITE_LIST_2_ENTRY 
        add constraint FK_7vmj24ydud0djkton4n1prlov 
        foreign key (reference_entries_id) 
        references RS_FAVORITE_LIST_ENTRY;

    alter table RS_FAVORITE_LIST_2_ENTRY 
        add constraint FK_ibdq0e6t433ep7vwha1c1ll1k 
        foreign key (favorite_list_id) 
        references RS_FAVORITE_LIST;

    alter table RS_FAVORITE_LIST_ENTRY 
        add constraint FK_4rso5fo8fa5wwy6g426xxo608 
        foreign key (reference_entry_id) 
        references RS_TS_DISK_NODE;

    alter table RS_FILESEL_PARAM_DEF 
        add constraint FK_3l4p3894c45y9xltx9ab90sdi 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_FILESEL_PARAM_DEF_A 
        add constraint FK_lmva73ojyr6382etim98tf483 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_FILESEL_PARAM_INST 
        add constraint FK_2wk2wx0w9uel2obef8ygbpabq 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_FILESEL_PARAM_INST_A 
        add constraint FK_o9a5c6w279fuv4qrbngqtny67 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_FILESEL_PARAM_IN_2_FILE 
        add constraint UK_2hc95mx4mldfi0yh14qjaeqg7 unique (selected_files_id);

    alter table RS_FILESEL_PARAM_IN_2_FILE 
        add constraint FK_2hc95mx4mldfi0yh14qjaeqg7 
        foreign key (selected_files_id) 
        references RS_FILESEL_PARAM_SEL_FILE;

    alter table RS_FILESEL_PARAM_IN_2_FILE 
        add constraint FK_7awsqg8kiq51tjf3v514ibvam 
        foreign key (filesel_param_inst_id) 
        references RS_FILESEL_PARAM_INST;

    alter table RS_FILESEL_PARAM_IN_2_FILE_A 
        add constraint FK_okvonu2luqoc0ss9ha16m95xv 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILESEL_PARAM_SEL_FILE 
        add constraint FK_ri19q6nrg0gb9hccoi3nfuy64 
        foreign key (file_server_file_id) 
        references RS_FILE_SERVER_NODE;

    alter table RS_FILESEL_PARAM_SEL_FILE 
        add constraint FK_iv3g1uxplrwhekkvph8jbawda 
        foreign key (team_space_file_id) 
        references RS_TS_DISK_NODE;

    alter table RS_FILESEL_PARAM_SEL_FILE 
        add constraint FK_r8scitcaed4eqypvukbx01an2 
        foreign key (uploaded_file_id) 
        references RS_FILESEL_PARAM_UP_FILE;

    alter table RS_FILESEL_PARAM_SEL_FILE_A 
        add constraint FK_62goa6338cij7hnrgnt22qmkc 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILESEL_PARAM_UP_FILE_A 
        add constraint FK_ftpta70s1ukrtou0xqrogj0ug 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILE_SERVER_FILE 
        add constraint FK_s8naupi8by11nxt2j1egtlpyk 
        foreign key (file_data_id) 
        references RS_FILE_SERVER_FILE_DATA;

    alter table RS_FILE_SERVER_FILE 
        add constraint FK_j14th63muv5rwfqgpr2q242rf 
        foreign key (id) 
        references RS_FILE_SERVER_NODE;

    alter table RS_FILE_SERVER_FILE_A 
        add constraint FK_m412qpeipol5qyjl3h3m9pp9t 
        foreign key (id, REV) 
        references RS_FILE_SERVER_NODE_A;

    alter table RS_FILE_SERVER_FILE_DATA_A 
        add constraint FK_4q66wssrns8qqya5syylj7glh 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILE_SERVER_FOLDER 
        add constraint FK_5fc1dof25ui9vk3cx8tdfvplq 
        foreign key (id) 
        references RS_FILE_SERVER_NODE;

    alter table RS_FILE_SERVER_FOLDER_A 
        add constraint FK_wmjc7mnh6kv9l9jodrsi157r 
        foreign key (id, REV) 
        references RS_FILE_SERVER_NODE_A;

    alter table RS_FILE_SERVER_NODE 
        add constraint FK_mj5besgjxony0xbp3tuu1mo36 
        foreign key (parent_id) 
        references RS_FILE_SERVER_NODE;

    alter table RS_FILE_SERVER_NODE 
        add constraint FK_o1w4s4xntn0rcg7na1getwkm6 
        foreign key (acl_id) 
        references RS_HIERARCHICAL_ACL;

    alter table RS_FILE_SERVER_NODE 
        add constraint FK_pbg1cbpqtjcdispauvyd30k54 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_FILE_SERVER_NODE_A 
        add constraint FK_5l0y0bmuteqvypsf1fj2oia3k 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_2_EXCLUDE_VAL 
        add constraint FK_43ql913dkg05u90bphbogqcvn 
        foreign key (filter_id) 
        references RS_FILTER;

    alter table RS_FILTER_2_EXCLUDE_VAL_A 
        add constraint FK_1d8opconp6qgvroay3tqwiayc 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_2_FILTER_RNG_EXC 
        add constraint UK_jsdutm04dlpvqsbgt9dftywlx unique (exclude_ranges_id);

    alter table RS_FILTER_2_FILTER_RNG_EXC 
        add constraint FK_jsdutm04dlpvqsbgt9dftywlx 
        foreign key (exclude_ranges_id) 
        references RS_FILTER_RANGE;

    alter table RS_FILTER_2_FILTER_RNG_EXC 
        add constraint FK_hd0yfly9gvj1lyeb05tj5bhy5 
        foreign key (filter_id) 
        references RS_FILTER;

    alter table RS_FILTER_2_FILTER_RNG_EXC_A 
        add constraint FK_hsombh60o8kl2esq5vs5numna 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_2_FILTER_RNG_INC 
        add constraint UK_khcr1at7ubxcehels6r1iij1b unique (include_ranges_id);

    alter table RS_FILTER_2_FILTER_RNG_INC 
        add constraint FK_khcr1at7ubxcehels6r1iij1b 
        foreign key (include_ranges_id) 
        references RS_FILTER_RANGE;

    alter table RS_FILTER_2_FILTER_RNG_INC 
        add constraint FK_gf0ue1wo0soboclr9a1jc8nu6 
        foreign key (filter_id) 
        references RS_FILTER;

    alter table RS_FILTER_2_FILTER_RNG_INC_A 
        add constraint FK_pfolghm8dih21io802v1h2cox 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_2_INCLUDE_VAL 
        add constraint FK_gcm2wc5mfpkuso1hiau9hphc0 
        foreign key (filter_id) 
        references RS_FILTER;

    alter table RS_FILTER_2_INCLUDE_VAL_A 
        add constraint FK_5uddq09uocdhfx3489h6i40ah 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_A 
        add constraint FK_aohrftpkvp227xrdx1hkul9bg 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_BLOCK_2_CHILD_BL 
        add constraint UK_tqw8eh28g2w9mynsn76u84jnj unique (child_blocks_id);

    alter table RS_FILTER_BLOCK_2_CHILD_BL 
        add constraint FK_tqw8eh28g2w9mynsn76u84jnj 
        foreign key (child_blocks_id) 
        references RS_FILTER_BLOCK;

    alter table RS_FILTER_BLOCK_2_CHILD_BL 
        add constraint FK_iybc1pfmp2d06upj8d02rx98y 
        foreign key (filter_block_id) 
        references RS_FILTER_BLOCK;

    alter table RS_FILTER_BLOCK_2_CHILD_BL_A 
        add constraint FK_43x3sw7ctfsobr2v3ptfgp5ei 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_BLOCK_2_FILTERS 
        add constraint UK_6fs79ndjctv8s6l8d8ugcyjpl unique (filters_id);

    alter table RS_FILTER_BLOCK_2_FILTERS 
        add constraint FK_6fs79ndjctv8s6l8d8ugcyjpl 
        foreign key (filters_id) 
        references RS_FILTER_SPEC;

    alter table RS_FILTER_BLOCK_2_FILTERS 
        add constraint FK_n7mnv0nd84ank1kgxnnfkamls 
        foreign key (filter_block_id) 
        references RS_FILTER_BLOCK;

    alter table RS_FILTER_BLOCK_2_FILTERS_A 
        add constraint FK_im498nadi89ith60nxig291wr 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_BLOCK_A 
        add constraint FK_6qttm7wxe9xvp3tb9k434w48 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_RANGE_A 
        add constraint FK_fo58lercm9j30p0danqqprjt1 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FILTER_SPEC_A 
        add constraint FK_qybc3epbcimwvelvwf2av5usl 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_FTPS_DATASINK 
        add constraint FK_8cjv4243um9mf28x006jirl4t 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_FTPS_DATASINK_A 
        add constraint FK_3so0l158gnbxltk0iiim6ptwc 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_FTP_DATASINK 
        add constraint FK_kveuhnqco33ihxub8f2lwnmhn 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_FTP_DATASINK_A 
        add constraint FK_q65fbnctmy3tf5842e9robvkt 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_GEN_SECURITY_TGT_ENTITY 
        add constraint UK_7ado28p00lsx8v0m5l4iqypf5 unique (target_identifier);

    alter table RS_GEN_SECURITY_TGT_ENTITY 
        add constraint FK_6g2j9qplkr51t1ikiqrer55uj 
        foreign key (acl_id) 
        references RS_ACL;

    alter table RS_GEN_SECURITY_TGT_ENTITY_A 
        add constraint FK_f6lm5ju84cw8vf09q994g34i6 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_GLOBAL_CONSTANT_A 
        add constraint FK_8fug0i9mif04uhv4ftcf4ipim 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_GOOGLEDRIVE_DATASINK 
        add constraint FK_2cptk46cpjxx6o0p532svam80 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_GOOGLEDRIVE_DATASINK_A 
        add constraint FK_6yyv6o9ttanoy0ojxe4olhqip 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_GRID_EDT_REPORT 
        add constraint FK_1atoumh9rfbprvj4niwr25tm 
        foreign key (script_id) 
        references RS_FILE_SERVER_FILE;

    alter table RS_GRID_EDT_REPORT 
        add constraint FK_nvulej8ml7emgu5s17iu9q4qq 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_GRID_EDT_REPORT_A 
        add constraint FK_37iochesaqcqmhj52nchv4y85 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_GRID_EDT_REPORT_VARIANT 
        add constraint FK_i5gapjl4xwqrms81t1q6468l6 
        foreign key (id) 
        references RS_GRID_EDT_REPORT;

    alter table RS_GRID_EDT_REPORT_VARIANT_A 
        add constraint FK_ncjwa01bn9rwewpklx7rsa2uy 
        foreign key (id, REV) 
        references RS_GRID_EDT_REPORT_A;

    alter table RS_GROUP 
        add constraint FK_jajjdsyr24isb0qowritstva 
        foreign key (id) 
        references RS_USERMANAGER_NODE;

    alter table RS_GROUP_2_GROUP 
        add constraint FK_3m64rqs20qfui6lf3sdvmxsly 
        foreign key (referenced_groups_id) 
        references RS_GROUP;

    alter table RS_GROUP_2_GROUP 
        add constraint FK_fh2hithtcyv3m1lfr81g4kys1 
        foreign key (group_id) 
        references RS_GROUP;

    alter table RS_GROUP_2_GROUP_A 
        add constraint FK_s027iw41cpxb7tg73aafwx69o 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_GROUP_2_OU 
        add constraint FK_570w0rit5a0no3p09mjqi2sac 
        foreign key (ous_id) 
        references RS_ORGANISATIONAL_UNIT;

    alter table RS_GROUP_2_OU 
        add constraint FK_c5rgyfh7ge4imi9sjocd2mvfx 
        foreign key (group_id) 
        references RS_GROUP;

    alter table RS_GROUP_2_OU_A 
        add constraint FK_1lcwmbfiqcap4g9kckmpfw1v5 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_GROUP_2_USER 
        add constraint FK_tlkylktyu8gy7mutoo2iasbah 
        foreign key (users_id) 
        references RS_USER;

    alter table RS_GROUP_2_USER 
        add constraint FK_g51sc6mc56ekfon353g7ms0ns 
        foreign key (groups_id) 
        references RS_GROUP;

    alter table RS_GROUP_2_USER_A 
        add constraint FK_hun613qbdf5sbvkqfggmasrie 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_GROUP_A 
        add constraint FK_5emgeivgm7y3dtxbvs1bw1lun 
        foreign key (id, REV) 
        references RS_USERMANAGER_NODE_A;

    alter table RS_HEADLINE_PARAM_DEF 
        add constraint FK_p8vb3wlamlo68h9p3x6mev0ch 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_HEADLINE_PARAM_DEF_A 
        add constraint FK_21ocknprpmkw7exynfekubt9a 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_HEADLINE_PARAM_INST 
        add constraint FK_ti9adimawmve37scss7pqujv1 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_HEADLINE_PARAM_INST_A 
        add constraint FK_6ks23r14rwqm6d2eqiqymm1ix 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_HIERARCHICAL_ACE 
        add constraint FK_etgqf62588kl8xqfh8ty5u2n4 
        foreign key (id) 
        references RS_ACE;

    alter table RS_HIERARCHICAL_ACE_A 
        add constraint FK_19k0yj2gdu19qj2f8caw80sv6 
        foreign key (id, REV) 
        references RS_ACE_A;

    alter table RS_HIERARCHICAL_ACL 
        add constraint FK_aifb3nnucrpxcglclathokhf5 
        foreign key (id) 
        references RS_ACL;

    alter table RS_HIERARCHICAL_ACL_A 
        add constraint FK_ennc41wygdw4nwtql6ds5n9d3 
        foreign key (id, REV) 
        references RS_ACL_A;

    alter table RS_JASPER_REPORT 
        add constraint FK_l11yjbv1njmovp1ea9qocos9h 
        foreign key (master_file_id) 
        references RS_JASPER_REPORT_JRXML;

    alter table RS_JASPER_REPORT 
        add constraint FK_23h58cdkod622egqdtuhwdwuj 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_JASPER_REPORT_2_SUB_JRXML 
        add constraint UK_enrkioxfah39w3v4hlelycmlj unique (sub_files_id);

    alter table RS_JASPER_REPORT_2_SUB_JRXML 
        add constraint FK_enrkioxfah39w3v4hlelycmlj 
        foreign key (sub_files_id) 
        references RS_JASPER_REPORT_JRXML;

    alter table RS_JASPER_REPORT_2_SUB_JRXML 
        add constraint FK_565e3r4hvlebn6o8vrutg3l7i 
        foreign key (jasper_report_id) 
        references RS_JASPER_REPORT;

    alter table RS_JASPER_REPORT_2_SUB_JRXML_A 
        add constraint FK_22hxq622msqtjaug68gbwhlfh 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_JASPER_REPORT_A 
        add constraint FK_5sei11boinenj17bpta5kxmcm 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_JASPER_REPORT_JRXML_A 
        add constraint FK_2ov02n7l6g0107t5yakw94pmn 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_JASPER_REPORT_VARIANT 
        add constraint FK_qwuj17evvq2g1qy7kg4i8swx6 
        foreign key (id) 
        references RS_JASPER_REPORT;

    alter table RS_JASPER_REPORT_VARIANT_A 
        add constraint FK_807igb9snkb41fu5q19g76cc6 
        foreign key (id, REV) 
        references RS_JASPER_REPORT_A;

    alter table RS_JASPER_TO_TABLE_CONFIG 
        add constraint FK_j1vn9xcsyhn3t810dfeuverl9 
        foreign key (datasource_container_id) 
        references RS_DATASOURCE_CONTAINER;

    alter table RS_JASPER_TO_TABLE_CONFIG 
        add constraint FK_lyk8blcrkfr90jwyuke9ni99b 
        foreign key (id) 
        references RS_REPORT_PROPERTY;

    alter table RS_JASPER_TO_TABLE_CONFIG_A 
        add constraint FK_akctqjbiv039jqxdiokv8u6d5 
        foreign key (id, REV) 
        references RS_REPORT_PROPERTY_A;

    alter table RS_JXLS_REPORT 
        add constraint FK_p1r4p11v2pow41ssa2nm70q 
        foreign key (report_file_id) 
        references RS_JXLS_REPORT_FILE;

    alter table RS_JXLS_REPORT 
        add constraint FK_l5i4qr612tr8s1kji6crl8tmh 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_JXLS_REPORT_A 
        add constraint FK_jn2cq8w1v071yot8nmwtpij5 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_JXLS_REPORT_FILE_A 
        add constraint FK_9j0xhejppqgeoj2miyhnb2oqa 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_JXLS_REPORT_VARIANT 
        add constraint FK_r0h3f0f7e93rt4nt0eeo3op75 
        foreign key (id) 
        references RS_JXLS_REPORT;

    alter table RS_JXLS_REPORT_VARIANT_A 
        add constraint FK_nu5wnh5x3bnr4wmsn7pkvd338 
        foreign key (id, REV) 
        references RS_JXLS_REPORT_A;

    alter table RS_LIST_USERVARIABLE_DEF 
        add constraint FK_rrfldyqd2ne6gpur2wkt9dpk0 
        foreign key (id) 
        references RS_USERVAR_DEF;

    alter table RS_LIST_USERVARIABLE_DEF_A 
        add constraint FK_5anuu3qv0d3flh5qn5c9v8h9o 
        foreign key (id, REV) 
        references RS_USERVAR_DEF_A;

    alter table RS_LIST_USERVARIABLE_INST 
        add constraint FK_g96rbkvi0gwtn6sg0foid2c28 
        foreign key (id) 
        references RS_USERVAR_INST;

    alter table RS_LIST_USERVARIABLE_INST_A 
        add constraint FK_brcttjhuog41jvm48xc36ohce 
        foreign key (id, REV) 
        references RS_USERVAR_INST_A;

    alter table RS_LIST_USERVARIABLE_INST_VL 
        add constraint FK_f76li8toefjvd1j0kcdpalooa 
        foreign key (list_user_var_instanc_id) 
        references RS_LIST_USERVARIABLE_INST;

    alter table RS_LIST_USERVARIABLE_INST_VL_A 
        add constraint FK_jqciaxerxrc6us5owylr1ug7v 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_LOCALFILESYSTEM_DATASINK 
        add constraint FK_93e6ojk9bnk0trukr2tjo402j 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_LOCALFILESYSTEM_DATASINK_A 
        add constraint FK_dyhmaic8bnneodxioujr44fqa 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_MONDRIAN_DATASOURCE 
        add constraint FK_ntwogjogyo0kdttpvnqlu4i0e 
        foreign key (id) 
        references RS_DATASOURCE_DEFINITION;

    alter table RS_MONDRIAN_DATASOURCE_A 
        add constraint FK_t9nd6b6kt10u085gikhv3y7eu 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEFINITION_A;

    alter table RS_MONDRIAN_DATASOURCE_CFG 
        add constraint FK_5083kxe1rik300f8ni7nojnrb 
        foreign key (id) 
        references RS_DATASOURCE_DEF_CONFIG;

    alter table RS_MONDRIAN_DATASOURCE_CFG_A 
        add constraint FK_2suyjl7dstmvdp4ktpuhwjamt 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEF_CONFIG_A;

    alter table RS_ONEDRIVE_DATASINK 
        add constraint FK_4vl5j7rn7asrvr8hdu9kgexgw 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_ONEDRIVE_DATASINK_A 
        add constraint FK_8sqemig61wqr6agdnj34dgcj1 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_ORGANISATIONAL_UNIT 
        add constraint FK_snfmro84ormfh6hvieufac3yp 
        foreign key (id) 
        references RS_USERMANAGER_NODE;

    alter table RS_ORGANISATIONAL_UNIT_A 
        add constraint FK_eeot7bbsxqni6q9usynmtqmy4 
        foreign key (id, REV) 
        references RS_USERMANAGER_NODE_A;

    alter table RS_PARAMETER_DEFINITION_A 
        add constraint FK_q38wewcv8h7r6v63529luaqeh 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_PARAMETER_INSTANCE 
        add constraint FK_73sf6r0me72wsfj4by5k9fwlj 
        foreign key (definition_id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_PARAMETER_INSTANCE_A 
        add constraint FK_o4en2m656kn854q8sm5tmfhdr 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_PARAM_DEF_2_DEPENDANTS 
        add constraint FK_lfc85pfpi83in30g3nljymrix 
        foreign key (depends_on_id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_PARAM_DEF_2_DEPENDANTS 
        add constraint FK_g0ew2qd1kcms8snlfl3jb62v2 
        foreign key (parameter_definition_id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_PARAM_DEF_2_DEPENDANTS_A 
        add constraint FK_8qif3eh0lj56b1t2dpo32458q 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_PRE_FILTER 
        add constraint FK_7g842n4n7qc14dh6nrkmg5o8a 
        foreign key (root_block_id) 
        references RS_FILTER_BLOCK;

    alter table RS_PRE_FILTER_A 
        add constraint FK_27yvhr1uff1camvgjdupk1oyj 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_PRINTER_DATASINK 
        add constraint FK_s5apg1lov8pxkephkli0p674e 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_PRINTER_DATASINK_A 
        add constraint FK_n3e0ca9a2olya1fn9ra5j2jw0 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_PROPERTY 
        add constraint UK_7ft41kgrqo512yqm2jslldcgt unique (KEY_FIELD);

    alter table RS_REPORT 
        add constraint UK_el4v5i2gwp2su73awtxgprrb4 unique (uuid);

    alter table RS_REPORT 
        add constraint FK_h19uv1hatydac9sl0ay9skbin 
        foreign key (datasource_container_id) 
        references RS_DATASOURCE_CONTAINER;

    alter table RS_REPORT 
        add constraint FK_gckewftig62c29j8hcfv55y7l 
        foreign key (preview_image_id) 
        references RS_REPORT_PREVIEW_IMAGE;

    alter table RS_REPORT 
        add constraint FK_g8s3emmft6b0e0j9gk66mxose 
        foreign key (id) 
        references RS_REPORT_MNGR_NODE;

    alter table RS_REPORT_2_METADATA 
        add constraint UK_6i5w78noq3wudquppcrhteic6 unique (report_metadata_id);

    alter table RS_REPORT_2_METADATA 
        add constraint FK_6i5w78noq3wudquppcrhteic6 
        foreign key (report_metadata_id) 
        references RS_REPORT_METADATA;

    alter table RS_REPORT_2_METADATA 
        add constraint FK_34eyyl4267w1xgbnxylcjwo8d 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_REPORT_2_METADATA_A 
        add constraint FK_84nc8n0mkxkyone63xa7yek3w 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_2_PARAM_DEF 
        add constraint UK_3yll7c2ghqhdhfasxcnjsbetp unique (parameter_definitions_id);

    alter table RS_REPORT_2_PARAM_DEF 
        add constraint FK_3yll7c2ghqhdhfasxcnjsbetp 
        foreign key (parameter_definitions_id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_REPORT_2_PARAM_DEF 
        add constraint FK_5n1n9gkx7ixqkl6alqd8g75u7 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_REPORT_2_PARAM_DEF_A 
        add constraint FK_fhvq3rc7fi4gw5fbnwj9pid6p 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_2_PARAM_INST 
        add constraint UK_fhvhwsuq47ihq2ukjfk7jenas unique (parameter_instances_id);

    alter table RS_REPORT_2_PARAM_INST 
        add constraint FK_fhvhwsuq47ihq2ukjfk7jenas 
        foreign key (parameter_instances_id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_REPORT_2_PARAM_INST 
        add constraint FK_kgvhxlcdaknn1u6qy0o9me8sv 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_REPORT_2_PARAM_INST_A 
        add constraint FK_3wvyadndqupmo5rkj06ab0ub 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_2_PROPERTY 
        add constraint UK_dp9f61gqyqds5xabdyxfhck5b unique (report_properties_id);

    alter table RS_REPORT_2_PROPERTY 
        add constraint FK_dp9f61gqyqds5xabdyxfhck5b 
        foreign key (report_properties_id) 
        references RS_REPORT_PROPERTY;

    alter table RS_REPORT_2_PROPERTY 
        add constraint FK_qq9l1wie5bfc9d1nyn4dhsv24 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_REPORT_2_PROPERTY_A 
        add constraint FK_mdiaus1a4e2fuf7cw2ehs4uj9 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_A 
        add constraint FK_5rnn2esh37cjspj90wj3vimvv 
        foreign key (id, REV) 
        references RS_REPORT_MNGR_NODE_A;

    alter table RS_REPORT_BYTE_PROPERTY 
        add constraint FK_69x0a61mqnrch72mvq4epxo1t 
        foreign key (id) 
        references RS_REPORT_PROPERTY;

    alter table RS_REPORT_BYTE_PROPERTY_A 
        add constraint FK_53r88n3c7br6lj0jneqpmqte 
        foreign key (id, REV) 
        references RS_REPORT_PROPERTY_A;

    alter table RS_REPORT_FOLDER 
        add constraint FK_q41iboj4yjqmeepdbb8i9iwht 
        foreign key (id) 
        references RS_REPORT_MNGR_NODE;

    alter table RS_REPORT_FOLDER_A 
        add constraint FK_esehmpm6nwtyhne6ypea3ny9q 
        foreign key (id, REV) 
        references RS_REPORT_MNGR_NODE_A;

    alter table RS_REPORT_METADATA_A 
        add constraint FK_jkinh1udh1drnebwm16tmgxkl 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_MNGR_NODE 
        add constraint FK_mwe3bb340w0oslt4a9828r6u6 
        foreign key (parent_id) 
        references RS_REPORT_MNGR_NODE;

    alter table RS_REPORT_MNGR_NODE 
        add constraint FK_qi7fubpe34psuxo1rjcigcuq8 
        foreign key (acl_id) 
        references RS_HIERARCHICAL_ACL;

    alter table RS_REPORT_MNGR_NODE 
        add constraint FK_t9fdglcqwigt76k4rlc7v4tqy 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_REPORT_MNGR_NODE_A 
        add constraint FK_jes7y0l4ukkdctgp90uklcxl6 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_PREVIEW_IMAGE_A 
        add constraint FK_rn15aj05e2k3jteiotvuvv3lx 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_PROPERTY_A 
        add constraint FK_jbenkocy50686acb1lq7p6hbl 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_REPORT_SS_STRING_PROPERTY 
        add constraint FK_3ghg0k7p10mn9fa2j5x8vixbw 
        foreign key (id) 
        references RS_REPORT_PROPERTY;

    alter table RS_REPORT_SS_STRING_PROPERTY_A 
        add constraint FK_bql1sl591waa80ptvy09mdppn 
        foreign key (id, REV) 
        references RS_REPORT_PROPERTY_A;

    alter table RS_REPORT_STRING_PROPERTY 
        add constraint FK_7e6qu0bsp7xbp2326bnlmcisb 
        foreign key (id) 
        references RS_REPORT_PROPERTY;

    alter table RS_REPORT_STRING_PROPERTY_A 
        add constraint FK_108oa53uv9qcbolexvf10b8fw 
        foreign key (id, REV) 
        references RS_REPORT_PROPERTY_A;

    alter table RS_SAIKU_REPORT 
        add constraint FK_qjfa14dtogrti08mibh5ha6tf 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_SAIKU_REPORT_A 
        add constraint FK_cr11j84chwnpwbwj9jq850out 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_SAIKU_REPORT_VARIANT 
        add constraint FK_8vis4ckovmfjld4kxmugchal9 
        foreign key (id) 
        references RS_SAIKU_REPORT;

    alter table RS_SAIKU_REPORT_VARIANT_A 
        add constraint FK_m5ee077dapfeqvwhtv750scqm 
        foreign key (id, REV) 
        references RS_SAIKU_REPORT_A;

    alter table RS_SAMBA_DATASINK 
        add constraint FK_dknkucfem9tc5qi4s04cdsxcr 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_SAMBA_DATASINK_A 
        add constraint FK_3u5vytf57dwcnktpetcsrojhm 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_SCHED_ACTION_AS_AMAZONS3_FILE 
        add constraint FK_ia9bb2g8cvk88x04kfe0ljlf0 
        foreign key (amazon_s3datasink_id) 
        references RS_AMAZONS3_DATASINK;

    alter table RS_SCHED_ACTION_AS_AMAZONS3_FILE 
        add constraint FK_2rhydeo5gnbom36y75tvyxgj1 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_BOX_FILE 
        add constraint FK_sfcsp0ofcrodvgmg6emr6jft7 
        foreign key (box_datasink_id) 
        references RS_BOX_DATASINK;

    alter table RS_SCHED_ACTION_AS_BOX_FILE 
        add constraint FK_2r4hcx50kcddo9isd7jwncij 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_DROPBOX_FILE 
        add constraint FK_9ieq0baht2dqghmr4payotf41 
        foreign key (dropbox_datasink_id) 
        references RS_DROPBOX_DATASINK;

    alter table RS_SCHED_ACTION_AS_DROPBOX_FILE 
        add constraint FK_cl3w10c7j44g58mln4ks8ybt4 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_EMAIL_FILE 
        add constraint FK_47iywmbvtiyiv846gocecs68w 
        foreign key (email_datasink_id) 
        references RS_EMAIL_DATASINK;

    alter table RS_SCHED_ACTION_AS_EMAIL_FILE 
        add constraint FK_lt3hlr1iynyjn2hhexwlqbt35 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_FILE 
        add constraint FK_3ugo18pvdsa297ovygqk9ir2d 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_FTPS_FILE 
        add constraint FK_ga2e1oyugomv4u191e4vqc2ao 
        foreign key (ftps_datasink_id) 
        references RS_FTPS_DATASINK;

    alter table RS_SCHED_ACTION_AS_FTPS_FILE 
        add constraint FK_98dgdtqq2wk6g08f4jsjlm5fa 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_FTP_FILE 
        add constraint FK_b9l2p96sendgnupeeur0qlogj 
        foreign key (ftp_datasink_id) 
        references RS_FTP_DATASINK;

    alter table RS_SCHED_ACTION_AS_FTP_FILE 
        add constraint FK_cumgqtqnj7e0hrj021w5oj29d 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_GOOGLEDRIVE_FILE 
        add constraint FK_59jobhlgyowygn9iw2f1q8e28 
        foreign key (google_drive_datasink_id) 
        references RS_GOOGLEDRIVE_DATASINK;

    alter table RS_SCHED_ACTION_AS_GOOGLEDRIVE_FILE 
        add constraint FK_68bykusrfjc8scgfeu8m2rl9y 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_LOCAL_FILE_SYSTEM 
        add constraint FK_akm5wdplmp6egjo5olrsqmc08 
        foreign key (local_file_system_datas_id) 
        references RS_LOCALFILESYSTEM_DATASINK;

    alter table RS_SCHED_ACTION_AS_LOCAL_FILE_SYSTEM 
        add constraint FK_j0m4ornrg0dxpiopsllehvhpl 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_ONEDRIVE_FILE 
        add constraint FK_a6ce3nu7ay07s9x7tpgdhio06 
        foreign key (one_drive_datasink_id) 
        references RS_ONEDRIVE_DATASINK;

    alter table RS_SCHED_ACTION_AS_ONEDRIVE_FILE 
        add constraint FK_7k4n8nxv5bs3klcff63db08f0 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_PRINTER_FILE 
        add constraint FK_lpowasos3pw5go6nqokslqco 
        foreign key (printer_datasink_id) 
        references RS_PRINTER_DATASINK;

    alter table RS_SCHED_ACTION_AS_PRINTER_FILE 
        add constraint FK_rmbk647lwidwkr3grdl1olueq 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_SAMBA_FILE 
        add constraint FK_1kmwgssjb0seqn2k21l3bvwp6 
        foreign key (samba_datasink_id) 
        references RS_SAMBA_DATASINK;

    alter table RS_SCHED_ACTION_AS_SAMBA_FILE 
        add constraint FK_681fx3rsgu6c2kb9dx9rd169g 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_SCP_FILE 
        add constraint FK_qyny293qjddj88wymwpd394tm 
        foreign key (scp_datasink_id) 
        references RS_SCP_DATASINK;

    alter table RS_SCHED_ACTION_AS_SCP_FILE 
        add constraint FK_610jue5qkk90wsemwyqhn35j7 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_SFTP_FILE 
        add constraint FK_l52q0t61gkl45w1xybv7n39pg 
        foreign key (sftp_datasink_id) 
        references RS_SFTP_DATASINK;

    alter table RS_SCHED_ACTION_AS_SFTP_FILE 
        add constraint FK_85ma3vqnjbveo8wwh3cdvit9h 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_AS_TABLE_DATASINK_FILE 
        add constraint FK_m9q4rcvmvm4p103lgk4rtc4a 
        foreign key (table_datasink_id) 
        references RS_TABLE_DATASINK;

    alter table RS_SCHED_ACTION_AS_TABLE_DATASINK_FILE 
        add constraint FK_kgj928psuyegbmylearshe3fw 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_ENT_2_PROP 
        add constraint UK_sm55x020im9umyfbqtablqv37 unique (history_properties_id);

    alter table RS_SCHED_ACTION_ENT_2_PROP 
        add constraint FK_sm55x020im9umyfbqtablqv37 
        foreign key (history_properties_id) 
        references RS_SCHED_HIST_ENTRY_PROPERTY;

    alter table RS_SCHED_ACTION_ENT_2_PROP 
        add constraint FK_7slp61cap7jvg8ubtpsus1ics 
        foreign key (sched_hist_action_entry_id) 
        references RS_SCHED_HIST_ACTION_ENTRY;

    alter table RS_SCHED_ACTION_MAIL_REPORT 
        add constraint FK_3fhcwp01wtvc1ef9hnw5gpxnf 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_SEND_TO 
        add constraint FK_rvx3r39xe6drjb8h6kly23si 
        foreign key (id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_ACTION_SEND_TO_V 
        add constraint FK_tfquvr60i8a91r9mqn47goep2 
        foreign key (SEND_TO) 
        references RS_SCHED_ACTION_SEND_TO;

    alter table RS_SCHED_EXECUTE_REPORT_JOB 
        add constraint FK_fmvat674w2dcjnq4gr18fl4i8 
        foreign key (executor_id) 
        references RS_USER;

    alter table RS_SCHED_EXECUTE_REPORT_JOB 
        add constraint FK_9c91ncvmapb7chgbb7uv02ld6 
        foreign key (scheduled_by_id) 
        references RS_USER;

    alter table RS_SCHED_EXECUTE_REPORT_JOB 
        add constraint FK_mhdjs8da4id4udlsxombvm4qn 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_SCHED_EXECUTE_REPORT_JOB 
        add constraint FK_asu9llr8v7dp58p91xopjekx8 
        foreign key (id) 
        references RS_SCHED_JOB;

    alter table RS_SCHED_EXECUTE_SCRIPT_JOB 
        add constraint FK_ajtcq5d6mp4bdtg84mqdrbg9h 
        foreign key (executor_id) 
        references RS_USER;

    alter table RS_SCHED_EXECUTE_SCRIPT_JOB 
        add constraint FK_ag4u7ntsj4k38buq7apbp2ew4 
        foreign key (scheduled_by_id) 
        references RS_USER;

    alter table RS_SCHED_EXECUTE_SCRIPT_JOB 
        add constraint FK_8nugydrc76own6uvdornixvpi 
        foreign key (id) 
        references RS_SCHED_JOB;

    alter table RS_SCHED_HIST_ACTION_ENTRY 
        add constraint FK_n43oxq13mx976ne4ivrje5r2g 
        foreign key (EXEC_ENTRY) 
        references RS_SCHED_HIST_EXEC_ENTRY;

    alter table RS_SCHED_HIST_EXEC_ENTRY 
        add constraint FK_irw7ypo0g7csnlli3jc3s6xxa 
        foreign key (job_entry_id) 
        references RS_SCHED_HIST_JOB_ENTRY;

    alter table RS_SCHED_HIST_EXEC_ENTRY 
        add constraint FK_8d3kc7qbbgs4msajs7cvjh1b3 
        foreign key (JOB_HISTORY) 
        references RS_SCHEDULER_JOB_HISTORY;

    alter table RS_SCHED_JOB 
        add constraint FK_anwrd37wjm42uu11ejo94jmny 
        foreign key (history_id) 
        references RS_SCHEDULER_JOB_HISTORY;

    alter table RS_SCHED_JOB 
        add constraint FK_h1ntaxxckwq4lohg53jwaptg0 
        foreign key (link_to_previous_id) 
        references RS_SCHED_JOB;

    alter table RS_SCHED_JOB 
        add constraint FK_cl72jav3wra3j6ny382fm7v7k 
        foreign key (trigger_id) 
        references RS_SCHED_TRIGGER;

    alter table RS_SCHED_JOB_2_ACTIONS 
        add constraint UK_iojoggv0cic92g6k5et5nd9oh unique (actions_id);

    alter table RS_SCHED_JOB_2_ACTIONS 
        add constraint FK_iojoggv0cic92g6k5et5nd9oh 
        foreign key (actions_id) 
        references RS_SCHED_ACTION;

    alter table RS_SCHED_JOB_2_ACTIONS 
        add constraint FK_jnbm406xxnu3qnqeo64adta4l 
        foreign key (sched_job_id) 
        references RS_SCHED_JOB;

    alter table RS_SCHED_JOB_2_OWNER 
        add constraint FK_aubvcvw9n3g4deyw500dnn8r3 
        foreign key (owners_id) 
        references RS_USER;

    alter table RS_SCHED_JOB_2_OWNER 
        add constraint FK_f8gs3rkk6779a5cby7lp3u3iw 
        foreign key (sched_execute_report_job_id) 
        references RS_SCHED_EXECUTE_REPORT_JOB;

    alter table RS_SCHED_JOB_ENT_2_PROP 
        add constraint UK_mcjcrxant3km2dbeogkflg94n unique (history_properties_id);

    alter table RS_SCHED_JOB_ENT_2_PROP 
        add constraint FK_mcjcrxant3km2dbeogkflg94n 
        foreign key (history_properties_id) 
        references RS_SCHED_HIST_ENTRY_PROPERTY;

    alter table RS_SCHED_JOB_ENT_2_PROP 
        add constraint FK_dbe4wn36fe0y4tc3mmk4yyscc 
        foreign key (sched_hist_job_entry_id) 
        references RS_SCHED_HIST_JOB_ENTRY;

    alter table RS_SCHED_REP_EXEC_JOB_2_PROP 
        add constraint UK_30b2g5yxxj3yea9ft5g9v0xef unique (base_properties_id);

    alter table RS_SCHED_REP_EXEC_JOB_2_PROP 
        add constraint FK_30b2g5yxxj3yea9ft5g9v0xef 
        foreign key (base_properties_id) 
        references RS_SCHED_BASE_PROPERTY;

    alter table RS_SCHED_REP_EXEC_JOB_2_PROP 
        add constraint FK_gb4f7gkow2t3f42rvu8y2f16t 
        foreign key (sched_execute_report_job_id) 
        references RS_SCHED_EXECUTE_REPORT_JOB;

    alter table RS_SCHED_REP_EXEC_JOB_2_RCPT 
        add constraint FK_3rpfe7y72y16stsh63tvm3p5x 
        foreign key (report_execute_job_id) 
        references RS_SCHED_EXECUTE_REPORT_JOB;

    alter table RS_SCHED_SCR_EXE_JOB_2_PROP 
        add constraint UK_s1i45snybrphhnjf8og5at0nv unique (base_properties_id);

    alter table RS_SCHED_SCR_EXE_JOB_2_PROP 
        add constraint FK_s1i45snybrphhnjf8og5at0nv 
        foreign key (base_properties_id) 
        references RS_SCHED_BASE_PROPERTY;

    alter table RS_SCHED_SCR_EXE_JOB_2_PROP 
        add constraint FK_sgilgr5t1dp64o9nnnhwt3r06 
        foreign key (sched_execute_script_job_id) 
        references RS_SCHED_EXECUTE_SCRIPT_JOB;

    alter table RS_SCHED_TRIG_DAILY_NTHDAY 
        add constraint FK_r1lhxjxon8gdfdn2ov9twlira 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCHED_TRIG_DAILY_WORKDAY 
        add constraint FK_4ruamdrydf8v4lqxf3ke1egip 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCHED_TRIG_DATE 
        add constraint FK_s5b3c126h4gcwri0mxjh5o3uk 
        foreign key (config_id) 
        references RS_DATE_TRIGGER_CONFIG;

    alter table RS_SCHED_TRIG_DATE 
        add constraint FK_p5p5ewb1hw1k3rpt82vldeiwl 
        foreign key (id) 
        references RS_SCHED_TRIGGER;

    alter table RS_SCHED_TRIG_MONTH_NAMED_DAY 
        add constraint FK_li87ed1urn8oofagasivsc4ow 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCHED_TRIG_MON_DAY_O_MON 
        add constraint FK_92wwtm7elhb0ik8338murj1ym 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCHED_TRIG_WEEKLY 
        add constraint FK_g363mlp2xollf57p5c1hukx5 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCHED_TRIG_YEARLY_AT_DATE 
        add constraint FK_k0m1fjuplal6dcsg06ee52cdo 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCHED_TRIG_YEAR_NAMED_DAY 
        add constraint FK_gryn0egsnupgq9sy6dusq1ijf 
        foreign key (id) 
        references RS_SCHED_TRIG_DATE;

    alter table RS_SCP_DATASINK 
        add constraint FK_1lbk7taapkt9w12kcq7bjqq11 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_SCP_DATASINK_A 
        add constraint FK_sdahdvpgtkitu7xqamkc5wbv 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_SCRIPT_DATASOURCE 
        add constraint FK_irdvekiotse14yohth374g23 
        foreign key (script_id) 
        references RS_FILE_SERVER_FILE;

    alter table RS_SCRIPT_DATASOURCE 
        add constraint FK_8eswye6xd24y6apoydoc21swf 
        foreign key (id) 
        references RS_DATASOURCE_DEFINITION;

    alter table RS_SCRIPT_DATASOURCE_A 
        add constraint FK_lm4es2m25mcled12cx8ateae6 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEFINITION_A;

    alter table RS_SCRIPT_DATASOURCE_CONFIG 
        add constraint FK_sr84mf9sha5jrfmmnaov1dcs 
        foreign key (id) 
        references RS_DATASOURCE_DEF_CONFIG;

    alter table RS_SCRIPT_DATASOURCE_CONFIG_A 
        add constraint FK_t3t96bes0a3wf0dvv6lx4u8mm 
        foreign key (id, REV) 
        references RS_DATASOURCE_DEF_CONFIG_A;

    alter table RS_SCRIPT_PARAM_DEF 
        add constraint FK_hfnv1c27ihh81sre9wvifh7o4 
        foreign key (script_id) 
        references RS_FILE_SERVER_FILE;

    alter table RS_SCRIPT_PARAM_DEF 
        add constraint FK_poie3uhiaulamcdpk8aqjo26e 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_SCRIPT_PARAM_DEF_A 
        add constraint FK_aejry1mhcah90snme3yp9bpu3 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_SCRIPT_PARAM_INST 
        add constraint FK_888ajc6mlovv65gj603w5b6rq 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_SCRIPT_PARAM_INST_A 
        add constraint FK_psltq1csjn3sxygca546f41yj 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_SCRIPT_REPORT 
        add constraint FK_f3c5fca1shtm1pcvfxuvbddhp 
        foreign key (script_id) 
        references RS_FILE_SERVER_FILE;

    alter table RS_SCRIPT_REPORT 
        add constraint FK_19kgcc7xovaaf2y77n4ba6lvw 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_SCRIPT_REPORT_2_EX_FORMAT 
        add constraint FK_4kcod9wrdlv2itek3vp4v8ic6 
        foreign key (script_report_id) 
        references RS_SCRIPT_REPORT;

    alter table RS_SCRIPT_REPORT_2_EX_FORMAT_A 
        add constraint FK_n2v4uam2hpku33o3kkmcs57w1 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_SCRIPT_REPORT_A 
        add constraint FK_ksfkkj3398imlf5aawxi6ykd1 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_SCRIPT_REPORT_VARIANT 
        add constraint FK_nwlfndvpdumb14mem9cpc6ewp 
        foreign key (id) 
        references RS_SCRIPT_REPORT;

    alter table RS_SCRIPT_REPORT_VARIANT_A 
        add constraint FK_k3ycymg5ctpuvdcffp4xpajdp 
        foreign key (id, REV) 
        references RS_SCRIPT_REPORT_A;

    alter table RS_SEP_PARAM_DEF 
        add constraint FK_fxis8dwe9cm8xn9ai7jipyvns 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_SEP_PARAM_DEF_A 
        add constraint FK_tf3520lbbt6ucpmgdmn2gi9dw 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_SEP_PARAM_INST 
        add constraint FK_px4n130nfxibyvmpd2aanmyyn 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_SEP_PARAM_INST_A 
        add constraint FK_jfqrkwjy50f09d9c359krwrqf 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_SFTP_DATASINK 
        add constraint FK_4e5xvbyd6f9ui7vpleeigcw4p 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_SFTP_DATASINK_A 
        add constraint FK_jheb80qaijqqks3268f4xfq8g 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_STR_USERVARIABLE_DEF 
        add constraint FK_tpbipviec3b5qnhd7yxy4bnm2 
        foreign key (id) 
        references RS_USERVAR_DEF;

    alter table RS_STR_USERVARIABLE_DEF_A 
        add constraint FK_rpuh4k2wjgcat18vahxqn0er1 
        foreign key (id, REV) 
        references RS_USERVAR_DEF_A;

    alter table RS_STR_USERVARIABLE_INST 
        add constraint FK_mfk0pjtr17j0c1bjq2b9ijo2h 
        foreign key (id) 
        references RS_USERVAR_INST;

    alter table RS_STR_USERVARIABLE_INST_A 
        add constraint FK_567nnwfkqjs9cfqbe7rb4u7eh 
        foreign key (id, REV) 
        references RS_USERVAR_INST_A;

    alter table RS_TABLE_DATASINK 
        add constraint FK_mpacg66ugqwk9o5qp7q9hueea 
        foreign key (datasource_container_id) 
        references RS_DATASOURCE_CONTAINER;

    alter table RS_TABLE_DATASINK 
        add constraint FK_s9r3o6x12qxcxawok15rxdsc1 
        foreign key (id) 
        references RS_DATASINK_DEFINITION;

    alter table RS_TABLE_DATASINK_A 
        add constraint FK_7pb7s46f11f524q9pe9prsvd3 
        foreign key (id, REV) 
        references RS_DATASINK_DEFINITION_A;

    alter table RS_TABLE_REPORT 
        add constraint FK_8foqv174ohfinnfjvryw5mi7o 
        foreign key (metadata_datas_container_id) 
        references RS_DATASOURCE_CONTAINER;

    alter table RS_TABLE_REPORT 
        add constraint FK_no77bkk1y53qrinwf31agl13y 
        foreign key (pre_filter_id) 
        references RS_PRE_FILTER;

    alter table RS_TABLE_REPORT 
        add constraint FK_ssj1sc4nb1i307nwptlqfeu5k 
        foreign key (id) 
        references RS_REPORT;

    alter table RS_TABLE_REPORT_2_ADD_COLUMN 
        add constraint UK_pbvwpa8ou8nnwjrfsydid3ts5 unique (additional_columns_id);

    alter table RS_TABLE_REPORT_2_ADD_COLUMN 
        add constraint FK_pbvwpa8ou8nnwjrfsydid3ts5 
        foreign key (additional_columns_id) 
        references RS_ADD_COLUMN_SPEC;

    alter table RS_TABLE_REPORT_2_ADD_COLUMN 
        add constraint FK_ryq1behdl9rkvhwx6d7tly19m 
        foreign key (table_report_id) 
        references RS_TABLE_REPORT;

    alter table RS_TABLE_REPORT_2_ADD_COLUMN_A 
        add constraint FK_eswsunx09re1mg52w935uktfp 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TABLE_REPORT_2_COLUMN 
        add constraint UK_93vi81iplycbj8ede52xau7mi unique (columns_id);

    alter table RS_TABLE_REPORT_2_COLUMN 
        add constraint FK_93vi81iplycbj8ede52xau7mi 
        foreign key (columns_id) 
        references RS_COLUMN;

    alter table RS_TABLE_REPORT_2_COLUMN 
        add constraint FK_atjtyp2hvm7rrqgfgjqte0p2f 
        foreign key (table_report_id) 
        references RS_TABLE_REPORT;

    alter table RS_TABLE_REPORT_2_COLUMN_A 
        add constraint FK_937b9sj2954ktaphulqj45t2d 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TABLE_REPORT_A 
        add constraint FK_31f57lh1ucudwgnnserxebcs0 
        foreign key (id, REV) 
        references RS_REPORT_A;

    alter table RS_TABLE_REPORT_BYTE_TPL 
        add constraint FK_l7q8egy5d801op4ranly76cy9 
        foreign key (id) 
        references RS_TABLE_REPORT_TEMPLATE;

    alter table RS_TABLE_REPORT_BYTE_TPL_A 
        add constraint FK_ssgskf0blnk3kpwyqps9qwv62 
        foreign key (id, REV) 
        references RS_TABLE_REPORT_TEMPLATE_A;

    alter table RS_TABLE_REPORT_STR_TEMPLATE 
        add constraint FK_nvca7qhnnco89led1n0m8ib60 
        foreign key (id) 
        references RS_TABLE_REPORT_TEMPLATE;

    alter table RS_TABLE_REPORT_STR_TEMPLATE_A 
        add constraint FK_6cyboefahhgx4u47al8ytd1mw 
        foreign key (id, REV) 
        references RS_TABLE_REPORT_TEMPLATE_A;

    alter table RS_TABLE_REPORT_TEMPLATE_A 
        add constraint FK_26mdoe18vxby93xchd6ho6fht 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TABLE_REPORT_TEMPLATE_LST 
        add constraint FK_jf2wxrfl94yak4iv37c40qncb 
        foreign key (id) 
        references RS_REPORT_PROPERTY;

    alter table RS_TABLE_REPORT_TEMPLATE_LST_A 
        add constraint FK_b3o1ne169kq98h8boke4vl8pw 
        foreign key (id, REV) 
        references RS_REPORT_PROPERTY_A;

    alter table RS_TABLE_REPORT_VARIANT 
        add constraint FK_sxv05l9cmfnxi9q7jdq5owf1a 
        foreign key (id) 
        references RS_TABLE_REPORT;

    alter table RS_TABLE_REPORT_VARIANT_A 
        add constraint FK_fu49tg245ugv1g2gxcfh6jvp6 
        foreign key (id, REV) 
        references RS_TABLE_REPORT_A;

    alter table RS_TAB_REP_TPL_LST_2_TPL 
        add constraint UK_havn4ds3ldax0582mvce0kxhs unique (templates_id);

    alter table RS_TAB_REP_TPL_LST_2_TPL 
        add constraint FK_havn4ds3ldax0582mvce0kxhs 
        foreign key (templates_id) 
        references RS_TABLE_REPORT_TEMPLATE;

    alter table RS_TAB_REP_TPL_LST_2_TPL 
        add constraint FK_p1v7grf8lsni9ujv2rhh9lbdi 
        foreign key (table_report_templat_lst_id) 
        references RS_TABLE_REPORT_TEMPLATE_LST;

    alter table RS_TAB_REP_TPL_LST_2_TPL_A 
        add constraint FK_fmdqyhv9sd9d1katwexpl92m7 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEAMSPACE 
        add constraint FK_h00mwj3cusqjf2c1ctye1xlt5 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_TEAMSPACE_2_APP 
        add constraint UK_na451k4x089fwlqutv25qnjg5 unique (apps_id);

    alter table RS_TEAMSPACE_2_APP 
        add constraint FK_na451k4x089fwlqutv25qnjg5 
        foreign key (apps_id) 
        references RS_TEAMSPACE_APP;

    alter table RS_TEAMSPACE_2_APP 
        add constraint FK_5e59vga3ufgjq7okpgx83nr67 
        foreign key (teamspace_id) 
        references RS_TEAMSPACE;

    alter table RS_TEAMSPACE_2_APP_A 
        add constraint FK_brj64tyuakbemq6xeyjohq8s5 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEAMSPACE_A 
        add constraint FK_rejb26cb8ewfmmv2um3myil7q 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEAMSPACE_APP_2_PROPERTY 
        add constraint UK_d9jtwygbdms54tiy652gkt33y unique (app_properties_id);

    alter table RS_TEAMSPACE_APP_2_PROPERTY 
        add constraint FK_d9jtwygbdms54tiy652gkt33y 
        foreign key (app_properties_id) 
        references RS_TEAMSPACE_APP_PROPERTY;

    alter table RS_TEAMSPACE_APP_2_PROPERTY 
        add constraint FK_tdhh36hfre5pdr9jfgkpu7icr 
        foreign key (teamspace_app_id) 
        references RS_TEAMSPACE_APP;

    alter table RS_TEAMSPACE_APP_2_PROPERTY_A 
        add constraint FK_of0vrrmxfjckl3khul4hiukkw 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEAMSPACE_APP_A 
        add constraint FK_4j0u2y1shmyop97jo8av9sgyv 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEAMSPACE_APP_PROPERTY_A 
        add constraint FK_neaevm02cgidd1ficvhda6ied 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEAMSPACE_MEMBER 
        add constraint FK_fy25hc5otirwwptajgifrbn2q 
        foreign key (folk_id) 
        references RS_USERMANAGER_NODE;

    alter table RS_TEAMSPACE_MEMBER 
        add constraint FK_hidouigp2cvecq4okjdpmv9je 
        foreign key (team_space_id) 
        references RS_TEAMSPACE;

    alter table RS_TEAMSPACE_MEMBER_A 
        add constraint FK_ehoe66nogdhk6u7w72uqd9jgo 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TEXT_PARAM_DEF 
        add constraint FK_6hn9ysftiusbc4sujut9ix47g 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_TEXT_PARAM_DEF_A 
        add constraint FK_jng1qfcdv67hk2kmtl17c785k 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_TEXT_PARAM_INST 
        add constraint FK_bfec850w6d624tx9hjey0oabu 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_TEXT_PARAM_INST_A 
        add constraint FK_pitf4s5vg5buwj3isdx267pi1 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_TS_DISK_FILE_REFERENCE 
        add constraint FK_jdjn4rwwjx6ggsl9sieob0m56 
        foreign key (id) 
        references RS_TS_DISK_GENERAL_REFERENCE;

    alter table RS_TS_DISK_FILE_REFERENCE_A 
        add constraint FK_d7qm6c9ya742mhknof9x1klpc 
        foreign key (id, REV) 
        references RS_TS_DISK_GENERAL_REFERENCE_A;

    alter table RS_TS_DISK_FOLDER 
        add constraint FK_d0d53xfagkqaatfjq8wqwqc6p 
        foreign key (id) 
        references RS_TS_DISK_NODE;

    alter table RS_TS_DISK_FOLDER_A 
        add constraint FK_87o62pam0d6n9r5ikdrgp9th9 
        foreign key (id, REV) 
        references RS_TS_DISK_NODE_A;

    alter table RS_TS_DISK_GENERAL_REFERENCE 
        add constraint FK_2uxjnc3iglxk5xcxosb5v5i77 
        foreign key (id) 
        references RS_TS_DISK_NODE;

    alter table RS_TS_DISK_GENERAL_REFERENCE_A 
        add constraint FK_30kqu6voo5ov62rb19rpx4amv 
        foreign key (id, REV) 
        references RS_TS_DISK_NODE_A;

    alter table RS_TS_DISK_NODE 
        add constraint FK_151kppd1j2qmsfxu54ericrle 
        foreign key (parent_id) 
        references RS_TS_DISK_NODE;

    alter table RS_TS_DISK_NODE_A 
        add constraint FK_e8wo1tixbiqq4n513pd753dxp 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_TS_DISK_REPORT_REFERENCE 
        add constraint FK_thq35pugu6l572ebbiy9h90es 
        foreign key (report_id) 
        references RS_REPORT;

    alter table RS_TS_DISK_REPORT_REFERENCE 
        add constraint FK_ie3omwbvrf7mwlrx46cy10cwn 
        foreign key (id) 
        references RS_TS_DISK_GENERAL_REFERENCE;

    alter table RS_TS_DISK_REPORT_REFERENCE_A 
        add constraint FK_oalceronepwgm3korcxwk4ky9 
        foreign key (id, REV) 
        references RS_TS_DISK_GENERAL_REFERENCE_A;

    alter table RS_TS_DISK_ROOT 
        add constraint FK_8pphff4tw4b3jjefjua9xxc42 
        foreign key (team_space_id) 
        references RS_TEAMSPACE;

    alter table RS_TS_DISK_ROOT 
        add constraint FK_d8whd2jxj06cyvup2io6ipa9n 
        foreign key (id) 
        references RS_TS_DISK_NODE;

    alter table RS_TS_DISK_ROOT_A 
        add constraint FK_j8ayfqaa4qtelmf7kv79das1v 
        foreign key (id, REV) 
        references RS_TS_DISK_NODE_A;

    alter table RS_USER 
        add constraint FK_57e7c0013ntx24mt8xtncnact 
        foreign key (id) 
        references RS_USERMANAGER_NODE;

    alter table RS_USERMANAGER_NODE 
        add constraint FK_rp5lo05enc72i78372idbylkl 
        foreign key (parent_id) 
        references RS_USERMANAGER_NODE;

    alter table RS_USERMANAGER_NODE 
        add constraint FK_64wcr206hdn3q8vof7imdp01 
        foreign key (acl_id) 
        references RS_HIERARCHICAL_ACL;

    alter table RS_USERMANAGER_NODE 
        add constraint FK_2cfi4lvw6j6quqcigy0g6eyo2 
        foreign key (owner_id) 
        references RS_USER;

    alter table RS_USERMANAGER_NODE_A 
        add constraint FK_cduy00jvfixjo7yv4vjpd71s0 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_USERVAR_DEF_A 
        add constraint FK_5om9kd630ey1aqg24r2ob8wx8 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_USERVAR_INST 
        add constraint FK_5buivmfd1h7p2do9ykevmww0f 
        foreign key (definition_id) 
        references RS_USERVAR_DEF;

    alter table RS_USERVAR_INST 
        add constraint FK_qx4rr2aajx2apg7fiwam0pycb 
        foreign key (folk_id) 
        references RS_USERMANAGER_NODE;

    alter table RS_USERVAR_INST_A 
        add constraint FK_58p3y5kfgje9ghmkpgslbu5fb 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_USERVAR_PARAM_DEF 
        add constraint FK_m5hakblnowqepoavn6ik09ivs 
        foreign key (user_variable_definition_id) 
        references RS_USERVAR_DEF;

    alter table RS_USERVAR_PARAM_DEF 
        add constraint FK_hte1xondnq461qgq4dvexbc4c 
        foreign key (id) 
        references RS_PARAMETER_DEFINITION;

    alter table RS_USERVAR_PARAM_DEF_A 
        add constraint FK_nfhe0tvar1f3gkqt0kqwau20p 
        foreign key (id, REV) 
        references RS_PARAMETER_DEFINITION_A;

    alter table RS_USERVAR_PARAM_INST 
        add constraint FK_s7sp6ts9x0p7jn72tdsgoeqou 
        foreign key (id) 
        references RS_PARAMETER_INSTANCE;

    alter table RS_USERVAR_PARAM_INST_A 
        add constraint FK_6tcovo5sdo5ww0b7bar5oinbl 
        foreign key (id, REV) 
        references RS_PARAMETER_INSTANCE_A;

    alter table RS_USER_2_PROPERTY 
        add constraint UK_jcm9jafge739ffhijr2lfk3hu unique (properties_id);

    alter table RS_USER_2_PROPERTY 
        add constraint FK_jcm9jafge739ffhijr2lfk3hu 
        foreign key (properties_id) 
        references RS_USER_PROPERTY;

    alter table RS_USER_2_PROPERTY 
        add constraint FK_ekr2oll53tq8jr2hc0uw783y0 
        foreign key (user_id) 
        references RS_USER;

    alter table RS_USER_2_PROPERTY_A 
        add constraint FK_67jjwwt94r6g04kx33k8fbk46 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_USER_A 
        add constraint FK_lvy6oa9l11gx9gthkw732s4pb 
        foreign key (id, REV) 
        references RS_USERMANAGER_NODE_A;

    alter table RS_USER_PROPERTY_A 
        add constraint FK_m1c6cve1due4tifp0as6j27pv 
        foreign key (REV) 
        references RS_REVISION;

    alter table RS_WEEKLY_CONFIG_2_DAYS 
        add constraint FK_dfj75myt4o7848o0dq64rudie 
        foreign key (weekly_config_id) 
        references RS_DATE_TRIGGER_CONFIG;

    create table RS_HIBERNATE_SEQUENCE ( next_val int8 );
    insert into RS_HIBERNATE_SEQUENCE values ( 1 );

    create table RS_SCHEMAINFO (
        ENTITY_ID serial not null,
        KEY_FIELD varchar(128) not null,
        value text,
        primary key (ENTITY_ID)
    );
    insert into RS_SCHEMAINFO(KEY_FIELD, value) VALUES('created', to_char(now(), 'YYYY-MM-DD HH24:MI:SS'));
    insert into RS_SCHEMAINFO(KEY_FIELD, value) VALUES('version', 'RS4.2.0-6066');
    insert into RS_SCHEMAINFO(KEY_FIELD, value) VALUES('schemaversion', 'RS3.0-23');
