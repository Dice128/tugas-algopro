program Penjumlahan;
uses Crt;

var
    i, total: integer;

begin
    ClrScr;
    i := 2;
    total := 1;

    writeln('=============================');
    repeat
        total := total + i;
        i := i + 1;
        writeln('Hasil sementara = ', total);
    until i > 10;

    writeln('------------------------------');
    writeln;
    writeln('Total penjumlahan 1 sampai 10 adalah = ', total);
end.