module.exports = {
	apps : [{
            name: 'lb3',
	    cwd: '/home/node/loopback',
            script: 'node',
            args: '.',
            exec_model: 'fork',
            autorestart: true,
            watch: true,
            max_memory_restart: '4G'
            }]
       };
