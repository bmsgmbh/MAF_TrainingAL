page 50103 "Training List"
{
    ApplicationArea = All;
    Caption = 'Training List', Comment = 'Schulung Übersicht';
    PageType = List;
    SourceTable = "Training Header";
    UsageCategory = Lists;
    CardPageId = 50104;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Training Course Code"; Rec."Training Course Code")
                {
                    ApplicationArea = All;
                }
                field("Training Course Description"; Rec."Training Course Description")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
