program InsertionSort;
uses crt;

type
  IntegerArray = array of Integer;

var
  testArray: IntegerArray;

procedure printArray(arrToPrint: IntegerArray);
var
  last, n: integer;

begin
  last := Length(arrToPrint) - 1;
  for n := 0 to last do
  begin
    write(arrToPrint[n]);
    if n <> last then write(', ');
  end;
  writeln();
end;


procedure insertionSort(a: IntegerArray);
var
  current, i, j: integer;  

begin
  for i := 1 to Length(a) - 1 do
  begin
    current := a[i];
    j := i - 1;
    while (j >= 0) and (a[j] > current) do
    begin
      a[j+1] := a[j];
      j := j - 1;
    end;
    a[j+1] := current;
  end;
end;

begin
  testArray := [1, 8, 28, 18, 2, 8, 4, 5, 9, 0];
  printArray(testArray);
  insertionSort(testArray);
  printArray(testArray);
end.