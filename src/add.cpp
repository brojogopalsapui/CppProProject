#include "add.h"

unsigned long add(unsigned int integer1, unsigned int integer2) {
    unsigned long xorResult = integer1 ^ integer2;
    unsigned long andResult = integer1 & integer2;
    unsigned long temp;

    while (andResult != 0) {
        andResult <<= 1;
        temp = xorResult ^ andResult;
        andResult &= xorResult;
        xorResult = temp;
    }
    return xorResult;
}

