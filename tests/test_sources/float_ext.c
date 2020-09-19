#include <mcinterface.h>

int main() {
    float num = 0.75;
    double exted;
    unsigned long val;

    exted = (double) num;
    val = *((long*) &exted);
    
    print((int) val);
    print((int) (val >> 32));
    
    num = 1.99999988079071044922;
    exted = (double) num;
    val = *((long*) &exted);
    
    print((int) val);
    print((int) (val >> 32));

    num = -0.75;
    exted = (double) num;
    val = *((long*) &exted);
    
    print((int) val);
    print((int) (val >> 32));
    
    num = -1.99999988079071044922;

    exted = (double) num;
    val = *((long*) &exted);
    
    print((int) val);
    print((int) (val >> 32));
}
