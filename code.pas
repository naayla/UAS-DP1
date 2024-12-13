uses crt;
type matriks=array[1..2,1..2] of real;
var
matriks1,matriks2: matriks;
i,j:integer;
o,k:string;
label 1;
procedure tambah(a,b:matriks);
var c: matriks;
begin
    for i:=1 to 2 do
        for j:=1 to 2 do
        c[i,j]:=a[i,j]+b[i,j];
    for i:= 1 to 2 do
    begin
        for j:=1 to 2 do
            write(c[i,j]:0:0,' ');
    writeln;
    end;
end;

procedure kurang(a,b:matriks);
var c: matriks;
begin
    for i:=1 to 2 do
        for j:=1 to 2 do
        c[i,j]:=a[i,j]-b[i,j];
    for i:= 1 to 2 do
    begin
        for j:=1 to 2 do
            write(c[i,j]:0:0,' ');
    writeln;
    end;
end;

procedure kali(a,b:matriks);
var c: matriks;
begin
    for i:=1 to 2 do
        for j:=1 to 2 do
        c[i,j]:=a[i,j]*b[j,i];
    for i:= 1 to 2 do
    begin
        for j:=1 to 2 do
            write(c[i,j]:0:0,' ');
    writeln;
    end;
end;

procedure bagi(a,b:matriks);
var
c,bi: matriks;
d:real;
begin
    d:=b[1,1]*b[2,2]-(b[1,2]*b[2,1]);
    bi[1,1]:=b[2,2];
    bi[2,2]:=b[1,1];
    bi[2,1]:=-b[2,1];
    bi[1,2]:=-b[1,2];
    for i:=1 to 2 do
        for j:=1 to 2 do
        bi[i,j]:=(1/d)*bi[i,j];
    for i:=1 to 2 do
        for j:=1 to 2 do
        c[i,j]:=a[i,j]*bi[j,i];
    for i:= 1 to 2 do
    begin
        for j:=1 to 2 do
            write(c[i,j]:4:4,' ');
    writeln;
    end;
end;

begin
while(true) do
begin
clrscr;
writeln('Program menghitung matriks 2x2');
writeln('Silahkan masukkan matriks 1');
read(matriks1[1,1]); readln(matriks1[1,2]);
read(matriks1[2,1]); readln(matriks1[2,2]);

writeln('Silahkan masukkan matriks 2');
read(matriks2[1,1]); readln(matriks2[1,2]);
read(matriks2[2,1]); readln(matriks2[2,2]);

1:
writeln('Operasi apa yang anda inginkan (+,-,*,/)');
readln(o);

case o of
    '+':tambah(matriks1,matriks2);
    '-':kurang(matriks1,matriks2);
    '*':kali(matriks1,matriks2);
    '/':bagi(matriks1,matriks2);
else writeln('Error');
goto 1;
end;

writeln('Apakah anda ingin mengulang program? (Y/N)');
readln(k);

if k='N' then
    break;
end;

writeln('Terima Kasih');
writeln('Sampai jumpa');
end.
