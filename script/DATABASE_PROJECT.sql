	DROP database IF EXISTS meal_planner;
	CREATE database meal_planner;
	USE meal_planner;
	
	CREATE TABLE user (
		user_id  int(10) NOT NULL AUTO_INCREMENT, 
		PRIMARY KEY ( user_id )
	);
     CREATE TABLE  account  ( 
        account_id NULL AUTO_INCREMENT, 
        prefered_calories  int(5) NOT NULL, 
        first_name  varchar(20) NOT NULL, 
        last_name  varchar(20) NOT NULL, 
        email  varchar(20) NOT NULL, 
        password_hash  varchar(30), 
       PRIMARY KEY ( email ) 
     );

     CREATE TABLE  food_item  ( 
        item_id  int(10) NOT NULL AUTO_INCREMENT, 
        calories  varchar(20) NOT NULL, 
        item_name  varchar(20) NOT NULL, 
        in_kitchen  varchar(5) NOT NULL, 
       PRIMARY KEY ( item_id ) 
     );
	 
     CREATE TABLE  meal_plan  ( 
        plan_id  int(10) NOT NULL AUTO_INCREMENT, 
        plan_name  varchar(20) NOT NULL, 
        no_of_weeks  int(5) NOT NULL, 
       PRIMARY KEY ( plan_id ) 
     );
	 
     CREATE TABLE  meal  ( 
        meal_id  int(10) NOT NULL AUTO_INCREMENT, 
        meal_name  varchar(20) NOT NULL, 
        calorie_count  int(5) NOT NULL, 
        meal_type  varchar(16) NOT NULL, 
       PRIMARY KEY ( meal_id ) 
     );
	 
     CREATE TABLE  shopping_list  ( 
        list_id  int(10) NOT NULL AUTO_INCREMENT, 
        total_cost  decimal(10,2) NOT NULL, 
       PRIMARY KEY ( list_id ) 
     );

     CREATE TABLE  meal_creation  ( 
      meal_id  int(10) NOT NULL, 
      user_id  int(10) NOT NULL, 
      creation_date  date NOT NULL, 
      PRIMARY KEY ( meal_id , user_id ), 
      FOREIGN KEY ( user_id )  
      REFERENCES  user  ( user_id ) ON DELETE CASCADE, 
      FOREIGN KEY ( meal_id )  
      REFERENCES  meal  ( meal_id ) ON DELETE CASCADE 
     );
	 
     CREATE TABLE  recipe  ( 
        recipe_id  int(10) NOT NULL AUTO_INCREMENT, 
        step_number  int(10), 
       PRIMARY KEY ( recipe_id ) 
     );
	 
     CREATE TABLE  image  (
        image_name  varchar(20) NOT NULL, 
       PRIMARY KEY ( image_name ) 
     );
	 
     CREATE TABLE  create_account  ( 
       user_id  int(10) NOT NULL, 
       email  varchar(20) N0T NULL, 
       PRIMARY KEY ( email ), 
       FOREIGN KEY ( email ) 
       REFERENCES  account  ( email ) ON DELETE CASCADE 
     );
	 
	 CREATE TABLE create_plan(
		plan_id int(10) NOT NULL,
		user_id int(10) NOT NULL,
		creation_date date NOT NULL,
		PRIMARY KEY (plan_id,user_id)
	 );

     CREATE TABLE  days  ( 
        week_number  int(5) NOT NULL, 
        day_name  varchar(10) NOT NULL, 
        breakfast  int(10) NOT NULL, 
        lunch  int(10) NOT NULL, 
        dinner  int(10) NOT NULL, 
        snack  int(10) NOT NULL, 
        step  varchar(50), 
       PRIMARY KEY ( day_name ), 
       FOREIGN KEY ( breakfast ) 
       REFERENCES  meal_creation  ( meal_id ) ON DELETE CASCADE, 
       FOREIGN KEY ( lunch ) 
          REFERENCES  meal_creation  ( meal_id ) ON DELETE CASCADE, 
       FOREIGN KEY ( dinner ) 
          REFERENCES  meal_creation  ( meal_id ) ON DELETE CASCADE, 
       FOREIGN KEY ( snack ) 
          REFERENCES  meal_creation  ( meal_id ) ON DELETE CASCADE 
     );
     CREATE TABLE  step  ( 
        recipe_id  int(10) NOT NULL, 
        step_id  int(10) NOT NULL, 
        step  varchar(50) NOT NULL, 
       PRIMARY KEY ( recipe_id ), 
       FOREIGN KEY ( recipe_id ) 
       REFERENCES  recipe  ( recipe_id ) ON DELETE CASCADE 
     );
	 
	 CREATE TABLE recipes_created(
		email varchar(20) NOT NULL,
		recipie_id int(10) NOT NULL,
		PRIMARY KEY (email)
	 );

     CREATE TABLE  items  ( 
        item_id  int(10) NOT NULL, 
        quantity  int(10) NOT NULL, 
        price  decimal(10,2) NOT NULL, 
       PRIMARY KEY ( item_id ) 
     );
	 
	 CREATE TABLE upload_image (
		image_name varchar(20),
		meal_id int(10),
		PRIMARY KEY (meal_id)
	 );

     CREATE TABLE  ingredients  ( 
        recipe_id  int(10) NOT NULL, 
        item_id  int(10) NOT NULL, 
        measurements  varchar(20) NOT NULL, 
       PRIMARY KEY ( recipe_id , item_id ) 
     );

/*--User--*/

insert into user(user_id) values(
3300000);
insert into user(user_id) values(
3300001);
insert into user(user_id) values(
3300002);
insert into user(user_id) values(
3300003);
insert into user(user_id) values(
3300004);
insert into user(user_id) values(
3300005);
insert into user(user_id) values(
3300006);
insert into user(user_id) values(
3300007);
insert into user(user_id) values(
3300008);
insert into user(user_id) values(
3300009);
insert into user(user_id) values(
3300010);
insert into user(user_id) values(
3300011);
insert into user(user_id) values(
3300012);
insert into user(user_id) values(
3300013);
insert into user(user_id) values(
3300014);
insert into user(user_id) values(
3300015);
insert into user(user_id) values(
3300016);
insert into user(user_id) values(
3300017);
insert into user(user_id) values(
3300018);
insert into user(user_id) values(
3300019);
insert into user(user_id) values(
3300020);
insert into user(user_id) values(
3300021);
insert into user(user_id) values(
3300022);
insert into user(user_id) values(
3300023);
insert into user(user_id) values(
3300024);
insert into user(user_id) values(
3300025);
insert into user(user_id) values(
3300026);
insert into user(user_id) values(
3300027);
insert into user(user_id) values(
3300028);
insert into user(user_id) values(
3300029);
insert into user(user_id) values(
3300030);
insert into user(user_id) values(
3300031);
insert into user(user_id) values(
3300032);
insert into user(user_id) values(
3300033);
insert into user(user_id) values(
3300034);
insert into user(user_id) values(
3300035);
insert into user(user_id) values(
3300036);
insert into user(user_id) values(
3300037);
insert into user(user_id) values(
3300038);
insert into user(user_id) values(
3300039);
insert into user(user_id) values(
3300040);
insert into user(user_id) values(
3300041);
insert into user(user_id) values(
3300042);
insert into user(user_id) values(
3300043);
insert into user(user_id) values(
3300044);
insert into user(user_id) values(
3300045);
insert into user(user_id) values(
3300046);
insert into user(user_id) values(
3300047);
insert into user(user_id) values(
3300048);
insert into user(user_id) values(
3300049);
insert into user(user_id) values(
3300050);
insert into user(user_id) values(
3300051);
insert into user(user_id) values(
3300052);
insert into user(user_id) values(
3300053);
insert into user(user_id) values(
3300054);
insert into user(user_id) values(
3300055);
insert into user(user_id) values(
3300056);
insert into user(user_id) values(
3300057);
insert into user(user_id) values(
3300058);
insert into user(user_id) values(
3300059);
insert into user(user_id) values(
3300060);
insert into user(user_id) values(
3300061);
insert into user(user_id) values(
3300062);
insert into user(user_id) values(
3300063);
insert into user(user_id) values(
3300064);
insert into user(user_id) values(
3300065);
insert into user(user_id) values(
3300066);
insert into user(user_id) values(
3300067);
insert into user(user_id) values(
3300068);
insert into user(user_id) values(
3300069);
insert into user(user_id) values(
3300070);
insert into user(user_id) values(
3300071);
insert into user(user_id) values(
3300072);
insert into user(user_id) values(
3300073);
insert into user(user_id) values(
3300074);
insert into user(user_id) values(
3300075);
insert into user(user_id) values(
3300076);
insert into user(user_id) values(
3300077);
insert into user(user_id) values(
3300078);
insert into user(user_id) values(
3300079);
insert into user(user_id) values(
3300080);
insert into user(user_id) values(
3300081);
insert into user(user_id) values(
3300082);
insert into user(user_id) values(
3300083);
insert into user(user_id) values(
3300084);
insert into user(user_id) values(
3300085);
insert into user(user_id) values(
3300086);
insert into user(user_id) values(
3300087);
insert into user(user_id) values(
3300088);
insert into user(user_id) values(
3300089);
insert into user(user_id) values(
3300090);
insert into user(user_id) values(
3300091);
insert into user(user_id) values(
3300092);
insert into user(user_id) values(
3300093);
insert into user(user_id) values(
3300094);
insert into user(user_id) values(
3300095);
insert into user(user_id) values(
3300096);
insert into user(user_id) values(
3300097);
insert into user(user_id) values(
3300098);
insert into user(user_id) values(
3300099);
insert into user(user_id) values(
3300100);
insert into user(user_id) values(
3300101);
insert into user(user_id) values(
3300102);
insert into user(user_id) values(
3300103);
insert into user(user_id) values(
3300104);
insert into user(user_id) values(
3300105);
insert into user(user_id) values(
3300106);
insert into user(user_id) values(
3300107);
insert into user(user_id) values(
3300108);
insert into user(user_id) values(
3300109);
insert into user(user_id) values(
3300110);
insert into user(user_id) values(
3300111);
insert into user(user_id) values(
3300112);
insert into user(user_id) values(
3300113);
insert into user(user_id) values(
3300114);
insert into user(user_id) values(
3300115);
insert into user(user_id) values(
3300116);
insert into user(user_id) values(
3300117);
insert into user(user_id) values(
3300118);
insert into user(user_id) values(
3300119);
insert into user(user_id) values(
3300120);
insert into user(user_id) values(
3300121);
insert into user(user_id) values(
3300122);
insert into user(user_id) values(
3300123);
insert into user(user_id) values(
3300124);
insert into user(user_id) values(
3300125);
insert into user(user_id) values(
3300126);
insert into user(user_id) values(
3300127);
insert into user(user_id) values(
3300128);
insert into user(user_id) values(
3300129);
insert into user(user_id) values(
3300130);
insert into user(user_id) values(
3300131);
insert into user(user_id) values(
3300132);
insert into user(user_id) values(
3300133);
insert into user(user_id) values(
3300134);
insert into user(user_id) values(
3300135);
insert into user(user_id) values(
3300136);
insert into user(user_id) values(
3300137);
insert into user(user_id) values(
3300138);
insert into user(user_id) values(
3300139);
insert into user(user_id) values(
3300140);
insert into user(user_id) values(
3300141);
insert into user(user_id) values(
3300142);
insert into user(user_id) values(
3300143);
insert into user(user_id) values(
3300144);
insert into user(user_id) values(
3300145);
insert into user(user_id) values(
3300146);
insert into user(user_id) values(
3300147);
insert into user(user_id) values(
3300148);
insert into user(user_id) values(
3300149);
insert into user(user_id) values(
3300150);
insert into user(user_id) values(
3300151);
insert into user(user_id) values(
3300152);
insert into user(user_id) values(
3300153);
insert into user(user_id) values(
3300154);
insert into user(user_id) values(
3300155);
insert into user(user_id) values(
3300156);
insert into user(user_id) values(
3300157);
insert into user(user_id) values(
3300158);
insert into user(user_id) values(
3300159);
insert into user(user_id) values(
3300160);
insert into user(user_id) values(
3300161);
insert into user(user_id) values(
3300162);
insert into user(user_id) values(
3300163);
insert into user(user_id) values(
3300164);
insert into user(user_id) values(
3300165);
insert into user(user_id) values(
3300166);
insert into user(user_id) values(
3300167);
insert into user(user_id) values(
3300168);
insert into user(user_id) values(
3300169);
insert into user(user_id) values(
3300170);
insert into user(user_id) values(
3300171);
insert into user(user_id) values(
3300172);
insert into user(user_id) values(
3300173);
insert into user(user_id) values(
3300174);
insert into user(user_id) values(
3300175);
insert into user(user_id) values(
3300176);
insert into user(user_id) values(
3300177);
insert into user(user_id) values(
3300178);
insert into user(user_id) values(
3300179);
insert into user(user_id) values(
3300180);
insert into user(user_id) values(
3300181);
insert into user(user_id) values(
3300182);
insert into user(user_id) values(
3300183);
insert into user(user_id) values(
3300184);
insert into user(user_id) values(
3300185);
insert into user(user_id) values(
3300186);
insert into user(user_id) values(
3300187);
insert into user(user_id) values(
3300188);
insert into user(user_id) values(
3300189);
insert into user(user_id) values(
3300190);
insert into user(user_id) values(
3300191);
insert into user(user_id) values(
3300192);
insert into user(user_id) values(
3300193);
insert into user(user_id) values(
3300194);
insert into user(user_id) values(
3300195);
insert into user(user_id) values(
3300196);
insert into user(user_id) values(
3300197);
insert into user(user_id) values(
3300198);
insert into user(user_id) values(
3300199);
insert into user(user_id) values(
3300200);
insert into user(user_id) values(
3300201);
insert into user(user_id) values(
3300202);
insert into user(user_id) values(
3300203);
insert into user(user_id) values(
3300204);
insert into user(user_id) values(
3300205);
insert into user(user_id) values(
3300206);
insert into user(user_id) values(
3300207);
insert into user(user_id) values(
3300208);
insert into user(user_id) values(
3300209);
insert into user(user_id) values(
3300210);
insert into user(user_id) values(
3300211);
insert into user(user_id) values(
3300212);
insert into user(user_id) values(
3300213);
insert into user(user_id) values(
3300214);
insert into user(user_id) values(
3300215);
insert into user(user_id) values(
3300216);
insert into user(user_id) values(
3300217);
insert into user(user_id) values(
3300218);
insert into user(user_id) values(
3300219);
insert into user(user_id) values(
3300220);
insert into user(user_id) values(
3300221);
insert into user(user_id) values(
3300222);
insert into user(user_id) values(
3300223);
insert into user(user_id) values(
3300224);
insert into user(user_id) values(
3300225);
insert into user(user_id) values(
3300226);
insert into user(user_id) values(
3300227);
insert into user(user_id) values(
3300228);
insert into user(user_id) values(
3300229);
insert into user(user_id) values(
3300230);
insert into user(user_id) values(
3300231);
insert into user(user_id) values(
3300232);
insert into user(user_id) values(
3300233);
insert into user(user_id) values(
3300234);
insert into user(user_id) values(
3300235);
insert into user(user_id) values(
3300236);
insert into user(user_id) values(
3300237);
insert into user(user_id) values(
3300238);
insert into user(user_id) values(
3300239);
insert into user(user_id) values(
3300240);
insert into user(user_id) values(
3300241);
insert into user(user_id) values(
3300242);
insert into user(user_id) values(
3300243);
insert into user(user_id) values(
3300244);
insert into user(user_id) values(
3300245);
insert into user(user_id) values(
3300246);
insert into user(user_id) values(
3300247);
insert into user(user_id) values(
3300248);
insert into user(user_id) values(
3300249);
insert into user(user_id) values(
3300250);
insert into user(user_id) values(
3300251);
insert into user(user_id) values(
3300252);
insert into user(user_id) values(
3300253);
insert into user(user_id) values(
3300254);
insert into user(user_id) values(
3300255);
insert into user(user_id) values(
3300256);
insert into user(user_id) values(
3300257);
insert into user(user_id) values(
3300258);
insert into user(user_id) values(
3300259);
insert into user(user_id) values(
3300260);
insert into user(user_id) values(
3300261);
insert into user(user_id) values(
3300262);
insert into user(user_id) values(
3300263);
insert into user(user_id) values(
3300264);
insert into user(user_id) values(
3300265);
insert into user(user_id) values(
3300266);
insert into user(user_id) values(
3300267);
insert into user(user_id) values(
3300268);
insert into user(user_id) values(
3300269);
insert into user(user_id) values(
3300270);
insert into user(user_id) values(
3300271);
insert into user(user_id) values(
3300272);
insert into user(user_id) values(
3300273);
insert into user(user_id) values(
3300274);
insert into user(user_id) values(
3300275);
insert into user(user_id) values(
3300276);
insert into user(user_id) values(
3300277);
insert into user(user_id) values(
3300278);
insert into user(user_id) values(
3300279);
insert into user(user_id) values(
3300280);
insert into user(user_id) values(
3300281);
insert into user(user_id) values(
3300282);
insert into user(user_id) values(
3300283);
insert into user(user_id) values(
3300284);
insert into user(user_id) values(
3300285);
insert into user(user_id) values(
3300286);
insert into user(user_id) values(
3300287);
insert into user(user_id) values(
3300288);
insert into user(user_id) values(
3300289);
insert into user(user_id) values(
3300290);
insert into user(user_id) values(
3300291);
insert into user(user_id) values(
3300292);
insert into user(user_id) values(
3300293);
insert into user(user_id) values(
3300294);
insert into user(user_id) values(
3300295);
insert into user(user_id) values(
3300296);
insert into user(user_id) values(
3300297);
insert into user(user_id) values(
3300298);
insert into user(user_id) values(
3300299);
insert into user(user_id) values(
3300300);
insert into user(user_id) values(
3300301);
insert into user(user_id) values(
3300302);
insert into user(user_id) values(
3300303);
insert into user(user_id) values(
3300304);
insert into user(user_id) values(
3300305);
insert into user(user_id) values(
3300306);
insert into user(user_id) values(
3300307);
insert into user(user_id) values(
3300308);
insert into user(user_id) values(
3300309);
insert into user(user_id) values(
3300310);
insert into user(user_id) values(
3300311);
insert into user(user_id) values(
3300312);
insert into user(user_id) values(
3300313);
insert into user(user_id) values(
3300314);
insert into user(user_id) values(
3300315);
insert into user(user_id) values(
3300316);
insert into user(user_id) values(
3300317);
insert into user(user_id) values(
3300318);
insert into user(user_id) values(
3300319);
insert into user(user_id) values(
3300320);
insert into user(user_id) values(
3300321);
insert into user(user_id) values(
3300322);
insert into user(user_id) values(
3300323);
insert into user(user_id) values(
3300324);
insert into user(user_id) values(
3300325);
insert into user(user_id) values(
3300326);
insert into user(user_id) values(
3300327);
insert into user(user_id) values(
3300328);
insert into user(user_id) values(
3300329);
insert into user(user_id) values(
3300330);
insert into user(user_id) values(
3300331);
insert into user(user_id) values(
3300332);
insert into user(user_id) values(
3300333);
insert into user(user_id) values(
3300334);
insert into user(user_id) values(
3300335);
insert into user(user_id) values(
3300336);
insert into user(user_id) values(
3300337);
insert into user(user_id) values(
3300338);
insert into user(user_id) values(
3300339);
insert into user(user_id) values(
3300340);
insert into user(user_id) values(
3300341);
insert into user(user_id) values(
3300342);
insert into user(user_id) values(
3300343);
insert into user(user_id) values(
3300344);
insert into user(user_id) values(
3300345);
insert into user(user_id) values(
3300346);
insert into user(user_id) values(
3300347);
insert into user(user_id) values(
3300348);
insert into user(user_id) values(
3300349);
insert into user(user_id) values(
3300350);
insert into user(user_id) values(
3300351);
insert into user(user_id) values(
3300352);
insert into user(user_id) values(
3300353);
insert into user(user_id) values(
3300354);
insert into user(user_id) values(
3300355);
insert into user(user_id) values(
3300356);
insert into user(user_id) values(
3300357);
insert into user(user_id) values(
3300358);
insert into user(user_id) values(
3300359);
insert into user(user_id) values(
3300360);
insert into user(user_id) values(
3300361);
insert into user(user_id) values(
3300362);
insert into user(user_id) values(
3300363);
insert into user(user_id) values(
3300364);
insert into user(user_id) values(
3300365);
insert into user(user_id) values(
3300366);
insert into user(user_id) values(
3300367);
insert into user(user_id) values(
3300368);
insert into user(user_id) values(
3300369);
insert into user(user_id) values(
3300370);
insert into user(user_id) values(
3300371);
insert into user(user_id) values(
3300372);
insert into user(user_id) values(
3300373);
insert into user(user_id) values(
3300374);
insert into user(user_id) values(
3300375);
insert into user(user_id) values(
3300376);
insert into user(user_id) values(
3300377);
insert into user(user_id) values(
3300378);
insert into user(user_id) values(
3300379);
insert into user(user_id) values(
3300380);
insert into user(user_id) values(
3300381);
insert into user(user_id) values(
3300382);
insert into user(user_id) values(
3300383);
insert into user(user_id) values(
3300384);
insert into user(user_id) values(
3300385);
insert into user(user_id) values(
3300386);
insert into user(user_id) values(
3300387);
insert into user(user_id) values(
3300388);
insert into user(user_id) values(
3300389);
insert into user(user_id) values(
3300390);
insert into user(user_id) values(
3300391);
insert into user(user_id) values(
3300392);
insert into user(user_id) values(
3300393);
insert into user(user_id) values(
3300394);
insert into user(user_id) values(
3300395);
insert into user(user_id) values(
3300396);
insert into user(user_id) values(
3300397);
insert into user(user_id) values(
3300398);
insert into user(user_id) values(
3300399);
insert into user(user_id) values(
3300400);
insert into user(user_id) values(
3300401);
insert into user(user_id) values(
3300402);
insert into user(user_id) values(
3300403);
insert into user(user_id) values(
3300404);
insert into user(user_id) values(
3300405);
insert into user(user_id) values(
3300406);
insert into user(user_id) values(
3300407);
insert into user(user_id) values(
3300408);
insert into user(user_id) values(
3300409);
insert into user(user_id) values(
3300410);
insert into user(user_id) values(
3300411);
insert into user(user_id) values(
3300412);
insert into user(user_id) values(
3300413);
insert into user(user_id) values(
3300414);
insert into user(user_id) values(
3300415);
insert into user(user_id) values(
3300416);
insert into user(user_id) values(
3300417);
insert into user(user_id) values(
3300418);
insert into user(user_id) values(
3300419);
insert into user(user_id) values(
3300420);
insert into user(user_id) values(
3300421);
insert into user(user_id) values(
3300422);
insert into user(user_id) values(
3300423);
insert into user(user_id) values(
3300424);
insert into user(user_id) values(
3300425);
insert into user(user_id) values(
3300426);
insert into user(user_id) values(
3300427);
insert into user(user_id) values(
3300428);
insert into user(user_id) values(
3300429);
insert into user(user_id) values(
3300430);
insert into user(user_id) values(
3300431);
insert into user(user_id) values(
3300432);
insert into user(user_id) values(
3300433);
insert into user(user_id) values(
3300434);
insert into user(user_id) values(
3300435);
insert into user(user_id) values(
3300436);
insert into user(user_id) values(
3300437);
insert into user(user_id) values(
3300438);
insert into user(user_id) values(
3300439);
insert into user(user_id) values(
3300440);
insert into user(user_id) values(
3300441);
insert into user(user_id) values(
3300442);
insert into user(user_id) values(
3300443);
insert into user(user_id) values(
3300444);
insert into user(user_id) values(
3300445);
insert into user(user_id) values(
3300446);
insert into user(user_id) values(
3300447);
insert into user(user_id) values(
3300448);
insert into user(user_id) values(
3300449);
insert into user(user_id) values(
3300450);
insert into user(user_id) values(
3300451);
insert into user(user_id) values(
3300452);
insert into user(user_id) values(
3300453);
insert into user(user_id) values(
3300454);
insert into user(user_id) values(
3300455);
insert into user(user_id) values(
3300456);
insert into user(user_id) values(
3300457);
insert into user(user_id) values(
3300458);
insert into user(user_id) values(
3300459);
insert into user(user_id) values(
3300460);
insert into user(user_id) values(
3300461);
insert into user(user_id) values(
3300462);
insert into user(user_id) values(
3300463);
insert into user(user_id) values(
3300464);
insert into user(user_id) values(
3300465);
insert into user(user_id) values(
3300466);
insert into user(user_id) values(
3300467);
insert into user(user_id) values(
3300468);
insert into user(user_id) values(
3300469);
insert into user(user_id) values(
3300470);
insert into user(user_id) values(
3300471);
insert into user(user_id) values(
3300472);
insert into user(user_id) values(
3300473);
insert into user(user_id) values(
3300474);
insert into user(user_id) values(
3300475);
insert into user(user_id) values(
3300476);
insert into user(user_id) values(
3300477);
insert into user(user_id) values(
3300478);
insert into user(user_id) values(
3300479);
insert into user(user_id) values(
3300480);
insert into user(user_id) values(
3300481);
insert into user(user_id) values(
3300482);
insert into user(user_id) values(
3300483);
insert into user(user_id) values(
3300484);
insert into user(user_id) values(
3300485);
insert into user(user_id) values(
3300486);
insert into user(user_id) values(
3300487);
insert into user(user_id) values(
3300488);
insert into user(user_id) values(
3300489);
insert into user(user_id) values(
3300490);
insert into user(user_id) values(
3300491);
insert into user(user_id) values(
3300492);
insert into user(user_id) values(
3300493);
insert into user(user_id) values(
3300494);
insert into user(user_id) values(
3300495);
insert into user(user_id) values(
3300496);
insert into user(user_id) values(
3300497);
insert into user(user_id) values(
3300498);
insert into user(user_id) values(
3300499);
insert into user(user_id) values(
3300500);
insert into user(user_id) values(
3300501);
insert into user(user_id) values(
3300502);
insert into user(user_id) values(
3300503);
insert into user(user_id) values(
3300504);
insert into user(user_id) values(
3300505);
insert into user(user_id) values(
3300506);
insert into user(user_id) values(
3300507);
insert into user(user_id) values(
3300508);
insert into user(user_id) values(
3300509);
insert into user(user_id) values(
3300510);
insert into user(user_id) values(
3300511);
insert into user(user_id) values(
3300512);
insert into user(user_id) values(
3300513);
insert into user(user_id) values(
3300514);
insert into user(user_id) values(
3300515);
insert into user(user_id) values(
3300516);
insert into user(user_id) values(
3300517);
insert into user(user_id) values(
3300518);
insert into user(user_id) values(
3300519);
insert into user(user_id) values(
3300520);
insert into user(user_id) values(
3300521);
insert into user(user_id) values(
3300522);
insert into user(user_id) values(
3300523);
insert into user(user_id) values(
3300524);
insert into user(user_id) values(
3300525);
insert into user(user_id) values(
3300526);
insert into user(user_id) values(
3300527);
insert into user(user_id) values(
3300528);
insert into user(user_id) values(
3300529);
insert into user(user_id) values(
3300530);
insert into user(user_id) values(
3300531);
insert into user(user_id) values(
3300532);
insert into user(user_id) values(
3300533);
insert into user(user_id) values(
3300534);
insert into user(user_id) values(
3300535);
insert into user(user_id) values(
3300536);
insert into user(user_id) values(
3300537);
insert into user(user_id) values(
3300538);
insert into user(user_id) values(
3300539);
insert into user(user_id) values(
3300540);
insert into user(user_id) values(
3300541);
insert into user(user_id) values(
3300542);
insert into user(user_id) values(
3300543);
insert into user(user_id) values(
3300544);
insert into user(user_id) values(
3300545);
insert into user(user_id) values(
3300546);
insert into user(user_id) values(
3300547);
insert into user(user_id) values(
3300548);
insert into user(user_id) values(
3300549);
insert into user(user_id) values(
3300550);
insert into user(user_id) values(
3300551);
insert into user(user_id) values(
3300552);
insert into user(user_id) values(
3300553);
insert into user(user_id) values(
3300554);
insert into user(user_id) values(
3300555);
insert into user(user_id) values(
3300556);
insert into user(user_id) values(
3300557);
insert into user(user_id) values(
3300558);
insert into user(user_id) values(
3300559);
insert into user(user_id) values(
3300560);
insert into user(user_id) values(
3300561);
insert into user(user_id) values(
3300562);
insert into user(user_id) values(
3300563);
insert into user(user_id) values(
3300564);
insert into user(user_id) values(
3300565);
insert into user(user_id) values(
3300566);
insert into user(user_id) values(
3300567);
insert into user(user_id) values(
3300568);
insert into user(user_id) values(
3300569);
insert into user(user_id) values(
3300570);
insert into user(user_id) values(
3300571);
insert into user(user_id) values(
3300572);
insert into user(user_id) values(
3300573);
insert into user(user_id) values(
3300574);
insert into user(user_id) values(
3300575);
insert into user(user_id) values(
3300576);
insert into user(user_id) values(
3300577);
insert into user(user_id) values(
3300578);
insert into user(user_id) values(
3300579);
insert into user(user_id) values(
3300580);
insert into user(user_id) values(
3300581);
insert into user(user_id) values(
3300582);
insert into user(user_id) values(
3300583);
insert into user(user_id) values(
3300584);
insert into user(user_id) values(
3300585);
insert into user(user_id) values(
3300586);
insert into user(user_id) values(
3300587);
insert into user(user_id) values(
3300588);
insert into user(user_id) values(
3300589);
insert into user(user_id) values(
3300590);
insert into user(user_id) values(
3300591);
insert into user(user_id) values(
3300592);
insert into user(user_id) values(
3300593);
insert into user(user_id) values(
3300594);
insert into user(user_id) values(
3300595);
insert into user(user_id) values(
3300596);
insert into user(user_id) values(
3300597);
insert into user(user_id) values(
3300598);
insert into user(user_id) values(
3300599);
insert into user(user_id) values(
3300600);
insert into user(user_id) values(
3300601);
insert into user(user_id) values(
3300602);
insert into user(user_id) values(
3300603);
insert into user(user_id) values(
3300604);
insert into user(user_id) values(
3300605);
insert into user(user_id) values(
3300606);
insert into user(user_id) values(
3300607);
insert into user(user_id) values(
3300608);
insert into user(user_id) values(
3300609);
insert into user(user_id) values(
3300610);
insert into user(user_id) values(
3300611);
insert into user(user_id) values(
3300612);
insert into user(user_id) values(
3300613);
insert into user(user_id) values(
3300614);
insert into user(user_id) values(
3300615);
insert into user(user_id) values(
3300616);
insert into user(user_id) values(
3300617);
insert into user(user_id) values(
3300618);
insert into user(user_id) values(
3300619);
insert into user(user_id) values(
3300620);
insert into user(user_id) values(
3300621);
insert into user(user_id) values(
3300622);
insert into user(user_id) values(
3300623);
insert into user(user_id) values(
3300624);
insert into user(user_id) values(
3300625);
insert into user(user_id) values(
3300626);
insert into user(user_id) values(
3300627);
insert into user(user_id) values(
3300628);
insert into user(user_id) values(
3300629);
insert into user(user_id) values(
3300630);
insert into user(user_id) values(
3300631);
insert into user(user_id) values(
3300632);
insert into user(user_id) values(
3300633);
insert into user(user_id) values(
3300634);
insert into user(user_id) values(
3300635);
insert into user(user_id) values(
3300636);
insert into user(user_id) values(
3300637);
insert into user(user_id) values(
3300638);
insert into user(user_id) values(
3300639);
insert into user(user_id) values(
3300640);
insert into user(user_id) values(
3300641);
insert into user(user_id) values(
3300642);
insert into user(user_id) values(
3300643);
insert into user(user_id) values(
3300644);
insert into user(user_id) values(
3300645);
insert into user(user_id) values(
3300646);
insert into user(user_id) values(
3300647);
insert into user(user_id) values(
3300648);
insert into user(user_id) values(
3300649);
insert into user(user_id) values(
3300650);
insert into user(user_id) values(
3300651);
insert into user(user_id) values(
3300652);
insert into user(user_id) values(
3300653);
insert into user(user_id) values(
3300654);
insert into user(user_id) values(
3300655);
insert into user(user_id) values(
3300656);
insert into user(user_id) values(
3300657);
insert into user(user_id) values(
3300658);
insert into user(user_id) values(
3300659);
insert into user(user_id) values(
3300660);
insert into user(user_id) values(
3300661);
insert into user(user_id) values(
3300662);
insert into user(user_id) values(
3300663);
insert into user(user_id) values(
3300664);
insert into user(user_id) values(
3300665);
insert into user(user_id) values(
3300666);
insert into user(user_id) values(
3300667);
insert into user(user_id) values(
3300668);
insert into user(user_id) values(
3300669);
insert into user(user_id) values(
3300670);
insert into user(user_id) values(
3300671);
insert into user(user_id) values(
3300672);
insert into user(user_id) values(
3300673);
insert into user(user_id) values(
3300674);
insert into user(user_id) values(
3300675);
insert into user(user_id) values(
3300676);
insert into user(user_id) values(
3300677);
insert into user(user_id) values(
3300678);
insert into user(user_id) values(
3300679);
insert into user(user_id) values(
3300680);
insert into user(user_id) values(
3300681);
insert into user(user_id) values(
3300682);
insert into user(user_id) values(
3300683);
insert into user(user_id) values(
3300684);
insert into user(user_id) values(
3300685);
insert into user(user_id) values(
3300686);
insert into user(user_id) values(
3300687);
insert into user(user_id) values(
3300688);
insert into user(user_id) values(
3300689);
insert into user(user_id) values(
3300690);
insert into user(user_id) values(
3300691);
insert into user(user_id) values(
3300692);
insert into user(user_id) values(
3300693);
insert into user(user_id) values(
3300694);
insert into user(user_id) values(
3300695);
insert into user(user_id) values(
3300696);
insert into user(user_id) values(
3300697);
insert into user(user_id) values(
3300698);
insert into user(user_id) values(
3300699);
insert into user(user_id) values(
3300700);
insert into user(user_id) values(
3300701);
insert into user(user_id) values(
3300702);
insert into user(user_id) values(
3300703);
insert into user(user_id) values(
3300704);
insert into user(user_id) values(
3300705);
insert into user(user_id) values(
3300706);
insert into user(user_id) values(
3300707);
insert into user(user_id) values(
3300708);
insert into user(user_id) values(
3300709);
insert into user(user_id) values(
3300710);
insert into user(user_id) values(
3300711);
insert into user(user_id) values(
3300712);
insert into user(user_id) values(
3300713);
insert into user(user_id) values(
3300714);
insert into user(user_id) values(
3300715);
insert into user(user_id) values(
3300716);
insert into user(user_id) values(
3300717);
insert into user(user_id) values(
3300718);
insert into user(user_id) values(
3300719);
insert into user(user_id) values(
3300720);
insert into user(user_id) values(
3300721);
insert into user(user_id) values(
3300722);
insert into user(user_id) values(
3300723);
insert into user(user_id) values(
3300724);
insert into user(user_id) values(
3300725);
insert into user(user_id) values(
3300726);
insert into user(user_id) values(
3300727);
insert into user(user_id) values(
3300728);
insert into user(user_id) values(
3300729);
insert into user(user_id) values(
3300730);
insert into user(user_id) values(
3300731);
insert into user(user_id) values(
3300732);
insert into user(user_id) values(
3300733);
insert into user(user_id) values(
3300734);
insert into user(user_id) values(
3300735);
insert into user(user_id) values(
3300736);
insert into user(user_id) values(
3300737);
insert into user(user_id) values(
3300738);
insert into user(user_id) values(
3300739);
insert into user(user_id) values(
3300740);
insert into user(user_id) values(
3300741);
insert into user(user_id) values(
3300742);
insert into user(user_id) values(
3300743);
insert into user(user_id) values(
3300744);
insert into user(user_id) values(
3300745);
insert into user(user_id) values(
3300746);
insert into user(user_id) values(
3300747);
insert into user(user_id) values(
3300748);
insert into user(user_id) values(
3300749);
insert into user(user_id) values(
3300750);
insert into user(user_id) values(
3300751);
insert into user(user_id) values(
3300752);
insert into user(user_id) values(
3300753);
insert into user(user_id) values(
3300754);
insert into user(user_id) values(
3300755);
insert into user(user_id) values(
3300756);
insert into user(user_id) values(
3300757);
insert into user(user_id) values(
3300758);
insert into user(user_id) values(
3300759);
insert into user(user_id) values(
3300760);
insert into user(user_id) values(
3300761);
insert into user(user_id) values(
3300762);
insert into user(user_id) values(
3300763);
insert into user(user_id) values(
3300764);
insert into user(user_id) values(
3300765);
insert into user(user_id) values(
3300766);
insert into user(user_id) values(
3300767);
insert into user(user_id) values(
3300768);
insert into user(user_id) values(
3300769);
insert into user(user_id) values(
3300770);
insert into user(user_id) values(
3300771);
insert into user(user_id) values(
3300772);
insert into user(user_id) values(
3300773);
insert into user(user_id) values(
3300774);
insert into user(user_id) values(
3300775);
insert into user(user_id) values(
3300776);
insert into user(user_id) values(
3300777);
insert into user(user_id) values(
3300778);
insert into user(user_id) values(
3300779);
insert into user(user_id) values(
3300780);
insert into user(user_id) values(
3300781);
insert into user(user_id) values(
3300782);
insert into user(user_id) values(
3300783);
insert into user(user_id) values(
3300784);
insert into user(user_id) values(
3300785);
insert into user(user_id) values(
3300786);
insert into user(user_id) values(
3300787);
insert into user(user_id) values(
3300788);
insert into user(user_id) values(
3300789);
insert into user(user_id) values(
3300790);
insert into user(user_id) values(
3300791);
insert into user(user_id) values(
3300792);
insert into user(user_id) values(
3300793);
insert into user(user_id) values(
3300794);
insert into user(user_id) values(
3300795);
insert into user(user_id) values(
3300796);
insert into user(user_id) values(
3300797);
insert into user(user_id) values(
3300798);
insert into user(user_id) values(
3300799);
insert into user(user_id) values(
3300800);
insert into user(user_id) values(
3300801);
insert into user(user_id) values(
3300802);
insert into user(user_id) values(
3300803);
insert into user(user_id) values(
3300804);
insert into user(user_id) values(
3300805);
insert into user(user_id) values(
3300806);
insert into user(user_id) values(
3300807);
insert into user(user_id) values(
3300808);
insert into user(user_id) values(
3300809);
insert into user(user_id) values(
3300810);
insert into user(user_id) values(
3300811);
insert into user(user_id) values(
3300812);
insert into user(user_id) values(
3300813);
insert into user(user_id) values(
3300814);
insert into user(user_id) values(
3300815);
insert into user(user_id) values(
3300816);
insert into user(user_id) values(
3300817);
insert into user(user_id) values(
3300818);
insert into user(user_id) values(
3300819);
insert into user(user_id) values(
3300820);
insert into user(user_id) values(
3300821);
insert into user(user_id) values(
3300822);
insert into user(user_id) values(
3300823);
insert into user(user_id) values(
3300824);
insert into user(user_id) values(
3300825);
insert into user(user_id) values(
3300826);
insert into user(user_id) values(
3300827);
insert into user(user_id) values(
3300828);
insert into user(user_id) values(
3300829);
insert into user(user_id) values(
3300830);
insert into user(user_id) values(
3300831);
insert into user(user_id) values(
3300832);
insert into user(user_id) values(
3300833);
insert into user(user_id) values(
3300834);
insert into user(user_id) values(
3300835);
insert into user(user_id) values(
3300836);
insert into user(user_id) values(
3300837);
insert into user(user_id) values(
3300838);
insert into user(user_id) values(
3300839);
insert into user(user_id) values(
3300840);
insert into user(user_id) values(
3300841);
insert into user(user_id) values(
3300842);
insert into user(user_id) values(
3300843);
insert into user(user_id) values(
3300844);
insert into user(user_id) values(
3300845);
insert into user(user_id) values(
3300846);
insert into user(user_id) values(
3300847);
insert into user(user_id) values(
3300848);
insert into user(user_id) values(
3300849);
insert into user(user_id) values(
3300850);
insert into user(user_id) values(
3300851);
insert into user(user_id) values(
3300852);
insert into user(user_id) values(
3300853);
insert into user(user_id) values(
3300854);
insert into user(user_id) values(
3300855);
insert into user(user_id) values(
3300856);
insert into user(user_id) values(
3300857);
insert into user(user_id) values(
3300858);
insert into user(user_id) values(
3300859);
insert into user(user_id) values(
3300860);
insert into user(user_id) values(
3300861);
insert into user(user_id) values(
3300862);
insert into user(user_id) values(
3300863);
insert into user(user_id) values(
3300864);
insert into user(user_id) values(
3300865);
insert into user(user_id) values(
3300866);
insert into user(user_id) values(
3300867);
insert into user(user_id) values(
3300868);
insert into user(user_id) values(
3300869);
insert into user(user_id) values(
3300870);
insert into user(user_id) values(
3300871);
insert into user(user_id) values(
3300872);
insert into user(user_id) values(
3300873);
insert into user(user_id) values(
3300874);
insert into user(user_id) values(
3300875);
insert into user(user_id) values(
3300876);
insert into user(user_id) values(
3300877);
insert into user(user_id) values(
3300878);
insert into user(user_id) values(
3300879);
insert into user(user_id) values(
3300880);
insert into user(user_id) values(
3300881);
insert into user(user_id) values(
3300882);
insert into user(user_id) values(
3300883);
insert into user(user_id) values(
3300884);
insert into user(user_id) values(
3300885);
insert into user(user_id) values(
3300886);
insert into user(user_id) values(
3300887);
insert into user(user_id) values(
3300888);
insert into user(user_id) values(
3300889);
insert into user(user_id) values(
3300890);
insert into user(user_id) values(
3300891);
insert into user(user_id) values(
3300892);
insert into user(user_id) values(
3300893);
insert into user(user_id) values(
3300894);
insert into user(user_id) values(
3300895);
insert into user(user_id) values(
3300896);
insert into user(user_id) values(
3300897);
insert into user(user_id) values(
3300898);
insert into user(user_id) values(
3300899);
insert into user(user_id) values(
3300900);
insert into user(user_id) values(
3300901);
insert into user(user_id) values(
3300902);
insert into user(user_id) values(
3300903);
insert into user(user_id) values(
3300904);
insert into user(user_id) values(
3300905);
insert into user(user_id) values(
3300906);
insert into user(user_id) values(
3300907);
insert into user(user_id) values(
3300908);
insert into user(user_id) values(
3300909);
insert into user(user_id) values(
3300910);
insert into user(user_id) values(
3300911);
insert into user(user_id) values(
3300912);
insert into user(user_id) values(
3300913);
insert into user(user_id) values(
3300914);
insert into user(user_id) values(
3300915);
insert into user(user_id) values(
3300916);
insert into user(user_id) values(
3300917);
insert into user(user_id) values(
3300918);
insert into user(user_id) values(
3300919);
insert into user(user_id) values(
3300920);
insert into user(user_id) values(
3300921);
insert into user(user_id) values(
3300922);
insert into user(user_id) values(
3300923);
insert into user(user_id) values(
3300924);
insert into user(user_id) values(
3300925);
insert into user(user_id) values(
3300926);
insert into user(user_id) values(
3300927);
insert into user(user_id) values(
3300928);
insert into user(user_id) values(
3300929);
insert into user(user_id) values(
3300930);
insert into user(user_id) values(
3300931);
insert into user(user_id) values(
3300932);
insert into user(user_id) values(
3300933);
insert into user(user_id) values(
3300934);
insert into user(user_id) values(
3300935);
insert into user(user_id) values(
3300936);
insert into user(user_id) values(
3300937);
insert into user(user_id) values(
3300938);
insert into user(user_id) values(
3300939);
insert into user(user_id) values(
3300940);
insert into user(user_id) values(
3300941);
insert into user(user_id) values(
3300942);
insert into user(user_id) values(
3300943);
insert into user(user_id) values(
3300944);
insert into user(user_id) values(
3300945);
insert into user(user_id) values(
3300946);
insert into user(user_id) values(
3300947);
insert into user(user_id) values(
3300948);
insert into user(user_id) values(
3300949);
insert into user(user_id) values(
3300950);
insert into user(user_id) values(
3300951);
insert into user(user_id) values(
3300952);
insert into user(user_id) values(
3300953);
insert into user(user_id) values(
3300954);
insert into user(user_id) values(
3300955);
insert into user(user_id) values(
3300956);
insert into user(user_id) values(
3300957);
insert into user(user_id) values(
3300958);
insert into user(user_id) values(
3300959);
insert into user(user_id) values(
3300960);
insert into user(user_id) values(
3300961);
insert into user(user_id) values(
3300962);
insert into user(user_id) values(
3300963);
insert into user(user_id) values(
3300964);
insert into user(user_id) values(
3300965);
insert into user(user_id) values(
3300966);
insert into user(user_id) values(
3300967);
insert into user(user_id) values(
3300968);
insert into user(user_id) values(
3300969);
insert into user(user_id) values(
3300970);
insert into user(user_id) values(
3300971);
insert into user(user_id) values(
3300972);
insert into user(user_id) values(
3300973);
insert into user(user_id) values(
3300974);
insert into user(user_id) values(
3300975);
insert into user(user_id) values(
3300976);
insert into user(user_id) values(
3300977);
insert into user(user_id) values(
3300978);
insert into user(user_id) values(
3300979);
insert into user(user_id) values(
3300980);
insert into user(user_id) values(
3300981);
insert into user(user_id) values(
3300982);
insert into user(user_id) values(
3300983);
insert into user(user_id) values(
3300984);
insert into user(user_id) values(
3300985);
insert into user(user_id) values(
3300986);
insert into user(user_id) values(
3300987);
insert into user(user_id) values(
3300988);
insert into user(user_id) values(
3300989);
insert into user(user_id) values(
3300990);
insert into user(user_id) values(
3300991);
insert into user(user_id) values(
3300992);
insert into user(user_id) values(
3300993);
insert into user(user_id) values(
3300994);
insert into user(user_id) values(
3300995);
insert into user(user_id) values(
3300996);
insert into user(user_id) values(
3300997);
insert into user(user_id) values(
3300998);


