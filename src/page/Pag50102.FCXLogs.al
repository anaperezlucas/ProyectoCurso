page 50102 "FCXLogs"
{
    ApplicationArea = All;
    Caption = 'Logs';
    PageType = List;
    SourceTable = FCXLogs;
    UsageCategory = History;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(NumOrden; Rec.NumOrden)
                {
                    ToolTip = 'Specifies the value of the Num. Orden field.';
                    ApplicationArea = All;
                }
                field(IdOrigen; Rec.IdOrigen)
                {
                    ToolTip = 'Specifies the value of the Id. Origen field.';
                    ApplicationArea = All;
                }
                field(Texto; Rec.Texto)
                {
                    ToolTip = 'Specifies the value of the Texto field.';
                    ApplicationArea = All;
                }
                field(TiempoEnPagina; Rec.TiempoEnPagina)
                {
                    ToolTip = 'Specifies the value of the Tiempo en página field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        myInt: Integer;
    begin
        exit(Confirm('¿Realmente desea salir de la página?', false));
    end;
}
