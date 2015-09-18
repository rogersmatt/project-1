# Assingment: Project 1
# Author: Matt Rogers
# Version: 9.16.2015

use 5.14.1;
use warnings;

my ($lotNumber, $numberBeds, $numberBathrooms, $garageSize, $totalPrice);
use constant LANGUAGE => "English";
use constant BasePrice => 50000;
use constant BedroomPrice => 17000;
use constant BathroomPrice => 12500;
use constant GaragePrice => 6000;

sub main {
	setLotNumber();
	setNumberBeds();
	setNumberBathrooms();
	setGarageSize();
	setTotalPrice();
	printResults();
}

main();

sub setLotNumber {
	print "\n\nWhat is your lot number? ";
	chomp ($lotNumber = <STDIN>); 
}	

sub setNumberBeds {
	print "\n\nHow many bedrooms would you like? ";
	chomp ($numberBeds = <STDIN>);
}

sub setNumberBathrooms {
	print "\n\nHow many bathrooms would you like? ";
	chomp ($numberBathrooms = <STDIN>);
}

sub setGarageSize {
	print "\n\nHow many cars do you want your garage to hold? ";
	chomp ($garageSize =<STDIN>);
}

sub setTotalPrice {
	$totalPrice = BasePrice + ($numberBeds * BedroomPrice) + ($numberBathrooms * BathroomPrice) + ($garageSize * GaragePrice);
}

sub printResults {
	system("cls");
	print "\n\nYou requested a house on lot number $lotNumber with $numberBeds bedrooms and $numberBathrooms bathrooms and a garage that can hold $garageSize cars your total is $totalPrice. \n";
	print "your primaty language is " . LANGUAGE .".\n";
}