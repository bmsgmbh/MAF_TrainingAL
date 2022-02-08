page 50105 "Training Subpage"
{
    Caption = 'Training Subpage', Comment = 'Zeilen';
    PageType = ListPart;
    SourceTable = "Training Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Training Participant Code"; Rec."Training Participant Code")
                {
                    ApplicationArea = All;
                }
                field("Training Participant Name"; Rec."Training Participant Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
