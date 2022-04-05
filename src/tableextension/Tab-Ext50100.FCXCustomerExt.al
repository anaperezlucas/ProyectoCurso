tableextension 50100 "FCXCustomerExt" extends Customer
{
    Caption = 'Clientes modificados';
    fields
    {
        modify(Address)
        {
            Caption = 'Dirección principal';
            trigger OnBeforeValidate()
            var
                myInt: Integer;
            begin
                Message('Se va a validar la dirección');
            end;

            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Message('Se ha validado la dirección');
            end;
        }
        field(50100; FCXCity2; Text[25])
        {
            Caption = 'Ciudad 2';
            DataClassification = OrganizationIdentifiableInformation;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                Message('Se ha escrito la ciudad 2');
            end;
        }
        field(50101; FCXCP2; Code[10])
        {
            Caption = 'Cód Postal 2';
            DataClassification = OrganizationIdentifiableInformation;
        }
    }
    fieldgroups
    {
        addlast(DropDown; FCXCity2, FCXCP2)
        {

        }
    }
    procedure NombreCiudad(): Text
    begin
        exit(rec.Name + ' - ' + Rec.City);
    end;

    trigger OnBeforeInsert()
    var
        myInt: Integer;
    begin

    end;

    trigger OnAfterDelete()
    var
        myInt: Integer;
    begin

    end;
}
