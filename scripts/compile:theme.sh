#!/usr/bin/env bash
set -e

source ./scripts/include/node.sh

node <<-end_script
  const fs = require('fs');
  const path = require('path');
  const mkdirp = require('mkdirp');

  const theme = require('./src/theme');

  mkdirp.sync('dist');
  fs.writeFileSync(path.join('dist', 'theme.json'), JSON.stringify(theme, null, 2));
end_script
