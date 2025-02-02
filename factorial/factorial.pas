program Factorial;
uses crt;

function factorial(n: integer): integer;
var
  output: integer;

begin
  output := 1;
  if n > 1 then
    output := n * factorial(n - 1);

  factorial := output;
end;

begin
  writeln(factorial(6));
end.