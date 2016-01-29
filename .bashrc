# Alias
alias wowtoken='curl -s '"'"'https://wowtoken.info/wowtoken.json'"'"' | jq '"'"'.update.EU.formatted.buy, .update.EU.formatted.updated'"'"' | { read precio; read fecha; echo;echo El precio actual del token en EU es: $precio; echo Ultima Actualizacion: $fecha;echo; }'
alias csharpNoche='mupdf -V '"'"'/home/sharred/Dropbox/New folder/CSharp.pdf'"'"''
alias bis='zathura ~/Libros/bis.pdf'

# Terminal
screenfetch
