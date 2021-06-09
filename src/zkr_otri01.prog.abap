*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0400  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0400 INPUT.

  save_ok = ok_code.
  CLEAR ok_code.
  CASE save_ok.
    WHEN 'EXIT'.
      PERFORM exit_program.

    WHEN 'BACK'.
      PERFORM leave_screen.

    WHEN 'SWITCH'.
      PERFORM switch_edit_mode.

    WHEN 'SAVE'.
      PERFORM save_otr.
      PERFORM refresh_display.

    WHEN OTHERS.
*     do nothing
  ENDCASE.

ENDMODULE.                 " USER_COMMAND_0400  INPUT
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0500  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0500 INPUT.

  save_ok = ok_code.
  CLEAR ok_code.
  CASE save_ok.
    WHEN 'EXIT'.
      PERFORM exit_program.

    WHEN 'BACK'.
      PERFORM leave_screen.

    WHEN 'SAVE'.
      " 생성용 자료 저장처리
      PERFORM create_otr.

    WHEN 'TEMPLATE'.
      " 템플릿 다운로드
      PERFORM download_template.

    WHEN 'EXCEL'.
      " 엑셀업로드
      PERFORM excel_upload.

    WHEN OTHERS.
*     do nothing
  ENDCASE.

ENDMODULE.                 " USER_COMMAND_0500  INPUT
