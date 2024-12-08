var inputFile, tempFile: Text; currentLine: string; lineNumber, K: Integer;
begin
  Write('Введите номер строки (K), перед которой нужно вставить пустую строку: ');
  Readln(K);
  Assign(inputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt');
  Assign(tempFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\temp.txt');
  Reset(inputFile);
  Rewrite(tempFile);
  lineNumber := 0;
  while not Eof(inputFile) do
  begin
    Inc(lineNumber);
    Readln(inputFile, currentLine);
    if lineNumber = K then
      Writeln(tempFile, ''); 
    Writeln(tempFile, currentLine);
  end;
  Close(inputFile);
  Close(tempFile);
  Erase(inputFile);
  Rename(tempFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt');
  Writeln('Операция завершена. Проверьте файл "c:\input.txt".');
end.
  