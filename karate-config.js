function fn() {
    var env = karate.env; // get java system property 'karate.env'
    if (!env) {
        env = 'dev';
    }if (env == 'dev') {
        var config = {
            env: env,
            baseUrl: 'https://reqres.in',
            envCheck:'This is Dev Env'
            }
 } else if (env == 'devci') {
     		var config = {
            env: env,
            baseUrl: 'https://reqres.in',
            envCheck:'This is Devci Env'
             }
     	}else if (env == 'e2e') {
     }
       		karate.configure('connectTimeout', 7000000);
    		karate.configure('readTimeout', 7000000);
    return config;
}
