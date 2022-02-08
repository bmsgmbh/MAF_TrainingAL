table 50102 "Training Course"
{
    DataClassification = CustomerContent;
    Caption = 'Training Course', Comment = 'Schulungskurs';
    LookupPageId = 50102;
    DrillDownPageId = 50102;

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
        field(3; "Duration"; DateFormula)
        {
            Caption = 'Duration', Comment = 'Dauer';
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