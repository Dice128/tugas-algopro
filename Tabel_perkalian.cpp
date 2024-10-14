#include <iostream>
#include <iomanip> 
#include <cstdlib>

using namespace std;

int main() {
    system("cls");
    cout << "\t      Tabel Perkalian 1 Sampai 10\n" << endl;

    cout << "\t"; 
    for (int j = 1; j <= 10; ++j) {
        cout << setw(4) << j;
    }
    cout << endl;
    cout << "\t";
    for (int j = 1; j <= 10; ++j) {
        cout << setw(4) << "---";
    }
    cout << endl;

    for (int i = 1; i <= 10; ++i) {
        cout << setw(5) << i << "  |";

        for (int j = 1; j <= 10; ++j) {
            cout << setw(4) << (i * j);
        }
        cout << endl; 
    }
    cout << "\n" << endl;
    
    return 0; 
}
