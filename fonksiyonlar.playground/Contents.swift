/*
 
 Fonksiyonlar ve Kullanımları
 
 */

//Temel Fonksiyonlar ------

//Fonksiyon Tanımlanıyor
func topla(){
    let a = 4
    let b = 3
    let sonuc = a + b
    print(sonuc)
}

//Fonksiyon Çağırılıyor
topla()

//-----------
let q = 5
let z = 12
func carp(){
    let sonuc = q*z
    print(sonuc)
}

//Parametreli Fonksiyonlar

let adSoyad = "Hakan Özyağlı"

func isimYazdir(isim:String){
    print("Merhaba \(isim)")
}

isimYazdir(isim: adSoyad) //Fonksiyon çağırıldı ve çalıştırıldı.

//Birden fazla parametre alan fonksiyon
func carpVeBol(carpim1:Int,carpim2:Int,bolen:Float) {
    let sonuc = Float(carpim1 * carpim2) / bolen
    print(sonuc)
}

carpVeBol(carpim1: 3, carpim2: 5, bolen: 3.2)



//Geriye Veri Döndüren Fonksiyonlar
func carp(sayi1:Int,sayi2:Int)->Int {
    return sayi1 * sayi2
}
var gelenSonuc = carp(sayi1: 4, sayi2: 8)
print(gelenSonuc)

//---------
func islemYapilmismi(deger:Int)->String{
    if deger == 1 {
        return "İşlem Yapılmış!"
    }else if deger == 2 {
        return "İşlem Yapılmamış.."
    }else{
        return "Bir hata meydana gelmiş!"
    }
}

print(islemYapilmismi(deger: 2))

//Birden fazla veri dönen fonksiyon

let x = 21
let y = 12
func dortIslem(sayi1:Int,sayi2:Int)->(toplam:Int,cikarma:Int,carpma:Int,bolme:Float){
    let toplamSonucu = sayi1 + sayi2
    let cikarmaSonucu = sayi1 - sayi2
    let carpimSonucu = sayi1 * sayi2
    let bolumSonucu = Float(sayi1) / Float(sayi2)
    return (toplamSonucu,cikarmaSonucu,carpimSonucu,bolumSonucu)
}

//Fonksiyonun çağrımı
let sonuc = dortIslem(sayi1: x, sayi2: y)
print("Toplam Sonucu \(sonuc.toplam)")
print("Çıkarma Sonucu \(sonuc.cikarma)")
print("Çarpma Sonucu \(sonuc.carpma)")
print("Bölme Sonucu \(sonuc.bolme)")


//Değişken Sayıda Parametre Alan Fonksiyonlar
func meyveleriYaz(_ meyveler:String...){
    for meyve in meyveler {
        print(meyve)
    }
}

meyveleriYaz("Elma","Armut","Üzüm")  // Fonksiyon ilk çağrıldığında 3 meyve girilmiş.
meyveleriYaz("Karpuz","Muz") // Tekrar çağırıldığında 2 meyve girilmiş.

//Nested - İçiçe fonksiyonlar
func selamlamaMesajıYaz(_ mesaj:String){
    
    //Nested Fonksiyon Tanımlanıyor!
    func merhabaEkle(){
        print("Merhaba \(mesaj)")
    }
    merhabaEkle()
}

selamlamaMesajıYaz("Emre")


