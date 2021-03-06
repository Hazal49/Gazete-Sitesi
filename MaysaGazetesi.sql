USE [master]
GO
/****** Object:  Database [maysagazete]    Script Date: 29.01.2021 22:25:32 ******/
CREATE DATABASE [maysagazete]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'maysagazete', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\maysagazete.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'maysagazete_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\maysagazete_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [maysagazete] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [maysagazete].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [maysagazete] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [maysagazete] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [maysagazete] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [maysagazete] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [maysagazete] SET ARITHABORT OFF 
GO
ALTER DATABASE [maysagazete] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [maysagazete] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [maysagazete] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [maysagazete] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [maysagazete] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [maysagazete] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [maysagazete] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [maysagazete] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [maysagazete] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [maysagazete] SET  DISABLE_BROKER 
GO
ALTER DATABASE [maysagazete] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [maysagazete] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [maysagazete] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [maysagazete] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [maysagazete] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [maysagazete] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [maysagazete] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [maysagazete] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [maysagazete] SET  MULTI_USER 
GO
ALTER DATABASE [maysagazete] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [maysagazete] SET DB_CHAINING OFF 
GO
ALTER DATABASE [maysagazete] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [maysagazete] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [maysagazete] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [maysagazete] SET QUERY_STORE = OFF
GO
USE [maysagazete]
GO
/****** Object:  Table [dbo].[GununHaberi]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GununHaberi](
	[GununHaberiid] [int] IDENTITY(1,1) NOT NULL,
	[GununHaberiAd] [nvarchar](500) NULL,
	[GununHaberiResim] [nvarchar](500) NULL,
	[GununHaberiicerik] [varchar](max) NULL,
	[GununHaberiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_GununHaberi] PRIMARY KEY CLUSTERED 
(
	[GununHaberiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haberler]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haberler](
	[Haberid] [smallint] IDENTITY(1,1) NOT NULL,
	[HaberAd] [varchar](500) NULL,
	[HaberResim] [varchar](100) NULL,
	[Habericerik] [varchar](max) NULL,
	[HaberTarih] [smalldatetime] NULL,
	[Kategoriid] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Haberler] PRIMARY KEY CLUSTERED 
(
	[Haberid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimizda]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizda](
	[Metin] [varchar](max) NULL,
	[Resim] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](100) NULL,
	[MesajMail] [varchar](50) NULL,
	[Mesajicerik] [varchar](max) NULL,
 CONSTRAINT [PK_Iletisim] PRIMARY KEY CLUSTERED 
(
	[Mesajid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](100) NULL,
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizdenGelen]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizdenGelen](
	[SizdenGelenid] [smallint] IDENTITY(1,1) NOT NULL,
	[SizdenGelenHaberAd] [varchar](500) NULL,
	[SizdenGelenHabericerik] [varchar](max) NULL,
	[SizdenGelenHaberResim] [varchar](100) NULL,
	[SizdenGelenGonderenAd] [varchar](100) NULL,
	[SizdenGelenGonderenMail] [varchar](50) NULL,
	[SizdenGelenOnayDurumu] [bit] NULL,
 CONSTRAINT [PK_SizdenGelen] PRIMARY KEY CLUSTERED 
(
	[SizdenGelenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetici](
	[Yoneticiid] [int] IDENTITY(1,1) NOT NULL,
	[YoneticiKullaniciAd] [varchar](50) NULL,
	[Yoneticikullanicisifre] [varchar](50) NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlar]    Script Date: 29.01.2021 22:25:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlar](
	[Yorumid] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](100) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[Yorumicerik] [varchar](max) NULL,
	[Haberid] [smallint] NULL,
 CONSTRAINT [PK_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Haberler] ON 

INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (1, N'PARASAL SIKINTILAR', N'~/ikonlar/ekonomi.jpg', N'Başkan Recep Tayyip Erdoğan, iş dünyası ile buluşmasında 2.5 milyon esnafa da müjde verdi. Başkan Erdoğan, TESK Başkanı Bendevi Palandöken''in yerel yönetimler ve kamu kurumlarının irili ufaklı ticaretle esnafın önünü kestiğini söyleyince, "Belediye başkanlığım döneminde buna dikkat ediyordum. 100 günlük eylem planı kapsamında bu konuda düzenleme yapılacak" dedi. Başkan Erdoğan, önceki gün TOBB Başkanı Rifat Hisarcıklıoğlu ve beraberindeki heyeti kabul etti. Cumhurbaşkanlığı Külliyesi''nde basına kapalı gerçekleşen toplantıda Başkan Erdoğan ekonomi gündemine ilişkin de önemli mesajlar verdi. TESK Başkanı Palandöken, Başkan Erdoğan''la görüşmeye ilişkin SABAH''a yaptığı değerlendirmede esnafa müjdeli haber verdi. Palandöken, "Başkanımıza yerel yönetim, kamu kurumlarının ticaret yapmasına ilişkin kuralların koyulmasını istedik. Serbest ticarete engel oluyorlar. Esnaf da bunla başa çıkamıyor. Başkan Erdoğan, benzeri sıkıntıların belediye başkanlığı döneminde de yaşandığını söyledi. Bu sıkıntıların giderilmesi için talimat vereceklerini söylediler. Bu işi Ticaret Bakanlığı düzenleyecek" dedi. Edinilen bilgiye göre Başkan Erdoğan iş dünyası ile görüşmesinde, piyasalardaki spekülatif gelişmelerin gerçeği yansıtmadığını belirterek, "Hiçbir alanda sıkıntı yok. Parasal konularda da. Her anlamda stoklarımız yeterli. Önümüzü görecek vaziyetteyiz. Bunların hepsi oyun. Hem AB hem de ABD ile ilgili konularda düzelme kaydediliyor" dedi.', CAST(N'2021-01-11T01:04:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (2, N'BÜYÜK LİG', N'~/ikonlar/ihbar.jpg', N'Polis Basın Subaylığı’ndan alınan bilgiye göre bugün, saat 19:50 sıralarında, Gönyeli Yenikent Belediye Bulvarı üzerinde, Ahmet Kaya (E-31) kalmakta olduğu ikametgah içerisinde ölü olarak bulundu.
Yapılan ileri soruşturmada Ahmet Kaya’nın intihar etmek suretiyle yaşamını sonlandırdığı tespit edildi .
Soruşturma devam ediyor.', CAST(N'2021-01-11T01:04:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (3, N'MEB AÇIKLADI', N'~/ikonlar/egitim1.jpg', N'Milli Eğitim Bakanlığı (MEB) koordinesinde Türkiye Bilimsel ve Teknolojik Araştırma Kurumu (TÜBİTAK), Türkiye Teknoloji Vakfı (TEKNOFEST) ve Türk İşbirliği Koordinasyonu Ajansı Başkanlığı (TİKA) iş birliğinde her yıl farklı bir şehirde düzenlenen Uluslararası MEB Robot Yarışması''nın 14''üncüsü, geçen Şanlıurfa''da planlanmış ancak COVID-19 salgını nedeniyle ertelenmişti.

Yarışma bu yıl, geçen yıl belirlendiği üzere UNESCO dünya miras listesine alınan 12 bin yıllık geçmişiyle "Tarihin sıfır noktası" olarak adlandırılan Göbeklitepe teması ve "Ahican tarihin sıfır noktasında" sloganı ile 14-18 Haziran''da düzenlenecek. Yarışma başvuruları, düzeltme ve onay işlemleri, 15 Şubat -21 Mayıs tarihleri arasında yapılacak.

Şanlıurfa GAP Arena Spor Salonu ve Yerleşkesinde COVID-19 tedbirleri kapsamında alınan tedbirlerle yapılacak yarışmaya ortaokul ve dengi okullar, liseler ve üniversite öğrencileri başvurabilecek. Geçen yıl yapılan başvurular bu yıl yeniden alınacak, ayrıca yeni başvuru yapılabilecek.

COVID-19 salgını nedeniyle bu yılki yarışmalar, ulusal düzeyde olacak ve uluslararası başvuru alınmayacak.

Yarışmada, dereceye girenler ile belirlenecek sayıda yarışma ekibi, 21-26 Eylül''de İstanbul''da düzenlenecek TEKNOFEST Robotik Yarışmalarına katılabilecek.', CAST(N'2021-01-11T01:04:00' AS SmallDateTime), 7, 0)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (47, N'MICHAEL BURRY GANESTOP KAZANDI', N'~/ikonlar/ekonomi1.jpg', N'Alımlarını hızlandıran küçük yatırımcılar sayesinde GameStop hisseleri dün itibarıyla 347.5 dolara yükseldi. Yani 2021 yılında şu ana kadar yüzde 1744 yükseldi. Wall Street ile Reddit kullanıcıları arasındaki savaşta kazanan şimdilik kullanıcılar gibi görünüyor. Ancak buönce 2008 emlak balonunun patlayacağını tahmin ederek bu öngörüye uygun olarak milyarlarca dolar yatırım yapmış ve krizin en büyük kazananlarından birisi olmuştu. 2015 yapımı ''The Big Short'' filminde Christian Bale tarafından canlandırılmasıyla Burry, tüm dünyanın tanıdığı bir isim haline geldi.
Burry, varlık yönetim şirketi Scion Asset Management aracılığıyla geçtiğimiz yıl 2-4 dolar aralığında GameStop hissesi satın aldı. Alımlara tam olarak ne kadar harcadığı bilinmiyor. Ancak resmi kayıtlara göre geçtiğimiz yılın eylül ayı sonunda Burry''nin yaklaşık 17 milyon dolarlık 1.7 milyon hissesi bulunuyordu. Söz konusu hisselerin dün itibarıyla toplam değeri ise 590.75 milyon dolara ulaştı. Yani ''dahi yatırımcı'' GameStop hisselerinden yaklaşık 4 ayda yüzde 3375 getiri elde etti.

Tabii Michael Burry, bu alımı yaptığında şirketin yönetiminde yapılan değişikliklerle yükselişe geçeceğini öngörmüştü. Hatta şirket yönetimine hisse geri alımını durdurmalarının da yer aldığı bir dizi tavsiye içeren bir mektup yazmıştı. Muhtemelen GameStop''un dev yatırımcılarla küçük yatırımcılar arasında bir savaşa neden olacağını tahmin etmiyordu. Yine de 2008 yılında olduğu gibi Wall Street''in aksi yönünde bir pozisyon alarak servetine servet katmayı başardı.', CAST(N'2021-01-29T19:51:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (48, N'Karagümrük maç sonucu: 0-0', N'~/ikonlar/spor1.jpg', N'Ligde ikinci yarının ilk maçında Yeni Malatyaspor, evinde Fatih Karagümrük’ü konuk etti. Üst sıralara tırmanmak isteyen iki takım da bu maça galibiyet parolası ile çıktı. İnişli çıkışlı da olsa iyi bir grafik çizen Fatih Karagümrük, üst sıralara gözünü dikmiş durumda... Yönetim ile futbolcular arasında sıkıntıları olan Yeni Malatyaspor ise Hamza Hamzaoğlu yönetiminde moral bulmak istiyor. 

Maç iki takımın karşılıklı ataklarıyla başladı. Her iki takım da gol için rakip kaleye yüklendi. Ancak 43. dakikada Yeni Malatyaspor''da Kubilay Kanatsızkuş''un kırmızı kart görmesi bütün dengeleri değiştirdi. İlk yarı 0-0''lık eşitlikle sonuçlandı.

İkinci yarıya 10 kişi devam eden Malatyaspor, rakip kaleye kontrataklarla tehlikeli geldi. Fatih Karagümrük ise rakip kaleye ataklarını sıklaştırdı ancak bir türlü golü bulamadı. Yeni Malatyaspor''un kalecisi Abdulsamed, yaptığı kritik kurtarışlarla takımının 1 puan almasında etkili rol o Maçın 90 dakikası 0-0''lık eşitlikle sonuçlandı. ', CAST(N'2021-01-29T20:07:00' AS SmallDateTime), 3, 1)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (49, N'Avrupa İlaç Ajansı, AstraZeneca''nın aşısına onay verdi', N'~/resimler/dünya1.jpg', N'Avrupa Birliği''nin (AB) ilaç düzenleyicisi Avrupa İlaç Ajansı (EMA), AstraZeneca ile aşı tedarikinde yaşadığı ihtilaflara rağmen şirketin COVID-19 aşısına onay verdi.

AB’nin üçüncü onaylı aşısı EMA’dan yapılan açıklamaya göre, aşı 18 yaş üzerinde yaygın şekilde kullanılabilecek.

AB, 300 milyon doz sipariş verdiği ve 100 milyon opsiyonlu alım hakkına sahip olduğu aşının yılın ilk çeyreğinde planlanan ilk parti tedariğinde yaşanacak gecikmenin olmaması için şirkete baskı yapıyordu.

AstraZeneca’nın aşısı mRNA aşıları olan Moderna ve BioNTech-Pfizer aşısının aksine normal soğukluklarda taşınabilmesi ve daha ucuz olması sebebiyle AB''nin aşılama çalışmalarını hızlandırması bekleniyor.', CAST(N'2021-01-29T20:10:00' AS SmallDateTime), 2, 0)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (50, N'Evine 3. kez baskın düzenlenen medyumun cezası belli oldu!', N'~/ikonlar/gündem1.jpg', N'Ankara''da medyum olarak tanınan Sadiye Servet G.''nin evine 3. kez operasyon düzenlenmiş ve kötü şartlarda beslediği 8 kedi ve 1 köpeğe el konulmuştu. 27 hayvan için 2 kez idari yaptırım uygulanan Sadiye Servet G.''ye 3. denetim sonunda 3 bin 258 TL para cezası uygulandı ve 5199 Sayılı Hayvanları Koruma Kanunu''nun 24’ncü maddesi kapsamında tamamen hayvan beslemekten men edildi. Öte yandan, belediye barınağına götürülen hayvanların ilk veteriner raporu da ortaya çıktı.
Doğa Koruma ve Milli Parklar Genel Müdürlüğü 9''uncu Bölge Müdürlüğü ekipleri, daha önce iki kez denetim yapıp, kötü koşullarda beslediği kedi ve köpeklerine el koyup, para cezası uyguladığı Sadiye Servet G.''nin evine ihbar üzerine 3''üncü kez baskın düzenledi.

Evine 3. kez baskın düzenlenen medyumun cezası belli oldu
Zabıta ve polis ekiplerinin de eşlik ettiği baskında hayvanseverler de yer aldı. Evde yapılan denetimlerde uygunsuz şartlarda beslenen 1 köpek ve 8 kedi tespit edildi. Sadiye Servet G., kedileri sokaktan toplayıp, sahip çıktığını söyledi. Sadiye Servet G.''nin, bahçesinde daha önceki denetimlerde yıkılan hayvan padoklarını tekrar yaptırdığı belirlendi. Sadiye Servet G.''nin evinin önünde toplanan yakınları ve tanıdıkları, hayvanlara el koyma işlemine uzun süre itiraz etti. Hayvanseverlerin de desteği ile 9 hayvan alınarak, belediye barınağına götürüldü.', CAST(N'2021-01-29T20:18:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[Haberler] ([Haberid], [HaberAd], [HaberResim], [Habericerik], [HaberTarih], [Kategoriid], [Durum]) VALUES (51, N'DEFNE SAMYELİ''DEN BÜYÜK ŞOK!!!', N'~/resimler/magazin1.jpg', N'“Kira bedelinin ödenmemesi sebebiyle Defne Samyeli hakkında iki ayrı icra takibi başlatılmıştır. Samyeli’nin evden tahliye edilmesi için ayrıca İcra Mahkemesi’ne tahliye davası açılmıştır. Alacağımızı istiyoruz. Defne Samyeli, oturduğu evi boşaltarak ayrılma çabası içerisine girmiştir. Haciz memurları aracılığıyla borçlunun oturduğu evine gidilerek adreste defter tutulmasını istiyoruz.” Araz’ın talebi üzerine avukatı ve haciz memurları, geçen pazartesi günü eve giderek haciz işlemleri başlattı ve Samyeli’nin eşyalarının bir kısmına haciz konuldu.', CAST(N'2021-01-29T20:29:00' AS SmallDateTime), 50, 0)
SET IDENTITY_INSERT [dbo].[Haberler] OFF
INSERT [dbo].[Hakkimizda] ([Metin], [Resim]) VALUES (N'Modern hayatı şekillendiren yeni keşiflerin öncülüğünü üstlenerek daha iyi bir yaşamın standartlarını oluşturmak için çalışan Doğuş Grubu, 1951 yılında kurulmuştur. Müşterilerinin yanı sıra çalışanları, iş ortakları ve hatta rakipleri için bir tutkuya dönüşecek, sınıfının en iyisi yaşam tarzı markalarını bünyesinde barındıran Doğuş, çalıştığı alanlarda küresel bir oyuncu olma hedefiyle çalışmalarına devam etmektedir. Otomotiv; inşaat; medya; yeme-içme, turizm & perakende; gayrimenkul ve enerji olmak üzere altı ana sektörde faaliyet gösteren Doğuş Grubu ayrıca, mevcut hizmet verdiği sektörlerin yanı sıra teknoloji, spor ve eğlence alanındaki yeni yatırımlarıyla da büyümesini sürdürmektedir. Grup 300’ün üzerindeki şirketi ve 18 bini aşkın çalışanıyla müşterilerine üstün teknoloji, yüksek marka kalitesi ve dinamik bir insan kaynağı ile hizmet vermektedir.

Doğuş Grubu’nun ulaştığı başarının arkasında, müşteri odaklı ve verimliliği merkez alan bir yönetim yaklaşımı yer almaktadır. Bu yaklaşımın bir sonucu olarak, Grup dünya ölçeğinde saygın markalarla yaptığı iş birlikleriyle, Türkiye’yi bütün dünyada temsil etmektedir. Doğuş Grubu’nun, otomotivde Volkswagen AG ve TÜVSÜD, turizmde Hyatt International Ltd., marinacılıkta Latsis Grubu ve Kiriacoulis Grubu’nun yanı sıra yeme-içme sektöründe de bünyesinde Roka, Zuma ve Oblix gibi markaları bulunduran uluslararası Azumi Grubu ile Amazonico, Ten Con Ten, El Paraguas markalarına sahip Paraguas Group ve e-ticaret alanında Güney Koreli SK Group gibi büyük küresel oyuncularla işbirlikleri ve ortaklıkları bulunmaktadır.

Doğuş Grubu’nun yönetim yaklaşımı, bütün toplumun yararlandığı ve yararlanacağı kurumsal yurttaşlık bilincini de yansıtmaktadır. Doğuş Grubu, sosyal sorumluluk çalışmalarını yürütürken insanların hayatlarında bir iz bırakmayı ve günlük yaşamı daha iyi bir hale getirmeyi amaçlamaktadır. Grubun sosyal sorumluluk projeleri toplumun sürekli ileriye giden ve gelişen bir gelecek yaratmasına katkıda bulunmak hedefiyle yönetilmektedir.

Hayata geçirdiği tüm kurumsal sosyal sorumluluk ve sponsorluk projelerinde sorumluluklarının bilincinde olan Doğuş Grubu, topluma öncü ve örnek olma amacıyla hareket ederken, yatırımlarıyla ülke ekonomisine ve istihdama katkı sağlamaktadır.

Türkiye’de değişimin öncüleri arasında yer alan Doğuş Grubu, sahip olduğu geniş hizmet, bilgi ve iş birliği ağını hedeflerine ulaşmada en iyi şekilde değerlendirmektedir. Doğuş Grubu standartları belirleyen, keşfederek ilerleyen küresel bir oyuncu olma vizyonuyla, ülke ekonomisine faydalı olacağına inandığı iş birliği ve yatırım fırsatlarını incelemeye devam etmektedir.', NULL)
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (1, N'Ekonomi', N'~/resimler/turkuaz.jpg')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (2, N'Dünya', N'~/resimler/sari.jpg')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (3, N'Spor', N'~/resimler/mor.jpg')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (4, N'Gündem', N'~/resimler/turuncu.jpg')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (6, N'Kültür Sanat', N'~/resimler/yesill.png')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (7, N'Eğitim', N'~/resimler/bordo.jpg')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (49, N'Teknoloji', N'~/resimler/turkuaz.jpg')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (50, N'Magazin', N'~/resimler/lila.png')
INSERT [dbo].[Kategoriler] ([Kategoriid], [KategoriAd], [KategoriResim]) VALUES (51, N'Sağlık', N'~/resimler/yesill.png')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[SizdenGelen] ON 

INSERT [dbo].[SizdenGelen] ([SizdenGelenid], [SizdenGelenHaberAd], [SizdenGelenHabericerik], [SizdenGelenHaberResim], [SizdenGelenGonderenAd], [SizdenGelenGonderenMail], [SizdenGelenOnayDurumu]) VALUES (18, N'Evine 3. kez baskın düzenlenen medyumun cezası belli oldu!', N'Ankara''da medyum olarak tanınan Sadiye Servet G.''nin evine 3. kez operasyon düzenlenmiş ve kötü şartlarda beslediği 8 kedi ve 1 köpeğe el konulmuştu. 27 hayvan için 2 kez idari yaptırım uygulanan Sadiye Servet G.''ye 3. denetim sonunda 3 bin 258 TL para cezası uygulandı ve 5199 Sayılı Hayvanları Koruma Kanunu''nun 24’ncü maddesi kapsamında tamamen hayvan beslemekten men edildi. Öte yandan, belediye barınağına götürülen hayvanların ilk veteriner raporu da ortaya çıktı.
Doğa Koruma ve Milli Parklar Genel Müdürlüğü 9''uncu Bölge Müdürlüğü ekipleri, daha önce iki kez denetim yapıp, kötü koşullarda beslediği kedi ve köpeklerine el koyup, para cezası uyguladığı Sadiye Servet G.''nin evine ihbar üzerine 3''üncü kez baskın düzenledi.

Evine 3. kez baskın düzenlenen medyumun cezası belli oldu
Zabıta ve polis ekiplerinin de eşlik ettiği baskında hayvanseverler de yer aldı. Evde yapılan denetimlerde uygunsuz şartlarda beslenen 1 köpek ve 8 kedi tespit edildi. Sadiye Servet G., kedileri sokaktan toplayıp, sahip çıktığını söyledi. Sadiye Servet G.''nin, bahçesinde daha önceki denetimlerde yıkılan hayvan padoklarını tekrar yaptırdığı belirlendi. Sadiye Servet G.''nin evinin önünde toplanan yakınları ve tanıdıkları, hayvanlara el koyma işlemine uzun süre itiraz etti. Hayvanseverlerin de desteği ile 9 hayvan alınarak, belediye barınağına götürüldü.', N'~/resimler/gündem1.jpg', N'Hazal Yarımdünya', N'hazal@gmail.com', 1)
INSERT [dbo].[SizdenGelen] ([SizdenGelenid], [SizdenGelenHaberAd], [SizdenGelenHabericerik], [SizdenGelenHaberResim], [SizdenGelenGonderenAd], [SizdenGelenGonderenMail], [SizdenGelenOnayDurumu]) VALUES (19, N'Bakkaldan haraç isteyen zanlılar yakalandı', N'Olay, dün saat 16.00 sıralarında merkez Selçuklu ilçesi İhsaniye Mahallesi''nde bulunan bir bakkalda meydana geldi. İş yeri sahibi Bedri Toprakkale, oğlu Mustafa Toprakkale ile birlikte bakkalda olduğu sırada iddiaya göre, içeriye Ahmet U. (34) ve Mehmet T. (33) girdi. 2 kişi, baba Toprakkale''ye, ''''Sana 500 lira ceza kestik. Bu parayı bize vereceksiniz'''' dedi. Mustafa Toprakkale de, ''''Siz ne yapıyorsunuz? Size para veremeyiz'''' diye karşılık verdi. Ret cevabı alan şüpheliler, raflardaki ürünleri etrafa saçtı. Ardından da Ahmet U., Mustafa Toprakkale''yi bacağından bıçakladı. Yanında getirdiği ruhsatsız silahı çıkartan Mehmet T. ile Bedri Toprakkale arasında ise boğuşma yaşandı. Boğuşma esnasında silahı ele geçiren Bedri Toprakkale, havaya iki el ateş etti. Korkan şüpheliler, kasadan 140 TL parayı alarak dışarda kendilerini bekleyen Mehmet Ali Ç.''nin (36) bulunduğu otomobile binerek, olay yerinden kaçtı.', N'~/resimler/ihbar.jpg', N'Ayşe Doğan', N'a@gmail', 0)
SET IDENTITY_INSERT [dbo].[SizdenGelen] OFF
SET IDENTITY_INSERT [dbo].[Yonetici] ON 

INSERT [dbo].[Yonetici] ([Yoneticiid], [YoneticiKullaniciAd], [Yoneticikullanicisifre]) VALUES (1, N'bitirme', N'123')
SET IDENTITY_INSERT [dbo].[Yonetici] OFF
SET IDENTITY_INSERT [dbo].[Yorumlar] ON 

INSERT [dbo].[Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Haberid]) VALUES (22, N'Alihan', N'ali@gmail.com', CAST(N'2021-01-29T20:00:00' AS SmallDateTime), 0, N'Adama bak sen ne kadar şanslı ya', 47)
INSERT [dbo].[Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Haberid]) VALUES (23, N'Sertan', N's@gmail.com', CAST(N'2021-01-29T20:03:00' AS SmallDateTime), 1, N'Adam zengin...', 47)
INSERT [dbo].[Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Haberid]) VALUES (25, N'kerem', N'kerem@gmail.com', CAST(N'2021-01-29T20:14:00' AS SmallDateTime), 0, N'Parasızlık başımıza vurdu artık.', 1)
INSERT [dbo].[Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Haberid]) VALUES (26, N'kerem', N'kerem@gmail.com', CAST(N'2021-01-29T20:14:00' AS SmallDateTime), 0, N'Parasızlık başımıza vurdu artık.', 1)
SET IDENTITY_INSERT [dbo].[Yorumlar] OFF
ALTER TABLE [dbo].[GununHaberi] ADD  CONSTRAINT [DF_GununHaberi_GununHaberiTarih]  DEFAULT (getdate()) FOR [GununHaberiTarih]
GO
ALTER TABLE [dbo].[Haberler] ADD  CONSTRAINT [DF_Haberler_HaberTarih]  DEFAULT (getdate()) FOR [HaberTarih]
GO
ALTER TABLE [dbo].[Haberler] ADD  CONSTRAINT [DF_Haberler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[SizdenGelen] ADD  CONSTRAINT [DF_SizdenGelen_SizdenGelenOnayDurumu]  DEFAULT ((0)) FOR [SizdenGelenOnayDurumu]
GO
ALTER TABLE [dbo].[Yorumlar] ADD  CONSTRAINT [DF_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Yorumlar] ADD  CONSTRAINT [DF_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Haberler]  WITH CHECK ADD  CONSTRAINT [FK_Haberler_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[Haberler] CHECK CONSTRAINT [FK_Haberler_Kategoriler]
GO
ALTER TABLE [dbo].[Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Yorumlar_Haberler] FOREIGN KEY([Haberid])
REFERENCES [dbo].[Haberler] ([Haberid])
GO
ALTER TABLE [dbo].[Yorumlar] CHECK CONSTRAINT [FK_Yorumlar_Haberler]
GO
USE [master]
GO
ALTER DATABASE [maysagazete] SET  READ_WRITE 
GO
