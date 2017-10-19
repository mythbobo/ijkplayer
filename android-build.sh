cd config
rm module.sh
ln -s module-lite.sh module.sh
cd ..
./init-android-openssl.sh
cd android/contrib
./compile-openssl.sh clean
./compile-openssl.sh all
cd ../..
./init-android.sh
cd android/contrib
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh all
cd ..
./compile-ijk.sh all