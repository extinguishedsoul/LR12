var filetext: Text; i, j, N, K: Integer;
begin
  Write('Введите количество строк (N): ');
  Readln(N);
  Write('Введите количество символов в строке (K): ');
  Readln(K);
  Assign(filetext, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt');
  Rewrite(filetext);
  for i := 1 to N do
  begin
    for j := 1 to K do
      Write(filetext, '*');
    Writeln(filetext);
  end;
  Close(filetext);
  Writeln('Файл успешно создан и записан. Проверьте файл "C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt".');
end.
