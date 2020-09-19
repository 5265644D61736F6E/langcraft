#include <mcinterface.h>

int main() {
    float num;
    
    num = (float) 10UL;
    print(*((int*) &num));
    
    num = (float) 0xA00000000UL;
    print(*((int*) &num));
}
