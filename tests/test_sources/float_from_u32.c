#include <mcinterface.h>

int main() {
    float num;
    
    num = (float) 10U;
    print(*((int*) &num));
    
    num = (float) 16777226U;
    print(*((int*) &num));
}
