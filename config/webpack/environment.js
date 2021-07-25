const { environment, config } = require('@rails/webpacker')
const webpack = require('webpack')
const WebPackerPwa = require('webpacker-pwa')
new WebPackerPwa(config, environment)

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
      $: 'jquery/src/jquery',
      jQuery: 'jquery/src/jquery',
      'window.jQuery': 'jquery',
      Popper: ['popper.js', 'default']
  })
)

module.exports = environment
