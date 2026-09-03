# AKILLI HARCAMA ANALİZ VE ÖNERİ SİSTEMİ

def harcama_ekle(harcamalar):
    kategori = input("kategori (yemek/ulaşım/eğlence/diğer):")
    try:
        tutar = float(input("tutar ne kadar:"))
        harcama = {"kategori": kategori, "tutar": tutar}
        harcamalar.append(harcama)
        print("Harcama başarıyla eklendi.")
    except ValueError:
        print("lütfen geçerli bir sayı girin!")

def harcamalari_goster(harcamalar):
    if not harcamalar:
        print("Henuz kaydedilmis bir harcama yok.")
        return
    for i, h in enumerate(harcamalar):
        print(f"{i+1}. {h['kategori']} - {h['tutar']} TL")

def kategori_analiz(harcamalar):
    analiz = {}
    for h in harcamalar:
        kat = h["kategori"]
        tutar = h["tutar"]
        analiz[kat] = analiz.get(kat, 0) + tutar
    return analiz

def en_fazla_kategori(analiz):
    if not analiz:
        return None, 0
    max_kategori = max(analiz, key=analiz.get)
    max_tutar = analiz[max_kategori]
    return max_kategori, max_tutar

def oneriler(max_kategori):
    if max_kategori == "yemek":
        print("Dışarıda yemek yerine evde yemeyi deneyebilirsin")
    elif max_kategori == "eglence":
        print("Eğlence harcamalarını azaltabilirsin.")
    elif max_kategori == "ulasim":
        print("Toplu taşıma kullanmayı düşünebilirsin.")
    else:
        print("Harcamaların dengeli görünüyor.")

def menu():
    harcamalar = []
    while True:
        print("\n1. Harcama ekle")
        print("2. Harcamaları göster")
        print("3. Ananliz ve Öneriler")
        print("4. Çıkış")
        secim = input("Seçiminiz :")

        if secim == "1":
            harcama_ekle(harcamalar)
        elif secim == "2":
            harcamalari_goster(harcamalar)
        elif secim == "3":
            if not harcamalar:
                print("Henuz harcama yok.")
            else:
                analiz = kategori_analiz(harcamalar)
                print("Kategori Analizi:", analiz)
                kat, tutar = en_fazla_kategori(analiz)
                print(f"En cok harcama: {kat} - {tutar} TL")
                oneriler(kat)
        elif secim == "4":
            print("Çıkılıyor...")
            break
        else:
            print("Hatalı Seçim!")
menu()

