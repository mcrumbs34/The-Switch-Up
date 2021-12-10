/// @description Insert description here
// You can write your code in this editor
if (state == "casual") {
	state = "professional";	
} else {
	state = "casual";	
}

switch (level) {
	case 1:	
	levelOneChangeAvailable--;
	break;
	case 2:
	levelTwoChangeAvailable--;
	break;
	case 3:
	levelThreeChangeAvailable--;
	break;
}