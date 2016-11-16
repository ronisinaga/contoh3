::perintah-perintah yang dijalankan untuk agar maven project bisa diupload ke github server
::perintah pertama clean project
call mvn clean
::create package menggunakan mvn clean install atau mvn clean package
call mvn clean package
::hubungkan ke git server menggunakan username dan email
git config --global user.name "ronisinaga"
git config --global user.email "dragonif01@gmail.com"
::inisiasi fit
git init
::tambahkan seluruh file
git add *
::commit the project to github
git commit -m "commit the project"
::buat site yang berisikan dokumentasi dari maven project
call mvn site
::tambahkan seluruh file
git add *
::commit the project to github
git commit -m "commit the project again"
::tambahkan file ke github secara remote
git remote add origin http://github.com/ronisinaga/contoh3.git
::pull repository related to maven project in github
git pull origin master --allow-unrelated-histories
::push maven project to repository
git push origin master
::prepare the release maven project
call mvn release:prepare
::perform the release
call mvn release:perform
