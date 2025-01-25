program Factors;
uses crt;

const
number = 100;

type 
IntegerSet = set of 1..number;

var
i: integer;
factorSet: IntegerSet;

begin
    factorSet := [1, number];
    for i := 2 to number - 1 do
    begin
        if (number mod i) = 0 then
        begin
            factorSet := factorSet + [i, number div i]
        end;
    end;

    for i in factorSet do
        writeln(i);
end.