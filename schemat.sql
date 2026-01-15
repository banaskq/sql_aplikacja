create table Użytkownik(
    UżytkownikID number(6) primary key,
	Imię varchar2(50) not null,
	Nazwisko varchar2(50) not null,
	Płeć varchar2(50) not null,
	Wiek number(6) not null,
	MasaCiała number(6) not null,
	Wzrost number(6) not null);

create table Aktywność(
	Aktywność ID number(6) primary key,
	CzasAktywności number(6) not null,
	data date  not null,
	UżytkownikId_aktywności number(6) references Użytkownik(UżytkownikID) not null)


create table RodzajAktywności(
	NazwaAktywności varchar2(50)  primary key,
	SpaloneKcalNaGodzine number(6) not null
	AktywnośćID_rodzaj number(6) references Aktywność(AktywnośćID)) not null;

create table Cel(
	CelID number(6) primarykey,
	CelMasaCiała number(6) not null,
	PrzewidywaneOsiągnięcie date not null
	UżytkownikID_celu number(6) references Użytkownik(UżytkownikID) not null);

create table PodsumowanieDnia(
	Data date primary key,
	KcalPrzyjęte number(6) not null,
	KcalSpalone number(6) not null,
	UżytkownikID_podsumowanie number(6) references Użytkownik(UżytkownikID) not null);


create table Woda(
	WodaID number(6) primary key,
	IlośćWypita number(6) not null,
	data date not null,
	UżytkownikID_Woda number(6) references Użytkownik(UżytkownikID) not null);


create table Posiłek(
	PosiłekID number(6) primary key,
	NazwaPosiłku varchar2(50) not null,
	SumaKcal number(6) not null,
	data date not null,
	UżytkownikID_posiłek number(6) references Użytkownik(UżytkownikID) not null);


create table Składnik(
	SkładnikID number(6) primary key,
	IlośćSkładnika number(6) not null,
	Posiłek_składniki number(6) references Posiłek(PosiłekID) not null);

create table RodzajSkładnika(
	NazwaSkładnika varchar2(50)  primary key,
	KcalNa100g number(6) not null,
	Składnik_rodzaj number(6) references Składnik(SkładnikID) not null);

create table Sen (
	SenID number(6) primary key,
	IlośćGodzin number(6,2) not null,
	JakośćSnu varchar2(50) not null,
	GodzinaRozpoczęcia time not null,
	GodzinaZakonczenia time not null,
	Data date not null,
	UżytkownikID_sen date references Użytkownik(UżytkownikID) not null);

create table Nastrój (
	NazwaNastroju varchar2(50) primary key,
	data date not null,
	UżytkownikID_nastrój number(6) references Użytkownik(UżytkownikID) not null);


