page 50101 "FCXListaConf"
{
    ApplicationArea = All;
    Caption = 'Lista configuración';
    PageType = List;
    SourceTable = FCXConfCurso;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(FCXClave; Rec.FCXClave)
                {
                    ToolTip = 'Specifies the value of the FCXClave field.';
                    ApplicationArea = All;
                }
                field(FCXTextoPrueba; Rec.FCXTextoPrueba)
                {
                    ToolTip = 'Specifies the value of the FCXTextoPrueba field.';
                    ApplicationArea = All;
                }
                field(FCXNumOrden; Rec.FCXNumOrden)
                {
                    ToolTip = 'Specifies the value of the FCXNumOrden field.';
                    ApplicationArea = All;
                }
                field(FCXFecha; Rec.FCXFecha)
                {
                    ToolTip = 'Specifies the value of the Fecha field.';
                    ApplicationArea = All;
                }
                field(FCXImporte; Rec.FCXImporte)
                {
                    ToolTip = 'Specifies the value of the Importe field.';
                    ApplicationArea = All;
                }
                field(CodCliente; Rec.CodCliente)
                {
                    ToolTip = 'Specifies the value of the Cód. cliente field.';
                    ApplicationArea = All;
                }
                field(TextoEnMayus; Rec.TextoEnMayus)
                {
                    ToolTip = 'Specifies the value of the Texto en mayúsculas field.';
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
    actions
    {
        area(Navigation)
        {
            action(FichaCte)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Pendiente de desarrollo');
                end;
            }
        }
    }
}