/*--Account--*/

insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300000, 'vlad', 'Portsmouth', 'vlad.Portsmouth@outlook.com', '2u6b2z9g2w6p4p6n2h1y3h0w0r4y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300001, 'erskine', 'Szpilfogel', 'erskine.Szpilfogel@university.com', '9i8a0y2r0z9e7f0c3r1q3k4u0j9e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300002, 'tuckie', 'nanon', 'tuckie.nanon@organization.com', '9d1w6x9i3e9q3x8l1h8p7z9f2x5x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300003, 'mitchell', 'Chunn', 'mitchell.Chunn@icloud.com', '2g9g5m9y9d6i8u5l3c5e4c8j9a6d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300004, 'charity', 'Brunet', 'charity.Brunet@outlook.com', '9j2t8n6h0m9k8c2g4t3f8c5j4b9k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300005, 'fonzie', 'Thorne', 'fonzie.Thorne@yahoo.com', '5j5h5i6z2g1r1b8w2y8f2u4p3x4j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300006, 'maurise', 'Pruett', 'maurise.Pruett@organization.com', '8l7q6c6q9l8x5m6e1b0s4j2g1r0t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300007, 'julita', 'McMichael', 'julita.McMichael@university.com', '2k1j6b2r7c4k9a2t4k9s5o7b6y6o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300008, 'mar', 'Bujold', 'mar.Bujold@university.com', '1w5b7c0g1s8i7j4e3d0e3b4a0v9i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300009, 'bar', 'Pizzimenti', 'bar.Pizzimenti@gmail.com', '0v0n0a3r4c2y4j2i3k4w4e8r7c1o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300010, 'millie', 'Robitaille', 'millie.Robitaille@organization.com', '3c6r6x3k3h9u9p9a1u4o0p2a8q0c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300011, 'hugues', 'Monet', 'hugues.Monet@gmail.com', '5z5i2m7r9z1p5s6v7i7a5m8g4i7p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300012, 'victor', 'Reiser', 'victor.Reiser@gmail.com', '2l3e2p9r0u1x1n6g9w1r5b7h2g7w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300013, 'quentin', 'Reade', 'quentin.Reade@university.com', '0o4p5u3w2f3o7f6q8e4f9r6f0v7h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300014, 'theodore', 'Stokker', 'theodore.Stokker@gmail.com', '9f1y1n9z8p5c1t7q7g1a2p1j5m8s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300015, 'cecilla', 'Hourigan', 'cecilla.Hourigan@outlook.com', '4s7p9e6x3r6y6h6e9x6d9w4u6v0h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300016, 'rodolfo', 'Venturini', 'rodolfo.Venturini@outlook.com', '1w1x8i6l7c5u9z8m6s9b8g7l1p5v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300017, 'jone', 'Schittl', 'jone.Schittl@hotmail.com', '2i6r1p7s0o3d3q9m0x4d8m5g1u8h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300018, 'jobyna', 'larche', 'jobyna.larche@company.com', '1z5a6o4e2m9i5s5u1w2h8u0x1m8m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300019, 'merrili', 'Auerbach', 'merrili.Auerbach@company.com', '8x8y9y3q1n2w8q7y4x2t8m9g6w3b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300020, 'akim', 'gilmour', 'akim.gilmour@organization.com', '7r0d8n2g3o1n4a3y6z3e3d9g5g2w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300021, 'pernell', 'Kelemen', 'pernell.Kelemen@gmail.com', '0m9e8p8x1r0f9h8o4i8f8s8b2n4h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300022, 'lindy', 'Castaban', 'lindy.Castaban@icloud.com', '7m9g2a5q2j9j7n8h5v1y7i9g3o5o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300023, 'alvis', 'yu-hung', 'alvis.yu-hung@university.com', '3n9r5y6l1y6i3y5m8j2g4l1e6b5s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300024, 'nell', 'Sewell', 'nell.Sewell@live.com', '3r4w4x6y1s7u1w1w7p2j4h2v0w2g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300025, 'arch', 'Ruck', 'arch.Ruck@organization.com', '7e8m0s8p0f5p1q0j1g7s5t8m4n9n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300026, 'grant', 'Wimberley', 'grant.Wimberley@university.com', '2o3b8d4t4b5w8j2u5h3y5t4k9d8v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300027, 'marty', 'kunjal', 'marty.kunjal@organization.com', '7m7j2e3q0p3t2x0f0m7j5v2o2j5i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300028, 'gertruda', 'brassard', 'gertruda.brassard@company.com', '1j7e5d6r3p9v6c2v7k2c6d5m3h6g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300029, 'eberhard', 'Hearnden', 'eberhard.Hearnden@yahoo.com', '3k2j5p0k6u5c0d2i7w2m2h9x8g3r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300030, 'beilul', 'Crossley', 'beilul.Crossley@organization.com', '8g2a1b2g0d2y1p5g6l5w9o7s0d8x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300031, 'hershel', 'Oransky', 'hershel.Oransky@gmail.com', '5v8v3d9y4f3w9f0z9n8s6r4p3v2c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300032, 'ado', 'Boggild', 'ado.Boggild@outlook.com', '8h2n4o0l7z9b2q0b8k0m7s8n2b0q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300033, 'brooks', 'Chui', 'brooks.Chui@gmail.com', '6r6b7l7o6r8y5m2z6d4s7u3s9w2v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300034, 'douglas', 'Sebastian', 'douglas.Sebastian@icloud.com', '1j2w9m4n6q5t1m6e9t1x2v5l2u5o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300035, 'wendeline', 'Patten', 'wendeline.Patten@outlook.com', '5b1x9w0m9c6x0m1p1x3o2c0g8d1w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300036, 'garnette', 'Bopp', 'garnette.Bopp@live.com', '0j5a4o7c3f0m4o2g6i8s5l7q1l5j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300037, 'simone', 'biggs', 'simone.biggs@university.com', '5g7k2b1f0v0d0v2o3s0b9i0n5t7m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300038, 'rosie', 'Hudgins', 'rosie.Hudgins@organization.com', '5g0v0t7a6q1m3w4k2c5x1g3a7l7g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300039, 'jeremias', 'metzger', 'jeremias.metzger@organization.com', '7v0j6o1f2n0r0a1o0d9m1b9s1n2g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300040, 'camella', 'Wolter', 'camella.Wolter@company.com', '1h3x7v7w7i2z9g4i9f7s2f8a4p3y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300041, 'gilligan', 'Boatwright', 'gilligan.Boatwright@university.com', '0j3w3w7j8o1d7p7e6n9j6d1s3w0p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300042, 'gardie', 'Chopowick', 'gardie.Chopowick@hotmail.com', '8o6u0x4z2i7v4a0i7p6c8v1u1z3a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300043, 'stacee', 'Hagan', 'stacee.Hagan@organization.com', '4o1e8o5t5q9o1o4m9g0t1c6l2a8w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300044, 'gates', 'Beck', 'gates.Beck@organization.com', '1i4z3q7r0t0k4u0j6t4h2k5a8x7p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300045, 'gavra', 'aubrie', 'gavra.aubrie@university.com', '6k2m3q8i8r3w8c3k8x2f8x4h0l2z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300046, 'fredelia', 'Whitehurst', 'fredelia.Whitehurst@organization.com', '7e6j2t5r7g6g9v5m3i9h1a4t3w0a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300047, 'windham', 'Odile', 'windham.Odile@yahoo.com', '8f5w9u7t0m0j0n1o8p1p6l2s8c4a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300048, 'brigit', 'partha', 'brigit.partha@gmail.com', '0w5m5m6a5r0f2p9d3g3z2h4w7v0c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300049, 'nelli', 'klapper', 'nelli.klapper@icloud.com', '0a2h2i3m0i1n7q2w5p8s2y9v2d9b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300050, 'netta', 'Patey', 'netta.Patey@company.com', '1v1u2k0j3g9h5c7p1k6y2x2v2b5j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300051, 'ede', 'Rehel', 'ede.Rehel@outlook.com', '6m8h3l4y7h6h3g0s8k6t1n5h5z4w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300052, 'jamaal', 'osgood', 'jamaal.osgood@icloud.com', '3m7n2d6f6k1l9d3o9g9e5o5o5w1m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300053, 'elana', 'tome', 'elana.tome@outlook.com', '3w4w5t6z4y8c0q5j2n6k5d9t5i7a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300054, 'greggory', 'Ifill', 'greggory.Ifill@company.com', '1k0h0s5r6z0f9y6d6m9o2k4o9f3j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300055, 'bear', 'mcallum', 'bear.mcallum@yahoo.com', '0v6x0v1r1w8a1q5h2u4o6h2x3y7o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300056, 'morena', "D'lima", "morena.D'lima@gmail.com", '0t3b0x4j4l7z5n2n2l0b8e9p1m0h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300057, 'anjela', 'Mecteau', 'anjela.Mecteau@organization.com', '3m0f2z3j7l4y1h2h6u3e9s2i3y3a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300058, 'blanche', 'Medard', 'blanche.Medard@icloud.com', '5g7z5l0g8e8u6n3j6c6d4o1i0k1o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300059, 'germaine', 'Rahn', 'germaine.Rahn@live.com', '9z4i6s2s6x8v6n3d1w5l2y3i7m2c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300060, 'lizette', 'blinnie', 'lizette.blinnie@yahoo.com', '5w7a7m4g9b9l3d6y8u7e4u2z3h1x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300061, 'phillip', 'Habel', 'phillip.Habel@gmail.com', '4f7q3g7e9f1v8d8d6k0i4u3k2o1q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300062, 'garnette', 'NetTeam', 'garnette.NetTeam@outlook.com', '9x6c2q4b3u3n0y5f8c2o8r0n4z7p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300063, 'stanislas', 'Aziz', 'stanislas.Aziz@company.com', '2g4s1l1u3e4f0e1d6b5h6t3a9w4k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300064, 'ignacius', 'Sandhar', 'ignacius.Sandhar@organization.com', '6t0v8r9p3s0q4w7w0s5v6d4j7f3g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300065, 'denis', 'Pittam', 'denis.Pittam@live.com', '0p1e4h3d1v8u4x8s3s2e8v5l3k2v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300066, 'markos', 'maren', 'markos.maren@university.com', '7v4o0n0w5b1y5d8b8z2n0v1c7d6e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300067, 'lethia', 'Renfro', 'lethia.Renfro@live.com', '2h4b9x5k6m2o6a2h5w8q4x6g4a0b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300068, 'culver', 'Handschy', 'culver.Handschy@yahoo.com', '2b6a7z1c1e6j2f9e5v6a7l7y9y5c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300069, 'maddie', 'Lennig', 'maddie.Lennig@yahoo.com', '5q1l9m2i2q0y2g2x1q9y9v3k3r0t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300070, 'roley', 'Dooley', 'roley.Dooley@hotmail.com', '4p7e0b1b8l5y6r3p8r0b7k6p7w1f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300071, 'christie', 'Mong', 'christie.Mong@gmail.com', '5k1h1n7m3x4i4k0g8y5a3i8q7n9o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300072, 'kendell', 'Yearwood', 'kendell.Yearwood@yahoo.com', '8s2u2a1e7k9s2n5w5n7j1y6x2q4v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300073, 'heywood', 'Caruth', 'heywood.Caruth@yahoo.com', '5u6j4p7d5u5x9z8p6b4r1c7a7c8a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300074, 'durant', 'Styver', 'durant.Styver@yahoo.com', '9p3z3y0h8h4p8h6s3n0i8y4p0d9j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300075, 'tiertza', 'Ocampo', 'tiertza.Ocampo@organization.com', '6y5h8h9d3n9c6x4e5x1x6y1i3y0g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300076, 'gilbertine', 'Magnus', 'gilbertine.Magnus@university.com', '6u3w2v0j4m0g7v1y8o2f1o9y0f3z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300077, 'neel', 'Thain', 'neel.Thain@live.com', '8j5c2p6v4r5e5g4b1q7f3k3z3s8b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300078, 'kipp', 'michigan', 'kipp.michigan@company.com', '9v5q5h2l7v7q1k7a9u1t1w0s7x2q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300079, 'deni', 'Ghantous', 'deni.Ghantous@university.com', '8j5k6o1i0v8n3r0s5v4j7x8u6q1v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300080, 'katalin', 'Skaff', 'katalin.Skaff@outlook.com', '3g6d5a4x5d1u7y2n1g5a9u8w3z9o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300081, 'arley', 'Antoft', 'arley.Antoft@company.com', '0d6o2w9h1u8g9o7k5z5l0y9e6d4u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300082, 'desiri', 'Mackinnon', 'desiri.Mackinnon@hotmail.com', '4l4j4s0t1s6k4r1b8n2z3g8s0w1u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300083, 'louise', 'Timm', 'louise.Timm@company.com', '5u7o9c3v9w7u4k2o4u9z4z5i8u2f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300084, 'fidelity', 'Khanna', 'fidelity.Khanna@company.com', '6h1x1c3d5y1n8w0j6m3x1u2m2f0l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300085, 'martynne', 'Taverner', 'martynne.Taverner@university.com', '7n8s3i1k3b0m6k7k8s2q2g8s5c1j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300086, 'caro', 'Crain', 'caro.Crain@hotmail.com', '7w3f5p2g0f5n4z4p5r0j5i4q2r9a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300087, 'jonis', 'Dandurand', 'jonis.Dandurand@hotmail.com', '6n0o3j8u1d9t3r7i1a6u2z8r3k0z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300088, 'madella', 'Gateley', 'madella.Gateley@gmail.com', '3t0i7m3e2h9c3z7r5d0o2v3f5m9l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300089, 'bernardo', 'Sakenov', 'bernardo.Sakenov@outlook.com', '2c2r6k9i5j8q7p5j9r5a8q1z1p4b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300090, 'korella', 'Broulik', 'korella.Broulik@hotmail.com', '1c3q6s4v2j6a8o9b1a3t3n2x2d6z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300091, 'tiler', 'Feder', 'tiler.Feder@university.com', '0d6a0u8g7b9q1y6h5u5w2a1u3x8e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300092, 'mischa', 'Paryag', 'mischa.Paryag@hotmail.com', '4g8e4w5a4o4q8o7t9j8d8v2b6p5y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300093, 'layney', 'Benefield', 'layney.Benefield@university.com', '4j8u8x0e3y5y3j2f0o5u1c7s0t8v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300094, 'averill', 'Comeau', 'averill.Comeau@outlook.com', '3i0g5q0e0i6i7x2i4g3s0g0j3n0v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300095, 'gert', 'Elzer', 'gert.Elzer@live.com', '0x9s3f9f2q9y9u4n7k4k3x9g8j1v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300096, 'carla', 'DeFazio', 'carla.DeFazio@hotmail.com', '0k1u1j6w3m7w2s6v5l8g6x1x8d3k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300097, 'harwilll', 'Hagglund', 'harwilll.Hagglund@organization.com', '7k3x2x1j9q4y6m6r3f5k2t1z3v9j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300098, 'wallas', 'Baumgarten', 'wallas.Baumgarten@outlook.com', '0h5d1k7l1z7o8l4y8i3r8y4l8c2c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300099, 'lavina', 'Prosyk', 'lavina.Prosyk@yahoo.com', '9x1g6d6i3q3c0i4j6n4z7w3b9f2d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300100, 'aveline', 'wahbe', 'aveline.wahbe@live.com', '3h5f4n4s1g2h0a9d6u5d0d1u7s4z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300101, 'tommie', 'Merriweather', 'tommie.Merriweather@gmail.com', '8l2c3o5x6j2h6r3k2c4f7n3p9d1s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300102, 'camey', 'Polesie', 'camey.Polesie@organization.com', '2e4q6a2b7u5k3m9l5p0b3z3s2s4r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300103, 'stafani', 'Brown', 'stafani.Brown@university.com', '4f2y7b0r6o2v0u6m8a2c9t7y0j7k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300104, 'borden', 'Lamontagne', 'borden.Lamontagne@outlook.com', '3r8q5k4k8c0x1w4p7f5v5t2z8h7r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300105, 'lambert', 'Keller', 'lambert.Keller@outlook.com', '3x1l8a9n1d9y2r7n1w9u6y2w6m4f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300106, 'taite', 'Geneau', 'taite.Geneau@yahoo.com', '8o0u0l6x8h7y9n4i9f5g6k9k8y7g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300107, 'barde', 'Werdin', 'barde.Werdin@yahoo.com', '9t8a3s7m7q4s8k2n1n6g0f7o8v9f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300108, 'park', 'Hall', 'park.Hall@yahoo.com', '7j4f6a8f5b7g5x7b5t8d9x5n4l3l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300109, 'anabal', 'Nyberg', 'anabal.Nyberg@live.com', '1j8d7l7j5y9q7z7d6y3x4r7y0m9v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300110, 'hilliard', 'Ruyant', 'hilliard.Ruyant@hotmail.com', '6x3w0w1i0i5k3e7x1y9a9b1i4t1m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300111, 'sayers', 'Argento', 'sayers.Argento@university.com', '4a6n1q9x5l4t3d7n8j3y7o1s2p0y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300112, 'adey', 'Durette', 'adey.Durette@organization.com', '4o7n3t1k4a8n0b5n2u8e8s5t9o2l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300113, 'phip', 'Ilowski', 'phip.Ilowski@university.com', '2b6r0s0q4m3l5u6z8d6x6u2a0n8d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300114, 'hewitt', 'tobey', 'hewitt.tobey@company.com', '3a3i0u7a9r9t4y8c4g4k1i5s3k1o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300115, 'brooke', 'Brown', 'brooke.Brown@company.com', '6w4l5y4d4r8z0q8c7e1v5y0q8l9j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300116, 'cooper', 'Ebberfeld', 'cooper.Ebberfeld@gmail.com', '2u4r4p9n8u4m1j7h7z7c6m4p5s3i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300117, 'rozele', 'blann', 'rozele.blann@live.com', '5e3e1p1v7p9u9s6x7q3g3q4j4g3o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300118, 'ephrayim', 'Carlson', 'ephrayim.Carlson@icloud.com', '0b1g6q1j3k3b9j8p0z9s6c3u1e9i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300119, 'prudence', 'marsden', 'prudence.marsden@company.com', '7q5g3n0r7w4f8a0r3u7u7i3r0x2m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300120, 'rosemonde', 'Gaby', 'rosemonde.Gaby@company.com', '7r2l6e6o9n5x5c1e4q5a5h8p0i3q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300121, 'leodora', 'Kudas', 'leodora.Kudas@company.com', '1v6q2r3m3j3v5g4q3f7n8v3c7b3c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300122, 'joaquin', 'White', 'joaquin.White@outlook.com', '0l3p1c3p7s5r8w7c2t8n0p7g1x0b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300123, 'selinda', 'Trinidad', 'selinda.Trinidad@university.com', '3a7a2b6h4k8h7n9v7s5r5l5w6s4n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300124, 'alphard', 'Bradley', 'alphard.Bradley@icloud.com', '4u8y3h1e1u3b9e8w2r7l0z4u4b4s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300125, 'kit', 'Takata', 'kit.Takata@live.com', '1c9f9f7i8y8q9c0y8z4q5e1g9d2o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300126, 'iggie', 'Wippel', 'iggie.Wippel@university.com', '6n0z8q7f3i5s2p8n4u3x3v6u1b2z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300127, 'sayer', 'Vigeant', 'sayer.Vigeant@company.com', '4u0s3j2m8r0y6w3g9y6x2e9v1a2i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300128, 'ciro', 'Casalou', 'ciro.Casalou@live.com', '1b7y5u9o9m5d9a5r4r2n7f0k6f6k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300129, 'putnam', 'Elks', 'putnam.Elks@icloud.com', '6r9z0q7s1x8j6b9a2y1p2y2h7u4d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300130, 'cherianne', 'Sieling', 'cherianne.Sieling@university.com', '3a6v2l2f5f8z9m6n3d5i5d3b3j5a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300131, 'onfroi', 'Edey', 'onfroi.Edey@live.com', '5f4i4g8f9e3s3c5q0q0f7m2w8g1p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300132, 'sonny', 'Nasir', 'sonny.Nasir@hotmail.com', '2p1h9y2k2h6s3f6f8t8s5q4n7v3r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300133, 'felizio', 'Skuce', 'felizio.Skuce@outlook.com', '8h3h4o4x3i4q8c0u2k5n0f8y7h9k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300134, 'randi', 'Biray', 'randi.Biray@company.com', '4j5h0d6b7k0k8b3g1p1r7q3f5f0a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300135, 'shelley', 'Nobes', 'shelley.Nobes@university.com', '8t9o3v7s8b4y7t6g9g1d5n5l8j0n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300136, 'rene', 'Colwell', 'rene.Colwell@gmail.com', '6m6q8q0t6r9s0i4y1l3r4y1z8n0e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300137, 'ninetta', 'koang', 'ninetta.koang@live.com', '0w6c9q1n1u8z9h5m1n6q7b1c2l0g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300138, 'abbye', 'francyne', 'abbye.francyne@company.com', '5x9h3f4c9p1m7o2q7c3x3k3m2k2t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300139, 'ranique', 'MacInnes', 'ranique.MacInnes@organization.com', '6e9s8b8b6f3x5n9e8v5g6u0k4h5b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300140, 'gary', 'Erbach', 'gary.Erbach@live.com', '5r1s0w0n6j9z5s7b4m3t3u5t4n0r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300141, 'teresina', 'Sieber', 'teresina.Sieber@yahoo.com', '0a3y2o9j2d7g8a3d7v3c8l5t9k4a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300142, 'tedie', 'MacBibenbrook', 'tedie.MacBibenbrook@gmail.com', '7i8u7a0j8m7o3t4q9x0b8c5m0z4w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300143, 'germana', 'Hedrich', 'germana.Hedrich@live.com', '8k9d4d8x8z6o8p3w8p4j3b7i6i3v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300144, 'rex', 'marcio', 'rex.marcio@university.com', '2x8a1q6r7b5w5f3o3o2m8m5b3d3m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300145, 'dalton', 'White', 'dalton.White@organization.com', '7d4l6z9f5t9h6b9b8o0b7y5a9d2b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300146, 'marcos', 'Lovas', 'marcos.Lovas@organization.com', '5x6t2k3q2d2i8r8j5h2f3r4s6n2f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300147, 'kristian', 'Dignam', 'kristian.Dignam@university.com', '0z7w0f5m9z3d1y0b4x6m3l8s1l8b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300148, 'moss', 'Laing', 'moss.Laing@yahoo.com', '9i2o8w8f0b2h1y9w6x5n0n4a2y6b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300149, 'emmy', 'Cadd', 'emmy.Cadd@yahoo.com', '4s9p7o5h8k2y1g8c3s9t7h6j2z8u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300150, 'nert', 'Christi', 'nert.Christi@yahoo.com', '5q6r4j7q3v8f0k7e6x5x5h9x2r3o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300151, 'vanessa', 'Shiell', 'vanessa.Shiell@yahoo.com', '6a8d9j3s9u6s3j9d6g7s3q8u6e1s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300152, 'amerigo', 'Bridgeford', 'amerigo.Bridgeford@university.com', '3t2e4u7b6f6t9q6w0d9d0m5h7y7m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300153, 'tyler', 'Bulkovshteyn', 'tyler.Bulkovshteyn@gmail.com', '2k8m3e9e6f9g3y4l6t3z9b5w1d3p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300154, 'steven', 'Hall', 'steven.Hall@hotmail.com', '9z6u5y6m0z9s1p5z5a6p9h4f6e7y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300155, 'osbert', 'Toth', 'osbert.Toth@university.com', '8v5y1k7q9h8i5g4y0s8n1o2z3a2d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300156, 'chelsea', 'meggo', 'chelsea.meggo@yahoo.com', '5x7l9f4w9d5c5p9h4h0y4j3t9g5z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300157, 'vivianne', 'Fleming', 'vivianne.Fleming@live.com', '8u4v8k4p1d8a6l3y6w4k4x6i3c5j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300158, 'zara', 'Beckstead', 'zara.Beckstead@outlook.com', '8h2d8x0i8x8t8b4c3k2v7x8k8y1d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300159, 'pavla', 'Louisseize', 'pavla.Louisseize@yahoo.com', '1o3m9t7l3r5i0k6h8j3m3d4o4y1o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300160, 'gusty', 'Markland', 'gusty.Markland@icloud.com', '0g3d6j2k8g3q3z4p5u4s1x5w2u9x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300161, 'alli', 'White', 'alli.White@outlook.com', '1u5e1g1n6j5o9x8b5c0n3p8b3b6m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300162, 'alasteir', 'Robustness', 'alasteir.Robustness@organization.com', '0e1o1x4b2q6w2y8y7w8z7z9u0f9f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300163, 'bogey', 'Chattos', 'bogey.Chattos@hotmail.com', '8g1i4u3j9x8q8h9l6h5t0i4l1s1c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300164, 'mikkel', 'Torlato-Favrini', 'mikkel.Torlato-Favrini@gmail.com', '5x1o2w8g0p0g8s3f3v1w3f4n1y7j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300165, 'krispin', 'Khoury', 'krispin.Khoury@live.com', '4r5l9z9e2d1k5z9a8e3e6t6l0h3u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300166, 'ophelie', 'Spallin', 'ophelie.Spallin@company.com', '9s1g4v2j9f6p3r9o3n9p8m9q4s6j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300167, 'kelci', 'Lakier', 'kelci.Lakier@yahoo.com', '4p0v6f0j6a0t6k1x1v8g9e0u5j5c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300168, 'collen', 'Brindley', 'collen.Brindley@company.com', '3q3j5b8x1g1e0a9g9s5o2h8h1q4p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300169, 'rowena', 'cacilie', 'rowena.cacilie@hotmail.com', '6c7g4k3o5r5s0o8c6i3z5v9k9v4u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300170, 'delora', 'Lazarowich', 'delora.Lazarowich@live.com', '5l3y4s6b0x5h9q1r1c7g2p2p3m0d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300171, 'yasmeen', 'Baker', 'yasmeen.Baker@live.com', '2s3f0i6o2g6h0l7n4w1v5j2p2u7r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300172, 'gabriel', 'Lauze', 'gabriel.Lauze@icloud.com', '7f0t6f4q2a8a6m6d1d3v7c9t2a6r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300173, 'madelle', 'Fallows', 'madelle.Fallows@hotmail.com', '6f8k4a9h0j8h8f5n9q9g3i0q7w0b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300174, 'dick', 'Mulders', 'dick.Mulders@university.com', '0e1f1y7r3j6j6t3y8g6z9o6f0y4z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300175, 'annette', 'Blanche', 'annette.Blanche@organization.com', '2k9u7t7g0c8w7a8g3n9a7q9r4t0m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300176, 'corena', 'Dewit', 'corena.Dewit@live.com', '1i0c5g4v1b6r7m0l3p7r2v3y1z4d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300177, 'waiter', 'Joceylne', 'waiter.Joceylne@company.com', '6l0w4q0n6l6b9o4x5z1q5b8y6s6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300178, 'prescott', 'Frell', 'prescott.Frell@university.com', '6n6f4k3x2w4x5z1j7e3u0r9a9x4s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300179, 'mallory', 'Azinge', 'mallory.Azinge@yahoo.com', '6y0e5o5c0i9q4q5c8q6o3z7w2x0p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300180, 'antonietta', 'filip', 'antonietta.filip@live.com', '9g0u3z9e8z7f9u0k4d1x4w8f4o4c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300181, 'valma', 'elin', 'valma.elin@yahoo.com', '6s0g8p4y2o2f5r8x3z4z9b8n2h2a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300182, 'ian', 'carbonar', 'ian.carbonar@company.com', '5y7i9b9i0u7t5g8o4x3v9u3l4k5d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300183, 'ethelred', 'blaine', 'ethelred.blaine@outlook.com', '3h3i7h4f3a6o1a9c9z3k0j3c7d8q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300184, 'ginger', 'Langton', 'ginger.Langton@hotmail.com', '7h5o4w9t0q2y7r8i2y8a8k3i8r8z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300185, 'christophorus', 'Mukai', 'christophorus.Mukai@company.com', '8l2k6n3f4w4o9j5d6m8l6v3u7i9d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300186, 'ruby', 'Menelaus', 'ruby.Menelaus@live.com', '7y9b2f0o1z0z5j6w4c9b7o7n8y4k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300187, 'greg', 'Rankin', 'greg.Rankin@gmail.com', '6j5h4g3s5f6c4r3y9k0b8t0s2s3w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300188, 'bruce', 'shostak', 'bruce.shostak@hotmail.com', '4s0b9f9y1k2x7r1y0i1u7m0a7h9u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300189, 'etienne', 'Thomaier', 'etienne.Thomaier@hotmail.com', '7r6p1e9l3h1w6h3p3z3x0p5j7t5m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300190, 'lishe', 'Pawle', 'lishe.Pawle@university.com', '5q6t4o6q2x3m5c9w3j9r1h4i0r5h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300191, 'hamlin', 'daneshza', 'hamlin.daneshza@hotmail.com', '7h3l2h4z3m8s7v3f0j1d7z3z3n5c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300192, 'taddeo', 'Einarsson', 'taddeo.Einarsson@outlook.com', '7e8a4w7j0o7h0v4t4h6r6e2k7t2t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300193, 'justino', 'Brierly', 'justino.Brierly@gmail.com', '0u8c8b9y2j0m5i2k7b1a2g7b2d1c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300194, 'oswald', 'Henriques', 'oswald.Henriques@live.com', '5q3l6v7u8y4q4k1u4h2b4g5u6o8x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300195, 'amery', 'Cellucci', 'amery.Cellucci@icloud.com', '9w7n9e5h0v1x9h8g7w7s5j3t9i2e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300196, 'dillon', 'Sutphen', 'dillon.Sutphen@company.com', '3v4a8h5r4b6o9v8u4y4i9l1q9a1v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300197, 'michel', 'Trasker', 'michel.Trasker@gmail.com', '9k4t2y7u2p0l8d4q5q3h3h9x1k4e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300198, 'tirrell', 'Greaves', 'tirrell.Greaves@live.com', '5z0x3d5u0j6k6k8n4w4i6p8h4y7g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300199, 'yettie', 'Garters', 'yettie.Garters@live.com', '2f8u0v1l5y5i9o6c1b2g3z0h0w4k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300200, 'tatiana', 'Rickborn', 'tatiana.Rickborn@outlook.com', '5n8b3o9f3p4l1i9v5r4g0z7c8r6j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300201, 'pablo', 'Faison', 'pablo.Faison@gmail.com', '2c7x9g0d2z9g7r1h8j1s7r0b7s4m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300202, 'daphna', 'Trahan', 'daphna.Trahan@company.com', '8h1a0u3i2c1s0f9t1i7q2o0e2e2b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300203, 'sanders', 'Zenobia', 'sanders.Zenobia@yahoo.com', '2x6g4h5p7x5v8m5u3j6g4n5m9q9b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300204, 'manfred', 'De Coursey', 'manfred.De Coursey@live.com', '3v1p6o7d5k5u3b0b4g3t5e5o7t9y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300205, 'darrick', 'Trochu', 'darrick.Trochu@live.com', '7a9y8v9j9y9v7u6z1y5b3i9z6n1y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300206, 'addy', 'Elkins', 'addy.Elkins@outlook.com', '7n1h8n4t9m2d0j5g9u3o9n0k5r4l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300207, 'kirsten', 'Hall', 'kirsten.Hall@live.com', '4k9x5i3h9y5n7r2j8e1a9e0k1k7l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300208, 'lotti', 'Brantley', 'lotti.Brantley@gmail.com', '4a5s6l2n8y2p4r0h6z9l1a3a6p4n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300209, 'junia', 'Patterson', 'junia.Patterson@company.com', '5c7x2k3r3x9h1d9f2l7v7c7n4z8f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300210, 'etheline', 'savanh', 'etheline.savanh@outlook.com', '5e7q6f6i4e3u3o7m3s0s0q5v8n0c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300211, 'diann', 'Dillon', 'diann.Dillon@university.com', '7l2n2a7r7z1u3f8o8i4a9t0d1y8k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300212, 'sherry', 'Edmunds', 'sherry.Edmunds@icloud.com', '8i1p8c8n4b2s3d0t4f7g7i1z9g9h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300213, 'dianemarie', 'avila', 'dianemarie.avila@university.com', '0d0b3w4m9h4v8j1e5b0l8h1l4j2i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300214, 'tristam', 'tabitha', 'tristam.tabitha@gmail.com', '5w9d9i0c3y6o5w6p0c2l3v0y1m2m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300215, 'darrell', 'Chamard', 'darrell.Chamard@organization.com', '6d8n9o7u6w6f5g7j5i2t2r8v3e8e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300216, 'isobel', 'Denmark', 'isobel.Denmark@live.com', '0s6s0o4k1k8n3k7w5x8a2z5u9k9w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300217, 'mose', 'Cornaro', 'mose.Cornaro@university.com', '8t5w6e7s6e9a9z7m4z8u0g9b3q7p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300218, 'sunny', 'Pasquale', 'sunny.Pasquale@university.com', '4i5z8x0p8o4e4j8y2g5h7t6w1r9t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300219, 'elnora', 'Todson', 'elnora.Todson@outlook.com', '6p0m3u0t8v1z4g3q5o6r5c1q7d8u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300220, 'karoly', 'Chiamvimonvat', 'karoly.Chiamvimonvat@live.com', '6l9d5v3e0k2k9p1g0l7q0j4d5t0d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300221, 'ody', 'Pankhurst', 'ody.Pankhurst@hotmail.com', '4n2k4x3x2w3z1e1k8w9f7s1p9m8c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300222, 'talyah', 'Kayar', 'talyah.Kayar@live.com', '6u0s5x1f7p5p3y2p6x8n2g7g2f0b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300223, 'lacee', 'Brown', 'lacee.Brown@university.com', '3i6d7f7g5y1a4b5b8x5v8j9r5i6i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300224, 'carlie', 'ariella', 'carlie.ariella@icloud.com', '1u5h3k2i1g4j9n8i4t8b8c8q5w7h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300225, 'randolph', 'Mainville', 'randolph.Mainville@live.com', '0y0h7m5y2l2r4d3w1b8f4q9o7m3g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300226, 'cordula', 'baominh', 'cordula.baominh@company.com', '8j6b2r3a7h3t3f6p5g8o2r4h7k9y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300227, 'torey', 'Winterberg', 'torey.Winterberg@company.com', '7m9l6f6c4q5t0t2k4c3w2l5d3v6i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300228, 'emmerich', 'Kerr', 'emmerich.Kerr@university.com', '4m6p0a8i1j3o7l7m5k8u7k4i2m2g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300229, 'eugen', 'Sarna', 'eugen.Sarna@icloud.com', '5u5l8i0r6c1d0z2v5n5v4p5b0m6o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300230, 'joanne', 'Van Schyndel', 'joanne.Van Schyndel@hotmail.com', '7j2t5p8c9p6d8m4t5t1a8a3h7m0m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300231, 'goddard', 'Sehgal', 'goddard.Sehgal@live.com', '5a3w4g1x7v1j5u4w2j1i9q5d9z5q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300232, 'lissi', 'chauncey', 'lissi.chauncey@hotmail.com', '0n3d1d1r8r1a0f6p7l8d2c0n5o5t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300233, 'guenna', 'suen', 'guenna.suen@company.com', '8s4p2j2y6c7e7c5f9v4q5d2g0m2g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300234, 'sholom', 'McCullough', 'sholom.McCullough@organization.com', '1u6p0q6p7a7i2b1j3p2r0l9g8w3j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300235, 'darn', 'Flansburg', 'darn.Flansburg@gmail.com', '8o8y2x5f7w5y5i6d9t6v5h0x0h1e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300236, 'frants', 'Patchett', 'frants.Patchett@organization.com', '2y0i7n6l5t5v4w0a6j2i6y6z6q9y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300237, 'joan', 'Spanelli', 'joan.Spanelli@icloud.com', '9c8o1b4h9w2h0t3w4h4z9r0b5s4z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300238, 'meade', 'Buhr', 'meade.Buhr@university.com', '3w8q7m1e4g9q8e5r3n8g7m8y8g8c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300239, 'shawn', 'Ouellette', 'shawn.Ouellette@gmail.com', '8r7w0w7r1e8z0j2i4v5t9d8h4s7j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300240, 'clarabelle', 'Kaigler', 'clarabelle.Kaigler@gmail.com', '2t8t4z3f7z8a3e9x3g0m7m4h2o1v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300241, 'berky', 'Andrea', 'berky.Andrea@company.com', '0y1n2x7j6q7g3q6r8m7p3a3z6v6h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300242, 'ogdan', 'Griner', 'ogdan.Griner@company.com', '5y7g0n1b1f0o9j5i1k0j1i2d3v7j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300243, 'cory', 'Coco', 'cory.Coco@live.com', '7l1w5p5t6a2q2e1e6c2g7z5a9v2u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300244, 'stirling', 'Luker', 'stirling.Luker@icloud.com', '5a2s6f7w2x0l0w5n7g9p1i8p0k1y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300245, 'kellby', 'Allahdin', 'kellby.Allahdin@gmail.com', '8h2h3t3x6i4v5u4w2c9j8a9c0l6v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300246, 'horatio', 'Chalker', 'horatio.Chalker@university.com', '8x4u9y5m3g1g0c6r7h4s9v4s2a1y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300247, 'jessica', 'Neumann', 'jessica.Neumann@hotmail.com', '7e9g6r3j2p4d4q4o2b0h9c4l7e5h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300248, 'kerr', 'bogart', 'kerr.bogart@university.com', '3o6z0n1h5n8h7m5c8o1b0f4k4e8w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300249, 'con', 'Sousa', 'con.Sousa@live.com', '6q9r5x8h7x2w0q1w1t4q3h3n3v7z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300250, 'perla', 'Fiteny', 'perla.Fiteny@gmail.com', '9f0y3o4f0h9n0f0b5q2v0s3b0n4j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300251, 'joyann', 'Cushing', 'joyann.Cushing@icloud.com', '5u9c6r9c3i8h2k6i3w2v5s2l6v9x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300252, 'erroll', 'Beebe', 'erroll.Beebe@organization.com', '7b4o2y7w2y8y2u0n4o0m1m6x2s6n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300253, 'hermione', 'Liang', 'hermione.Liang@university.com', '2c3b3l0o3y6f6h4z8a7v9f7o7q0u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300254, 'marita', 'rhyu', 'marita.rhyu@yahoo.com', '6c1r2f1a3v2d1g3i4l7b4e8k9h5m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300255, 'geri', 'shelly', 'geri.shelly@university.com', '3h8v5u4q1s4f7i7f8b9i0m1r4b1f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300256, 'hubie', 'Harman', 'hubie.Harman@icloud.com', '3q6i8h1u4v6a9e5w2d0w7e4u5z8a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300257, 'meridel', 'Jesshope', 'meridel.Jesshope@outlook.com', '6f8s8g3u7w1i1p6j7p4j6o4q4h2p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300258, 'kathrine', 'Ferguson', 'kathrine.Ferguson@organization.com', '5r2t3d0p6a7q9d3w9g7r9a2a9p0z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300259, 'cthrine', 'Gravitte', 'cthrine.Gravitte@university.com', '2c2n2i3h6m6v2k8o9m2x5i1h5x9o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300260, 'garrik', 'seidel', 'garrik.seidel@live.com', '4o5m5g4i5q7u4u2e2c7s2o2b6y8f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300261, 'nealy', 'Hutter', 'nealy.Hutter@yahoo.com', '9r9b2m0v3m0a6j9z1t6l8p5s6n3e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300262, 'shelley', 'Brown', 'shelley.Brown@outlook.com', '6g9x0d4u1a2o6d4m1z1z8k5r7w1c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300263, 'worth', 'Pena-Fernandez', 'worth.Pena-Fernandez@yahoo.com', '0a1m1j1o1g8w1u9p5f7u0i9l1k5w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300264, 'cross', 'Sherk', 'cross.Sherk@outlook.com', '0b8w9r4e1s4j2b8t4m9c9p2p6p6b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300265, 'ric', 'Rodolpho', 'ric.Rodolpho@university.com', '3n6h5k3a9d9h2m0q9f7u1i7y5b3o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300266, 'andonis', 'Dyle', 'andonis.Dyle@outlook.com', '1j8n5t3k2j1o4n5b5q2d9u0l9u1r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300267, 'urbain', 'Kinahan', 'urbain.Kinahan@organization.com', '6v3t3e8k4m6k4q1w2y9l4n1r9t3t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300268, 'addison', 'Anstead', 'addison.Anstead@live.com', '7f1s2z5p5k0o7w9k1b3d8u8r6v7j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300269, 'pattie', 'artemas', 'pattie.artemas@company.com', '2w2v0c1i8h8o8t3m3p6s2m4w5l3h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300270, 'bernard', 'Enos', 'bernard.Enos@gmail.com', '0b8c6p1f6g2j7s5m0a5r6s8a0y0n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300271, 'micheil', 'Watts', 'micheil.Watts@organization.com', '4m6q2w7s9z8a8s2m1u5m4g1x8z9o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300272, 'brigg', 'Waletzky', 'brigg.Waletzky@hotmail.com', '3o2k7w5c7g5g9l6z8t6k5b8x0e6p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300273, 'ramonda', 'johannse', 'ramonda.johannse@university.com', '5i5j7b3f1z7i6v2w5o0c8m7w9e9c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300274, 'torr', 'Popa', 'torr.Popa@icloud.com', '1q3u9j9v0m7m5p3t2y6k5w1v6u2v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300275, 'templeton', 'Brough', 'templeton.Brough@live.com', '5t0l6t6l5m0g6v9z3z9h3t6v2c6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300276, 'vachel', 'stewart', 'vachel.stewart@organization.com', '6y3s9o2n2a5e1k1k3s8t3t3d6z5k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300277, 'crawford', 'Iman', 'crawford.Iman@icloud.com', '1x5y6m5m2c2c6e4k2y0d4n1r8m0d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300278, 'zorana', 'Maxmillian', 'zorana.Maxmillian@live.com', '3r2z9i5t7y4w4n4q1c2v6y0l7e8y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300279, 'lexy', 'Crotty', 'lexy.Crotty@icloud.com', '5c8b2k5o1r3o5s8c7q2l8k4f3b2u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300280, 'daveen', 'Drynan', 'daveen.Drynan@outlook.com', '3u5o0p9t1z4r5t8x9w0n9b0q9t9a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300281, 'brand', 'boult', 'brand.boult@company.com', '8l5j0j4m5o7r3d8u6u8s0c1n7v2h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300282, 'erica', 'deyirmen', 'erica.deyirmen@live.com', '0e6r6i3q3f1u6w4e2i2p9h1e9o5e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300283, 'emmott', 'Amundsen', 'emmott.Amundsen@outlook.com', '8b6q7p9l3p6e2u8i4d3w0g0i6y6f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300284, 'delores', 'Marette', 'delores.Marette@yahoo.com', '9a4o2d7h5h3s2u3j7k6n2m3w4v8e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300285, 'ferdinande', 'sadegh', 'ferdinande.sadegh@organization.com', '9l6e4x2w0k8w4l7h0h2y2a4c4r2g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300286, 'conn', 'xiaoxia', 'conn.xiaoxia@live.com', '2h7p1z5k2q5f1j6l1z5e8m5h1y5v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300287, 'marshall', 'Moniter', 'marshall.Moniter@company.com', '7y6v4e7e2l5t4n9d5c2i4r3y8i4s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300288, 'jacquelyn', 'Zetterlund-Clark', 'jacquelyn.Zetterlund-Clark@hotmail.com', '1w3u5x1h1e0h8c0x8v2b0t5x2q2n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300289, 'simone', 'Brouhardier', 'simone.Brouhardier@gmail.com', '7t4o5i9b4s5t9x3c0f0s2p9d4x6y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300290, 'tiler', 'Bertil', 'tiler.Bertil@hotmail.com', '0e2y3u9q8n0e3m3r1k0p9x0z6g6m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300291, 'roxane', 'Chappell', 'roxane.Chappell@hotmail.com', '6c3r0s2p5x4t0y8z4m0k1h7c8d0d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300292, 'ardis', 'VanDommele', 'ardis.VanDommele@outlook.com', '0d2v4l1h4n8n4z7y0y8b3v8i0i6m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300293, 'urban', 'olmstead', 'urban.olmstead@live.com', '3b0v0j6o1j1y4n1o1j2n7e5c9b8l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300294, 'gerianne', 'Barbara', 'gerianne.Barbara@organization.com', '7s9l3u3u1v7s3z4m6t4h2p1f3a0h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300295, 'rolph', 'Yates', 'rolph.Yates@live.com', '2m7o3l0f8j6m3x5w5a4i0j1u5r6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300296, 'daloris', 'zack', 'daloris.zack@company.com', '3u5r2p5e3q3u9u7q5t6j1h9d4l8s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300297, 'claretta', 'Lineham', 'claretta.Lineham@live.com', '6r3c6d1a8k9n1x6y8m3r9w1c8f2v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300298, 'ashley', 'Garinger', 'ashley.Garinger@icloud.com', '9g2a4n6h6x4w8o1j2q1l0l3t7j3q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300299, 'michel', 'Monahan', 'michel.Monahan@live.com', '1q5s7w6c9v9h4s9b1f3y7m7j8v3i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300300, 'bel', 'Suffern', 'bel.Suffern@live.com', '2f3l5e9q8x7m4a7p9z9k7q6t5e9n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300301, 'gabbie', 'joannes', 'gabbie.joannes@company.com', '1k6b3j5y3j3j5q6u1p9j2f8m0q5n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300302, 'gertrudis', 'kanthan', 'gertrudis.kanthan@hotmail.com', '3y7m0f5c6f5w6g5h2m0u8m9g0r6i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300303, 'kristo', 'Rabipour', 'kristo.Rabipour@hotmail.com', '7h0k1e9h1f1c9w9o6e2h0u8d2u2s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300304, 'trip', 'Shechtman', 'trip.Shechtman@outlook.com', '0l1k7a0v5m5h6s5l9u5m3t8i7t6c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300305, 'horatius', 'kotler', 'horatius.kotler@university.com', '2d7n7q8t5r6n9u5n1i6g0c6g2b1s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300306, 'karlis', 'xiaolong', 'karlis.xiaolong@gmail.com', '9t2w1b5b6w5q2n2t5r0c7t9q0l1y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300307, 'ruperto', 'Frobel', 'ruperto.Frobel@yahoo.com', '5l0f7d4s1e4v1b5v5n1k0g9d3x8b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300308, 'harrie', 'Taylor', 'harrie.Taylor@yahoo.com', '9s7g1y6j9q1y0n8z9b0g9o6k7v8u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300309, 'jobie', 'michael-', 'jobie.michael-@organization.com', '4f0v5t4q0p1o0k7d6f9g9x9l9b0u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300310, 'ugo', 'Checinski', 'ugo.Checinski@gmail.com', '2k1q9h3e4r4d6k0m0g3w7l5c0c9q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300311, 'murdock', 'Shedd', 'murdock.Shedd@live.com', '5k0l8g3k1q1h1r1r6t4i4u1j6d8q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300312, 'aindrea', 'Bulman', 'aindrea.Bulman@university.com', '9w4h5i0d4l4h8k6h8g2a1d3k0a9y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300313, 'raddy', 'Britman', 'raddy.Britman@organization.com', '9o4b2r5t2e8c2b8h3p5s8j1t4e3f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300314, 'sonya', 'gelinas', 'sonya.gelinas@university.com', '9z9h8h2t3v0c7j2f3j9y9a7s9e4f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300315, 'husein', 'Samuels', 'husein.Samuels@gmail.com', '3o6c6j5q1q9n3n7n5z9a6f9t0i4v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300316, 'kim', 'Dagg', 'kim.Dagg@outlook.com', '2h3a4s4x4g3o0k2c8p1x9c6v5q9j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300317, 'irving', 'drummer', 'irving.drummer@icloud.com', '6i8v6c8l3h9r4j2u9n4a4v0m9t5f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300318, 'wanids', 'Scatena', 'wanids.Scatena@yahoo.com', '5y5f8r5x6e4m8z9z9u7k5d7t1b6s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300319, 'sol', 'Ketkar', 'sol.Ketkar@company.com', '7g6c2r4f5l8w7r2c9d2q6p6y3w1b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300320, 'giralda', 'Hayward', 'giralda.Hayward@live.com', '3y4f5n2s0m8p9x1y5k7a7r5c1t8u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300321, 'frankie', 'Altherr', 'frankie.Altherr@company.com', '5m0k3w7d7u0t4r7u3n2o0r6t7b6j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300322, 'genvieve', 'Radvanyi', 'genvieve.Radvanyi@university.com', '7v0f7e3f0x0x4z5f8e0d3z4j0o2y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300323, 'arte', 'Baynes', 'arte.Baynes@yahoo.com', '6o3p6g0e2o1n3i0d2a4v8h1x9w1j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300324, 'yule', 'songnian', 'yule.songnian@yahoo.com', '2m2g0n7b0y4z7g8t8q6e3c8w5r6a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300325, 'maxim', 'Bice', 'maxim.Bice@company.com', '9s7r5p1f8x5f5x4s1h2f7s6u1r7u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300326, 'marsiella', 'Mong', 'marsiella.Mong@gmail.com', '9u1d3x5f5q5y9c2g6h4y5h7p3z1g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300327, 'huntley', 'Lehmann', 'huntley.Lehmann@organization.com', '1m4a3d1t1a6k5f5l3x1w6l3l0i4n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300328, 'hinze', 'gita', 'hinze.gita@outlook.com', '3d4d0l2w5t9s3x4b8j5k1g6j8i8x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300329, 'mathias', 'Paynter', 'mathias.Paynter@live.com', '0s3v5m9e8y3n1c6k5h0w7v8d5x8b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300330, 'modestia', 'Kales', 'modestia.Kales@live.com', '0m4a0c0w9l4o3h2n9w0e0x1p7n7v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300331, 'dory', 'Saunders', 'dory.Saunders@live.com', '3t5p8o4i5e7g5m5c4w7d1d8k5z9c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300332, 'ricard', 'illamchi', 'ricard.illamchi@outlook.com', '7m1j1g2r5p4h2b9k1y4l7x9y3t0v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300333, 'ernaline', 'Wildgen', 'ernaline.Wildgen@company.com', '2q0y6e7h8t1s2l2p5w8q7z4o8o0k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300334, 'fielding', 'McMasters', 'fielding.McMasters@university.com', '8f7i6r4d9h3d5i5q0i9f0g8p6w5o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300335, 'sigismond', 'Fernald', 'sigismond.Fernald@hotmail.com', '9e2w9j3d7w1h0h1i2w8p4o0o7j2w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300336, 'huntley', 'brown', 'huntley.brown@outlook.com', '9k4d0f0s0i4m4n0l4h5u3l2q0u3b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300337, 'joe', 'Tharrington', 'joe.Tharrington@university.com', '0h3w1z3h2y1o0g1g2q4m4m7c3d6s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300338, 'diannne', 'kearney', 'diannne.kearney@live.com', '5j8z1f8u9j3i1i6w2n5v9h3k4v6m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300339, 'daloris', 'Jawanda', 'daloris.Jawanda@outlook.com', '7c4v4v5b8g5k6r5f8d0c5r4w3j7y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300340, 'rachelle', 'Elrich', 'rachelle.Elrich@yahoo.com', '6c7j4d1v1m4i6a4j5p9i4h2w9i0r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300341, 'emilio', 'Lychak', 'emilio.Lychak@live.com', '1s5o2z6w3z3p7f1g3s4j5z6g4r0e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300342, 'dorena', 'Carmen', 'dorena.Carmen@hotmail.com', '6g5p3k1e0u8l7q4e9d9t9m3n3w3l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300343, 'shay', 'Rogers', 'shay.Rogers@organization.com', '3x2m5z5q2q2s2x5b9r7x5h4b6x2h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300344, 'levon', 'Macaulay', 'levon.Macaulay@hotmail.com', '9q0l9j6w5u2e2b0l3j9k1e6q7o1o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300345, 'cristian', 'French', 'cristian.French@hotmail.com', '5h9y1h1s8v8w7r5t7x0d9k6w8p1n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300346, 'winfred', 'freyler', 'winfred.freyler@outlook.com', '9a7p7d8w6c3o7v4d6d4x8l8b0r6y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300347, 'cass', 'doliska', 'cass.doliska@yahoo.com', '2l2f4a6w2g6i0d4d1z5i5f1w4u5l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300348, 'tuck', 'Duxbury', 'tuck.Duxbury@yahoo.com', '3v0e1m1p8p5l1s7i4x9u4j2o6a3n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300349, 'goddard', 'ursa', 'goddard.ursa@organization.com', '8p3d4m5i9a7c6l1e8l7n6i3z7v3l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300350, 'orelia', 'Kureshy', 'orelia.Kureshy@university.com', '3c6x5p7c5c7p2h9z4o3g9m3n2h1f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300351, 'peggie', 'Steffens', 'peggie.Steffens@yahoo.com', '5s1q5g9l9f1y2q6x3m7c4w6c3l8v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300352, 'fidelio', 'Rabadi', 'fidelio.Rabadi@university.com', '7q9x6d3l9e1x0z7a6h9v0z4l3p8t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300353, 'lolita', 'Penrose', 'lolita.Penrose@organization.com', '9b3x3t6p0w5b7o8j6e1j1m0h3q3f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300354, 'leroy', 'Gursahaney', 'leroy.Gursahaney@university.com', '1l7r3m5v0d9w0r2v8r0j2k3r8h1l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300355, 'roderic', 'Vopalensky', 'roderic.Vopalensky@icloud.com', '7p6t7i8s9r9x6x6p9h4k9j5g7p3f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300356, 'araldo', 'Wray', 'araldo.Wray@live.com', '2u3x3h3c2d8w2z4e1z9j2g0g8t6o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300357, 'giffard', 'deczky', 'giffard.deczky@live.com', '8a3e6k4i6c1x0f2d7f5f3c9q3e4h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300358, 'nichole', 'kaibor', 'nichole.kaibor@live.com', '3n6d2q1j7t6k0d7a9d7w3g1r3w8q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300359, 'domenico', 'Frie', 'domenico.Frie@outlook.com', '9h4y5u3z8k8v6y2u1n6h8m2i7o3j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300360, 'tadeo', 'Pork', 'tadeo.Pork@icloud.com', '0h0u1u1v5f9g0f9h7b0d9l5j2p7b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300361, 'garrick', 'Orvil', 'garrick.Orvil@organization.com', '6a5c0l5i3r3m0p9i6q9h7u0u8i4d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300362, 'bryce', 'Chia', 'bryce.Chia@outlook.com', '7g1w2b0i5g8d5k6t0v0k1j3x8p0i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300363, 'christophe', 'Ennis', 'christophe.Ennis@yahoo.com', '2q3b3i4t7t0k2e5t2g9m2q5d3f1f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300364, 'cahra', 'Ross-Adams', 'cahra.Ross-Adams@gmail.com', '7i5h5v8x6j8a6k9p7v7h5c0m9p5j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300365, 'rainer', 'Pevzner', 'rainer.Pevzner@outlook.com', '8n0k7a4x5p9z6a1a6f9b3y1s7o8m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300366, 'neely', 'Miller', 'neely.Miller@gmail.com', '8g9t6e6x2u2h6e4i3r3q5e6a2u6v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300367, 'aron', 'Hardee', 'aron.Hardee@outlook.com', '8c4g6y0v2x3a2u3j6y4y7k3w4k6y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300368, 'nikolas', 'Rawhide', 'nikolas.Rawhide@live.com', '0z2w4t0h8k1s7r1j4i0y1y9l5j2w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300369, 'randie', 'Brown', 'randie.Brown@organization.com', '6t4p6x3d3a1m8z9b8d9h9t7e2s8y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300370, 'christian', 'Chaddock', 'christian.Chaddock@gmail.com', '4w5z4b1r2p8c2g0d5s6r0a9c0v3p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300371, 'martainn', 'Hanser', 'martainn.Hanser@company.com', '8b0j7l8l0t4u0m0z0b3b4c8m6g6d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300372, 'melody', 'Nahmias', 'melody.Nahmias@icloud.com', '2w5f4r4y3f9w9h2o2i2d1i7j2v8a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300373, 'jason', "O'Connors", "jason.O'Connors@icloud.com", '0m3m7w9o5x5c4s0a6d1v5k2i1t0k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300374, 'roosevelt', 'harvey', 'roosevelt.harvey@organization.com', '3v3j3g5n1y0o2b8c0f3j1q9c5m0b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300375, 'laurette', 'Kleynenberg', 'laurette.Kleynenberg@gmail.com', '7c7t3d6t3d6y1c5y4f0z7r3b7s5u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300376, 'barbara-anne', 'Walia', 'barbara-anne.Walia@live.com', '5i2s8l4i4o5n4h1i8r8y3g0z2z0f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300377, 'sharlene', 'Nasir', 'sharlene.Nasir@company.com', '5p2l4a4y2e0c4i5p9x1r4t4k8u7m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300378, 'sterne', 'Brandsen', 'sterne.Brandsen@hotmail.com', '1d8y5a1w0d7r4b1v7l4z0h8i8a7d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300379, 'victoir', 'Zahn', 'victoir.Zahn@live.com', '9c1v0u6d2q3r8v5m6k5i7e5x6u4n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300380, 'robby', 'Andros', 'robby.Andros@hotmail.com', '7b5v5e0c1j5t8a7h4i9d5f1u4y1n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300381, 'vergil', 'Cabdriver', 'vergil.Cabdriver@gmail.com', '2l1i2a7j1y3a7q4d0z9f1z8m6o5i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300382, 'merrilee', 'Owen', 'merrilee.Owen@company.com', '7w3v8y4u8s7l7n6a1s1k0i0z1b3p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300383, 'bernadine', 'Formagie', 'bernadine.Formagie@university.com', '2g6e9m2e8n5i6o6y5r7p6u5r2l7o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300384, 'melvin', 'Sabatini', 'melvin.Sabatini@yahoo.com', '4s9r9k3h2r7d4j7a3x7t5q4f4b1i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300385, 'oates', 'Erskine', 'oates.Erskine@organization.com', '8q4v0l3m5r9p5k6v0c3h4q7e7u6p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300386, 'delia', 'Mastromattei', 'delia.Mastromattei@hotmail.com', '3j1b0t1n1x0g5z0i8i5n2e4w0k6r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300387, 'ody', 'Newland', 'ody.Newland@yahoo.com', '1v1s5d5p9g9d4t2o3s8z1h4l3v1r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300388, 'tammy', 'Chernetsky', 'tammy.Chernetsky@university.com', '3z6k1k9p2z6l8s4w3f8j7e0x3r0t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300389, 'claudette', 'Tarasewicz', 'claudette.Tarasewicz@university.com', '5k6z1j3n5c9f7z4e9h3a5a2v9v4p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300390, 'amos', 'Jobe', 'amos.Jobe@company.com', '9q1s3k5a8l0z5q2w8l7s1l4l7y6b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300391, 'erhard', 'Trautman', 'erhard.Trautman@hotmail.com', '3g4s0t0i0e5i0b5d3c6g2b2a8b9r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300392, 'reed', 'khuon', 'reed.khuon@outlook.com', '0c1m0q1t7l3z9s0t3i9o1u2d5u8h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300393, 'ignacius', 'Spisak', 'ignacius.Spisak@icloud.com', '6o8x0c0j6n4d6a4o0c7z3i1t4u9j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300394, 'gretchen', 'Gravitte', 'gretchen.Gravitte@university.com', '6y1e0b7a1u4m4q0r7w8g9t6l7x9r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300395, 'gorden', 'Ackwood', 'gorden.Ackwood@gmail.com', '1d7z3m1g4r3v0h4p1t0g6a0m5e5t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300396, 'austine', 'Shellman', 'austine.Shellman@icloud.com', '9j6i6f6c6p7z9l8m1v1x3r8x5p4l');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300397, 'ramsay', 'Vandusen', 'ramsay.Vandusen@live.com', '8v8r4c2e6g2r7b8z3x6y5m1l1h7t');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300398, 'emera', 'Hafermalz', 'emera.Hafermalz@outlook.com', '2y2a2u1q5j7a9q7x6p9o5z1y4j8r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300399, 'hastings', 'Tripoli', 'hastings.Tripoli@outlook.com', '6b3x1q2r7o2q8l7b7l4y4m8d3r7x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300400, 'karilynn', 'Tarver', 'karilynn.Tarver@organization.com', '7b3x3p9a3p4u7q6h6r3h2r9j2m3p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300401, 'lucio', 'Goddette', 'lucio.Goddette@gmail.com', '6n6r9o9n2e9u5t4c1b7n5m1p1u5n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300402, 'martyn', 'perazzin', 'martyn.perazzin@live.com', '7d0i4r5f5q6n8r4c5g6t8d8q8v6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300403, 'aldric', 'OFCPARMS', 'aldric.OFCPARMS@outlook.com', '7i3j1s6q9e0l0f0m0q5m0t9o7b6n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300404, 'eben', 'Dipesto', 'eben.Dipesto@hotmail.com', '0o4q7w4c2l7a1x1d1k8z2w2s4q6h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300405, 'delcina', 'Seay', 'delcina.Seay@company.com', '0u5n7i6m9x4p6d0j5u4d5h0m3p0f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300406, 'robinson', 'Bergman', 'robinson.Bergman@organization.com', '3h0v9r6c5a7z8u2d1m4z3l4e5f3n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300407, 'ned', 'Angele', 'ned.Angele@company.com', '2q8w1k2s3s1l4o5g5j1f8y6s9o9o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300408, 'laurella', 'Sandison', 'laurella.Sandison@company.com', '7w1v7i8z8q2a6y4q9z5e1t5i5h7s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300409, 'trix', 'Pollack', 'trix.Pollack@organization.com', '9t9m5k3v6s2o4b3x0w6c7q7m6i9v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300410, 'natalya', 'Makino', 'natalya.Makino@hotmail.com', '2w7y4y9u3c8n6w6r2r6h5h3j5j1k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300411, 'kala', 'Pipit', 'kala.Pipit@live.com', '1l7z8s6e0l6m9z2z2b5n1z2r0a6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300412, 'dulcy', 'donnette', 'dulcy.donnette@university.com', '9i6n6k0u4h7i9d9z1l4s2o9k4u8z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300413, 'susi', 'Eike', 'susi.Eike@gmail.com', '2y6w1i0q2h7x7j0g1m0x8a4w0m9k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300414, 'north', 'Benedetti', 'north.Benedetti@company.com', '7r8z8r8m8n6u4y4z5v2m6g6p1a6v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300415, 'valerye', 'Brown', 'valerye.Brown@gmail.com', '9y9w6a4p9j9d0x1n9f0t0z3v6q6c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300416, 'markus', 'matthews', 'markus.matthews@icloud.com', '0r7q0g7f6e1o6w2e6d8v1r6d0y0x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300417, 'gannon', 'kelley', 'gannon.kelley@live.com', '9t4f6c8i8q1a1l2h6z2a6h7r2b1a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300418, 'fredrick', 'Schryburt', 'fredrick.Schryburt@university.com', '7p4z9d1s3u1o2l5p2v2w2f9w1y8u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300419, 'jerrold', 'shung', 'jerrold.shung@gmail.com', '2t8i6u1p2d2l8d3f4u9a8z8l5x8k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300420, 'mathilda', 'Luker', 'mathilda.Luker@yahoo.com', '1r1z8a4k7d6h4n9c5g2h3x3s4c3d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300421, 'pansie', "O'Dale", "pansie.O'Dale@yahoo.com", '8a5q4m4o0k9z7l0d8x3h1s0j3l0s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300422, 'sammy', 'Olmstead', 'sammy.Olmstead@organization.com', '6s2q3r1n6k1x5c2n6i2g8g3g4a7d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300423, 'kellen', 'Raftery', 'kellen.Raftery@hotmail.com', '0w5k1f1f1q5c6u0x0f3m9x7q0g0g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300424, 'charita', 'Desai', 'charita.Desai@gmail.com', '8v3z9m4x1z3j1b5l6s0u0s5c1r9p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300425, 'maribeth', 'Vuignier', 'maribeth.Vuignier@organization.com', '7v8h9i2h9x0k7i5b3y1b4q2s9y1d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300426, 'raymond', 'Loudmouth', 'raymond.Loudmouth@gmail.com', '9c9p7e9f0n3i0m9o2e5k2l1x4e2e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300427, 'kimmie', 'Pascal', 'kimmie.Pascal@gmail.com', '9p4t2m7z5p3j6g9q1y5u6m5x3n0j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300428, 'neddy', 'Polhaus', 'neddy.Polhaus@hotmail.com', '7s2h7a5m3v2n7e1f1v4d0o1g3i3g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300429, 'robin', 'Holesinger', 'robin.Holesinger@icloud.com', '4u2z6o4q1s2t3g1b1o6f4b1j4u6k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300430, 'lanie', 'Terezinha', 'lanie.Terezinha@icloud.com', '0p5k8q6c4j5o2u1o3r2p7p6s9x5i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300431, 'joye', 'Brown', 'joye.Brown@company.com', '1n8d6m7y7e0v1p1z3i0o9n1n0g7i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300432, 'janella', 'Barclay', 'janella.Barclay@hotmail.com', '4w4m2q3j3x5p6n2s2m6h0p6s8o7r');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300433, 'madel', 'Swanee', 'madel.Swanee@gmail.com', '7b8b2d3f7z5w2y7r9i4y3d7v4h4m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300434, 'kaine', 'bhanu', 'kaine.bhanu@company.com', '1t7s8f3z3g0p1s5e2o1e7r2j6b4z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300435, 'duke', 'JEKYLL', 'duke.JEKYLL@organization.com', '3g8z0d1j4e5m5x3r8h1d7l2h5q6o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300436, 'emmalyn', 'Juneau', 'emmalyn.Juneau@icloud.com', '8h8x5c6a7z3c1b5i6v2y8y7j4k2n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300437, 'josh', 'johnnie', 'josh.johnnie@organization.com', '7b5b9j4b4l8e0j9t0i8j7a1b7b8q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300438, 'traver', 'Kemme', 'traver.Kemme@hotmail.com', '7t5h8r2t7g9x4y6h3n9l8o2h9e7g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300439, 'willy', 'horwood', 'willy.horwood@icloud.com', '9p2e1m2v6p6h5c4p4x2i5b2i6s7e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300440, 'filippo', 'Stubblefield', 'filippo.Stubblefield@hotmail.com', '7w7z2l9q3p3u1s1d1m0q8n7n5j0x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300441, 'eleonora', 'Castro-Herrera', 'eleonora.Castro-Herrera@organization.com', '5b6m6a0a7b5r4j0p8v7w1c0j3j3j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300442, 'kelsey', 'Windt', 'kelsey.Windt@outlook.com', '4h9w3p1e4n0z5r5h4w8f6n7p7q6c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300443, 'kristan', 'Odgers', 'kristan.Odgers@outlook.com', '3r4y1c8o1x8h3d5i2j2m2j8o9r6e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300444, 'cornelius', 'Eberlin', 'cornelius.Eberlin@hotmail.com', '4p0t2d3o5g9h4a9a4w0u4p2v0g9j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300445, 'corissa', 'Corcoran', 'corissa.Corcoran@yahoo.com', '6k8i4p2y4y9d3v6w2k4g3s3i3l8b');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300446, 'andris', 'Gemmell', 'andris.Gemmell@gmail.com', '2o5p4c6n6l4v4m3v3j1x6q7q6d5v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300447, 'frederick', 'Dana', 'frederick.Dana@hotmail.com', '4h4l2c9a3w3e4d5e6d7g3l5q9r6q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300448, 'abey', 'Padiou', 'abey.Padiou@icloud.com', '1f8c6n7d2h5k0r0w3f3w9j8v3z8p');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300449, 'mauricio', 'lsiunix', 'mauricio.lsiunix@yahoo.com', '1a8i6x7t5m3c9p2r7i8u3g3i5a9v');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300450, 'raimondo', 'Spieker', 'raimondo.Spieker@company.com', '5x4i9s9y4r7x2u7x7c3t7h8v0c4x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300451, 'tremaine', 'Travis', 'tremaine.Travis@organization.com', '8g2r4v3i0p4q9p2v4f4h5k7g2b3n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300452, 'dallas', 'Tawfik', 'dallas.Tawfik@yahoo.com', '5k6r9x8d3c5a4e3a1h1k4f9l0i1k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300453, 'josh', 'Fadden', 'josh.Fadden@hotmail.com', '8k2f9w8r8a3k0e5b2m8o0z3u9p6k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300454, 'granthem', 'Momtahan', 'granthem.Momtahan@live.com', '3d9u3r4l5p0i8m3s0n1i8j7p6z5z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300455, 'babs', 'Oestreich', 'babs.Oestreich@university.com', '1v3r1l8e8x5z2o1w0d1g8l7h6z1w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300456, 'humberto', 'Parkhill', 'humberto.Parkhill@gmail.com', '6f7g4z8s7i8z7j1n2w6y6j4g3g5s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300457, 'gannon', 'Flick', 'gannon.Flick@company.com', '7q7c8w5y4k3y9w5u9h0y5u0w4r6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300458, 'alessandro', 'reis', 'alessandro.reis@yahoo.com', '7v0v1u9h9e8g9r9z5x8s9z1k8n9f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300459, 'aube', 'Laville', 'aube.Laville@university.com', '2v3g1s3s5c7e8t3i8f6w9w2x3j1c');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300460, 'kelcy', 'Fansher', 'kelcy.Fansher@yahoo.com', '3o3q4c9c1d5d6c5p0u2s8u8k7z1z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300461, 'freddie', 'Navarre', 'freddie.Navarre@organization.com', '8i2q6j6y1y0x2l6s2z6d6i6f0h2m');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300462, 'mel', 'Dhillon', 'mel.Dhillon@gmail.com', '0b4h8i6p9s8a2h1x0n0g6h7f1a6n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300463, 'germayne', 'Clenney', 'germayne.Clenney@yahoo.com', '2h7j8g9z5p1i0j7g9k5u2l6m8b5z');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300464, 'becka', 'Blatherwick', 'becka.Blatherwick@hotmail.com', '6p5v6j2a6d9c5a3j6c8s2e4p0j0h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300465, 'valencia', 'morris', 'valencia.morris@yahoo.com', '7i8y2h8l8d0n8p0r0x5s4r5y0a5k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300466, 'christy', 'Marion', 'christy.Marion@yahoo.com', '8m0a1z1d5l4p0k0i6y4z3v3h7b1y');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300467, 'ertha', 'sriniuas', 'ertha.sriniuas@live.com', '3s4p4g6q0i3k6q5c5h7p1b8q4s4o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300468, 'chandler', 'Oziemblo', 'chandler.Oziemblo@outlook.com', '0w7l5h9e9q4r7j1w4w9j9d6i5w0h');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300469, 'kimball', 'Cummine', 'kimball.Cummine@university.com', '6a1d6h5p7a4z2y3u5f9o0f1v6r3j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300470, 'linn', 'Desautels', 'linn.Desautels@organization.com', '1o1k2q1b2u7o2f0c6h9m1l3v0l5k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300471, 'ade', 'Sohota', 'ade.Sohota@outlook.com', '3m7u2k6l9e7j5m2p6f0l7d9v8t3g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300472, 'zachariah', 'Shalla', 'zachariah.Shalla@company.com', '2d6k2y6q9p0l8d8v9q4k4f3q1e6u');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300473, 'mellie', 'grinham', 'mellie.grinham@gmail.com', '5o7k5z1y7d4f7q1w3d3f8m8t8l2d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300474, 'agustin', 'Egerman', 'agustin.Egerman@company.com', '5y5g4m1z0d7z3f9x2y2u8i3s6q4s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300475, 'phedra', 'Eagles', 'phedra.Eagles@organization.com', '4s2w7t0y2q5r7l8g2a2b6v9e1s7i');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300476, 'lorri', 'hansen', 'lorri.hansen@live.com', '7j6l1k8n0z5x8v8u4d5k2q7v5d0s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300477, 'myrvyn', 'Kirkland', 'myrvyn.Kirkland@outlook.com', '3k0l7s8n8q0l3m7g5b5j1a7g1g8o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300478, 'mariann', 'Dietrich', 'mariann.Dietrich@organization.com', '7h4d0n1c0b3k6p5m9o3a7t3m0z6n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300479, 'oliviero', 'Wyman', 'oliviero.Wyman@hotmail.com', '1v2j5z9f5c5i5o9h3x3s4o2k4b6e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300480, 'dewie', 'Garmes', 'dewie.Garmes@company.com', '5u1q0k4i1v1x6i2o7y1x1i9t7i4o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300481, 'windham', 'Frierson', 'windham.Frierson@gmail.com', '6g0u6j8s7d1v1x5n7s8u1v5f9l7w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300482, 'nikolaus', 'Milanovich', 'nikolaus.Milanovich@organization.com', '6k0z0m2q0r9p6o8j1l1h3e8f0e1w');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300483, 'josy', 'Phemie', 'josy.Phemie@live.com', '8n1g1a3e2v9y3u4l5n7u0e3g8r9d');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300484, 'gearard', 'Baker', 'gearard.Baker@icloud.com', '6q9c2x7e8m9r7i5v3y5n5o5r4w3e');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300485, 'miltie', 'Halpin', 'miltie.Halpin@organization.com', '5w9c1u3k3o4i7k1v5z7g5a3h8p7a');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300486, 'whitney', 'Wealch', 'whitney.Wealch@outlook.com', '7o1f5z8e6k7w5r6e0s5q3v5b7g1f');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300487, 'haze', 'Bismark', 'haze.Bismark@yahoo.com', '1q4q5e9u3f5h1b7o3h9l8d7a3c3q');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300488, 'vladamir', 'Mooken', 'vladamir.Mooken@outlook.com', '0w8c7w8l4i3t9i0z5t0y0h3y7h4j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300489, 'terrence', 'Moogk', 'terrence.Moogk@icloud.com', '3j0p6z7m4y5v1l4u7j8z1y4s8w9s');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300490, 'nevin', 'Emro', 'nevin.Emro@hotmail.com', '8p9v9x6p5d7q4k1x7l2h3r1s0l3k');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300491, 'stephan', 'Beaudin', 'stephan.Beaudin@yahoo.com', '3y9a0v5u2c7v1m3s3u6m3a9i5o1g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300492, 'mel', 'Aldridge', 'mel.Aldridge@live.com', '6v0o9b2n5e3g8f7s4u9w7b2w6v0n');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300493, 'irving', 'Bestavros', 'irving.Bestavros@yahoo.com', '2v7u6x7u9o4q1d9a2h2p3i3y4o5g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300494, 'shane', 'marnie', 'shane.marnie@live.com', '5u1j3a2z7y0g5c6g2n0a0f1l0z9x');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300495, 'sasuke', 'Basta', 'sasuke.Basta@icloud.com', '5z2a0u0n0s7a2r3f5s2t3d0o5z7o');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300496, 'demott', 'Bourbonnais', 'demott.Bourbonnais@company.com', '9r0j3d9l1w1j6g6q6g4i6r7m2j8j');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300497, 'jourdain', 'Galdy', 'jourdain.Galdy@organization.com', '7k9a7e3l6y1a2v0x1g3a5a0u6e5g');
insert into account(account_id, , calorie_count, first_name, last_name, customer_password) values
(3300498, 'gloria', 'Laughton', 'gloria.Laughton@hotmail.com', '8o6u7x4a1w9q9f7f1b7i0r7w5s8f');
/*-- Food_Item--*/
insert into food_item(item_id, calories, item_name) values
(888000, 444000, 'Acetaldehyde _ Ethanal');
insert into food_item(item_id, calories, item_name) values
(888001, 444001, 'Acetic Acid');
insert into food_item(item_id, calories, item_name) values
(888002, 444002, 'Acetic Anhydride _ Acetyl Oxide; Acetic Oxide');
insert into food_item(item_id, calories, item_name) values
(888003, 444003, 'Acetoin _ Acetyl Methyl Carbinol');
insert into food_item(item_id, calories, item_name) values
(888004, 444004, 'Acetylated Sucrose Distearte');
insert into food_item(item_id, calories, item_name) values
(888005, 444005, 'Acetylmethylcarbinol');
insert into food_item(item_id, calories, item_name) values
(888006, 444006, 'Alanine');
insert into food_item(item_id, calories, item_name) values
(888007, 444007, 'Alcloxa _ Aluminum Chlorohydroxy Allantoinate');
insert into food_item(item_id, calories, item_name) values
(888008, 444008, 'Aldol');
insert into food_item(item_id, calories, item_name) values
(888009, 444009, 'Allantoin');
insert into food_item(item_id, calories, item_name) values
(888010, 444010, 'Allantoin Acetyl Methionine');
insert into food_item(item_id, calories, item_name) values
(888011, 444011, 'Allantoin Ascorbate');
insert into food_item(item_id, calories, item_name) values
(888012, 444012, 'Allantoin Biotin');
insert into food_item(item_id, calories, item_name) values
(888013, 444013, 'Allantoin Calcium Pantothenate');
insert into food_item(item_id, calories, item_name) values
(888014, 444014, 'Allantoin Galacturonic Acid');
insert into food_item(item_id, calories, item_name) values
(888015, 444015, 'Allantoin Glycyrrhetinic Acid');
insert into food_item(item_id, calories, item_name) values
(888016, 444016, 'Allantoin Polygalacturonic Acid');
insert into food_item(item_id, calories, item_name) values
(888017, 444017, 'Allantoinate');
insert into food_item(item_id, calories, item_name) values
(888018, 444018, "Aluminum Acetate _ Burow's Solution");
insert into food_item(item_id, calories, item_name) values
(888019, 444019, 'Aluminum Chorhydroxy Allantoinate');
insert into food_item(item_id, calories, item_name) values
(888020, 444020, 'Aluminum Distearate');
insert into food_item(item_id, calories, item_name) values
(888021, 444021, 'Aluminum Isostearates/Laurates/Stearates');
insert into food_item(item_id, calories, item_name) values
(888022, 444022, 'Aluminum Isostearates/Myristates');
insert into food_item(item_id, calories, item_name) values
(888023, 444023, 'Aluminum Isostearates/Palmitates');
insert into food_item(item_id, calories, item_name) values
(888024, 444024, 'Aluminum Lactate');
insert into food_item(item_id, calories, item_name) values
(888025, 444025, 'Aluminum Myristates/Palmitates');
insert into food_item(item_id, calories, item_name) values
(888026, 444026, 'Aluminum Salts (Aluminum Acetate, Alumi  num Lanolate, Aluminum');
insert into food_item(item_id, calories, item_name) values
(888027, 444027, 'Stearate,');
insert into food_item(item_id, calories, item_name) values
(888028, 444028, 'Aluminum Tristearate)');
insert into food_item(item_id, calories, item_name) values
(888029, 444029, 'Aluminum Stearates');
insert into food_item(item_id, calories, item_name) values
(888030, 444030, 'Aluminum Tripalmitate/Triisostearate');
insert into food_item(item_id, calories, item_name) values
(888031, 444031, 'Aluminum Tristearate');
insert into food_item(item_id, calories, item_name) values
(888032, 444032, 'Ammonium C12-15 Pareth Sulfate _ Pareth-25-3 Sulfate');
insert into food_item(item_id, calories, item_name) values
(888033, 444033, 'Ammonium Isostearate');
insert into food_item(item_id, calories, item_name) values
(888034, 444034, 'Ammonium Myristyl Sulfate');
insert into food_item(item_id, calories, item_name) values
(888035, 444035, 'Ammonium Oleate');
insert into food_item(item_id, calories, item_name) values
(888036, 444036, 'Ammonium Stearate _ Stearic Acid; Ammonium Salt');
insert into food_item(item_id, calories, item_name) values
(888037, 444037, 'Amphoteric');
insert into food_item(item_id, calories, item_name) values
(888038, 444038, 'Amphoteric-2');
insert into food_item(item_id, calories, item_name) values
(888039, 444039, 'Ascorbyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888040, 444040, 'Asparagine');
insert into food_item(item_id, calories, item_name) values
(888041, 444041, 'Aspartic-Acid _ DL & L Forms; Aminosuccinate Acid');
insert into food_item(item_id, calories, item_name) values
(888042, 444042, '');
insert into food_item(item_id, calories, item_name) values
(888043, 444043, 'B');
insert into food_item(item_id, calories, item_name) values
(888044, 444044, 'Basic Voilet 10');
insert into food_item(item_id, calories, item_name) values
(888045, 444045, 'Beheneth-5, -10, -20, -30');
insert into food_item(item_id, calories, item_name) values
(888046, 444046, 'Behenic Acid _ Docosanoic Acid');
insert into food_item(item_id, calories, item_name) values
(888047, 444047, 'Behenic Acid _ Docosanol');
insert into food_item(item_id, calories, item_name) values
(888048, 444048, 'Beta-Carotene _ Provitamin A; BetaCarotene');
insert into food_item(item_id, calories, item_name) values
(888049, 444049, 'Betaine');
insert into food_item(item_id, calories, item_name) values
(888050, 444050, 'Biotin _ Vitamin H; Vitamin B Factor');
insert into food_item(item_id, calories, item_name) values
(888051, 444051, 'Brilliantines');
insert into food_item(item_id, calories, item_name) values
(888052, 444052, "Burow's Solution");
insert into food_item(item_id, calories, item_name) values
(888053, 444053, 'Butyl Acetate _ Acetic Acid; Butyl Ester');
insert into food_item(item_id, calories, item_name) values
(888054, 444054, 'Butyl Glycolate');
insert into food_item(item_id, calories, item_name) values
(888055, 444055, 'Butyl Oleate');
insert into food_item(item_id, calories, item_name) values
(888056, 444056, 'Butyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888057, 444057, 'Butyl Phrhaly Butyl Glycolate');
insert into food_item(item_id, calories, item_name) values
(888058, 444058, 'Butylrolactone _ Butanolide');
insert into food_item(item_id, calories, item_name) values
(888059, 444059, '');
insert into food_item(item_id, calories, item_name) values
(888060, 444060, 'C');
insert into food_item(item_id, calories, item_name) values
(888061, 444061, 'C18-36 Acid');
insert into food_item(item_id, calories, item_name) values
(888062, 444062, 'C29-70 Acid _ C29-70 Carboxylic Acids');
insert into food_item(item_id, calories, item_name) values
(888063, 444063, 'C18-36 Acid Glycol Ester');
insert into food_item(item_id, calories, item_name) values
(888064, 444064, 'C18-36 Acid Triglyceride ');
insert into food_item(item_id, calories, item_name) values
(888065, 444065, 'C9-11 Alcohols');
insert into food_item(item_id, calories, item_name) values
(888066, 444066, 'C12-16 Alcohols');
insert into food_item(item_id, calories, item_name) values
(888067, 444067, 'C14-15 Alcohols');
insert into food_item(item_id, calories, item_name) values
(888068, 444068, 'C12-15 Alcohols Benzoate');
insert into food_item(item_id, calories, item_name) values
(888069, 444069, 'C12-15 Alcohols Lactate');
insert into food_item(item_id, calories, item_name) values
(888070, 444070, 'C21 Dicarboxylic Acid');
insert into food_item(item_id, calories, item_name) values
(888071, 444071, 'C15-18 Glycol');
insert into food_item(item_id, calories, item_name) values
(888072, 444072, 'C18-20 Glycol Palmitate');
insert into food_item(item_id, calories, item_name) values
(888073, 444073, 'C8-9, C9-11, C9-13, C9-14, C10-11, C10-  13, C11-12, C11-13,');
insert into food_item(item_id, calories, item_name) values
(888074, 444074, 'C12-14, C13-14, C13-16, and C20-40 ');
insert into food_item(item_id, calories, item_name) values
(888075, 444075, 'IsoParaffins');
insert into food_item(item_id, calories, item_name) values
(888076, 444076, 'C11-15 Pareth-12 Stearate');
insert into food_item(item_id, calories, item_name) values
(888077, 444077, 'C11-15 Pareth-40');
insert into food_item(item_id, calories, item_name) values
(888078, 444078, 'C12-13 Pareth 3-7');
insert into food_item(item_id, calories, item_name) values
(888079, 444079, 'C14-15 Pareth-7, -11, -13');
insert into food_item(item_id, calories, item_name) values
(888080, 444080, 'C10-18 Triglycerieds ');
insert into food_item(item_id, calories, item_name) values
(888081, 444081, 'Calcium Stearate');
insert into food_item(item_id, calories, item_name) values
(888082, 444082, 'Calcium Stearoyl Lactylate');
insert into food_item(item_id, calories, item_name) values
(888083, 444083, 'Caproamphoacetate');
insert into food_item(item_id, calories, item_name) values
(888084, 444084, 'Caproamhodiacetate');
insert into food_item(item_id, calories, item_name) values
(888085, 444085, 'Capryl Betaine');
insert into food_item(item_id, calories, item_name) values
(888086, 444086, 'Caprylamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888087, 444087, 'Caprylic / Capric / Stearic Triglyceride');
insert into food_item(item_id, calories, item_name) values
(888088, 444088, 'Caprylic Acid');
insert into food_item(item_id, calories, item_name) values
(888089, 444089, 'Caprylamphoacetate');
insert into food_item(item_id, calories, item_name) values
(888090, 444090, 'Capryloamphodiacetate');
insert into food_item(item_id, calories, item_name) values
(888091, 444091, 'Carbamide');
insert into food_item(item_id, calories, item_name) values
(888092, 444092, 'Cetearalkonium Bromide');
insert into food_item(item_id, calories, item_name) values
(888093, 444093, 'Ceteareth-3 _ Cetyl/Stearyl Ether');
insert into food_item(item_id, calories, item_name) values
(888094, 444094, 'Ceteareth-4, -6, -8, -10, -12, -15, -17, -20, -27, -30');
insert into food_item(item_id, calories, item_name) values
(888095, 444095, 'Ceteareth-5');
insert into food_item(item_id, calories, item_name) values
(888096, 444096, 'Cetaryl Alcohol');
insert into food_item(item_id, calories, item_name) values
(888097, 444097, 'Ceteth-1');
insert into food_item(item_id, calories, item_name) values
(888098, 444098, 'Cetyl-');
insert into food_item(item_id, calories, item_name) values
(888099, 444099, 'Cetyl Alcohol');
insert into food_item(item_id, calories, item_name) values
(888100, 444100, 'Cetyl Ammonium');
insert into food_item(item_id, calories, item_name) values
(888101, 444101, 'Cetyl Arachidate');
insert into food_item(item_id, calories, item_name) values
(888102, 444102, 'Cetyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888103, 444103, 'Cetyl Esters');
insert into food_item(item_id, calories, item_name) values
(888104, 444104, 'Cetyl Lactate');
insert into food_item(item_id, calories, item_name) values
(888105, 444105, 'Cetyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888106, 444106, 'Cetyl Octanoate');
insert into food_item(item_id, calories, item_name) values
(888107, 444107, 'Cetyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888108, 444108, 'Cetyl Phosphate');
insert into food_item(item_id, calories, item_name) values
(888109, 444109, 'Cetyl Ricinoleate');
insert into food_item(item_id, calories, item_name) values
(888110, 444110, 'Cetyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888111, 444111, 'Cetyl Stearyl Glycol');
insert into food_item(item_id, calories, item_name) values
(888112, 444112, 'Cetylarachidol');
insert into food_item(item_id, calories, item_name) values
(888113, 444113, 'Cetylpyridinium Chloride');
insert into food_item(item_id, calories, item_name) values
(888114, 444114, 'Cetyltrymethylammonium BromideChitin');
insert into food_item(item_id, calories, item_name) values
(888115, 444115, 'Cloflucarbon');
insert into food_item(item_id, calories, item_name) values
(888116, 444116, 'Deceth-7-Carboxylic Acid');
insert into food_item(item_id, calories, item_name) values
(888117, 444117, 'Decyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888118, 444118, 'Diacetyl');
insert into food_item(item_id, calories, item_name) values
(888119, 444119, 'Diazo-');
insert into food_item(item_id, calories, item_name) values
(888120, 444120, 'Diazolidinyl Urea _ Germall II (TM)');
insert into food_item(item_id, calories, item_name) values
(888121, 444121, 'Dicetyl Adipate');
insert into food_item(item_id, calories, item_name) values
(888122, 444122, 'Dicetyl Thiodipropionate');
insert into food_item(item_id, calories, item_name) values
(888123, 444123, 'Diethyl Asparate');
insert into food_item(item_id, calories, item_name) values
(888124, 444124, 'Diethyl Palmitoyl Apartate');
insert into food_item(item_id, calories, item_name) values
(888125, 444125, 'Diethyl Sebacate');
insert into food_item(item_id, calories, item_name) values
(888126, 444126, 'Diethylaminoethyl Stearamide');
insert into food_item(item_id, calories, item_name) values
(888127, 444127, 'Diethylaminoethyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888128, 444128, 'Diglyceryl Stearate Malate');
insert into food_item(item_id, calories, item_name) values
(888129, 444129, 'Dihydroxyethyl Soyamine Dioleate');
insert into food_item(item_id, calories, item_name) values
(888130, 444130, 'Dihydroxyethyl Stearamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888131, 444131, 'Dihydroxyethyl Stearyl Glycinate');
insert into food_item(item_id, calories, item_name) values
(888132, 444132, 'Dimethyl Behenamine');
insert into food_item(item_id, calories, item_name) values
(888133, 444133, 'Dimethyl Lauramine Oleate');
insert into food_item(item_id, calories, item_name) values
(888134, 444134, 'Dimethyl Myristamine');
insert into food_item(item_id, calories, item_name) values
(888135, 444135, 'Dimethyl Palmitamine');
insert into food_item(item_id, calories, item_name) values
(888136, 444136, 'Dimethyl Stearamine');
insert into food_item(item_id, calories, item_name) values
(888137, 444137, 'Dimethylaminopropyl Oleamide');
insert into food_item(item_id, calories, item_name) values
(888138, 444138, 'Dimethylaminopropyl Stearamide');
insert into food_item(item_id, calories, item_name) values
(888139, 444139, 'Dimethylol Urea');
insert into food_item(item_id, calories, item_name) values
(888140, 444140, 'Dimyristyl Thiodipropionate');
insert into food_item(item_id, calories, item_name) values
(888141, 444141, 'Dioleth-8-Phosphate');
insert into food_item(item_id, calories, item_name) values
(888142, 444142, 'Direct Black 51');
insert into food_item(item_id, calories, item_name) values
(888143, 444143, 'Direct Red 23 _ Fast Scarlet 4BSA');
insert into food_item(item_id, calories, item_name) values
(888144, 444144, 'Direct Red 80');
insert into food_item(item_id, calories, item_name) values
(888145, 444145, 'Direct Violet 48');
insert into food_item(item_id, calories, item_name) values
(888146, 444146, 'Direct Yellow 12 _ Chrysophenine G');
insert into food_item(item_id, calories, item_name) values
(888147, 444147, 'Disodium Cetaeryl Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888148, 444148, 'Disodium Isostearamino Mea- Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888149, 444149, 'Disodium Monooleamidosulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888150, 444150, 'Disodium Monoricinoleamido Mea-  Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888151, 444151, 'Disodium Oleamido MIPA-Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888152, 444152, 'Disodium Oleamido PEG-2 Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888153, 444153, 'Disodium Oleyl Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888154, 444154, 'Disodium Stearmido MEA-Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888155, 444155, 'Disodium Stearminodipionate');
insert into food_item(item_id, calories, item_name) values
(888156, 444156, 'Disodium Stearyl Sulfosuccinate');
insert into food_item(item_id, calories, item_name) values
(888157, 444157, 'Distearyl Thiodipropionate');
insert into food_item(item_id, calories, item_name) values
(888158, 444158, 'DI-TEA-Palmitoyl Asparate');
insert into food_item(item_id, calories, item_name) values
(888159, 444159, 'Dodecanedionic Acid; Cetearyl Alcohol; Glycol Copolymer');
insert into food_item(item_id, calories, item_name) values
(888160, 444160, 'Dodecyltetradecanol');
insert into food_item(item_id, calories, item_name) values
(888161, 444161, 'Enfleurage');
insert into food_item(item_id, calories, item_name) values
(888162, 444162, 'Enzyme');
insert into food_item(item_id, calories, item_name) values
(888163, 444163, 'Ethyl Aspartate');
insert into food_item(item_id, calories, item_name) values
(888164, 444164, 'Ethyl Oleate');
insert into food_item(item_id, calories, item_name) values
(888165, 444165, 'Ethyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888166, 444166, 'Ethyl Serinate');
insert into food_item(item_id, calories, item_name) values
(888167, 444167, 'Ethyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888168, 444168, 'Ethyl Urocanate');
insert into food_item(item_id, calories, item_name) values
(888169, 444169, 'Ethylene Dioleamide');
insert into food_item(item_id, calories, item_name) values
(888170, 444170, 'Ethylene Distearamide');
insert into food_item(item_id, calories, item_name) values
(888171, 444171, 'Ethylene Urea');
insert into food_item(item_id, calories, item_name) values
(888172, 444172, 'Ethylhexyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888173, 444173, 'Fatty Alcohols _ Cetyl; Stearyl; Lauryl;  Myristyl');
insert into food_item(item_id, calories, item_name) values
(888174, 444174, 'Folic Acid');
insert into food_item(item_id, calories, item_name) values
(888175, 444175, 'Fructose');
insert into food_item(item_id, calories, item_name) values
(888176, 444176, 'Gel (not Silica gel)');
insert into food_item(item_id, calories, item_name) values
(888177, 444177, 'Glucose Glutamate');
insert into food_item(item_id, calories, item_name) values
(888178, 444178, 'Glyceryl Caprate');
insert into food_item(item_id, calories, item_name) values
(888179, 444179, 'Glyceryl Caprylate');
insert into food_item(item_id, calories, item_name) values
(888180, 444180, 'Glyceryl Caprylate/Caprate');
insert into food_item(item_id, calories, item_name) values
(888181, 444181, 'Glyceryl Dioleate');
insert into food_item(item_id, calories, item_name) values
(888182, 444182, 'Glyceryl Distearate');
insert into food_item(item_id, calories, item_name) values
(888183, 444183, 'Glyceryl Hydrostearate');
insert into food_item(item_id, calories, item_name) values
(888184, 444184, 'Glyceryl Hydrostearate');
insert into food_item(item_id, calories, item_name) values
(888185, 444185, 'Glyceryl Hydroxystearate');
insert into food_item(item_id, calories, item_name) values
(888186, 444186, 'Glyceryl Isostearate');
insert into food_item(item_id, calories, item_name) values
(888187, 444187, 'Glyceryl Monostearate');
insert into food_item(item_id, calories, item_name) values
(888188, 444188, 'Glyceryl Myristate');
insert into food_item(item_id, calories, item_name) values
(888189, 444189, 'Glyceryl Oleate');
insert into food_item(item_id, calories, item_name) values
(888190, 444190, 'Glyceryl Palmitate Lactate');
insert into food_item(item_id, calories, item_name) values
(888191, 444191, 'Glyceryl Stearate SE');
insert into food_item(item_id, calories, item_name) values
(888192, 444192, 'Glyceryl Trimyristate');
insert into food_item(item_id, calories, item_name) values
(888193, 444193, 'Glycol Stearate SE');
insert into food_item(item_id, calories, item_name) values
(888194, 444194, 'Glycyrrhetinyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888195, 444195, 'Guanidine Carbonate');
insert into food_item(item_id, calories, item_name) values
(888196, 444196, 'Guanosine');
insert into food_item(item_id, calories, item_name) values
(888197, 444197, 'Hexanediol Distearate');
insert into food_item(item_id, calories, item_name) values
(888198, 444198, 'Histidine');
insert into food_item(item_id, calories, item_name) values
(888199, 444199, 'Hydrogenated Fatty Oils');
insert into food_item(item_id, calories, item_name) values
(888200, 444200, 'Hydroxylated Lecithin');
insert into food_item(item_id, calories, item_name) values
(888201, 444201, 'Hydroxyoctacosanyl Hydroxyastearate');
insert into food_item(item_id, calories, item_name) values
(888202, 444202, 'Hydroxystearmide MEA');
insert into food_item(item_id, calories, item_name) values
(888203, 444203, 'Hydroxystearic Acid');
insert into food_item(item_id, calories, item_name) values
(888204, 444204, 'Imidazlidinyl Urea');
insert into food_item(item_id, calories, item_name) values
(888205, 444205, 'Indole');
insert into food_item(item_id, calories, item_name) values
(888206, 444206, 'Isobutyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888207, 444207, 'Isobutyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888208, 444208, 'Isobutyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888209, 444209, 'Isoceteth-10, -20, -30');
insert into food_item(item_id, calories, item_name) values
(888210, 444210, 'Isocetyl Alcohol');
insert into food_item(item_id, calories, item_name) values
(888211, 444211, 'Isocetyl Isodecanoate');
insert into food_item(item_id, calories, item_name) values
(888212, 444212, 'Isocetyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888213, 444213, 'Isocetyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888214, 444214, 'Isocetyl Stearoyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888215, 444215, 'Isoceteth-10 Stearate');
insert into food_item(item_id, calories, item_name) values
(888216, 444216, 'Isodecyl hydroxystearate');
insert into food_item(item_id, calories, item_name) values
(888217, 444217, 'Isodecyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888218, 444218, 'Isodecyl Oleate');
insert into food_item(item_id, calories, item_name) values
(888219, 444219, 'Isodecyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888220, 444220, 'Isohyxyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888221, 444221, 'Isopropyl Acetate');
insert into food_item(item_id, calories, item_name) values
(888222, 444222, 'Isopropyl Isostearate');
insert into food_item(item_id, calories, item_name) values
(888223, 444223, 'Isopropyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888224, 444224, 'Isopropyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888225, 444225, 'Isopropyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888226, 444226, 'Isostearamidopropalkonium Chloride');
insert into food_item(item_id, calories, item_name) values
(888227, 444227, 'Isostearamidopropyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888228, 444228, 'Isostearamidopropyl');
insert into food_item(item_id, calories, item_name) values
(888229, 444229, 'Dimethylamine Glycolate');
insert into food_item(item_id, calories, item_name) values
(888230, 444230, 'Isostearamidopropyl Dimethylamine Lactate');
insert into food_item(item_id, calories, item_name) values
(888231, 444231, 'Isostearamidopropyl EthyldimoniumEthosulfate');
insert into food_item(item_id, calories, item_name) values
(888232, 444232, 'Isostearamidopropyl Morpholine Lactate');
insert into food_item(item_id, calories, item_name) values
(888233, 444233, 'Isostearamidoporopylamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888234, 444234, 'Isosteareth-2 through -20');
insert into food_item(item_id, calories, item_name) values
(888235, 444235, 'Isostearic Acid');
insert into food_item(item_id, calories, item_name) values
(888236, 444236, 'Isostearoamphoglycinate');
insert into food_item(item_id, calories, item_name) values
(888237, 444237, 'Isostearoamphopropionate');
insert into food_item(item_id, calories, item_name) values
(888238, 444238, 'Isostearyl Alcohol');
insert into food_item(item_id, calories, item_name) values
(888239, 444239, 'Isostearyl Benzylimidonium Chloride');
insert into food_item(item_id, calories, item_name) values
(888240, 444240, 'Isostearyl Diglyceryl Succinate');
insert into food_item(item_id, calories, item_name) values
(888241, 444241, 'Isostearyl Erucate');
insert into food_item(item_id, calories, item_name) values
(888242, 444242, 'Isostearyl Ethylimidonium Ethosulfate');
insert into food_item(item_id, calories, item_name) values
(888243, 444243, 'Isostearyl Hydroxyethyl Imidazoline');
insert into food_item(item_id, calories, item_name) values
(888244, 444244, 'Isostearyl Imidazoline');
insert into food_item(item_id, calories, item_name) values
(888245, 444245, 'Isostearyl Isostearate');
insert into food_item(item_id, calories, item_name) values
(888246, 444246, 'Isostearyl Lactate');
insert into food_item(item_id, calories, item_name) values
(888247, 444247, 'Isostearyl Neopentanoate');
insert into food_item(item_id, calories, item_name) values
(888248, 444248, 'Isostearyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888249, 444249, 'Isostearyl Stearoyl STearate');
insert into food_item(item_id, calories, item_name) values
(888250, 444250, 'Lactic Acid');
insert into food_item(item_id, calories, item_name) values
(888251, 444251, 'Lauroyl Sarcosine');
insert into food_item(item_id, calories, item_name) values
(888252, 444252, 'Lauryl Isostearate');
insert into food_item(item_id, calories, item_name) values
(888253, 444253, 'Lauryl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888254, 444254, 'Lauryl Stearate');
insert into food_item(item_id, calories, item_name) values
(888255, 444255, 'Lauryl Suntaine');
insert into food_item(item_id, calories, item_name) values
(888256, 444256, 'Lithium Stearate');
insert into food_item(item_id, calories, item_name) values
(888257, 444257, 'Magnesium Myristate Magnesium Oleate');
insert into food_item(item_id, calories, item_name) values
(888258, 444258, 'Magnesium Stearate');
insert into food_item(item_id, calories, item_name) values
(888259, 444259, 'Methyl Gluceth-10 or -20');
insert into food_item(item_id, calories, item_name) values
(888260, 444260, 'Methyl Glucet-20 Sesquistereate _Glucamate');
insert into food_item(item_id, calories, item_name) values
(888261, 444261, 'Methyl Glucose Sesquioleate');
insert into food_item(item_id, calories, item_name) values
(888262, 444262, 'Methyl Glucose Sesquistearate');
insert into food_item(item_id, calories, item_name) values
(888263, 444263, 'Methyl Hydroxystearate');
insert into food_item(item_id, calories, item_name) values
(888264, 444264, 'Methyl Lactate');
insert into food_item(item_id, calories, item_name) values
(888265, 444265, 'Methyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888266, 444266, 'Methyl Oleate');
insert into food_item(item_id, calories, item_name) values
(888267, 444267, 'Methyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888268, 444268, 'Mixed Isopropanolamines');
insert into food_item(item_id, calories, item_name) values
(888269, 444269, 'Myristate');
insert into food_item(item_id, calories, item_name) values
(888270, 444270, 'Morpholine Stearate');
insert into food_item(item_id, calories, item_name) values
(888271, 444271, 'Myreth-3');
insert into food_item(item_id, calories, item_name) values
(888272, 444272, 'Myreth-3 Caprate _ Myristic EthoxyCaprate');
insert into food_item(item_id, calories, item_name) values
(888273, 444273, 'Myreth-3 Laurate');
insert into food_item(item_id, calories, item_name) values
(888274, 444274, 'Myreth-3 Myristate');
insert into food_item(item_id, calories, item_name) values
(888275, 444275, 'Myreth-4');
insert into food_item(item_id, calories, item_name) values
(888276, 444276, 'Myristamide DEA _ Myristic Diethanolamide');
insert into food_item(item_id, calories, item_name) values
(888277, 444277, 'Myristamide MIPA');
insert into food_item(item_id, calories, item_name) values
(888278, 444278, 'Myristamidopropyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888279, 444279, 'Myristamidopropyl Diethylamine');
insert into food_item(item_id, calories, item_name) values
(888280, 444280, 'Myristamidopropylamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888281, 444281, 'Myristamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888282, 444282, 'Myristaminopropionic Acid');
insert into food_item(item_id, calories, item_name) values
(888283, 444283, 'Myristate');
insert into food_item(item_id, calories, item_name) values
(888284, 444284, 'Myristic Acid');
insert into food_item(item_id, calories, item_name) values
(888285, 444285, 'Myristimide MEA');
insert into food_item(item_id, calories, item_name) values
(888286, 444286, 'Myristoamphoacetate');
insert into food_item(item_id, calories, item_name) values
(888287, 444287, 'Myristoyl Sarcosine');
insert into food_item(item_id, calories, item_name) values
(888288, 444288, 'Myristyl Alcohol');
insert into food_item(item_id, calories, item_name) values
(888289, 444289, 'Myristyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888290, 444290, 'Myristyl Hydroxyethyl Imidazoline');
insert into food_item(item_id, calories, item_name) values
(888291, 444291, 'Myristyl Isostearate');
insert into food_item(item_id, calories, item_name) values
(888292, 444292, 'Myristyl Lactate');
insert into food_item(item_id, calories, item_name) values
(888293, 444293, 'Myristyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888294, 444294, 'Myristyl Neopentanoate _ Ceraphyl');
insert into food_item(item_id, calories, item_name) values
(888295, 444295, 'Myristyl Propionate');
insert into food_item(item_id, calories, item_name) values
(888296, 444296, 'Myristyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888297, 444297, 'Myristyleicosanol');
insert into food_item(item_id, calories, item_name) values
(888298, 444298, 'Myristyleicosyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888299, 444299, 'Myristyloctadecanol');
insert into food_item(item_id, calories, item_name) values
(888300, 444300, 'Nonyl Acetate');
insert into food_item(item_id, calories, item_name) values
(888301, 444301, 'Octododecanol-2 _ Octyl Dodecanol');
insert into food_item(item_id, calories, item_name) values
(888302, 444302, 'Octododeceth-20, -25');
insert into food_item(item_id, calories, item_name) values
(888303, 444303, 'Octododecyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888304, 444304, 'Octoxyglyceryl Behenate');
insert into food_item(item_id, calories, item_name) values
(888305, 444305, 'Octyl Acetoxystearate');
insert into food_item(item_id, calories, item_name) values
(888306, 444306, 'Octyl Hydroxystearate');
insert into food_item(item_id, calories, item_name) values
(888307, 444307, 'Octyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888308, 444308, 'Octyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888309, 444309, 'Octyldocecanol');
insert into food_item(item_id, calories, item_name) values
(888310, 444310, 'Octyldodecyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888311, 444311, 'Octyldodecyl Stearoyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888312, 444312, 'Oleamide _ Oleylamide');
insert into food_item(item_id, calories, item_name) values
(888313, 444313, 'Oleamide DEA _ Oleic Diethanolamide');
insert into food_item(item_id, calories, item_name) values
(888314, 444314, 'Oleamide MIPA');
insert into food_item(item_id, calories, item_name) values
(888315, 444315, 'Oleamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888316, 444316, 'Oleic Acid');
insert into food_item(item_id, calories, item_name) values
(888317, 444317, 'Oleoyl Sarcosine');
insert into food_item(item_id, calories, item_name) values
(888318, 444318, 'Oleth-3 Phosphate');
insert into food_item(item_id, calories, item_name) values
(888319, 444319, 'Oleth 20');
insert into food_item(item_id, calories, item_name) values
(888320, 444320, 'Oleth-20 Phosphate');
insert into food_item(item_id, calories, item_name) values
(888321, 444321, 'Oleyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888322, 444322, 'Oleyl Myristate');
insert into food_item(item_id, calories, item_name) values
(888323, 444323, 'Oleyl Oleate');
insert into food_item(item_id, calories, item_name) values
(888324, 444324, 'Oleyl Stearate');
insert into food_item(item_id, calories, item_name) values
(888325, 444325, 'Orotic Acid _ Pyrimidecarboxylic Acid');
insert into food_item(item_id, calories, item_name) values
(888326, 444326, 'Palmamamidopropyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888327, 444327, 'Palmitamide DEA, MEA');
insert into food_item(item_id, calories, item_name) values
(888328, 444328, 'Palmitamidopropyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888329, 444329, 'Palmitamindopropyl Diethylamine');
insert into food_item(item_id, calories, item_name) values
(888330, 444330, 'Palmitamine');
insert into food_item(item_id, calories, item_name) values
(888331, 444331, 'Palmitamine Oxide _ PalmitylDimethylamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888332, 444332, 'Palmitate');
insert into food_item(item_id, calories, item_name) values
(888333, 444333, 'Palmitic Acid');
insert into food_item(item_id, calories, item_name) values
(888334, 444334, 'Panthenyl Ethyl Etheracetate');
insert into food_item(item_id, calories, item_name) values
(888335, 444335, 'Pareth-25- 12');
insert into food_item(item_id, calories, item_name) values
(888336, 444336, 'PEG-9 Caprylate');
insert into food_item(item_id, calories, item_name) values
(888337, 444337, 'PEG-8 Caprylate / Caprate');
insert into food_item(item_id, calories, item_name) values
(888338, 444338, 'PEG-6 Caprylic / Capric Glycerides');
insert into food_item(item_id, calories, item_name) values
(888339, 444339, 'PEG-6 to -150 Dioleate');
insert into food_item(item_id, calories, item_name) values
(888340, 444340, 'PEG-3 Dipalmitate');
insert into food_item(item_id, calories, item_name) values
(888341, 444341, 'PEG-2 through -175 Distearate');
insert into food_item(item_id, calories, item_name) values
(888342, 444342, 'PEG-5 through -120 Glyceryl Stearate');
insert into food_item(item_id, calories, item_name) values
(888343, 444343, 'PEG-25 Glyceryl Trioleate');
insert into food_item(item_id, calories, item_name) values
(888344, 444344, 'PEG-6 or -12 Isostearate');
insert into food_item(item_id, calories, item_name) values
(888345, 444345, 'PEG-20 Methyl Glucose Sesquistearate');
insert into food_item(item_id, calories, item_name) values
(888346, 444346, 'PEG-4 Octanoate');
insert into food_item(item_id, calories, item_name) values
(888347, 444347, 'PEG-2 through -9 Oleamide');
insert into food_item(item_id, calories, item_name) values
(888348, 444348, 'PEG-2 through -30 Oleamide');
insert into food_item(item_id, calories, item_name) values
(888349, 444349, 'PEG-12, -20, or -30 Oleate');
insert into food_item(item_id, calories, item_name) values
(888350, 444350, 'PEG-3 through -150 Oleate');
insert into food_item(item_id, calories, item_name) values
(888351, 444351, 'PEG-6 through -20 Palmitate');
insert into food_item(item_id, calories, item_name) values
(888352, 444352, 'PEG-25 through -125 Propylene Glycol Stearate');
insert into food_item(item_id, calories, item_name) values
(888353, 444353, 'PEG-8 Sesquioleate');
insert into food_item(item_id, calories, item_name) values
(888354, 444354, 'PEG-5 or -20 Sorbitan Isostearate');
insert into food_item(item_id, calories, item_name) values
(888355, 444355, 'PEG-3 or -6 Sorbitan Oleate');
insert into food_item(item_id, calories, item_name) values
(888356, 444356, 'PEG-80 Sorbitan Palmitate');
insert into food_item(item_id, calories, item_name) values
(888357, 444357, 'PEG-40 Sorbitan Peroleate');
insert into food_item(item_id, calories, item_name) values
(888358, 444358, 'PEG-3 or -40 Sorbitan Stearate');
insert into food_item(item_id, calories, item_name) values
(888359, 444359, 'PEG-30, -40, or -60 Sorbitan Tetraoleate');
insert into food_item(item_id, calories, item_name) values
(888360, 444360, 'PEG-60 Sorbitan Tetrastearate');
insert into food_item(item_id, calories, item_name) values
(888361, 444361, 'PEG-2 through -150 Stearate');
insert into food_item(item_id, calories, item_name) values
(888362, 444362, 'PEG-66 or -200 Tryhydroxystearin');
insert into food_item(item_id, calories, item_name) values
(888363, 444363, 'Pentaerythrityl Tetraoctanoate');
insert into food_item(item_id, calories, item_name) values
(888364, 444364, 'Pentaerythrityl Tetrastearate and  CalciumStearate');
insert into food_item(item_id, calories, item_name) values
(888365, 444365, 'Phospholipids _ Phosphatides');
insert into food_item(item_id, calories, item_name) values
(888366, 444366, 'Polyglycerol');
insert into food_item(item_id, calories, item_name) values
(888367, 444367, 'Polyglycerol-4 Cocoate');
insert into food_item(item_id, calories, item_name) values
(888368, 444368, 'Polyglycerol-10 Decalinoleate');
insert into food_item(item_id, calories, item_name) values
(888369, 444369, 'Polyglycerol-2 Diisostearate');
insert into food_item(item_id, calories, item_name) values
(888370, 444370, 'Polyglycerol-6 Dioleate');
insert into food_item(item_id, calories, item_name) values
(888371, 444371, 'Polyglycerol-6 Distearate');
insert into food_item(item_id, calories, item_name) values
(888372, 444372, 'Polyglycerol-3 Hydroxylauryl Ether');
insert into food_item(item_id, calories, item_name) values
(888373, 444373, 'Polyglycerol-4 Isostearate');
insert into food_item(item_id, calories, item_name) values
(888374, 444374, 'Polyglycerol-3, -4 or -8 Oleate');
insert into food_item(item_id, calories, item_name) values
(888375, 444375, 'Polyglycerol-2 or -4 Oleyl Ether');
insert into food_item(item_id, calories, item_name) values
(888376, 444376, 'Polyglycerol-2 PEG-4 Stearate');
insert into food_item(item_id, calories, item_name) values
(888377, 444377, 'Polyglycerol-2 Sesquiisostearate');
insert into food_item(item_id, calories, item_name) values
(888378, 444378, 'Polyglycerol-2 Sesquioleate');
insert into food_item(item_id, calories, item_name) values
(888379, 444379, 'Polyglycerol-3, -4 or -8 Stearate');
insert into food_item(item_id, calories, item_name) values
(888380, 444380, 'Polyglycerol-10 Tertraoleate');
insert into food_item(item_id, calories, item_name) values
(888381, 444381, 'Polyglycerol-2 Tetrastearate');
insert into food_item(item_id, calories, item_name) values
(888382, 444382, 'Polysorbate 60 and Polysorbate 80');
insert into food_item(item_id, calories, item_name) values
(888383, 444383, 'Potassium Apartate');
insert into food_item(item_id, calories, item_name) values
(888384, 444384, 'Potassium Coco-Hydrolyzed Protein');
insert into food_item(item_id, calories, item_name) values
(888385, 444385, 'Potassium DNA');
insert into food_item(item_id, calories, item_name) values
(888386, 444386, 'Potassium Oleate-Oleic Acid');
insert into food_item(item_id, calories, item_name) values
(888387, 444387, 'Potassium Salt');
insert into food_item(item_id, calories, item_name) values
(888388, 444388, 'Potassium Myristate');
insert into food_item(item_id, calories, item_name) values
(888389, 444389, 'Potassium Palmitate');
insert into food_item(item_id, calories, item_name) values
(888390, 444390, 'Potassium Stearate _ Stearic Acid Potas  sium Salt');
insert into food_item(item_id, calories, item_name) values
(888391, 444391, 'PPG-3-Myreth-11');
insert into food_item(item_id, calories, item_name) values
(888392, 444392, 'PPG-4-Ceteareth-12');
insert into food_item(item_id, calories, item_name) values
(888393, 444393, 'PPG-4-Ceteth-1, -5 or -10');
insert into food_item(item_id, calories, item_name) values
(888394, 444394, 'PPG-4 Myristyl Ether');
insert into food_item(item_id, calories, item_name) values
(888395, 444395, 'PPG-5-Ceteth- 10 Phosphate');
insert into food_item(item_id, calories, item_name) values
(888396, 444396, 'PPG-6-C12-18 Pareth');
insert into food_item(item_id, calories, item_name) values
(888397, 444397, 'PPG-8-Ceteth, -5, -10, or -20');
insert into food_item(item_id, calories, item_name) values
(888398, 444398, 'PPG-9-Steareth-3');
insert into food_item(item_id, calories, item_name) values
(888399, 444399, 'PPG-10-Ceteareth-20');
insert into food_item(item_id, calories, item_name) values
(888400, 444400, 'PPG-10 Cetyl Ether leyl Ether');
insert into food_item(item_id, calories, item_name) values
(888401, 444401, 'PPG-11 or -15 Stearyl Ether');
insert into food_item(item_id, calories, item_name) values
(888402, 444402, 'PPG-26 Oleate _ Polyxypropylene 2000 Monooleate; Carbowax');
insert into food_item(item_id, calories, item_name) values
(888403, 444403, 'PPG-28 Cetyl Ether');
insert into food_item(item_id, calories, item_name) values
(888404, 444404, 'PPG-30 Cetyl Ether');
insert into food_item(item_id, calories, item_name) values
(888405, 444405, 'PPG-30, -50, Oleyl Ether');
insert into food_item(item_id, calories, item_name) values
(888406, 444406, 'PPG-36 Oleate _ Polyoxypropylene (36)Monooleate');
insert into food_item(item_id, calories, item_name) values
(888407, 444407, 'PPG-Isocetyl Ether PPG-3- Isosteareth-9');
insert into food_item(item_id, calories, item_name) values
(888408, 444408, 'Proline');
insert into food_item(item_id, calories, item_name) values
(888409, 444409, 'Propylene Glycol Myristate');
insert into food_item(item_id, calories, item_name) values
(888410, 444410, 'Protein Fatty Acid Condensates');
insert into food_item(item_id, calories, item_name) values
(888411, 444411, 'Proteins');
insert into food_item(item_id, calories, item_name) values
(888412, 444412, 'Pyridium Compounds');
insert into food_item(item_id, calories, item_name) values
(888413, 444413, 'Pyroligneous Acid');
insert into food_item(item_id, calories, item_name) values
(888414, 444414, 'Retinyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888415, 444415, 'Ribonucleic Acid _ RNA');
insert into food_item(item_id, calories, item_name) values
(888416, 444416, 'Sarcosines');
insert into food_item(item_id, calories, item_name) values
(888417, 444417, 'S-Carboxy Methyl Cysteine');
insert into food_item(item_id, calories, item_name) values
(888418, 444418, 'Sebactic Acid  _ Decanedioic Acid');
insert into food_item(item_id, calories, item_name) values
(888419, 444419, 'Serine');
insert into food_item(item_id, calories, item_name) values
(888420, 444420, 'Skatole');
insert into food_item(item_id, calories, item_name) values
(888421, 444421, 'Sodium Aluminum Chloroydroxyl Lactate');
insert into food_item(item_id, calories, item_name) values
(888422, 444422, 'Sodium C12-15 Pareth-7  Carboxylate');
insert into food_item(item_id, calories, item_name) values
(888423, 444423, 'Sodium C12-15 Pareth-Sulfate');
insert into food_item(item_id, calories, item_name) values
(888424, 444424, 'Sodium Cetearyl Sulfate');
insert into food_item(item_id, calories, item_name) values
(888425, 444425, 'Sodium Cetyl Sulfate');
insert into food_item(item_id, calories, item_name) values
(888426, 444426, 'Sodium Cocyl Sarcosinate');
insert into food_item(item_id, calories, item_name) values
(888427, 444427, 'Sodium DNA');
insert into food_item(item_id, calories, item_name) values
(888428, 444428, 'Sodium Glyceryl Oleate Phosphate');
insert into food_item(item_id, calories, item_name) values
(888429, 444429, 'Sodium Isosteareth-6 Carboxylate');
insert into food_item(item_id, calories, item_name) values
(888430, 444430, 'Sodium Isosteroyl LacrylatE');
insert into food_item(item_id, calories, item_name) values
(888431, 444431, 'Sodium Myreth Sulfate');
insert into food_item(item_id, calories, item_name) values
(888432, 444432, 'Sodium Myristate');
insert into food_item(item_id, calories, item_name) values
(888433, 444433, 'Sodium Myristoyl Isethionate');
insert into food_item(item_id, calories, item_name) values
(888434, 444434, 'Sodium Myristoyl Sarcosinate');
insert into food_item(item_id, calories, item_name) values
(888435, 444435, 'Sodium Myristyl Sulfate');
insert into food_item(item_id, calories, item_name) values
(888436, 444436, 'Sodium Oleth-7 or -8 Phosphate');
insert into food_item(item_id, calories, item_name) values
(888437, 444437, 'Sodium Palmitate');
insert into food_item(item_id, calories, item_name) values
(888438, 444438, 'Sodium Pareth- 15-7 or 25-7 Carboxylate');
insert into food_item(item_id, calories, item_name) values
(888439, 444439, 'Sodium Pareth-23 or -25 Sulfate');
insert into food_item(item_id, calories, item_name) values
(888440, 444440, 'Sodium PCA');
insert into food_item(item_id, calories, item_name) values
(888441, 444441, 'Sodium PCA Methysilanol');
insert into food_item(item_id, calories, item_name) values
(888442, 444442, 'Sodium Ribonucleic Acid _ SRNA');
insert into food_item(item_id, calories, item_name) values
(888443, 444443, 'Sodium Sarcosinate ');
insert into food_item(item_id, calories, item_name) values
(888444, 444444, 'Sodium Soap');
insert into food_item(item_id, calories, item_name) values
(888445, 444445, 'Sodium Stearate');
insert into food_item(item_id, calories, item_name) values
(888446, 444446, 'Sodium Steroyl Lactylate');
insert into food_item(item_id, calories, item_name) values
(888447, 444447, 'Sodium Urocanate');
insert into food_item(item_id, calories, item_name) values
(888448, 444448, 'Sorbeth-6 Hexastearate');
insert into food_item(item_id, calories, item_name) values
(888449, 444449, 'Sorbitan Diisoseate');
insert into food_item(item_id, calories, item_name) values
(888450, 444450, 'Sorbitan Dioleate');
insert into food_item(item_id, calories, item_name) values
(888451, 444451, 'Sorbitan Fatty Acid Esters');
insert into food_item(item_id, calories, item_name) values
(888452, 444452, 'Sorbitan Isostearate');
insert into food_item(item_id, calories, item_name) values
(888453, 444453, 'Sorbitan Oleate _ Sorbitan Monooleate');
insert into food_item(item_id, calories, item_name) values
(888454, 444454, 'Sorbitan Palmitate _ Span 40 (TM)');
insert into food_item(item_id, calories, item_name) values
(888455, 444455, 'Sorbitan Sesquioleate');
insert into food_item(item_id, calories, item_name) values
(888456, 444456, 'Sorbitan Sequistearate');
insert into food_item(item_id, calories, item_name) values
(888457, 444457, 'Sorbitan Triisostearate');
insert into food_item(item_id, calories, item_name) values
(888458, 444458, 'Sorbitan Tristearate');
insert into food_item(item_id, calories, item_name) values
(888459, 444459, 'Spermaceti _ Cetyl Palmitate');
insert into food_item(item_id, calories, item_name) values
(888460, 444460, 'Stearalkonium Bentonite');
insert into food_item(item_id, calories, item_name) values
(888461, 444461, 'Stearalkonium Chloride');
insert into food_item(item_id, calories, item_name) values
(888462, 444462, 'Stearalkonium Hectorite');
insert into food_item(item_id, calories, item_name) values
(888463, 444463, 'Stearamide');
insert into food_item(item_id, calories, item_name) values
(888464, 444464, 'Stearamide DEA _ Stearic AcidDiethanolamide');
insert into food_item(item_id, calories, item_name) values
(888465, 444465, 'Stearamide DIBA Stearate');
insert into food_item(item_id, calories, item_name) values
(888466, 444466, 'Stearamide MIPA Stearate');
insert into food_item(item_id, calories, item_name) values
(888467, 444467, 'Stearamide MIPA');
insert into food_item(item_id, calories, item_name) values
(888468, 444468, 'Stearamide Oxide');
insert into food_item(item_id, calories, item_name) values
(888469, 444469, 'Stearmidopropalkonium Chloride');
insert into food_item(item_id, calories, item_name) values
(888470, 444470, 'Stearamidopropyl Dimethylamine');
insert into food_item(item_id, calories, item_name) values
(888471, 444471, 'Stearamine');
insert into food_item(item_id, calories, item_name) values
(888472, 444472, 'Stearamine Oxide');
insert into food_item(item_id, calories, item_name) values
(888473, 444473, 'Stearates');
insert into food_item(item_id, calories, item_name) values
(888474, 444474, 'Steareth-2');
insert into food_item(item_id, calories, item_name) values
(888475, 444475, 'Steareth-4 through -100');
insert into food_item(item_id, calories, item_name) values
(888476, 444476, 'Stearic Acid');
insert into food_item(item_id, calories, item_name) values
(888477, 444477, 'Stearic Hydrazide');
insert into food_item(item_id, calories, item_name) values
(888478, 444478, 'Stearmidoethyl Diethylamine');
insert into food_item(item_id, calories, item_name) values
(888479, 444479, 'Stearoamphoacetate');
insert into food_item(item_id, calories, item_name) values
(888480, 444480, 'Stearoamphocarboxyglycinate');
insert into food_item(item_id, calories, item_name) values
(888481, 444481, 'Stearoamphodiacetate');
insert into food_item(item_id, calories, item_name) values
(888482, 444482, 'Stearoamphohydroxypropysulfonate');
insert into food_item(item_id, calories, item_name) values
(888483, 444483, 'Stearoamphopropionate');
insert into food_item(item_id, calories, item_name) values
(888484, 444484, 'Stearone');
insert into food_item(item_id, calories, item_name) values
(888485, 444485, 'Stearoxy Dimethicone');
insert into food_item(item_id, calories, item_name) values
(888486, 444486, 'Stearoxytrimethylsilane');
insert into food_item(item_id, calories, item_name) values
(888487, 444487, 'Stearoyl Lactylic Acid');
insert into food_item(item_id, calories, item_name) values
(888488, 444488, 'Stearoyl Sarcosine');
insert into food_item(item_id, calories, item_name) values
(888489, 444489, 'Steartrimonium Chloride');
insert into food_item(item_id, calories, item_name) values
(888490, 444490, 'Steartrimonium Hydrolyzed Animal Protein');
insert into food_item(item_id, calories, item_name) values
(888491, 444491, 'Stearyl Acetate');
insert into food_item(item_id, calories, item_name) values
(888492, 444492, 'Stearyl Betaine');
insert into food_item(item_id, calories, item_name) values
(888493, 444493, 'Stearyl Caprylate');
insert into food_item(item_id, calories, item_name) values
(888494, 444494, 'Stearyl Citrate');
insert into food_item(item_id, calories, item_name) values
(888495, 444495, 'Stearyl Erucamide');
insert into food_item(item_id, calories, item_name) values
(888496, 444496, 'Stearyl Erucate');
insert into food_item(item_id, calories, item_name) values
(888497, 444497, 'Stearyl Ghycyrrhetinate');
insert into food_item(item_id, calories, item_name) values
(888498, 444498, 'Stearyl Heptanoate');
/*--Items--*/
insert into item(item_id, quantity, price) values(888000, 777000, 555000.0);
insert into item(item_id, quantity, price) values(888001, 777001, 555001.0);
insert into item(item_id, quantity, price) values(888002, 777002, 555002.0);
insert into item(item_id, quantity, price) values(888003, 777003, 555003.0);
insert into item(item_id, quantity, price) values(888004, 777004, 555004.0);
insert into item(item_id, quantity, price) values(888005, 777005, 555005.0);
insert into item(item_id, quantity, price) values(888006, 777006, 555006.0);
insert into item(item_id, quantity, price) values(888007, 777007, 555007.0);
insert into item(item_id, quantity, price) values(888008, 777008, 555008.0);
insert into item(item_id, quantity, price) values(888009, 777009, 555009.0);
insert into item(item_id, quantity, price) values(888010, 777010, 555010.0);
insert into item(item_id, quantity, price) values(888011, 777011, 555011.0);
insert into item(item_id, quantity, price) values(888012, 777012, 555012.0);
insert into item(item_id, quantity, price) values(888013, 777013, 555013.0);
insert into item(item_id, quantity, price) values(888014, 777014, 555014.0);
insert into item(item_id, quantity, price) values(888015, 777015, 555015.0);
insert into item(item_id, quantity, price) values(888016, 777016, 555016.0);
insert into item(item_id, quantity, price) values(888017, 777017, 555017.0);
insert into item(item_id, quantity, price) values(888018, 777018, 555018.0);
insert into item(item_id, quantity, price) values(888019, 777019, 555019.0);
insert into item(item_id, quantity, price) values(888020, 777020, 555020.0);
insert into item(item_id, quantity, price) values(888021, 777021, 555021.0);
insert into item(item_id, quantity, price) values(888022, 777022, 555022.0);
insert into item(item_id, quantity, price) values(888023, 777023, 555023.0);
insert into item(item_id, quantity, price) values(888024, 777024, 555024.0);
insert into item(item_id, quantity, price) values(888025, 777025, 555025.0);
insert into item(item_id, quantity, price) values(888026, 777026, 555026.0);
insert into item(item_id, quantity, price) values(888027, 777027, 555027.0);
insert into item(item_id, quantity, price) values(888028, 777028, 555028.0);
insert into item(item_id, quantity, price) values(888029, 777029, 555029.0);
insert into item(item_id, quantity, price) values(888030, 777030, 555030.0);
insert into item(item_id, quantity, price) values(888031, 777031, 555031.0);
insert into item(item_id, quantity, price) values(888032, 777032, 555032.0);
insert into item(item_id, quantity, price) values(888033, 777033, 555033.0);
insert into item(item_id, quantity, price) values(888034, 777034, 555034.0);
insert into item(item_id, quantity, price) values(888035, 777035, 555035.0);
insert into item(item_id, quantity, price) values(888036, 777036, 555036.0);
insert into item(item_id, quantity, price) values(888037, 777037, 555037.0);
insert into item(item_id, quantity, price) values(888038, 777038, 555038.0);
insert into item(item_id, quantity, price) values(888039, 777039, 555039.0);
insert into item(item_id, quantity, price) values(888040, 777040, 555040.0);
insert into item(item_id, quantity, price) values(888041, 777041, 555041.0);
insert into item(item_id, quantity, price) values(888042, 777042, 555042.0);
insert into item(item_id, quantity, price) values(888043, 777043, 555043.0);
insert into item(item_id, quantity, price) values(888044, 777044, 555044.0);
insert into item(item_id, quantity, price) values(888045, 777045, 555045.0);
insert into item(item_id, quantity, price) values(888046, 777046, 555046.0);
insert into item(item_id, quantity, price) values(888047, 777047, 555047.0);
insert into item(item_id, quantity, price) values(888048, 777048, 555048.0);
insert into item(item_id, quantity, price) values(888049, 777049, 555049.0);
insert into item(item_id, quantity, price) values(888050, 777050, 555050.0);
insert into item(item_id, quantity, price) values(888051, 777051, 555051.0);
insert into item(item_id, quantity, price) values(888052, 777052, 555052.0);
insert into item(item_id, quantity, price) values(888053, 777053, 555053.0);
insert into item(item_id, quantity, price) values(888054, 777054, 555054.0);
insert into item(item_id, quantity, price) values(888055, 777055, 555055.0);
insert into item(item_id, quantity, price) values(888056, 777056, 555056.0);
insert into item(item_id, quantity, price) values(888057, 777057, 555057.0);
insert into item(item_id, quantity, price) values(888058, 777058, 555058.0);
insert into item(item_id, quantity, price) values(888059, 777059, 555059.0);
insert into item(item_id, quantity, price) values(888060, 777060, 555060.0);
insert into item(item_id, quantity, price) values(888061, 777061, 555061.0);
insert into item(item_id, quantity, price) values(888062, 777062, 555062.0);
insert into item(item_id, quantity, price) values(888063, 777063, 555063.0);
insert into item(item_id, quantity, price) values(888064, 777064, 555064.0);
insert into item(item_id, quantity, price) values(888065, 777065, 555065.0);
insert into item(item_id, quantity, price) values(888066, 777066, 555066.0);
insert into item(item_id, quantity, price) values(888067, 777067, 555067.0);
insert into item(item_id, quantity, price) values(888068, 777068, 555068.0);
insert into item(item_id, quantity, price) values(888069, 777069, 555069.0);
insert into item(item_id, quantity, price) values(888070, 777070, 555070.0);
insert into item(item_id, quantity, price) values(888071, 777071, 555071.0);
insert into item(item_id, quantity, price) values(888072, 777072, 555072.0);
insert into item(item_id, quantity, price) values(888073, 777073, 555073.0);
insert into item(item_id, quantity, price) values(888074, 777074, 555074.0);
insert into item(item_id, quantity, price) values(888075, 777075, 555075.0);
insert into item(item_id, quantity, price) values(888076, 777076, 555076.0);
insert into item(item_id, quantity, price) values(888077, 777077, 555077.0);
insert into item(item_id, quantity, price) values(888078, 777078, 555078.0);
insert into item(item_id, quantity, price) values(888079, 777079, 555079.0);
insert into item(item_id, quantity, price) values(888080, 777080, 555080.0);
insert into item(item_id, quantity, price) values(888081, 777081, 555081.0);
insert into item(item_id, quantity, price) values(888082, 777082, 555082.0);
insert into item(item_id, quantity, price) values(888083, 777083, 555083.0);
insert into item(item_id, quantity, price) values(888084, 777084, 555084.0);
insert into item(item_id, quantity, price) values(888085, 777085, 555085.0);
insert into item(item_id, quantity, price) values(888086, 777086, 555086.0);
insert into item(item_id, quantity, price) values(888087, 777087, 555087.0);
insert into item(item_id, quantity, price) values(888088, 777088, 555088.0);
insert into item(item_id, quantity, price) values(888089, 777089, 555089.0);
insert into item(item_id, quantity, price) values(888090, 777090, 555090.0);
insert into item(item_id, quantity, price) values(888091, 777091, 555091.0);
insert into item(item_id, quantity, price) values(888092, 777092, 555092.0);
insert into item(item_id, quantity, price) values(888093, 777093, 555093.0);
insert into item(item_id, quantity, price) values(888094, 777094, 555094.0);
insert into item(item_id, quantity, price) values(888095, 777095, 555095.0);
insert into item(item_id, quantity, price) values(888096, 777096, 555096.0);
insert into item(item_id, quantity, price) values(888097, 777097, 555097.0);
insert into item(item_id, quantity, price) values(888098, 777098, 555098.0);
insert into item(item_id, quantity, price) values(888099, 777099, 555099.0);
insert into item(item_id, quantity, price) values(888100, 777100, 555100.0);
insert into item(item_id, quantity, price) values(888101, 777101, 555101.0);
insert into item(item_id, quantity, price) values(888102, 777102, 555102.0);
insert into item(item_id, quantity, price) values(888103, 777103, 555103.0);
insert into item(item_id, quantity, price) values(888104, 777104, 555104.0);
insert into item(item_id, quantity, price) values(888105, 777105, 555105.0);
insert into item(item_id, quantity, price) values(888106, 777106, 555106.0);
insert into item(item_id, quantity, price) values(888107, 777107, 555107.0);
insert into item(item_id, quantity, price) values(888108, 777108, 555108.0);
insert into item(item_id, quantity, price) values(888109, 777109, 555109.0);
insert into item(item_id, quantity, price) values(888110, 777110, 555110.0);
insert into item(item_id, quantity, price) values(888111, 777111, 555111.0);
insert into item(item_id, quantity, price) values(888112, 777112, 555112.0);
insert into item(item_id, quantity, price) values(888113, 777113, 555113.0);
insert into item(item_id, quantity, price) values(888114, 777114, 555114.0);
insert into item(item_id, quantity, price) values(888115, 777115, 555115.0);
insert into item(item_id, quantity, price) values(888116, 777116, 555116.0);
insert into item(item_id, quantity, price) values(888117, 777117, 555117.0);
insert into item(item_id, quantity, price) values(888118, 777118, 555118.0);
insert into item(item_id, quantity, price) values(888119, 777119, 555119.0);
insert into item(item_id, quantity, price) values(888120, 777120, 555120.0);
insert into item(item_id, quantity, price) values(888121, 777121, 555121.0);
insert into item(item_id, quantity, price) values(888122, 777122, 555122.0);
insert into item(item_id, quantity, price) values(888123, 777123, 555123.0);
insert into item(item_id, quantity, price) values(888124, 777124, 555124.0);
insert into item(item_id, quantity, price) values(888125, 777125, 555125.0);
insert into item(item_id, quantity, price) values(888126, 777126, 555126.0);
insert into item(item_id, quantity, price) values(888127, 777127, 555127.0);
insert into item(item_id, quantity, price) values(888128, 777128, 555128.0);
insert into item(item_id, quantity, price) values(888129, 777129, 555129.0);
insert into item(item_id, quantity, price) values(888130, 777130, 555130.0);
insert into item(item_id, quantity, price) values(888131, 777131, 555131.0);
insert into item(item_id, quantity, price) values(888132, 777132, 555132.0);
insert into item(item_id, quantity, price) values(888133, 777133, 555133.0);
insert into item(item_id, quantity, price) values(888134, 777134, 555134.0);
insert into item(item_id, quantity, price) values(888135, 777135, 555135.0);
insert into item(item_id, quantity, price) values(888136, 777136, 555136.0);
insert into item(item_id, quantity, price) values(888137, 777137, 555137.0);
insert into item(item_id, quantity, price) values(888138, 777138, 555138.0);
insert into item(item_id, quantity, price) values(888139, 777139, 555139.0);
insert into item(item_id, quantity, price) values(888140, 777140, 555140.0);
insert into item(item_id, quantity, price) values(888141, 777141, 555141.0);
insert into item(item_id, quantity, price) values(888142, 777142, 555142.0);
insert into item(item_id, quantity, price) values(888143, 777143, 555143.0);
insert into item(item_id, quantity, price) values(888144, 777144, 555144.0);
insert into item(item_id, quantity, price) values(888145, 777145, 555145.0);
insert into item(item_id, quantity, price) values(888146, 777146, 555146.0);
insert into item(item_id, quantity, price) values(888147, 777147, 555147.0);
insert into item(item_id, quantity, price) values(888148, 777148, 555148.0);
insert into item(item_id, quantity, price) values(888149, 777149, 555149.0);
insert into item(item_id, quantity, price) values(888150, 777150, 555150.0);
insert into item(item_id, quantity, price) values(888151, 777151, 555151.0);
insert into item(item_id, quantity, price) values(888152, 777152, 555152.0);
insert into item(item_id, quantity, price) values(888153, 777153, 555153.0);
insert into item(item_id, quantity, price) values(888154, 777154, 555154.0);
insert into item(item_id, quantity, price) values(888155, 777155, 555155.0);
insert into item(item_id, quantity, price) values(888156, 777156, 555156.0);
insert into item(item_id, quantity, price) values(888157, 777157, 555157.0);
insert into item(item_id, quantity, price) values(888158, 777158, 555158.0);
insert into item(item_id, quantity, price) values(888159, 777159, 555159.0);
insert into item(item_id, quantity, price) values(888160, 777160, 555160.0);
insert into item(item_id, quantity, price) values(888161, 777161, 555161.0);
insert into item(item_id, quantity, price) values(888162, 777162, 555162.0);
insert into item(item_id, quantity, price) values(888163, 777163, 555163.0);
insert into item(item_id, quantity, price) values(888164, 777164, 555164.0);
insert into item(item_id, quantity, price) values(888165, 777165, 555165.0);
insert into item(item_id, quantity, price) values(888166, 777166, 555166.0);
insert into item(item_id, quantity, price) values(888167, 777167, 555167.0);
insert into item(item_id, quantity, price) values(888168, 777168, 555168.0);
insert into item(item_id, quantity, price) values(888169, 777169, 555169.0);
insert into item(item_id, quantity, price) values(888170, 777170, 555170.0);
insert into item(item_id, quantity, price) values(888171, 777171, 555171.0);
insert into item(item_id, quantity, price) values(888172, 777172, 555172.0);
insert into item(item_id, quantity, price) values(888173, 777173, 555173.0);
insert into item(item_id, quantity, price) values(888174, 777174, 555174.0);
insert into item(item_id, quantity, price) values(888175, 777175, 555175.0);
insert into item(item_id, quantity, price) values(888176, 777176, 555176.0);
insert into item(item_id, quantity, price) values(888177, 777177, 555177.0);
insert into item(item_id, quantity, price) values(888178, 777178, 555178.0);
insert into item(item_id, quantity, price) values(888179, 777179, 555179.0);
insert into item(item_id, quantity, price) values(888180, 777180, 555180.0);
insert into item(item_id, quantity, price) values(888181, 777181, 555181.0);
insert into item(item_id, quantity, price) values(888182, 777182, 555182.0);
insert into item(item_id, quantity, price) values(888183, 777183, 555183.0);
insert into item(item_id, quantity, price) values(888184, 777184, 555184.0);
insert into item(item_id, quantity, price) values(888185, 777185, 555185.0);
insert into item(item_id, quantity, price) values(888186, 777186, 555186.0);
insert into item(item_id, quantity, price) values(888187, 777187, 555187.0);
insert into item(item_id, quantity, price) values(888188, 777188, 555188.0);
insert into item(item_id, quantity, price) values(888189, 777189, 555189.0);
insert into item(item_id, quantity, price) values(888190, 777190, 555190.0);
insert into item(item_id, quantity, price) values(888191, 777191, 555191.0);
insert into item(item_id, quantity, price) values(888192, 777192, 555192.0);
insert into item(item_id, quantity, price) values(888193, 777193, 555193.0);
insert into item(item_id, quantity, price) values(888194, 777194, 555194.0);
insert into item(item_id, quantity, price) values(888195, 777195, 555195.0);
insert into item(item_id, quantity, price) values(888196, 777196, 555196.0);
insert into item(item_id, quantity, price) values(888197, 777197, 555197.0);
insert into item(item_id, quantity, price) values(888198, 777198, 555198.0);
insert into item(item_id, quantity, price) values(888199, 777199, 555199.0);
insert into item(item_id, quantity, price) values(888200, 777200, 555200.0);
insert into item(item_id, quantity, price) values(888201, 777201, 555201.0);
insert into item(item_id, quantity, price) values(888202, 777202, 555202.0);
insert into item(item_id, quantity, price) values(888203, 777203, 555203.0);
insert into item(item_id, quantity, price) values(888204, 777204, 555204.0);
insert into item(item_id, quantity, price) values(888205, 777205, 555205.0);
insert into item(item_id, quantity, price) values(888206, 777206, 555206.0);
insert into item(item_id, quantity, price) values(888207, 777207, 555207.0);
insert into item(item_id, quantity, price) values(888208, 777208, 555208.0);
insert into item(item_id, quantity, price) values(888209, 777209, 555209.0);
insert into item(item_id, quantity, price) values(888210, 777210, 555210.0);
insert into item(item_id, quantity, price) values(888211, 777211, 555211.0);
insert into item(item_id, quantity, price) values(888212, 777212, 555212.0);
insert into item(item_id, quantity, price) values(888213, 777213, 555213.0);
insert into item(item_id, quantity, price) values(888214, 777214, 555214.0);
insert into item(item_id, quantity, price) values(888215, 777215, 555215.0);
insert into item(item_id, quantity, price) values(888216, 777216, 555216.0);
insert into item(item_id, quantity, price) values(888217, 777217, 555217.0);
insert into item(item_id, quantity, price) values(888218, 777218, 555218.0);
insert into item(item_id, quantity, price) values(888219, 777219, 555219.0);
insert into item(item_id, quantity, price) values(888220, 777220, 555220.0);
insert into item(item_id, quantity, price) values(888221, 777221, 555221.0);
insert into item(item_id, quantity, price) values(888222, 777222, 555222.0);
insert into item(item_id, quantity, price) values(888223, 777223, 555223.0);
insert into item(item_id, quantity, price) values(888224, 777224, 555224.0);
insert into item(item_id, quantity, price) values(888225, 777225, 555225.0);
insert into item(item_id, quantity, price) values(888226, 777226, 555226.0);
insert into item(item_id, quantity, price) values(888227, 777227, 555227.0);
insert into item(item_id, quantity, price) values(888228, 777228, 555228.0);
insert into item(item_id, quantity, price) values(888229, 777229, 555229.0);
insert into item(item_id, quantity, price) values(888230, 777230, 555230.0);
insert into item(item_id, quantity, price) values(888231, 777231, 555231.0);
insert into item(item_id, quantity, price) values(888232, 777232, 555232.0);
insert into item(item_id, quantity, price) values(888233, 777233, 555233.0);
insert into item(item_id, quantity, price) values(888234, 777234, 555234.0);
insert into item(item_id, quantity, price) values(888235, 777235, 555235.0);
insert into item(item_id, quantity, price) values(888236, 777236, 555236.0);
insert into item(item_id, quantity, price) values(888237, 777237, 555237.0);
insert into item(item_id, quantity, price) values(888238, 777238, 555238.0);
insert into item(item_id, quantity, price) values(888239, 777239, 555239.0);
insert into item(item_id, quantity, price) values(888240, 777240, 555240.0);
insert into item(item_id, quantity, price) values(888241, 777241, 555241.0);
insert into item(item_id, quantity, price) values(888242, 777242, 555242.0);
insert into item(item_id, quantity, price) values(888243, 777243, 555243.0);
insert into item(item_id, quantity, price) values(888244, 777244, 555244.0);
insert into item(item_id, quantity, price) values(888245, 777245, 555245.0);
insert into item(item_id, quantity, price) values(888246, 777246, 555246.0);
insert into item(item_id, quantity, price) values(888247, 777247, 555247.0);
insert into item(item_id, quantity, price) values(888248, 777248, 555248.0);
/*--Ingredient--*/
insert into ingredients(recipie_id, quantity, price) values
(0, 'Diacetyl');
insert into ingredients(recipie_id, quantity, price) values
(1, 'Disodium Oleamido MIPA-Sulfosuccinate');
insert into ingredients(recipie_id, quantity, price) values
(2, 'Diazo-');
insert into ingredients(recipie_id, quantity, price) values
(3, 'Aluminum Isostearates/Palmitates');
insert into ingredients(recipie_id, quantity, price) values
(4, 'C12-14, C13-14, C13-16, and C20-40 ');
insert into ingredients(recipie_id, quantity, price) values
(5, 'Ammonium Stearate _ Stearic Acid; Ammonium Salt');
insert into ingredients(recipie_id, quantity, price) values
(6, 'Ammonium Stearate _ Stearic Acid; Ammonium Salt');
insert into ingredients(recipie_id, quantity, price) values
(7, 'Diethyl Palmitoyl Apartate');
insert into ingredients(recipie_id, quantity, price) values
(8, 'Isostearyl Neopentanoate');
insert into ingredients(recipie_id, quantity, price) values
(9, 'C11-15 Pareth-40');
insert into ingredients(recipie_id, quantity, price) values
(10, 'Cetyl Ammonium');
insert into ingredients(recipie_id, quantity, price) values
(11, 'Histidine');
insert into ingredients(recipie_id, quantity, price) values
(12, 'Isocetyl Isodecanoate');
insert into ingredients(recipie_id, quantity, price) values
(13, 'Disodium Isostearamino Mea- Sulfosuccinate');
insert into ingredients(recipie_id, quantity, price) values
(14, 'Aluminum Tripalmitate/Triisostearate');
insert into ingredients(recipie_id, quantity, price) values
(15, 'Cetyl Betaine');
insert into ingredients(recipie_id, quantity, price) values
(16, 'Aluminum Salts (Aluminum Acetate, Alumi  num Lanolate, Aluminum');
insert into ingredients(recipie_id, quantity, price) values
(17, 'Dodecanedionic Acid; Cetearyl Alcohol; Glycol Copolymer');
insert into ingredients(recipie_id, quantity, price) values
(18, 'Isostearyl Palmitate');
insert into ingredients(recipie_id, quantity, price) values
(19, 'Allantoin');
insert into ingredients(recipie_id, quantity, price) values
(20, 'Isostearyl Diglyceryl Succinate');
insert into ingredients(recipie_id, quantity, price) values
(21, 'Allantoinate');
insert into ingredients(recipie_id, quantity, price) values
(22, 'Stearate,');
insert into ingredients(recipie_id, quantity, price) values
(23, 'C18-36 Acid Triglyceride ');
insert into ingredients(recipie_id, quantity, price) values
(24, 'Disodium Isostearamino Mea- Sulfosuccinate');
insert into ingredients(recipie_id, quantity, price) values
(25, 'C29-70 Acid _ C29-70 Carboxylic Acids');
insert into ingredients(recipie_id, quantity, price) values
(26, 'C12-13 Pareth 3-7');
insert into ingredients(recipie_id, quantity, price) values
(27, 'Isodecyl Myristate');
insert into ingredients(recipie_id, quantity, price) values
(28, 'Isostearyl Isostearate');
insert into ingredients(recipie_id, quantity, price) values
(29, 'Folic Acid');
insert into ingredients(recipie_id, quantity, price) values
(30, 'C12-14, C13-14, C13-16, and C20-40 ');
insert into ingredients(recipie_id, quantity, price) values
(31, 'Glyceryl Hydroxystearate');
insert into ingredients(recipie_id, quantity, price) values
(32, 'Fructose');
insert into ingredients(recipie_id, quantity, price) values
(33, 'C12-15 Alcohols Lactate');
insert into ingredients(recipie_id, quantity, price) values
(34, 'Ethylene Urea');
insert into ingredients(recipie_id, quantity, price) values
(35, 'Aluminum Tristearate');
insert into ingredients(recipie_id, quantity, price) values
(36, 'Cetyl Ammonium');
insert into ingredients(recipie_id, quantity, price) values
(37, 'Isostearamidopropyl Morpholine Lactate');
insert into ingredients(recipie_id, quantity, price) values
(38, 'Cetylpyridinium Chloride');
insert into ingredients(recipie_id, quantity, price) values
(39, 'Isobutyl Myristate');
insert into ingredients(recipie_id, quantity, price) values
(40, 'C10-18 Triglycerieds ');
insert into ingredients(recipie_id, quantity, price) values
(41, 'Diethylaminoethyl Stearamide');
insert into ingredients(recipie_id, quantity, price) values
(42, 'Cetyl Octanoate');
insert into ingredients(recipie_id, quantity, price) values
(43, 'Dimethyl Behenamine');
insert into ingredients(recipie_id, quantity, price) values
(44, 'Aluminum Tristearate)');
insert into ingredients(recipie_id, quantity, price) values
(45, 'Ethyl Palmitate');
insert into ingredients(recipie_id, quantity, price) values
(46, 'Glyceryl Caprylate');
insert into ingredients(recipie_id, quantity, price) values
(47, 'Hexanediol Distearate');
insert into ingredients(recipie_id, quantity, price) values
(48, 'Isopropyl Isostearate');
insert into ingredients(recipie_id, quantity, price) values
(49, 'C11-15 Pareth-12 Stearate');
insert into ingredients(recipie_id, quantity, price) values
(50, 'Diethyl Palmitoyl Apartate');
insert into ingredients(recipie_id, quantity, price) values
(51, 'Histidine');
insert into ingredients(recipie_id, quantity, price) values
(52, 'Dimethyl Lauramine Oleate');
insert into ingredients(recipie_id, quantity, price) values
(53, 'Direct Red 80');
insert into ingredients(recipie_id, quantity, price) values
(54, 'Acetylated Sucrose Distearte');
insert into ingredients(recipie_id, quantity, price) values
(55, 'Disodium Cetaeryl Sulfosuccinate');
insert into ingredients(recipie_id, quantity, price) values
(56, 'Aluminum Isostearates/Palmitates');
insert into ingredients(recipie_id, quantity, price) values
(57, 'Isopropyl Isostearate');
insert into ingredients(recipie_id, quantity, price) values
(58, 'Butyl Glycolate');
insert into ingredients(recipie_id, quantity, price) values
(59, 'Dimyristyl Thiodipropionate');
insert into ingredients(recipie_id, quantity, price) values
(60, 'Dihydroxyethyl Soyamine Dioleate');
insert into ingredients(recipie_id, quantity, price) values
(61, 'Deceth-7-Carboxylic Acid');
insert into ingredients(recipie_id, quantity, price) values
(62, 'Isodecyl Myristate');
insert into ingredients(recipie_id, quantity, price) values
(63, 'Glyceryl Palmitate Lactate');
insert into ingredients(recipie_id, quantity, price) values
(64, 'Distearyl Thiodipropionate');
insert into ingredients(recipie_id, quantity, price) values
(65, 'Glyceryl Caprylate');
insert into ingredients(recipie_id, quantity, price) values
(66, 'Isoceteth-10, -20, -30');
insert into ingredients(recipie_id, quantity, price) values
(67, 'Cetearalkonium Bromide');
insert into ingredients(recipie_id, quantity, price) values
(68, 'Cetyl Octanoate');
insert into ingredients(recipie_id, quantity, price) values
(69, 'Fructose');
insert into ingredients(recipie_id, quantity, price) values
(70, 'Isostearic Acid');
insert into ingredients(recipie_id, quantity, price) values
(71, 'Dimethylaminopropyl Stearamide');
insert into ingredients(recipie_id, quantity, price) values
(72, 'Caproamhodiacetate');
insert into ingredients(recipie_id, quantity, price) values
(73, 'Glycyrrhetinyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(74, 'Ethyl Aspartate');
insert into ingredients(recipie_id, quantity, price) values
(75, 'Biotin _ Vitamin H; Vitamin B Factor');
insert into ingredients(recipie_id, quantity, price) values
(76, 'C9-11 Alcohols');
insert into ingredients(recipie_id, quantity, price) values
(77, 'Ethyl Urocanate');
insert into ingredients(recipie_id, quantity, price) values
(78, 'Ethylene Urea');
insert into ingredients(recipie_id, quantity, price) values
(79, 'Isostearamidopropyl Dimethylamine Lactate');
insert into ingredients(recipie_id, quantity, price) values
(80, 'Alanine');
insert into ingredients(recipie_id, quantity, price) values
(81, 'Isodecyl hydroxystearate');
insert into ingredients(recipie_id, quantity, price) values
(82, 'Dihydroxyethyl Stearamine Oxide');
insert into ingredients(recipie_id, quantity, price) values
(83, 'Diethyl Sebacate');
insert into ingredients(recipie_id, quantity, price) values
(84, 'C9-11 Alcohols');
insert into ingredients(recipie_id, quantity, price) values
(85, 'Behenic Acid _ Docosanoic Acid');
insert into ingredients(recipie_id, quantity, price) values
(86, 'Isostearamidopropalkonium Chloride');
insert into ingredients(recipie_id, quantity, price) values
(87, 'Aluminum Tristearate');
insert into ingredients(recipie_id, quantity, price) values
(88, 'Dimethyl Stearamine');
insert into ingredients(recipie_id, quantity, price) values
(89, 'Dimethylaminopropyl Stearamide');
insert into ingredients(recipie_id, quantity, price) values
(90, 'Isopropyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(91, 'Ammonium Stearate _ Stearic Acid; Ammonium Salt');
insert into ingredients(recipie_id, quantity, price) values
(92, 'Glyceryl Hydrostearate');
insert into ingredients(recipie_id, quantity, price) values
(93, 'Butyl Palmitate');
insert into ingredients(recipie_id, quantity, price) values
(94, 'Isostearyl Imidazoline');
insert into ingredients(recipie_id, quantity, price) values
(95, 'Amphoteric-2');
insert into ingredients(recipie_id, quantity, price) values
(96, 'Isostearamidopropyl Morpholine Lactate');
insert into ingredients(recipie_id, quantity, price) values
(97, 'Isostearamidopropyl Betaine');
insert into ingredients(recipie_id, quantity, price) values
(98, 'Acetoin _ Acetyl Methyl Carbinol');
insert into ingredients(recipie_id, quantity, price) values
(99, 'Glyceryl Hydrostearate');
insert into ingredients(recipie_id, quantity, price) values
(100, 'Isocetyl Palmitate');
insert into ingredients(recipie_id, quantity, price) values
(101, 'Cetylarachidol');
insert into ingredients(recipie_id, quantity, price) values
(102, 'Isocetyl Stearoyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(103, 'Ammonium C12-15 Pareth Sulfate _ Pareth-25-3 Sulfate');
insert into ingredients(recipie_id, quantity, price) values
(104, 'C21 Dicarboxylic Acid');
insert into ingredients(recipie_id, quantity, price) values
(105, 'Isostearyl Hydroxyethyl Imidazoline');
insert into ingredients(recipie_id, quantity, price) values
(106, 'Glucose Glutamate');
insert into ingredients(recipie_id, quantity, price) values
(107, 'Isostearic Acid');
insert into ingredients(recipie_id, quantity, price) values
(108, 'Cetyl Stearyl Glycol');
insert into ingredients(recipie_id, quantity, price) values
(109, 'Indole');
insert into ingredients(recipie_id, quantity, price) values
(110, 'C18-36 Acid Triglyceride ');
insert into ingredients(recipie_id, quantity, price) values
(111, 'Gel (not Silica gel)');
insert into ingredients(recipie_id, quantity, price) values
(112, 'Isoceteth-10 Stearate');
insert into ingredients(recipie_id, quantity, price) values
(113, 'Aluminum Lactate');
insert into ingredients(recipie_id, quantity, price) values
(114, 'Capryloamphodiacetate');
insert into ingredients(recipie_id, quantity, price) values
(115, 'Dimethylaminopropyl Oleamide');
insert into ingredients(recipie_id, quantity, price) values
(116, 'Ethyl Aspartate');
insert into ingredients(recipie_id, quantity, price) values
(117, 'Isostearic Acid');
insert into ingredients(recipie_id, quantity, price) values
(118, 'Isocetyl Stearoyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(119, 'Isostearamidopropyl Dimethylamine Lactate');
insert into ingredients(recipie_id, quantity, price) values
(120, 'Dimethyl Behenamine');
insert into ingredients(recipie_id, quantity, price) values
(121, 'Ethylene Urea');
insert into ingredients(recipie_id, quantity, price) values
(122, 'Diethyl Asparate');
insert into ingredients(recipie_id, quantity, price) values
(123, 'Glyceryl Trimyristate');
insert into ingredients(recipie_id, quantity, price) values
(124, 'Caprylamphoacetate');
insert into ingredients(recipie_id, quantity, price) values
(125, 'Diethyl Asparate');
insert into ingredients(recipie_id, quantity, price) values
(126, 'Isostearamidopropyl EthyldimoniumEthosulfate');
insert into ingredients(recipie_id, quantity, price) values
(127, 'Acetic Anhydride _ Acetyl Oxide; Acetic Oxide');
insert into ingredients(recipie_id, quantity, price) values
(128, 'C21 Dicarboxylic Acid');
insert into ingredients(recipie_id, quantity, price) values
(129, 'Imidazlidinyl Urea');
insert into ingredients(recipie_id, quantity, price) values
(130, 'Ethylhexyl Palmitate');
insert into ingredients(recipie_id, quantity, price) values
(131, 'Isostearoamphoglycinate');
insert into ingredients(recipie_id, quantity, price) values
(132, 'Isodecyl hydroxystearate');
insert into ingredients(recipie_id, quantity, price) values
(133, 'Isostearyl Ethylimidonium Ethosulfate');
insert into ingredients(recipie_id, quantity, price) values
(134, 'Asparagine');
insert into ingredients(recipie_id, quantity, price) values
(135, 'Glyceryl Isostearate');
insert into ingredients(recipie_id, quantity, price) values
(136, 'Ethylene Distearamide');
insert into ingredients(recipie_id, quantity, price) values
(137, 'B');
insert into ingredients(recipie_id, quantity, price) values
(138, 'Glycyrrhetinyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(139, 'Ethylene Urea');
insert into ingredients(recipie_id, quantity, price) values
(140, 'Dimethylaminopropyl Stearamide');
insert into ingredients(recipie_id, quantity, price) values
(141, 'Dioleth-8-Phosphate');
insert into ingredients(recipie_id, quantity, price) values
(142, 'Indole');
insert into ingredients(recipie_id, quantity, price) values
(143, 'Glyceryl Monostearate');
insert into ingredients(recipie_id, quantity, price) values
(144, 'Ethylene Distearamide');
insert into ingredients(recipie_id, quantity, price) values
(145, 'C');
insert into ingredients(recipie_id, quantity, price) values
(146, 'Cetyl Ammonium');
insert into ingredients(recipie_id, quantity, price) values
(147, 'Beheneth-5, -10, -20, -30');
insert into ingredients(recipie_id, quantity, price) values
(148, 'Disodium Oleamido PEG-2 Sulfosuccinate');
insert into ingredients(recipie_id, quantity, price) values
(149, 'Dimethylol Urea');
insert into ingredients(recipie_id, quantity, price) values
(150, 'Stearate,');
insert into ingredients(recipie_id, quantity, price) values
(151, 'Ethylhexyl Palmitate');
insert into ingredients(recipie_id, quantity, price) values
(152, 'Allantoin Acetyl Methionine');
insert into ingredients(recipie_id, quantity, price) values
(153, 'Cetyl Lactate');
insert into ingredients(recipie_id, quantity, price) values
(154, 'Aluminum Tristearate)');
insert into ingredients(recipie_id, quantity, price) values
(155, 'Biotin _ Vitamin H; Vitamin B Factor');
insert into ingredients(recipie_id, quantity, price) values
(156, 'Ethylene Dioleamide');
insert into ingredients(recipie_id, quantity, price) values
(157, 'Cetyl Esters');
insert into ingredients(recipie_id, quantity, price) values
(158, 'Glycol Stearate SE');
insert into ingredients(recipie_id, quantity, price) values
(159, 'C12-13 Pareth 3-7');
insert into ingredients(recipie_id, quantity, price) values
(160, 'Isostearoamphopropionate');
insert into ingredients(recipie_id, quantity, price) values
(161, 'Glyceryl Monostearate');
insert into ingredients(recipie_id, quantity, price) values
(162, 'Amphoteric-2');
insert into ingredients(recipie_id, quantity, price) values
(163, 'Glyceryl Isostearate');
insert into ingredients(recipie_id, quantity, price) values
(164, 'Diethyl Asparate');
insert into ingredients(recipie_id, quantity, price) values
(165, 'Alcloxa _ Aluminum Chlorohydroxy Allantoinate');
insert into ingredients(recipie_id, quantity, price) values
(166, 'Biotin _ Vitamin H; Vitamin B Factor');
insert into ingredients(recipie_id, quantity, price) values
(167, 'Cetyl Lactate');
insert into ingredients(recipie_id, quantity, price) values
(168, 'C29-70 Acid _ C29-70 Carboxylic Acids');
insert into ingredients(recipie_id, quantity, price) values
(169, 'Isostearyl Hydroxyethyl Imidazoline');
insert into ingredients(recipie_id, quantity, price) values
(170, "Burow's Solution");
insert into ingredients(recipie_id, quantity, price) values
(171, 'Ceteth-1');
insert into ingredients(recipie_id, quantity, price) values
(172, 'Folic Acid');
insert into ingredients(recipie_id, quantity, price) values
(173, 'Cetyl Octanoate');
insert into ingredients(recipie_id, quantity, price) values
(174, 'B');
insert into ingredients(recipie_id, quantity, price) values
(175, 'Dicetyl Adipate');
insert into ingredients(recipie_id, quantity, price) values
(176, 'Isodecyl Myristate');
insert into ingredients(recipie_id, quantity, price) values
(177, 'Cetyl Alcohol');
insert into ingredients(recipie_id, quantity, price) values
(178, 'Ammonium Myristyl Sulfate');
insert into ingredients(recipie_id, quantity, price) values
(179, 'Diethylaminoethyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(180, 'C9-11 Alcohols');
insert into ingredients(recipie_id, quantity, price) values
(181, 'Glyceryl Hydrostearate');
insert into ingredients(recipie_id, quantity, price) values
(182, 'Histidine');
insert into ingredients(recipie_id, quantity, price) values
(183, 'Isoceteth-10 Stearate');
insert into ingredients(recipie_id, quantity, price) values
(184, 'Acetylated Sucrose Distearte');
insert into ingredients(recipie_id, quantity, price) values
(185, 'Amphoteric-2');
insert into ingredients(recipie_id, quantity, price) values
(186, 'Decyl Betaine');
insert into ingredients(recipie_id, quantity, price) values
(187, 'Diethyl Asparate');
insert into ingredients(recipie_id, quantity, price) values
(188, 'Caprylamine Oxide');
insert into ingredients(recipie_id, quantity, price) values
(189, 'Diethylaminoethyl Stearamide');
insert into ingredients(recipie_id, quantity, price) values
(190, 'Aldol');
insert into ingredients(recipie_id, quantity, price) values
(191, 'Direct Violet 48');
insert into ingredients(recipie_id, quantity, price) values
(192, 'Cetyl Phosphate');
insert into ingredients(recipie_id, quantity, price) values
(193, 'Dihydroxyethyl Stearyl Glycinate');
insert into ingredients(recipie_id, quantity, price) values
(194, 'Ascorbyl Stearate');
insert into ingredients(recipie_id, quantity, price) values
(195, 'Amphoteric');
insert into ingredients(recipie_id, quantity, price) values
(196, 'Ceteth-1');
insert into ingredients(recipie_id, quantity, price) values
(197, 'Dimethylaminopropyl Oleamide');
insert into ingredients(recipie_id, quantity, price) values
(198, 'Enfleurage');
