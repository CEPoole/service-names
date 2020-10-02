#!/bin/bash


rm README.md
touch README.md

print(){
	echo "$1" >> README.md
}

parseToFile() {
	jq -r "$1" | sed 's/^/- /' >> README.md
}

getServices() {
	services=`curl "$1"`
	print "### Services"
    echo $services | parseToFile '.Service | .[]'
	print "### Libraries"
    echo $services | parseToFile '.Library | .[]'
	print "### Other"
    echo $services | parseToFile '.Other | .[]'
}

print "# Edinburgh"
getServices "https://catalogue.tax.service.gov.uk/api/teams/DDCE%20Live%20Service"

print "# Telford" 
print "## BTA" 
getServices "https://catalogue.tax.service.gov.uk/api/teams/BTA"

print "## X-men and Brotherhood" 
getServices "https://catalogue.tax.service.gov.uk/api/teams/DDCT%20Live%20Service"

print "# Newcastle" 
getServices "https://catalogue.tax.service.gov.uk/api/teams/DDCN%20Live%20Service"

print "# Worthing" 
getServices "https://catalogue.tax.service.gov.uk/api/teams/DDCW%20Live%20Services"
