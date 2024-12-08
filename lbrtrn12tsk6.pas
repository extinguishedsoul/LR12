var inputFile, outputFile: Text; currentLine: string;
begin
  Assign(inputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\input.txt');
  Assign(outputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\chtt.txt');
  Reset(inputFile);
  Rewrite(outputFile);
  while not Eof(inputFile) do
  begin
    Readln(inputFile, currentLine);
    if Trim(currentLine) <> '' then
      Writeln(outputFile, currentLine);
  end;
  Close(inputFile);
  Close(outputFile);
  Writeln('Пустые строки были удалены.Новый файл создан.');
end.
