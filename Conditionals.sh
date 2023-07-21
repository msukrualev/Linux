Koşul Kuralları
-----------------------------------------------------  
1) INTEGER Karşılaştırma

-eq  if [[ "$a" -eq "$b" ]]   # Eşit ise (is equal to )
-ne  if [[ "$a" -ne "$b" ]]   # Eşit değil ise (is not equal to)
-gt  if [[ "$a" -gt "$b" ]]   # Büyük ise (is greater than )
-ge  if [[ "$a" -ge "$b" ]]   # Büyük veya eşit ise (is greater than or equal to)
-lt  if [[ "$a" -lt "$b" ]]   # Küçük ise (is less than)
-le  if [[ "$a" -le "$b" ]]   # Küçük veya eşit ise (is less than or equal to)

<    if (("$a" < "$b"))     # Küçük (is less than)
<=   if (("$a" <= "$b"))    # Küçük eşit (is less than or equal to)
>    if (("$a" > "$b"))     # Büyük (is greater than)
>=   if (("$a" >= "$b"))    # Büyük eşit (is greater than or equal to)

2) STRING KARŞILAŞTIRMA

=   if [[ "$a" = "$b" ]]      # Eşit ise (is equal to)
==  if [[ "$a" == "$b" ]]     # Eşit ise (is equal to)
!=  if [[ "$a" != "$b" ]]     # Eşit değil ise (is not equal to)
<   if [[ "$a" < "$b" ]]   # Küçükse - Alfabatik olarak (is less than, in ASCII alphabetical order)
>   if [[ "$a" > "$b" ]]   # Büyükse - Alfabatik olarak (is greater than, in ASCII alphabetical order)
-z  if [[ -z "$String" ]]     # Değer boş ise (string is null, that is, has zero length)
-n  if [[ -n "$String" ]]     # Değer boş değil ise (string is not null.)

