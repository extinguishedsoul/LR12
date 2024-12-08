var inputFile, outputFile: Text; num, maxNum, minNum: Integer; firstLine: Boolean;
begin
  Assign(inputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\input.txt'); 
  Assign(outputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt');
  Reset(inputFile);
  Rewrite(outputFile);
  firstLine := True;
  while not Eof(inputFile) do
  begin
    Readln(inputFile, num);
    if firstLine then
    begin
      maxNum := num;
      minNum := num;
      firstLine := False;
    end
    else
    begin
      if num > maxNum then
        maxNum := num;
      if num < minNum then
        minNum := num;
    end;
  end;
  Writeln(outputFile, 'Минимальное число: ', minNum);
  Writeln(outputFile, 'Максимальное число: ', maxNum);
  Close(inputFile);
  Close(outputFile);
  Writeln('Минимальное и максимальное числа записаны в файл "output.txt".');
end.
