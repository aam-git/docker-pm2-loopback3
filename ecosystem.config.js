module.exports = {
	apps : [{
            name: 'lb3',
	    cwd: '/usr/src/app',
            script: 'node',
            args: '.',
            exec_model: 'fork',
            autorestart: true,
            watch: true,
            max_memory_restart: '4G'
            }]
       };
