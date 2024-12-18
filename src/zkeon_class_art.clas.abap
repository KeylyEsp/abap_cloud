CLASS zkeon_class_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zkeon_class_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data: it_art TYPE STANDARD TABLE OF zkeon_tab_art.

    it_art = VALUE #(
        ( client = sy-mandt id_art = 1 descri = 'Blackwing Volumen 71' descri2 = 'Blackwing Volumen 71. Lápiz' color = 'Varios' piezas = 4 stock = 10 url =
'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-71-03_7e71aa92-d90f-47b3-b56a-b4619063f11d_700x.jpg?v=1729023598' )
        ( client = sy-mandt id_art = 2 descri = 'Blackwing Eras 2024' descri2 = 'Blackwing Eras 2024. Paquete con 12 Lápices' color = 'Negro' piezas = 12 stock = 16 url =
'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-eras-2024-03_700x.jpg?v=1724703418' )
        ( client = sy-mandt id_art = 3 descri = 'Libreta Planorama' descri2 = 'Libreta Planorama - Verde' color = 'Verde' piezas = 1 stock = 90 url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-planorama-verde-claro-001_700x.jpg?v=1699493660' )
        ( client = sy-mandt id_art = 4 descri = 'Lápiz Social' descri2 = 'Lápiz Social A280 HB' color = 'Café claro' piezas = 1 stock = 100 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-social-hb-cafe-claro_700x.jpg?v=1617141325' )
        ( client = sy-mandt id_art = 5 descri = 'Lápices Arcoiris' descri2 = 'Lápices Arcoiris por unidad' color = 'Arcoiris' piezas = 1 stock = 60 url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-7-in-1-natural-03_700x.jpg?v=1617153233' )
    ).

    INSERT zkeon_tab_art FROM TABLE @it_art.

    IF sy-subrc EQ 0.
        out->write( 'Insersión exitosa.' ).
    ELSE.
        out->write( 'Insersión fallida.' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
