#! /bin/bash

chronos Greek god 

Zamanlanmış Görevler(Cron Jobs)


http://crontab.guru üzerinden bazı denemeler yapabilirsiniz


cron jobs -> Zamanlanmış görevler


5 tane parametre girmek gerekmektedir.

/etc
/var/spool/cron/crontabs


05        04        
dakika saat 


*:
ayın kaçıncı günü olduğu 1 ile 31 arasında


*:
ayın kendisi -> jan-dec


*:
haftanın kaçıncı günü -> san-sat


Eğer tüm parametreler yerinde * varsa bu tüm günlerde/aylarda/ayın tüm günlerinde/saatlerinde dakikalarında çalışması demektir.


Örnek:


ilgili script dosyasının hergün saat 4 ü 5 geçe çalışmasını istiyoruz


05 04 * * *




Örnek:
00 * * *  *
her saat başında çalış demektir


Örnek:


15 * * * *
her saatin 15 'inci dakikasında çalıştır


next butonu ile sonraki çalışmaların ön izlemesini görebiliriz




Örnek:
2 günde 1 olsun ve 15:00 da çalışsın


00 15 */2 * *


*/2 -> 2 li adımlarla sürekli çalıştır, demektir


Örnek:
Eğer
00 15 2 * * -> haftanın tüm günlerinde, tüm aylarda, ayın sadece 2. gününde saat 15:00 da çalıştır demektir


00 15 */5 * * -> 5 yazarsak 5 günde bir çalışsın demektir


Örnek:
00 15 5,10,15 * * -> haftanın her gününde, tüm aylarda, 5,10 ve 15. günlerinde, saat 15 'te, 00 dakikasında çalıştırsın demektir




next butonu -> önizleme için kullanılır


Örnek:


00 15,20,05 */2 * * -> haftanın tüm günlerinde, tüm aylarda, ayın sadece 2. gününde saat 15:00,20:00,05:00 da çalıştır demektir




Örnek: Bir dosyanın yedeğini saat 0,4,11 i 25 geçe alsın işlemi için parametreleri belirleyiniz.
25 0,4,11 * * *


#####



Crontab dosyası nasıl kullanılır?


Zamanlanmış görevleri otomatize ederek çalıştırmak, mesela yedek almak, sistemin bir siteye ping atması ve sonucu bir dosyaya kaydetmek suretiyle bağlantı kontrolü yapmak gibi bir işlem örnek verilebilir.


1- nano editörü kullanarak, dosyada değişiklik yapalım
Ancak değişiklik yapabilmek için root yetkisine sahip olmamız gerek
Bunun için;


        sudo su


/etc/crontab                 # Dosyanın yeri


        nano /etc/crontab


Örnek:
Masaüstüne bir dosya oluşturma ve her dakika buraya zamanı kaydet
Bunun için date komutunu kullanabiliriz
        
        date


#date komutunun çıktısını bir dosyaya yazmak istiyoruz


 date >> /home/mark/ZamanBilgisi
Ancak bu tek seferlik Dosyayı oluşturdu ve bu komutu işletmiş oldu
Dosyayı silelim ve


#Bunu tekrarlı yapmak için
mark kullanıcısı bu dosyayı çalıştıracak, o yüzden komutta bundan bahsediyoruz


* * * * * mark date >> /home/mark/Desktop/ZamanBilgisi


Yazdıktan sonra
ctrl + O ile dosyayı kaydet
ctrl + X ile çıkış yap


Artık 1 dk. beklediğimizde güncel zaman bilgisinin aynı şekilde dosyaya kaydedildiğini görebiliriz.




Diğer Cronjob Şablonları


#her seferinde crontab dosyasını düzenlemeye gerek yoktur!


#bunun yerine hazır şablonlarda vardır.
#Ama özel bir şey yapacaksak crontab dosyasına yazabiliriz


/etc/cron.daily/        # Günlük çalışacaklar klasörü
/etc/cron.hourly/        # Saatlik çalışacaklar klasörü
etc/cron.monthly/        # Aylık çalışacaklar klasörü
etc/cron.weekly/        # Haftalık çalışacaklar klasörü


Script ile Cron Job Çalıştırma


Aslında komutu direkt crontab dosyasına yazmak çok istenen birşey değildir
Bu nedenle script dosyası üzerinden işlem yapılır!


script dosyası için bir not defteri txt dosyası açalım
ve komutu buraya yapıştıralım


 date >> /home/mark/Desktop/time.sh


dosyayı kaydedelim, ismi zaman.sh olsun 
-> .sh bunun bir script dosyası olduğunu belirtmek içindir


crontab dosyasında şimdi tam path dosya adını yazıyoruz
#burada Zaman.sh diye bir script dosyası var ve sen bunu her dakika çalıştır




Çalışması için son olarak -> Dosyaya sağ tık, Properties/Permissions - executable seçiyoruz
Sistemi artık otomatize edebilirsiniz.
Artık crontab bu zamanlı görevi yerine getirecektir!