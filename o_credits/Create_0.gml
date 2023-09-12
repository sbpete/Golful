block1 = "dedicated to Marley";
block2 = "a game by Sam P.";

backers_list = [
"Jordan Mouse", 
"Christian K",
"Jai Orchard", 
"Thavey Kelli Kasey", 
"SK",
"Bailey Anderson",
"Felipe Dalle",
"Wren",
"Dejan Radoman",
"Lewis Gardiner",
"Ulises Martinez",
"HokukuH",
"tzbear",
"John -goombaknight2- Rogers"
];

backers_string = "";
for (var i = 0; i < array_length(backers_list); i++) {
	backers_string += "\n" + backers_list[i];
}

block3 = "Backers\n" + backers_string;
credits = [block1, block2, block3];

var seconds = 60;
alarm[0] = seconds * 60;