// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {
  // const SmallContract = await hre.ethers.getContractFactory(
  //   "ExampleContractSmall"
  // );
  // console.log("Deploying Small contract !!!");
  // const small = await SmallContract.deploy();

  // await small.deployed();

  // console.log(`Contract less than 5kb in size deployed to ${small.address} \n`);

  // const LargeContract = await hre.ethers.getContractFactory(
  //   "ExampleContractLarge"
  // );
  // console.log("Deploying Large contract !!! \n");
  // const large = await LargeContract.deploy();

  // await large.deployed();

  // console.log(`Contract more than 5kb in size deployed to ${large.address}`);

  // const TestToken = await hre.ethers.getContractFactory("TestToken");
  // console.log("Deploying Token contract !!! \n");
  // const token = await TestToken.deploy(1000000000, "Test Token", "TKN", 6);

  // await token.deployed();

  // console.log(`Contract more than 5kb in size deployed to ${token.address}`);

  // const UpgradeableToken = await hre.ethers.getContractFactory(
  //   "UpgradeableToken"
  // );
  // console.log("Deploying Token contract !!! \n");
  // const utoken = await hre.upgrades.deployProxy(UpgradeableToken);

  // await utoken.deployed();

  // console.log(`Token deployed to ${utoken.address}`);
  // Call the eth_getTransactionReceipt endpoint
  const transactionReceipt = await hre.ethers.provider.send(
    "eth_getTransactionReceipt",
    ["0x38b520c8fb3bc959426e0a1f6549bab95b9db08f057f53dde1a2438de0c6014d"]
  );

  console.log("Transaction Receipt:", transactionReceipt);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
