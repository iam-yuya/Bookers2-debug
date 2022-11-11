const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)

window.$ = window.jQuery = require('jquery');

module.exports = environment
// ↑元の記述。下のは模範解答


// const { environment } = require('@rails/webpacker')

// module.exports = environment
