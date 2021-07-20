import mysql.connector
import random
import time


mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="premier_liga_bih"
)
mycursor=mydb.cursor()

mycursor.execute("SELECT klub_id FROM klubovi ")
    
resj=mycursor.fetchall()

class Liga():

    def game(home,away):

            vrijeme=random.randint(1,5)
            sql="SELECT klub_ime,klub_jacina,klub_kapacitet from klubovi where klub_id = %s"
            val=(home)
            mycursor.execute(sql,val)
            ses=mycursor.fetchall()
            homei=ses[0][0]
            homei_jacina=ses[0][1]
            homei_kapacitet=ses[0][2]
            if vrijeme in range(1,4):
                
                homei_jacina=homei_jacina+1
            if vrijeme in range(4,6):
                
                homei_jacina=ses[0][1]-1
            
            sql="SELECT klub_ime,klub_jacina from klubovi where klub_id = %s"
            val=(away)
            mycursor.execute(sql,val)
            
            sesd=mycursor.fetchall()
            awayi=sesd[0][0]
            if vrijeme in range(1,4):
                
                awayi_jacina=sesd[0][1]+1
            if vrijeme in range(4,6):
                
                awayi_jacina=sesd[0][1]-1
            sql="SELECT stadion_ime,stanje_travnjaka FROM stadioni WHERE stadion_id = %s "
            val=(home)
            mycursor.execute(sql,val)
    
            res=mycursor.fetchall()

            Home_stadion=res[0][0]
            stadion_stanje=res[0][1]
            aa=len(homei)
            bb=len(awayi)
            cc=len(Home_stadion)
            haris=aa+bb+cc+30
            print("*"*haris)
            print("Dobro dosli na ", Home_stadion)
            print(stadion_stanje)
            
            if vrijeme == 1 :
                temp=random.randint(25,36)
                print(f"Predivan dan za fudbal , trenutno je {temp} stepeni")
            if vrijeme == 2 :
                temp=random.randint(25,36)
                print(f"Predivan dan za fudbal,trenutno je {temp} stepeni")
            if vrijeme == 3:
                temp=random.randint(16,23)
                print(f"Oblacno vrijeme,moglo bi biti kise,trenutna temperatura {temp} stepeni")
            if vrijeme == 4:
                temp=random.randint(9,16)
                print(f"Kišovito vrijeme,trenutna temperatura iznosi {temp} stepeni")
            if vrijeme ==5:
                temp=random.randint(1,8)
                print(f"Izuzetno hladno vrijeme,temperatura iznosi {temp} stepeni")
           
            
            print(f"Danas se na {Home_stadion} sastaju ekipe {homei} i {awayi}")
            posjeta=random.randint(1900,homei_kapacitet)
            print(f"Danasnjoj utakmici prisustvuje {posjeta} gledaoca")

            sql="SELECT sudija_ime,sudija_prezime from sudije"
            mycursor.execute(sql)
            
            ress=mycursor.fetchall()
            sudija=random.randint(1,5)
            name=ress[sudija][0]
            prezime=ress[sudija][1]
            print(f"Danasnju utakmicu sudi {name} {prezime}")
            print()

            time = 1
            home_score = 0
            away_score = 0
            while time < 91:
                zamisljeni=random.randint(0,700)
                if zamisljeni in range(0,homei_jacina+1):
                    home_score +=1
                    random_igrac=random.randint(2,19)
                    sql="SELECT igraci_name,igraci_prezime,igraci_golovi from igraci WHERE igraci_ekipa_id = %s"
                    val=(home)
                    mycursor.execute(sql,val)
            
                    ess=mycursor.fetchall()
                    igrac_ime=ess[random_igrac][0]
                    igrac_prezime=ess[random_igrac][1]
                    igrac_brgol=ess[random_igrac][2]+1
                    lokacija=random.randint(1,4)
                    if lokacija==1:
                        print("Sjajan pogodak u gornji lijevi čosak gola")
                    if lokacija==2:
                        print("Sjajan pogodak u donji lijevi čosak gola")
                    if lokacija==3:
                        print("Sjajan pogodak u gornji desni čosak gola")
                    if lokacija==4:
                        print("Sjajan pogodak u gornji desni čosak gola")
                    
                    nacin=random.randint(1,6)
                    if nacin == 1:
                        print(f"Nakon ubačaja gol glavom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 2:
                        print(f"Prekrasan gol lijevom nogom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 3:
                        print(f"Gol desnom nogom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 4:
                        print(f"Gol iz penala u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 5:
                        print(f"Nakon kornera sa lijeve strane glavom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 6:
                        print(f"Nakon kornera sa lijeve strane glavom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if home ==(1,):
                        broj = 1
                    if home ==(2,):
                        broj = 21
                    if home ==(3,):
                        broj = 41
                    if home ==(4,):
                        broj = 61
                    if home ==(5,):
                        broj = 81
                    if home ==(6,):
                        broj = 101
                    if home ==(7,):
                        broj = 121
                    if home ==(8,):
                        broj = 141
                    if home ==(9,):
                        broj = 161
                    if home ==(10,):
                        broj = 181
                    if home ==(11,):
                        broj = 201
                    if home ==(12,):
                        broj = 221
                    
                    br_id = broj+random_igrac
                    sql = "UPDATE igraci SET igraci_golovi = %s WHERE igraci_id = %s"
                    val = (igrac_brgol,br_id)

                    mycursor.execute(sql, val)

                    mydb.commit()
                        
                    
                if zamisljeni in range(50,49+awayi_jacina):
                    away_score +=1
                    random_igraci=random.randint(2,19)
                    sql="SELECT igraci_name,igraci_prezime,igraci_golovi from igraci WHERE igraci_ekipa_id = %s"
                    val=(away)

                    mycursor.execute(sql,val)
            
                    ess=mycursor.fetchall()
                    igrac_ime=ess[random_igraci][0]
                    igrac_prezime=ess[random_igraci][1]
                    igrac_brgol=ess[random_igraci][2]+1
                    lokacija=random.randint(1,4)
                    if lokacija==1:
                        print("Sjajan pogodak u gornji lijevi čosak gola")
                    if lokacija==2:
                        print("Sjajan pogodak u donji lijevi čosak gola")
                    if lokacija==3:
                        print("Sjajan pogodak u gornji desni čosak gola")
                    if lokacija==4:
                        print("Sjajan pogodak u gornji desni čosak gola")
                    
                    nacin=random.randint(1,6)
                    if nacin == 1:
                        print(f"Nakon ubačaja gol glavom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 2:
                        print(f"Prekrasan gol lijevom nogom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 3:
                        print(f"Gol desnom nogom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 4:
                        print(f"Gol iz penala u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 5:
                        print(f"Nakon kornera sa lijeve strane glavom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if nacin == 6:
                        print(f"Nakon kornera sa lijeve strane glavom u {time}.minuti postize {igrac_ime} {igrac_prezime}")
                        print()
                    if away ==(1,):
                        broj = 1
                    if away ==(2,):
                        broj = 21
                    if away ==(3,):
                        broj = 41
                    if away ==(4,):
                        broj = 61
                    if away ==(5,):
                        broj = 81
                    if away ==(6,):
                        broj = 101
                    if away ==(7,):
                        broj = 121
                    if away ==(8,):
                        broj = 141
                    if away ==(9,):
                        broj = 161
                    if away ==(10,):
                        broj = 181
                    if away ==(11,):
                        broj = 201
                    if away ==(12,):
                        broj = 221

                    br_id = broj+random_igraci
                    sql = "UPDATE igraci SET igraci_golovi = %s WHERE igraci_id = %s"
                    val = (igrac_brgol,br_id)

                    mycursor.execute(sql, val)

                    mydb.commit()    
                if zamisljeni in range (100,106):
                    random_igraci=random.randint(2,19)
                    sql="SELECT igraci_name,igraci_prezime,igraci_kartoni from igraci WHERE igraci_ekipa_id = %s"
                    val=(home)

                    mycursor.execute(sql,val)
            
                    esss=mycursor.fetchall()
                    igrac_ime=esss[random_igraci][0]
                    igrac_prezime=esss[random_igraci][1]
                    igrac_zuti = esss[random_igraci][2]+1
                    print(f"Žuti kartin za ekipu {homei} dobija {igrac_ime} {igrac_prezime} u {time} minuti susreta.")
                    print()
                    if home ==(1,):
                        broj = 1
                    if home ==(2,):
                        broj = 21
                    if home ==(3,):
                        broj = 41
                    if home ==(4,):
                        broj = 61
                    if home ==(5,):
                        broj = 81
                    if home ==(6,):
                        broj = 101
                    if home ==(7,):
                        broj = 121
                    if home ==(8,):
                        broj = 141
                    if home ==(9,):
                        broj = 161
                    if home ==(10,):
                        broj = 181
                    if home ==(11,):
                        broj = 201
                    if home ==(12,):
                        broj = 221
                    
                    br_id = broj+random_igraci
                    sql = "UPDATE igraci SET igraci_kartoni = %s WHERE igraci_id = %s"
                    val = (igrac_zuti,br_id)

                    mycursor.execute(sql, val)

                    mydb.commit()
                if zamisljeni in range(200,206):
                    random_igraci=random.randint(2,19)
                    sql="SELECT igraci_name,igraci_prezime,igraci_kartoni from igraci WHERE igraci_ekipa_id = %s"
                    val=(away)

                    mycursor.execute(sql,val)
            
                    ess=mycursor.fetchall()
                    igrac_ime=ess[random_igraci][0]
                    igrac_prezime=ess[random_igraci][1]
                    igraci_zuti = ess[random_igraci][2]+1
                    print(f"Žuti kartin za ekipu {awayi} dobija {igrac_ime} {igrac_prezime} u {time} minuti susreta.")
                    print()
                    if away ==(1,):
                        broj = 1
                    if away ==(2,):
                        broj = 21
                    if away ==(3,):
                        broj = 41
                    if away ==(4,):
                        broj = 61
                    if away ==(5,):
                        broj = 81
                    if away ==(6,):
                        broj = 101
                    if away ==(7,):
                        broj = 121
                    if away ==(8,):
                        broj = 141
                    if away ==(9,):
                        broj = 161
                    if away ==(10,):
                        broj = 181
                    if away ==(11,):
                        broj = 201
                    if away ==(12,):
                        broj = 221

                    br_id = broj+random_igraci
                    sql = "UPDATE igraci SET igraci_kartoni = %s WHERE igraci_id = %s"
                    val = (igraci_zuti,br_id)

                    mycursor.execute(sql, val)

                    mydb.commit()  
                if zamisljeni in range (300,301):
                    random_igrac=random.randint(2,19)
                    sql="SELECT igraci_name,igraci_prezime,igraci_crveni from igraci WHERE igraci_ekipa_id = %s"
                    val=(home)

                    mycursor.execute(sql,val)
            
                    fesss=mycursor.fetchall()
                    igrac_ime=fesss[random_igrac][0]
                    igrac_prezime=fesss[random_igrac][1]
                    igrac_crveni=fesss[random_igrac][2]+1
                    print(f"Crveni kartin za ekipu {homei} dobija {igrac_ime} {igrac_prezime} u {time} minuti susreta.")
                    print()
                    homei_jacina -=4
                    if home ==(1,):
                        broj = 1
                    if home ==(2,):
                        broj = 21
                    if home ==(3,):
                        broj = 41
                    if home ==(4,):
                        broj = 61
                    if home ==(5,):
                        broj = 81
                    if home ==(6,):
                        broj = 101
                    if home ==(7,):
                        broj = 121
                    if home ==(8,):
                        broj = 141
                    if home ==(9,):
                        broj = 161
                    if home ==(10,):
                        broj = 181
                    if home ==(11,):
                        broj = 201
                    if home ==(12,):
                        broj = 221
                    
                    br_id = broj+random_igrac
                    sql = "UPDATE igraci SET igraci_crveni = %s WHERE igraci_id = %s"
                    val = (igrac_crveni,br_id)

                    mycursor.execute(sql, val)

                    mydb.commit()
                if zamisljeni in range(400,401):
                    random_igraci=random.randint(2,19)
                    sql="SELECT igraci_name,igraci_prezime,igraci_crveni from igraci WHERE igraci_ekipa_id = %s"
                    val=(away)

                    mycursor.execute(sql,val)
            
                    wess=mycursor.fetchall()
                    igrac_ime=wess[random_igraci][0]
                    igrac_prezime=wess[random_igraci][1]
                    igraci_crveni=wess[random_igraci][2]+1
                    print(f"Crveni karton za ekipu {awayi} dobija {igrac_ime} {igrac_prezime} u {time} minuti susreta.")
                    print()
                    awayi_jacina -=4
                    if away ==(1,):
                        broj = 1
                    if away ==(2,):
                        broj = 21
                    if away ==(3,):
                        broj = 41
                    if away ==(4,):
                        broj = 61
                    if away ==(5,):
                        broj = 81
                    if away ==(6,):
                        broj = 101
                    if away ==(7,):
                        broj = 121
                    if away ==(8,):
                        broj = 141
                    if away ==(9,):
                        broj = 161
                    if away ==(10,):
                        broj = 181
                    if away ==(11,):
                        broj = 201
                    if away ==(12,):
                        broj = 221

                    br_id = broj+random_igraci
                    sql = "UPDATE igraci SET igraci_crveni = %s WHERE igraci_id = %s"
                    val = (igraci_crveni,br_id)

                    mycursor.execute(sql, val)

                    mydb.commit()  
                time +=1
            print("FT",homei,":",awayi,"  ",home_score,":",away_score)
            print("*"*haris)
            
            if home_score > away_score:
                sql="SELECT * FROM tabela WHERE klub_id = %s"
                val=(home)
                mycursor.execute(sql,val)
    
                homertq=mycursor.fetchall()
                for homer in homertq:
                    id=homer[0]
                    odigrani=homer[2]+1
                    pobjeda=homer[3]+1
                    nerjeseno=homer[4]
                    poraz=homer[5]
                    golza=homer[6]+home_score
                    golprotiv=homer[7]+away_score
                    bodovi=homer[8]+3

                sql = "UPDATE tabela SET klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
                val = (odigrani,pobjeda,nerjeseno,poraz,golza,golprotiv,bodovi,id)

                mycursor.execute(sql, val)

                mydb.commit()

                sql="SELECT * FROM tabela WHERE klub_id = %s"
                val=(away)
                mycursor.execute(sql,val)
    
                homerta=mycursor.fetchall()
                for homert in homerta:
                    ida=homert[0]
                    odigrani=homert[2]+1
                    pobjeda=homert[3]
                    nerjeseno=homert[4]
                    poraz=homert[5]+1
                    golza=homert[6]+away_score
                    golprotiv=homert[7]+home_score
                    bodovi=homert[8]

                sql = "UPDATE tabela SET klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
                val = (odigrani,pobjeda,nerjeseno,poraz,golza,golprotiv,bodovi,ida)

                mycursor.execute(sql, val)

                mydb.commit()
                
            if home_score == away_score:
                sql="SELECT * FROM tabela WHERE klub_id = %s"
                val=(home)
                mycursor.execute(sql,val)
    
                homer=mycursor.fetchall()
                for homer in homer:
                    id=homer[0]
                    odigrani=homer[2]+1
                    pobjeda=homer[3]
                    nerjeseno=homer[4]+1
                    poraz=homer[5]
                    golza=homer[6]+home_score
                    golprotiv=homer[7]+away_score
                    bodovi=homer[8]+1

                sql = "UPDATE tabela SET klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
                val = (odigrani,pobjeda,nerjeseno,poraz,golza,golprotiv,bodovi,id)

                mycursor.execute(sql, val)

                mydb.commit()

                sql="SELECT * FROM tabela WHERE klub_id = %s"
                val=(away)
                mycursor.execute(sql,val)
    
                homert=mycursor.fetchall()
                for homert in homert:
                    idq=homert[0]
                    odigrani=homert[2]+1
                    pobjeda=homert[3]
                    nerjeseno=homert[4]+1
                    poraz=homert[5]
                    golza=homert[6]+away_score
                    golprotiv=homert[7]+home_score
                    bodovi=homert[8]+1

                sql = "UPDATE tabela SET klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
                val = (odigrani,pobjeda,nerjeseno,poraz,golza,golprotiv,bodovi,idq)

                mycursor.execute(sql, val)

                mydb.commit()
                

            if home_score < away_score:
                sql="SELECT * FROM tabela WHERE klub_id = %s"
                val=(home)
                mycursor.execute(sql,val)
    
                homerqa=mycursor.fetchall()
                for homerq in homerqa:
                    idw=homerq[0]
                    odigrani=homerq[2]+1
                    pobjeda=homerq[3]
                    nerjeseno=homerq[4]
                    poraz=homerq[5]+1
                    golza=homerq[6]+home_score
                    golprotiv=homerq[7]+away_score
                    bodovi=homerq[8]

                sql = "UPDATE tabela SET klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
                val = (odigrani,pobjeda,nerjeseno,poraz,golza,golprotiv,bodovi,idw)

                mycursor.execute(sql, val)

                mydb.commit()

                sql="SELECT * FROM tabela WHERE klub_id = %s"
                val=(away)
                mycursor.execute(sql,val)
    
                homert=mycursor.fetchall()
                for homert in homert:
                    idn=homert[0]
                    odigrani=homert[2]+1
                    pobjeda=homert[3]+1
                    nerjeseno=homert[4]
                    poraz=homert[5]
                    golza=homert[6]+away_score
                    golprotiv=homert[7]+home_score
                    bodovi=homert[8]+3

                sql = "UPDATE tabela SET klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
                val = (odigrani,pobjeda,nerjeseno,poraz,golza,golprotiv,bodovi,idn)

                mycursor.execute(sql, val)

                mydb.commit()
                
                
for home in resj:
    for away in resj:
        if home==away:
            pass
        
        else:
            
            Liga.game(home,away)


mycursor.execute("SELECT klub_id FROM tabela ORDER BY klub_bodovi DESC")
    
myresult=mycursor.fetchall()
    
prvi=myresult[0]
drugi=myresult[1]
treci=myresult[2]
cetvrti=myresult[3]
peti=myresult[4]
sesti=myresult[5]
sedmi=myresult[6]
osmi=myresult[7]
deveti=myresult[8]
deseti=myresult[9]
jedanaesti=myresult[10]
dvanesti=myresult[11]

prvia=[prvi]
drugia=[drugi]
trecia=[treci]
cetvrtia=[cetvrti]
petia=[peti]
sestia=[sesti]
sedmia=[sedmi]
osmia=[osmi]
devetia=[deveti]
desetia=[deseti]
jedanaestia=[jedanaesti]
dvanestia=[dvanesti]

zrijeb_prvi=[sedmi, peti, treci, jedanaesti, deveti]
zrijeb_drugi=[(prvi), (jedanaesti), (sedmi), (treci), (deveti), (peti)]
zrijeb_treci=[(dvanesti), (deseti), (sesti), (osmi), (cetvrti)]
zrijeb_cetvrti=[(jedanaesti), (deveti), (peti), (drugi), (sedmi), (prvi)]
zrijeb_peti=[(deseti), (osmi), (dvanesti), (sesti), (treci)]
zrijeb_sesti=[(deveti), (sedmi), (cetvrti), (jedanaesti), (prvi), (drugi)]
zrijeb_sedmi=[(osmi), (treci), (deseti), (peti), (dvanesti)]
zrijeb_osmi=[(sesti), (drugi), (deveti), (prvi), (cetvrti), (jedanaesti)]
zrijeb_deveti=[(peti), (dvanesti), (sedmi), (treci), (deseti)]
zrijeb_deseti=[(cetvrti), (jedanaesti), (prvi), (sesti), (drugi), (osmi)]
zrijeb_jedanesti=[(treci), (deveti), (peti), (dvanesti), (sedmi)]
zrijeb_dvanesti=[(drugi), (prvi), (osmi), (cetvrti), (deseti), (sesti)]

for counter in range(1,13):
    if counter == 1 :
        for home in prvia:
            for away in zrijeb_prvi:
                Liga.game(home,away)
    elif counter == 2 :
        for home in drugia:
            for away in zrijeb_drugi:
                Liga.game(home,away)
    elif counter == 3 :
        for home in trecia:
            for away in zrijeb_treci:
                Liga.game(home,away)
    elif counter == 4 :
        for home in cetvrtia:
            for away in zrijeb_cetvrti:
                Liga.game(home,away)
    elif counter == 5 :
        for home in petia:
            for away in zrijeb_peti:
                Liga.game(home,away)
    elif counter == 6 :
        for home in sestia:
            for away in zrijeb_sesti:
                Liga.game(home,away)
    elif counter == 7 :
        for home in sedmia:
            for away in zrijeb_sedmi:
                Liga.game(home,away)
    elif counter == 8 :
        for home in osmia:
            for away in zrijeb_osmi:
                Liga.game(home,away)
    elif counter == 9 :
        for home in devetia:
            for away in zrijeb_deveti:
                Liga.game(home,away)
    elif counter == 10 :
        for home in desetia:
            for away in zrijeb_deseti:
                Liga.game(home,away)
    elif counter == 11 :
        for home in jedanaestia:
            for away in zrijeb_jedanesti:
                Liga.game(home,away)
    elif counter == 12 :
        for home in dvanestia:
            for away in zrijeb_dvanesti:
                Liga.game(home,away)
    
mycursor.execute("SELECT * FROM tabela ORDER BY klub_bodovi DESC")
    
resj=mycursor.fetchall()

print("| TEAM                      |M.PLAY | POINTS | WINS | DRAWS | LOSSES | GOALS FOR | GOALS AGAINST | GOALS DIF. |")

i = 1
for home in resj:
    
    id=home[0]
    ime=home[1]
    odigrani=home[2]
    pobjeda=home[3]
    nerjeseno=home[4]
    poraz=home[5]
    golza=home[6]
    golprotiv=home[7]
    golrazlika=home[6]-home[7]
    bodovi=home[8]
    
    print("|",ime," "*(24 - len(ime)),"| ",odigrani," "*(3 - len(str(odigrani))),"|  ",bodovi," "*(3 - len(str(bodovi))),"| ",pobjeda," "*(2 - len(str(pobjeda))),"|  ",
          nerjeseno," "*(2 - len(str(nerjeseno))),"|  ",poraz," "*(3 - len(str(poraz))),"|    ",golza," "*(4 - len(str(golza))),"|     ",
          golprotiv," "*(7 - len(str(golprotiv))),"|   ",golrazlika," "*(6 - len(str(golrazlika))),"|")
    sql = "UPDATE tabela SET klub_ime = %s ,klub_odigrani = %s ,klub_pobjeda = %s ,klub_nerjeseno = %s ,klub_poraz = %s ,klub_golovi = %s ,klub_primljeni = %s ,klub_bodovi = %s WHERE klub_id = %s"
    val = (ime,0,0,0,0,0,0,0,id)

    mycursor.execute(sql, val)

    mydb.commit()
    time.sleep(1)
    i+=1
mycursor.execute("SELECT igraci_name,igraci_prezime,igraci_golovi FROM igraci ORDER BY igraci_golovi DESC")
    
topgol=mycursor.fetchall()
print("LISTA STRIJELACA BH.PREMIER LIGE")
name=topgol[0][0]
lastname=topgol[0][1]
golovi=topgol[0][2]
a=len(name)
b=len(lastname)
name1=topgol[1][0]
lastname1=topgol[1][1]
golovi1=topgol[1][2]
aa=len(name)
bb=len(lastname)
name2=topgol[2][0]
lastname2=topgol[2][1]
golovi2=topgol[2][2]
aaa=len(name)
bbb=len(lastname)
name3=topgol[3][0]
lastname3=topgol[3][1]
golovi3=topgol[3][2]
aaaa=len(name)
bbbb=len(lastname)
name4=topgol[4][0]
lastname4=topgol[4][1]
golovi4=topgol[4][2]
ax=len(name)
bx=len(lastname)
print(" No     Ime              Prezime          Br.Golova")
time.sleep(1)
print(" 1"," "*3,name," "*(15-a),lastname," "*(20-b),golovi)
time.sleep(1)
print(" 2"," "*3,name1," "*(15-aa),lastname1," "*(20-bb),golovi1)
time.sleep(1)
print(" 3"," "*3,name2," "*(15-aaa),lastname2," "*(20-bbb),golovi2)
time.sleep(1)
print(" 4"," "*3,name3," "*(15-aaaa),lastname3," "*(20-bbbb),golovi3)
time.sleep(1)
print(" 5"," "*3,name4," "*(15-ax),lastname4," "*(20-bx),golovi4)
time.sleep(1)

counter = 1
while counter < 241:
    sql = "UPDATE igraci SET igraci_kartoni = %s ,igraci_golovi = %s ,igraci_crveni = %s WHERE igraci_id = %s"
    val = (0,0,0,counter)

    mycursor.execute(sql, val)

    mydb.commit()

    counter +=1
