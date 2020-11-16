Létrehozási sorrend:

#1:
MSSQL:
Az ssis project miscellanous txt fájlokból másold ki a scripteket a következő sorrendben:

	0.Megpróbálhatod a TableCreatorScripttel egyszerre lefuttatni az összes létrehozást,hátha nem crashel, ha crashel akkor a view-tól egyenként(nekem csak az utolsó view-t nem szokta valamiért megcsinálni)

	Vagy egy másik módszer szétválogatva:

	1.CreatTable -> létrehozza a 3 réteget az adatbázisokkal

	2.CreateViews -> minden viewt egyenként kell létrehozni, mert különben crashelhet

	3.SQLDate-> A dátum dimenzióhoz szükséges tsql tárolt eljárás
	
	//Az TableCreatorScriptet is futtathatod,ott minden egybanvan, ebben az esetben a viewknál crashelhet, de az adatbázisokat létrehozza, itt is egyenként a viewkat létre kell hozni, majd utoljára marad a tsql

#2
SSIS:
	1.Jobb klik a Solution Expoler fülnél az SSIS packages alatti ETL.dtsx-re, majd Set up Start Object és futtatás

	2.Ha ez nem működne valamiért, futtad le a rétegeket egyenként ebben a sorrendben:
		Extract.dtsx -> Set up Start Object és futtatás
		Transform.dtsx -> Set up Start Object és futtatás
		Load.dtsx -> Set up Start Object és futtatás

Kész!
Én úgy értelmeztem a ténytáblát hogy vannak ilyen salesnumberordereink,amikben több terméket vásárolunk,pl. alzán beletesszük a kosárkába a cuccokat
és ehhez a vásáláshoz vannak információk(ki,mit,mikor,kitől), kiégeszítettem a ténytáblát a salesnumberorderrel,hogy lehessen tudni melyik vételek tartoznak egy kosárba
(anélkül hogy megnéznénk a vásálárs időpontját és a customerID-t így szerintem egyszerűbb látni magából már a ténytáblából is mik voltak egyszerre egy kosárban)
Szóval termékenként nézzük az eladásokat, de fel van tűntetve mik voltak egyszerre
