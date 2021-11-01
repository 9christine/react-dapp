require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {
      url: 'https://eth-rinkeby.alchemyapi.io/v2/yfaiVu1kjvylU36adWe0YysYZw-YEWzX',
      accounts: ['41b9e1823677b12ecd641ff3de6254e22b3b02e8241114af1b3b7dc22cd293ce'],
    },
  },
};