pageextension 50100 "FCXCustomerCardExt" extends "Customer Card"
{
    layout
    {
        addlast(content)
        {
            group(FCXCurso)
            {
                Caption = 'Campos del curso';

                field(FCXCity2; Rec.FCXCity2)
                {
                    ToolTip = 'Specifies the value of the Ciudad 2 field.';
                    ApplicationArea = All;
                }
                field(FCXCP2; Rec.FCXCP2)
                {
                    ToolTip = 'Specifies the value of the Cód Postal 2 field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        rlLog: Record FCXLogs;
    begin
        //Insertar un registro en la tabla logs:

        rlLog.Init(); //Limpia  e inicializa con los valores iniciales un registro
        //Asignar TODOS los campos de la clave principal. En este caso no es necesario porque la clave es autoincrementada.
        rlLog.Insert(true); //Inserta el registro en SQL
        UltimoNumOrdenInsertado := rlLog.NumOrden;
        //Asignar resto de campos:
        rlLog.Texto := 'El usuario ' + UserId + ' entra en página';
        //Modificar el registro
        rlLog.Modify(true);
    end;

    trigger OnClosePage()
    var
        FCXLogs: Record FCXLogs;
    begin
        //En el registro insertado en el OnOpenPage, cerrarlo para controlar el tiempo que ha estado el usuario
        //Localizar el registro insertado
        if FCXLogs.Get(UltimoNumOrdenInsertado) then begin
            FCXLogs.Texto := FCXLogs.Texto + ' y ya ha salido';
            FCXLogs.TiempoEnPagina := CurrentDateTime - FCXLogs.SystemCreatedAt;
            FCXLogs.Modify(true);
        end;
    end;

    var
        UltimoNumOrdenInsertado: Integer;

}
