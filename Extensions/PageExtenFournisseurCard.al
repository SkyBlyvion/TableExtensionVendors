pageextension 50012 VendorCardExtension extends "Vendor Card"
{
    layout
    {
        // Adding fields to the General group
        addlast(General)
        {
            field(Incoterm; Rec.Incoterm)
            {
                ApplicationArea = All;
                ToolTip = 'Affiche les Incoterms applicables au fournisseur.';
            }
        }

        // Adding fields to the Address & Contact group
        addlast("Address & Contact")
        {
            field("E-Mail 2"; Rec."E-Mail 2")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche une adresse e-mail secondaire pour le fournisseur.';
            }
        }

        // Adding fields to the Payments group
        addlast(Payments)
        {
            field(Remise; Rec.Remise)
            {
                ApplicationArea = All;
                ToolTip = 'Affiche la remise accordée par le fournisseur.';
            }
        }

        // Adding fields to the Receiving group
        addlast(Receiving)
        {
            field("Port destination"; Rec."Port destination")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche le port de destination des marchandises.';
            }

            field("Port of Loading"; Rec."Port of Loading")
            {
                ApplicationArea = All;
                ToolTip = 'Affiche le port de chargement des marchandises.';
            }
        }
    }

    actions
    {
        // Add custom actions here if necessary
    }
}
