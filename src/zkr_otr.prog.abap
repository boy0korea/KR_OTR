REPORT zkr_otr.

*********************************************************************
* INCLUDE                                                           *
*********************************************************************
INCLUDE zkr_otrt01.
INCLUDE zkr_otrf01.
INCLUDE zkr_otro01.
INCLUDE zkr_otri01.


*********************************************************************
* INITIALIZATION                                                    *
*********************************************************************
INITIALIZATION.
  PERFORM initialization.

AT SELECTION-SCREEN.
  PERFORM at_selection_screen.

*********************************************************************
* START-OF-SELECTION                                                *
*********************************************************************
START-OF-SELECTION.
  PERFORM start_of_selection.

*********************************************************************
* END-OF-SELECTION                                                  *
*********************************************************************
END-OF-SELECTION.
  PERFORM end_of_selection.
