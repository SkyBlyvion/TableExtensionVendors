tableextension 50011 TableExtensionFournisseur extends Vendor
{
    fields
    {
        // Champ pour la date de création de la fiche fournisseur
        field(50000; "Date de création"; Date)
        {
            DataClassification = SystemMetadata; // Classification des données comme métadonnées système
            Caption = 'Date de création de la fiche'; // Légende pour le champ
            Description = 'FOURNISSEUR LN 05/06/24 REV24'; // Description du champ
        }

        // Champ pour les Incoterms
        field(50001; "Incoterm"; Enum "IncotermEnum")
        {
            DataClassification = OrganizationIdentifiableInformation; // Classification des données comme informations identifiables de l'organisation
            Caption = 'Incoterms'; // Légende pour le champ
            Description = 'INCOTERM LN 05/06/24 REV24'; // Description du champ
        }

        // Champ pour la remise
        field(50002; "Remise"; Decimal)
        {
            DataClassification = AccountData; // Classification des données comme données de compte
            Caption = 'Remise'; // Légende pour le champ
            Description = 'FOURNISSEUR LN 05/06/24 REV24'; // Description du champ
        }

        // Champ pour le port de destination
        field(50003; "Port destination"; Text[20])
        {
            DataClassification = OrganizationIdentifiableInformation; // Classification des données comme informations identifiables de l'organisation
            Caption = 'Port destination'; // Légende pour le champ
            Description = 'FOURNISSEUR LN 05/06/24 REV24'; // Description du champ
        }

        // Champ pour le port de chargement
        field(50004; "Port of Loading"; Text[20])
        {
            DataClassification = OrganizationIdentifiableInformation; // Classification des données comme informations identifiables de l'organisation
            Caption = 'Port of Loading'; // Légende pour le champ
            Description = 'FOURNISSEUR LN 05/06/24 REV24'; // Description du champ
        }

        // Champ pour le second email
        field(50005; "E-Mail 2"; Text[80])
        {
            DataClassification = EndUserIdentifiableInformation; // Classification des données comme informations identifiables de l'utilisateur final
            Caption = 'E-Mail 2'; // Légende pour le champ
            Description = 'FOURNISSEUR LN 05/06/24 REV24'; // Description du champ
        }
    }

    keys
    {
        // Ajouter les modifications aux clés ici si nécessaire
    }

    fieldgroups
    {
        // Ajouter les modifications aux groupes de champs ici si nécessaire
    }

    var
        myInt: Integer; // Exemple de variable déclarée dans l'extension de table
}
