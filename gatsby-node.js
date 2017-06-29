exports.modifyWebpackConfig = ({ config, stage }) => {
  switch (stage) {
    case 'develop':
    config._config.entry.commons.unshift('babel-polyfill')
    break;
    case 'build-css':
    break;
    case 'build-html':
    break;
    case 'build-javascript':
    config._config.entry.commons.unshift('babel-polyfill')
    break;
  }
  return config
}
