table 50100 "Training Participant"
{
    DataClassification = CustomerContent;
    Caption = 'Training Participant', Comment = 'Schulung Teilnehmer';
    LookupPageId = 50100;
    DrillDownPageId = 50100;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code', Comment = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name', Comment = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Birthday"; Date)
        {
            Caption = 'Birthday', Comment = 'Geburtstag';
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