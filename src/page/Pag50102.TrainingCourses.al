page 50102 "Training Courses"
{
    ApplicationArea = All;
    Caption = 'Training Courses', Comment = 'Schulungskurse';
    PageType = List;
    SourceTable = "Training Course";
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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
