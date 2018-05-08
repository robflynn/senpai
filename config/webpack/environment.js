const { environment } = require('@rails/webpacker')

// Custom DCMP/Sparkbox stuff to not use the whole gsap library
senpai_config = {
    resolve: {
        modules: [
            'node_modules',
            'app/javascript',
            'app/javascript/senpai/components'
        ],
        alias: {
        }
    }
}

// Merge our config with the environment config
environment.config.merge(senpai_config)

module.exports = environment