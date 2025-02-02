INTERFACE zif_adu_general
  PUBLIC.

  TYPES:
    BEGIN OF ty_file_name_extension,
      filename  TYPE string,
      extension TYPE string,
    END OF ty_file_name_extension.

  CLASS-METHODS get
    RETURNING VALUE(result) TYPE REF TO zif_adu_general.

  METHODS get_structure_fields
    IMPORTING structure_name        TYPE csequence                OPTIONAL
              structure_description TYPE REF TO cl_abap_datadescr OPTIONAL
              recursive             TYPE abap_bool                DEFAULT abap_true
    RETURNING VALUE(result)         TYPE cl_abap_structdescr=>component_table.

  METHODS split_filename_extension
    IMPORTING iv_filename   TYPE csequence
    RETURNING VALUE(result) TYPE ty_file_name_extension.

  METHODS get_timestamp
    RETURNING VALUE(result) TYPE timestamp.

  METHODS get_date
    RETURNING VALUE(result) TYPE d.

  METHODS get_time
    RETURNING VALUE(result) TYPE t.

  METHODS get_system_time_zone
    RETURNING VALUE(result) TYPE timezone.

ENDINTERFACE.
