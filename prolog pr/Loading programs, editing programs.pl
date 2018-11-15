edit(File) :- 
   name(File,FileString), 
   name('open -e ', TextEditString), %% Edit this line for your favorite editor
   append(TextEditString,FileString,EDIT),
   name(E,EDIT), 
   shell(E).

/* edit(bs.pl) */