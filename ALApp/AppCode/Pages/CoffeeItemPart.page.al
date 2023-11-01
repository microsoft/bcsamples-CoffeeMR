page 70031 CoffeeItemsListPart
{
    PageType = ListPart;
    SourceTable = Item;
    SourceTableView = where(IsAvialableForFieldWorker = const(true));

    layout
    {
        area(Content)
        {
            repeater(CustomerInformation)
            {
                field(ItemNumber; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(ItemName; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(ItemPrice; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}