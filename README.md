# Akıllı Harcama Analiz ve Öneri Sistemi

Kullanıcıların harcamalarını kategorilere (yemek, ulaşım, eğlence, diğer) göre kaydetmelerini sağlayan, toplam ve kategori bazlı harcama analizleri yaparak en yüksek gider kalemine göre finansal tasarruf önerileri sunan bir Python CLI(Komut Satırı Arayüzü) uygulaması.

---

## Özellikler

- **Kategori Bazlı Harcama Girişi:** Kullanıcıdan alınan harcama tutarı ve kategori bilgilerinin sözlük yapısıyla listeye kaydedilmesi.
- **Hata Yönetimi (Exception Handling):** Hatalı veya geçersiz sayısal veri girişlerinde uygulamanın çökmesini engelleyen `try-except` kontrolü.
- **Harcama Listeleme:** Kaydedilen tüm giderlerin sıra numarası, kategori ve tutar bilgileriyle formatlı gösterimi.
- **Kategori Dağılım Analizi:** Harcamaların sözlük yapısı kullanılarak kategori bazında gruplanması ve toplam tutarlarının hesaplanması.
- **Akıllı Tasarruf Önerileri:** En çok harcama yapılan kalemi tespit ederek kullanıcıya özel tasarruf ve bütçe tavsiyeleri sunma.
- **İnteraktif Konsol Menüsü:** Kullanıcı çıkış yapana kadar çalışan kesintisiz menü döngüsü.

---

## Kullanılan Teknolojiler

- **Dil:** Python
- **Kullanılan Yapılar:**
  - Fonksiyonlar (`def`)
  - Hata Yakalama Blokları (`try-except`, `ValueError`)
  - Döngüler (`while True`, `for`, `enumerate()`)
  - Karar Mekanizmaları (`if-elif-else`)
  - Veri Yapıları (`list`, `dict`, `.get()`)
  - İleri Seviye Yerleşik Fonksiyonlar (`max()` ve `key` parametresi)
