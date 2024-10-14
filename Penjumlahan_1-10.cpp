#include <iostream>
#include <cstdlib>
using namespace std;

int main() {
    system("cls");
    cout << "===========================" << endl;
    int total = 1;
    int i = 2;

    do {
        total += i;
        i++;
        cout << "Hasil sementara = " << total << endl;
    } while (i <= 10);

    cout << "--------------------------" << endl;
    cout << "\nTotal penjumlahan 1 sampai 10 adalah = " << total << endl;

    return 0;
}