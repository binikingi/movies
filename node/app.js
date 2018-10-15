var mysql = require('promise-mysql');
var exec = require('child_process').exec;


startrun();

async function startrun(){
	var pool = await mysql.createPool({
		'host': 'testdbinstance.cc2uma6sum94.us-east-2.rds.amazonaws.com',
		'user': "root",
		'password': 'rootroot',
		'database': 'test'
	});
	scanAndRun(pool);
}
//exec('aria2c -d /home/ec2-user/movies --seed-time=0 --allow-overwrite' + $magnet)

async function download(magnet){
	await exec('echo "'+magnet+'"', function (error, stdout, stderr) {
        console.log('stdout: ' + stdout);
    });//exec('aria2c -d /home/ec2-user/movies --seed-time=0 --allow-overwrite' + magnet);
	return 0;
}

async function scanAndRun(pool){
	var [rows] = await pool.query("SELECT * FROM download_queue order by id asc limit 1");
	if(!rows.id){
		await sleep(1000);
		scanAndRun(pool);
	}
	else{
		await download(rows.magnet);
		await sleep(1000);
		scanAndRun(pool);
	}
}
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}