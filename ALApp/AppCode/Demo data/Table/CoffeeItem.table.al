tableextension 70030 CoffeeItem extends Item
{
    fields
    {
        field(70030; ShowInCoffeeMRApp; Boolean)
        {
            Caption = 'Show In Coffee MR App';
            DataClassification = CustomerContent;
        }
        field(70031; LongDescription; Text[500])
        {
            Caption = 'Long Description';
            DataClassification = CustomerContent;
        }
        field(70032; Model3D; Blob)
        {
            Caption = '3D model';
            DataClassification = CustomerContent;
        }
        field(70033; ItemHeight; Decimal)
        {
            Caption = 'Item Height';
            DataClassification = CustomerContent;
        }
        field(70034; ItemWidth; Decimal)
        {
            Caption = 'Item Width';
            DataClassification = CustomerContent;
        }
        field(70035; ItemDepth; Decimal)
        {
            Caption = 'Item Depth';
            DataClassification = CustomerContent;
        }
    }
}