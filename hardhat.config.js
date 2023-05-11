require("dotenv").config({ path: __dirname + "/.env" });
require("@nomiclabs/hardhat-etherscan");
require("@nomiclabs/hardhat-ethers");

module.exports = {
  defaultNetwork: "hardhat",
  solidity: {
    compilers: [
      {
        version: "0.8.0",
        settings: { optimizer: { enabled: true, runs: 100 } },
      },
      {
        version: "0.5.17",
        settings: { optimizer: { enabled: true, runs: 100 } },
      },
    ],
  },

  networks: {
    hardhat: {
      //forking: {
      //  url: `https://evm.testnet.kava.io`,
      //},
      //chainId: 2221,
      forking: {
        url: `https://evm.kava.io`,
      },
      chainId: 2222,
      gasPrice: "auto",
      throwOnTransactionFailures: true,
      throwOnCallFailures: true,
      allowUnlimitedContractSize: true,
      loggingEnabled: false,
      //loggingEnabled: true,
      accounts: {
        mnemonic: "test test test test test test test test test test test junk",
      },
    },
    kavaTest: {
      url: "https://evm.testnet.kava.io",
      chainId: 2221,
      gasPrice: "auto",
      accounts: [`${process.env.PRIVATE_KEY}`],
    },
    kava: {
      url: "https://evm.kava.io",
      chainId: 2222,
      gasPrice: "auto",
      accounts: [`${process.env.PRIVATE_KEY}`],
    },
    bscTestnet: {
      url: "https://bsc-testnet.public.blastapi.io",
      chainId: 97,
      gasPrice: "auto",
      accounts: [`${process.env.PRIVATE_KEY}`],
    },
  },

  etherscan: {
    apiKey: {
      kava: "***",
      kavaTest: "***",
      bscTestnet: "BT9U67RRIZJM2V9VI3Y7KEH1N8A2EX3SRV",
    },
    customChains: [
      {
        network: "kavaTest",
        chainId: 2221,
        urls: {
          apiURL: "https://explorer.testnet.kava.io/api",
          browserURL: "https://explorer.testnet.kava.io",
        },
      },
      {
        network: "kava",
        chainId: 2222,
        urls: {
          apiURL: "https://explorer.kava.io/api",
          browserURL: "https://explorer.kava.io",
        },
      },
    ],
  },
};
