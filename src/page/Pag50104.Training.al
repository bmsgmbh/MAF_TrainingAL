page 50104 "Training"
{
    Caption = 'Training', Comment = 'Schulung';
    PageType = Document;
    SourceTable = "Training Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General', Comment = 'Allgemein';

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
            }
            group(Date)
            {
                Caption = 'Date', Comment = 'Datum';

                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
            }
            part(Lines; "Training Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Training No." = field("No.");
            }
        }
    }
}
