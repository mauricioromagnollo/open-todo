const HeroRepository = require('../repositories/hero-repository');
const HeroService = require('../services/hero-service');

const { join } = require('path');
const filename = join(__dirname, '../../database', 'data.json');

const generateInstance = () => {
  const heroRepository = new HeroRepository({
    file: filename
  });

  const heroService = new HeroService({ heroRepository });

  return heroService;
}

module.exports = { generateInstance };
