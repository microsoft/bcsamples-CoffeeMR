page 70031 CoffeeItemsListPart
{
    PageType = ListPart;
    SourceTable = Item;
    SourceTableView = where(ShowInCoffeeMRApp = const(true));

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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(UnitPrice; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                }
                field(ItemHeight; Rec.ItemHeight)
                {
                    ApplicationArea = All;
                }
                field(ItemWidth; Rec.ItemWidth)
                {
                    ApplicationArea = All;
                }
                field(ItemDepth; Rec.ItemDepth)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}