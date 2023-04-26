int main() {
    int a = 10;
    int b = 20;
    int i = 0;

    for (i; i <= 2; i++) {
        a = a+b;
    }

    while (i <= 3) {
        a = a+b;
        b = b+i;
        i += 1;
    }

    while (i <= 10) {
        a -= 1;
        i += 1;
    }

    if (a > 20) {
        a = a+2;
    } else {
        a = a-2;
    }

    return 0;
}