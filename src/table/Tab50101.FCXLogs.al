table 50101 "FCXLogs"
{
    Caption = 'Log';
    DataClassification = ToBeClassified;
    LookupPageId = FCXLogs;

    fields
    {
        field(1; NumOrden; Integer)
        {
            Caption = 'Num. Orden';
            DataClassification = OrganizationIdentifiableInformation;
            AutoIncrement = true;
        }
        field(2; IdOrigen; Text[20])
        {
            Caption = 'Id. Origen';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(3; Texto; Text[250])
        {
            Caption = 'Texto';
            DataClassification = OrganizationIdentifiableInformation;
        }
        field(4; TiempoEnPagina; Duration)
        {
            Caption = 'Tiempo en página';
            DataClassification = OrganizationIdentifiableInformation;
        }

    }
    keys
    {
        key(PK; NumOrden)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        myInt: Integer;
    begin

    end;
}
