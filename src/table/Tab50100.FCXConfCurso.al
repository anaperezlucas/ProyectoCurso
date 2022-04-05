table 50100 "FCXConfCurso"
{
    //Propiedas de tabla utilizadas normalmente:
    Caption = 'Configuración del curso';
    DataClassification = ToBeClassified;
    //DrillDownPageId: páginas de tipo lista, parecido a LookupPageId pero se utiliza con campos calculados (Ej: Saldo de un cliente).
    //LookupPageId: páginas de tipo lista que muestra de un campo cuando se le da a Avanzado
    //PasteIsValid: buscar uso.
    //ExternalName: sirve para conectar con otra tabla que indicaríamos en esta propiedad el nombre.
    //ExternalSchema: sirve para conectar con otra base de datos. Por ejemplo, cuando queramos migrar datos.
    //TableType: utilizar para incluir las tablas en el common data service (CDS). Por defecto, tiene el valor Normal. También se utiliza mucho el valor ExternalSQL.

    fields
    {
        field(1; FCXClave; Code[20])
        {
            Caption = 'FCXClave';
            DataClassification = ToBeClassified;
        }
        field(2; FCXTextoPrueba; Text[250])
        {
            Caption = 'Texto de prueba';
            DataClassification = ToBeClassified;
            //Las siguientes propiedas permiten indicar el estado del campo. Aunque es recomendable cambiar el nombre para utilizarlo en vez de crear un campo nuevo.
            //ObsoleteState = Pending;
            //ObsoleteReason='Se va a cambiar por otro campo';
            //ObsoleteTag='20220330';

            //disparador que duplica el valor introducido en este campo en el campo introducido en el trigger.
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                Rec.TextoEnMayus := Rec.FCXTextoPrueba.ToUpper();
            end;
        }
        field(3; FCXNumOrden; Integer)
        {
            Caption = 'Número de orden';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(4; FCXFecha; Date)
        {
            Caption = 'Fecha';
            DataClassification = ToBeClassified;
            //Propiedades de campos utilizadas normalmente:
            //AutoIncrement: para incrementar un campo integer. Cada vez que se inserte un registro, automáticamente incrementa en 1 este campo.
            //BlankNumbers: muestra los números de un rango para mostrarlos en blanco. Por ejemplo, para los 0.
            //CharAllowed: para indicar los caracteres que se solo permite.
            //DecimalPlaces: para indicar cuantos decimales me va a mostrar. (Pasar primero por función que redondee los decimales).
        }
        field(5; FCXImporte; Decimal)
        {
            Caption = 'Importe';
            DataClassification = ToBeClassified;
            //DecimalPlaces = 0 : 0; //Muestra cero decimales.
            DecimalPlaces = 2 : 2; //Muestra dos decimales.
            InitValue = 1;
        }


        //PROPIEDADES DE CAMPOS:
        //FIELDCLASS
        //Por defecto = Normal
        //El valor FlowField (Ej:saldo cliente) de forma automática hace el cálculo con una fórmula introducida de antermano.
        //El valor FlowFilter (Ej: saldo cliente del mes pasado) calcula en función de los filtros que se establecen a partir de la fórmula de los flowfilters

        //INITVALUE: Para establecer un valor inicial

        //NOTBLANK: para no permitir el valor en blanco

        //NUMERIC: para introducir solo números

        //TABLE RELATION: para enlazar un campo con otra tabla

        field(6; CodCliente; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cód. cliente';
            TableRelation = Customer."No.";
        }
        field(7; TextoEnMayus; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Texto en mayúsculas';
            trigger OnLookup()
            var
                myInt: Integer;
            begin
                Message('Se ha pulsado LookUp en este campo');
            end;
        }

    }
    keys
    {
        key(PK; FCXClave)
        {
            Clustered = true;
        }

    }

    //fieldgroups: en la tabla desplegable de un campo, los campos que se muestran como columnas.
    //El primer valor tiene que ser o:
    //- DropDown: sería el típico de todos los campos desplegables
    //- Brick: lo muestra en tipo lista o icono
    //Ejemplos de los dos tipos se pueden ver en el código de la tabla clientes
    //Solo se puede crear uno de cada tipo como máximo
    fieldgroups
    {
        fieldgroup(DropDown; FCXClave, CodCliente)
        {
        }
    }

    //Tanto los procedimientos como las funciones se crean como procedure.
    //proedimiento:
    procedure Saluda()
    var
        myInt: Integer;
    begin
        Message('Hola.');
    end;
    //función:
    procedure NumeroTabla(): Integer
    var
        myInt: Integer;
    begin
        exit(50100)
    end;

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        Message('Se ha insertado el registro ' + Rec.FCXClave);
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin
        Message('Se ha modificado el registro ' + Rec.FCXClave);
    end;


}
