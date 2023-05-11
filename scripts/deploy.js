// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {
  const SmallContract = await hre.ethers.getContractFactory(
    "ExampleContractSmall"
  );
  console.log("Deploying Small contract !!!");
  const small = await SmallContract.deploy();

  await small.deployed();

  console.log(`Contract less than 5kb in size deployed to ${small.address} \n`);

  const LargeContract = await hre.ethers.getContractFactory(
    "ExampleContractLarge"
  );
  console.log("Deploying Large contract !!! \n");
  const large = await LargeContract.deploy();

  await large.deployed();

  console.log(`Contract more than 5kb in size deployed to ${large.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
