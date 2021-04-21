const express = require('express');
const mysql = require('mysql');
const app = express();
app.use(express.static('public'));

const connection = mysql.createConnection({
  host: 'us-cdbr-east-03.cleardb.com',
  user: 'be1bfc3975eda3', 
  password: '523a4950',
  database: 'heroku_35a6ec7e5af8e2d',
  multipleStatements: true
});
 
connection.connect((err) => {
    if (err) {
      console.log('error connecting: ' + err.stack);
      return;
    }
    console.log('success');
  });
  app.listen(process.env.PORT || 5000);

//ここからprogate参考
 


app.use(express.static('public'));
app.use(express.urlencoded({extended: false}));


app.get('/', (req, res) => {
  res.render('top.ejs');
});

app.get('/index', (req, res) => {
  connection.query(
    'SELECT * FROM items ;SELECT * FROM chara ORDER BY position ASC; SELECT * from items; SELECT * FROM chara_limitedType;SELECT * FROM chara',
    (error, results) => {
      let all = [];for(i=1;i<=results[1].length;i++){all.push(i);}
      let p ={itemDifficulty:5,itemAuto:2,itemBoss_id:[1,2,3,4,5],itemDate:202103,charaId:all};
      res.render('index.ejs', {items: results[0],chara: results[1],allItems:results[2],chara_limitedType:results[3],chara_unsort:results[4],prereq:p,search_type:0});
    }
  );
});

app.get('/new', (req, res) => {
  connection.query(
    'SELECT * FROM chara;SELECT * FROM chara_limitedType;SELECT * FROM items',
    (error, results) => {
      console.log(req.body);
      res.render('new.ejs', {chara: results[0],chara_limitedType:results[1],allItems:results[2],prereq:0});
    }
  );
});

app.post('/new', (req, res) => {
  connection.query(
    'SELECT * FROM chara;SELECT * FROM chara_limitedType;SELECT * FROM items',
    (error, results) => {
      console.log(req.body);
      res.render('new.ejs', {chara: results[0],chara_limitedType:results[1],allItems:results[2],prereq:req.body});
    }
  );
});

app.post('/create', (req, res) => {
  connection.query(
    'INSERT INTO items (date,difficulty,boss,chara1_id,chara1_rank,chara1_star,chara2_id ,chara2_rank ,chara2_star,chara3_id ,chara3_rank ,chara3_star,chara4_id ,chara4_rank ,chara4_star,chara5_id ,chara5_rank ,chara5_star,auto ,damage ,URL,carryover) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
    [req.body.itemDate,req.body.itemDifficulty,req.body.itemBoss_id,
      req.body.itemChara1_id,req.body.itemChara1_rank,req.body.itemChara1_star,
      req.body.itemChara2_id,req.body.itemChara2_rank,req.body.itemChara2_star,
      req.body.itemChara3_id,req.body.itemChara3_rank,req.body.itemChara3_star,
      req.body.itemChara4_id,req.body.itemChara4_rank,req.body.itemChara4_star,
      req.body.itemChara5_id,req.body.itemChara5_rank,req.body.itemChara5_star,
      req.body.itemAuto,req.body.itemDamage,req.body.itemURL,req.body.itemCarryover],
    (error, results) => {
      res.redirect('/index');
    }
  );
});
 
app.post('/delete/:id', (req, res) => {
  connection.query(
    'DELETE FROM items WHERE id = ?',
    [req.params.id],
    (error, results) => {
      res.redirect('/index');
    }
  );
});      
 
app.get('/edit/:id', (req, res) => {
  connection.query(
    'SELECT * FROM items WHERE id = ?',
    [req.params.id],
    (error, results) => {
      res.render('edit.ejs', {item: results[0]});
    }
  );
});

app.post('/update/:id', (req, res) => {
  connection.query(
    "UPDATE items SET name=? WHERE id=?",
    [req.body.itemName,req.params.id],
    (error,results) =>{
      res.redirect('/index');
    });
});

app.post("/search/:id", (req, res) => {
  connection.query(
    'SELECT * FROM items WHERE difficulty = ? AND boss IN (?) AND date = ? AND auto <= ? ORDER BY damage DESC; SELECT * FROM chara ORDER BY position ASC; SELECT * from items;SELECT * FROM chara_limitedType;SELECT * FROM chara',
    [req.body.itemDifficulty,req.body.itemBoss_id,req.body.itemDate,req.body.itemAuto],
    (error, results) => {
      console.log(req.body);
      console.log(req.params);
      res.render('index.ejs', {items: results[0], chara: results[1],allItems:results[2],chara_limitedType:results[3],chara_unsort:results[4],prereq: req.body,search_type:req.params.id});
    }
  );
});
