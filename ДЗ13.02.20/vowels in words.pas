Program lab8_2;
Uses Crt;
const
vowels = ['a','e','i','o','u','y'];

var
s: string;
all_words, this_word:set of char;
i: integer;
ch: char;

begin
clrScr;
readln(s);

all_words := vowels;

i := 1;
while i < length(s) do begin
this_word:= [];

while (i < length(s)) and not(s[i] in ['.', ',']) do begin
if s[i] in vowels then include(this_word, s[i]);
inc(i);
end;

inc(i);
all_words := all_words * this_word;
end;

for ch := #0 to #255 do
if ch in all_words then write(ch);
end.