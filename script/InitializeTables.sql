	DROP database IF EXISTS meal_planner;
	CREATE database meal_planner;
	USE meal_planner;
	
	CREATE TABLE user (
		user_id  int(10) NOT NULL AUTO_INCREMENT, 
		PRIMARY KEY ( user_id )
	);
     CREATE TABLE  account  ( 
        account_id (10) NOT NULL AUTO_INCREMENT, 
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