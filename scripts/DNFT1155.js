const hre = require("hardhat");

async function main() {

  const Nft = await hre.ethers.getContractFactory("RadixERC1155");
  const nft = await Nft.deploy("https://ipfs.io/ipfs/QmQ7y82oLHWSVn4R2gNQugS7vs3mjQmGGW8CuQDgYgW7dK");

  await nft.deployed();

  console.log("ERC1155 deployed to:", nft.address);

  await nft.mint(10);

  console.log("Successfully minted!")
}

main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
  process.exit(1);
});
