cd /gsnova
if [["$VER" > "0.31.0" ]]; then 
   wget -O gsnova.tar.bz2 http://github.com/yinqiwen/gsnova/releases/download/$VER/gsnova_linux_amd64-$VER.tar.bz2 
   tar -xjvf gsnova.tar.bz2
   chmod +x gsnova 
  ./gsnova -cmd -server -http :$PORT -key $KEY -window $Window -window_refresh $Window_Refresh -user "*" -log console
elif [["$VER" = "0.31.0" ]]; then 
   wget -O gsnova.tar.bz2 http://github.com/yinqiwen/gsnova/releases/download/$VER/gsnova_server_linux_amd64-$VER.tar.bz2 
   tar -xjvf gsnova.tar.bz2
   chmod +x gsnova_server
   ./gsnova_server -http :$PORT -key $KEY -user "*" -log console
else
   wget -O gsnova.tar.bz2 http://github.com/yinqiwen/gsnova/releases/download/v$VER/gsnova_server_linux_amd64-v$VER.tar.bz2 
   tar -xjvf gsnova.tar.bz2
   chmod +x gsnova_server
   ./gsnova_server -http :$PORT -key $KEY -user "*" -log console
fi  
