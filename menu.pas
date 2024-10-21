program BangunRuang;
uses crt, math;

var
  pilihan, subPilihan: string;
  r, sisi, alas, tinggi, tinggiPrisma: integer;
  hasil: real;
  valid: boolean;

function IsNumeric(const s: string): boolean;
var
  i: integer;
begin
  IsNumeric := true;
  for i := 1 to Length(s) do
    if not (s[i] in ['0'..'9']) then
    begin
      IsNumeric := false;
      Exit;
    end;
end;

begin
  while True do
  begin
    clrscr;
    writeln('==============================');
    writeln('Pilih Bangun Ruang');
    writeln('==============================');
    writeln('1. Bola');
    writeln('2. Kubus');
    writeln('3. Prisma');
    writeln('4. Keluar');
    writeln('------------------------------');
    write('Masukan pilihan anda: ');
    readln(pilihan);

    // Validasi input untuk pilihan utama
    if (pilihan <> '1') and (pilihan <> '2') and (pilihan <> '3') and (pilihan <> '4') then
    begin
      clrscr;
      writeln('Input anda Invalid!');
      readln;
      continue;  // Kembali ke awal loop
    end;

    if pilihan = '1' then
    begin
      repeat
        clrscr;
        writeln('==============================');
        writeln('Pilih Jenis Perhitungan Bola');
        writeln('==============================');
        writeln('1. Hitung Luas');
        writeln('2. Hitung Volume');
        writeln('3. Kembali ke menu utama');
        writeln('------------------------------');
        write('Masukan pilihan anda: ');
        readln(subPilihan);

        // Validasi input untuk sub-menu Bola
        if (subPilihan <> '1') and (subPilihan <> '2') and (subPilihan <> '3') then
        begin
          clrscr;
          writeln('Input anda Invalid!');
          readln;
          continue;  // Kembali ke awal loop
        end;

        if subPilihan = '1' then
        begin
          clrscr;
          write('Masukan nilai jari-jari bola: ');
          readln(r);
          hasil := 4 * pi * sqr(r);
          writeln('==============================');
          writeln('Luas permukaan bola: ', hasil:0:2);
          writeln('------------------------------');
          readln;
        end
        else if subPilihan = '2' then
        begin
          clrscr;
          write('Masukan nilai jari-jari bola: ');
          readln(r);
          hasil := (4 / 3) * pi * r * r * r;
          writeln('==============================');
          writeln('Volume bola: ', hasil:0:2);
          writeln('------------------------------');
          readln;
        end;
      until subPilihan = '3';
    end
    else if pilihan = '2' then
    begin
      repeat
        clrscr;
        writeln('==============================');
        writeln('Pilih Jenis Perhitungan Kubus');
        writeln('==============================');
        writeln('1. Hitung Luas');
        writeln('2. Hitung Volume');
        writeln('3. Kembali ke menu utama');
        writeln('------------------------------');
        write('Masukan pilihan anda: ');
        readln(subPilihan);

        // Validasi input untuk sub-menu Kubus
        if (subPilihan <> '1') and (subPilihan <> '2') and (subPilihan <> '3') then
        begin
          clrscr;
          writeln('Input anda Invalid!');
          readln;
          continue;  // Kembali ke awal loop
        end;

        if subPilihan = '1' then
        begin
          clrscr;
          write('Masukan panjang sisi kubus: ');
          readln(sisi);
          hasil := 6 * sqr(sisi);
          writeln('==============================');
          writeln('Luas permukaan kubus: ', hasil:0:2);
          writeln('------------------------------');
          readln;
        end
        else if subPilihan = '2' then
        begin
          clrscr;
          write('Masukan panjang sisi kubus: ');
          readln(sisi);
          hasil := power(sisi, 3);
          writeln('==============================');
          writeln('Volume kubus: ', hasil:0:2);
          writeln('------------------------------');
          readln;
        end;
      until subPilihan = '3';
    end
    else if pilihan = '3' then
    begin
      repeat
        clrscr;
        writeln('==============================');
        writeln('Pilih Jenis Perhitungan Prisma');
        writeln('==============================');
        writeln('1. Hitung Luas');
        writeln('2. Hitung Volume');
        writeln('3. Kembali ke menu utama');
        writeln('------------------------------');
        write('Masukan pilihan anda: ');
        readln(subPilihan);

        // Validasi input untuk sub-menu Prisma
        if (subPilihan <> '1') and (subPilihan <> '2') and (subPilihan <> '3') then
        begin
          clrscr;
          writeln('Input anda Invalid!');
          readln;
          continue;  // Kembali ke awal loop
        end;

        if subPilihan = '1' then
        begin
          clrscr;
          write('Masukan alas segitiga alas prisma: ');
          readln(alas);
          write('Masukan tinggi segitiga alas prisma: ');
          readln(tinggi);
          write('Masukan tinggi prisma: ');
          readln(tinggiPrisma);
          hasil := 2 * (0.5 * alas * tinggi) + (3 * alas * tinggiPrisma);
          writeln('==============================');
          writeln('Luas permukaan prisma: ', hasil:0:2);
          writeln('------------------------------');
          readln;
        end
        else if subPilihan = '2' then
        begin
          clrscr;
          write('Masukan alas segitiga alas prisma: ');
          readln(alas);
          write('Masukan tinggi segitiga alas prisma: ');
          readln(tinggi);
          write('Masukan tinggi prisma: ');
          readln(tinggiPrisma);
          hasil := 0.5 * alas * tinggi * tinggiPrisma;
          writeln('==============================');
          writeln('Volume prisma: ', hasil:0:2);
          writeln('------------------------------');
          readln;
        end;
      until subPilihan = '3';
    end
    else if pilihan = '4' then
    begin
      clrscr;
      writeln('Terimakasih sudah menggunakan program ini :)');
      break;
    end;
  end;
end.
