module.exports = {
	apps : [{
            name: 'loopback3',
            script: 'node',
            args: '.',
            exec_model: 'fork',
            autorestart: true,
            watch: true,
            max_memory_restart: '4G'
            }]
       };
