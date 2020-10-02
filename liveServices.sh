#!/bin/bash


rm ListOfServices.md
touch ListOfServices.md

echo "#Edinburgh" >> ListOfServices.md
curl "https://catalogue.tax.service.gov.uk/api/teams/DDCE%20Live%20Service" | jq -r '.Service | .[]' >> ListOfServices.md

echo "#Telford" >> ListOfServices.md
echo "##BTA" >> ListOfServices.md
curl "https://catalogue.tax.service.gov.uk/api/teams/BTA" | jq -r '.Service | .[]' >> ListOfServices.md

echo "##X-men and Brotherhood" >> ListOfServices.md
curl "https://catalogue.tax.service.gov.uk/api/teams/DDCT%20Live%20Service" | jq -r '.Service | .[]' >> ListOfServices.md

echo "#Newcastle" >> ListOfServices.md
curl "https://catalogue.tax.service.gov.uk/api/teams/DDCN%20Live%20Service" | jq -r '.Service | .[]' >> ListOfServices.md

echo "#Worthing" >> ListOfServices.md
curl "https://catalogue.tax.service.gov.uk/api/teams/DDCW%20Live%20Services" | jq -r '.Service | .[]' >> ListOfServices.md