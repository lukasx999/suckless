#define SCRIPT "~/suckless/dwmblocks/status.sh "

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/    /*Command*/        /*Update Interval*/    /*Update Signal*/
    { " ",  SCRIPT "capslock",                1,        1 },
    // { " ", SCRIPT "weather",                 5,        0 },
    { " ", SCRIPT "disk",                    5,        0 },
    { " ", SCRIPT "memory",                  5,        0 },
    { " ", SCRIPT "time",                    1,        0 },
    { " ", SCRIPT "date",                    5,        0 },
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
// static char delim[] = " | ";
static char delim[] = "  ";
static unsigned int delimLen = 5;
