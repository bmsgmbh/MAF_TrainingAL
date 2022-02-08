table 50104 "Training Line"
{
    DataClassification = CustomerContent;
    Caption = 'Training Line', Comment = 'Schulungszeile';

    fields
    {
        field(1; "Training No."; Code[10])
        {
            Caption = 'Training No.', Comment = 'Schulung Nr.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.', Comment = 'Zeilennr.';
            DataClassification = CustomerContent;
        }
        field(3; "Training Participant Code"; Code[10])
        {
            Caption = 'Training Participant Code', Comment = 'Schulungsteilnehmer Code';
            DataClassification = CustomerContent;
            TableRelation = "Training Participant".Code;
        }
        field(4; "Training Participant Name"; Text[50])
        {
            Caption = 'Training Participant Name', Comment = 'Schulungsteilnehmer Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Training Participant".Name where(Code = field("Training Participant Code")));
        }
    }

    keys
    {
        key(PK; "Training No.", "Line No.")
        {
            Clustered = true;
        }
    }

}