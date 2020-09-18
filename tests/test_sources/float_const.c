#include <mcinterface.h>

int main() {
    float num = 0.5;
    print(*((int*) &num));
}
