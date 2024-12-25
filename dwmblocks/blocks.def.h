//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"  ", "./status.sh memory",					5,		0},
	{" ", "./status.sh time",					1,		0},
	{" ", "./status.sh date",					5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
// static char delim[] = " | ";
static char delim[] = "  ";
static unsigned int delimLen = 5;
