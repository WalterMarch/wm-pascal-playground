program FizzBuzz;
uses crt;

const
max = 100;

var
i: integer;
output: string;

begin
    for i := 1 to max do
      begin
        output := '';
        if (i mod 3) = 0 then
            output := 'Fizz';

        if (i mod 5) = 0 then
            output := output + 'Buzz';

        if (output = '') then
            writeln(i)
        else
            writeln(output);
    end;
end.