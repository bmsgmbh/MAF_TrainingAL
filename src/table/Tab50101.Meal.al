table 50101 "Meal"
{
    DataClassification = CustomerContent;
    Caption = 'Meal', Comment = 'Gericht';
    LookupPageId = 50101;
    DrillDownPageId = 50101;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code', Comment = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Description"; Text[50])
        {
            Caption = 'Description', Comment = 'Beschreibung';
            DataClassification = CustomerContent;
        }
        field(3; "Vegan"; Boolean)
        {
            Caption = 'Vegan', Comment = 'Vegan';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

}