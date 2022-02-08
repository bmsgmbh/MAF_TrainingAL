page 50100 "Training Participants"
{
    ApplicationArea = All;
    Caption = 'Training Participants', Comment = 'Schulung Teilnehmer';
    PageType = List;
    SourceTable = "Training Participant";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Birthday; Rec.Birthday)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
