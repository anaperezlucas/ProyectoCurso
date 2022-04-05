page 50100 "FCXConfCurso"
{
    Caption = 'Configuración curso';
    PageType = Card;
    SourceTable = FCXConfCurso;
    AdditionalSearchTerms = 'Contabilidad,Personalizado,FCX';
    ApplicationArea = All;
    UsageCategory = Administration;
    InsertAllowed = false;
    DeleteAllowed = false;
    //PROPIEDADES
    //Todas las que empiezan por About sirven para mostrar el texto de ayuda:
    //Si es a nivel de campo: se muestra en los campos cuando sitúas el ratón encima.
    //Si es a nivel de página
    //AdditionalSearchTerms='Contabilidad,Personalizado,Farcinox'   Es para asociar términos de búsqueda para encontrar rápidamente en el servidor
    //API: es para las páginas de tipo API
    //ApplicationArea: siempre ponerle el valor All
    //AutoSplitKey: autodivide las claves primarias. Por ejemplo, en el nº de línea en los pedidos si insertas una nueva línea entre medias de las 10000 y 20000 pues crea un nº de línea 15000.
    //CardPageId = FCXConfCurso; Es una propiedad para páginas de tipo lista que enlaza con los botones de editar, ver o nuevo y te abre una página de tipo Card que enlaza con los datos de esas tabla de la página de la lista.
    //DelayedInsert=true     retrasa la inserción de un campo hasta que cerramos la página abierta
    //DeleteAllowed permite prohibir que se eliminen los registros
    //Editable: para permitir o no editar la página. Equivale a poner las 3 propiedades de DeleteAllowed, InsertAllowed y ModifyAllowed a false al mismo tiempo.
    //LinksAllowed: para permitir añadir vínculos. Por defecto, siempre es true.
    //Los que empiezan por obsolete sirven para no eliminarlas del código la app pero sí para que no aparezcan en BC.
    //PopulateAllFields=true; Todos los filtros que tienes puestos, los rellena automáticamente en los campos correspondientes. Las páginas con vistas filtradas utilizan esta propiedad.
    //SaveValues Para una página donde nos interesa que los valores escritos se guarden. Se utilizan mucho en los filtros que se añaden en los reports.
    //ShowFilter para mostrar o no los filtros que contiene una página filtrada


    layout
    {
        area(content)
        {
            group(General)
            {
                field(CodCliente; Rec.CodCliente)
                {
                    ToolTip = 'Specifies the value of the Cód. cliente field.';
                    ApplicationArea = All;
                }
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
                field(TextoEnMayus; Rec.TextoEnMayus)
                {
                    ToolTip = 'Specifies the value of the Texto en mayúsculas field.';
                    ApplicationArea = All;
                }

                field(FCXNumOrden; Rec.FCXNumOrden)
                {
                    ToolTip = 'Specifies the value of the FCXNumOrden field.';
                    ApplicationArea = All;
                }
            }
            group(Sistema)
            {
                Caption = 'Datos del sistema';
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
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if Rec.IsEmpty then begin
            Rec.Init(); //Utilizar el init siempre antes de añadir un insert
            rec.Insert(true);
        end;
    end;
}
