var filetext: Text; S: string;
begin
  Write('Введите строку, которую нужно добавить в файл: ');
  Readln(S);
  Assign(filetext, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt'); 
  Append(filetext); 
  Writeln(filetext, S);
  Close(filetext);

  Writeln('Строка добавлена в конец файла "C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn12\output.txt".');
end.
