table 50103 "Training Header"
{
    DataClassification = CustomerContent;
    Caption = 'Training Header', Comment = 'Schulungskopf';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.', Comment = 'Nr.';
            DataClassification = CustomerContent;
        }
        field(2; "Training Course Code"; Code[10])
        {
            Caption = 'Training Course Code', Comment = 'Trainingskurs Code';
            DataClassification = CustomerContent;
            TableRelation = "Training Course".Code;
        }
        field(3; "Training Course Description"; Text[50])
        {
            Caption = 'Training Course Description', Comment = 'Trainingskurs Beschreibung';
            DataClassification = CustomerContent;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date', Comment = 'Start Datum';
            DataClassification = CustomerContent;
        }
        field(5; "End Date"; Date)
        {
            Caption = 'End Date', Comment = 'Ende Datum';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}