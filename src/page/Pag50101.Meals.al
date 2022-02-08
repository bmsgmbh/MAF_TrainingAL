page 50101 "Meals"
{
    ApplicationArea = All;
    Caption = 'Meals', Comment = 'Gerichte';
    PageType = List;
    SourceTable = Meal;
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
            }
        }
    }
}
