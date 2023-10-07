gitcommand=$(git add . ;
             git commit -m "Updated Shasum" ;
             git push)
if [ "$gitcommand" != "1" ]; then
    echo "Done"
fi