#!/bin/bash

pkgbuilds=($(find . -type f -name "PKGBUILD" -not -path "./tcet-linux-pkgbuild/installer/calamares-3.2.62/*"))
 
for pkgbuild in "${pkgbuilds[@]}"
do
  echo "Updating $pkgbuild"

  cp "$pkgbuild" "${pkgbuild}.orig"

  updpkgsums "$pkgbuild"

  rm "${pkgbuild}.orig"

  find . -type f -name "*.tar.gz" -not -path "./tcet-linux-pkgbuild/installer/calamares-3.2.62/*" -delete 
done
