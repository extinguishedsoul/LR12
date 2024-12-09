program SumOfNumbersWithFiveDivisors;
var n, i, sum: Int64; isPrime: array[1..1000000] of Boolean; 
procedure SieveOfEratosthenes(limit: LongInt);
var
  i, j: LongInt;
begin
  for i := 2 to limit do
    isPrime[i] := True;

  for i := 2 to trunc(sqrt(limit)) do
    if isPrime[i] then
      for j := i * i to limit do
        if j mod i = 0 then
          isPrime[j] := False;
end;
begin
  Assign(input, 'C:\Users\c_class\Pictures\Кудряшов испк 104\z3.txt');
  Reset(input);
  ReadLn(n);
  Close(input);
  sum := 0;
  SieveOfEratosthenes(1000000);
  for i := 2 to 1000000 do
  begin
    if isPrime[i] then
    begin
      if Int64(i) * Int64(i) * Int64(i) * Int64(i) <= n then
        sum := sum + Int64(i) * Int64(i) * Int64(i) * Int64(i)
      else
        Break;
  end;
  Assign(output, 'C:\Users\c_class\Pictures\Кудряшов испк 104\z4.txt');
  Rewrite(output);
  WriteLn(sum);
  Close(output);
end.