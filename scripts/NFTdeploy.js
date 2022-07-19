const hre = require("hardhat");

async function main() {

  const Nft = await hre.ethers.getContractFactory("RadixERC721");
  const nft = await Nft.deploy("RadixNFTERC721" , "RNE");

  await nft.deployed();

  console.log("ERC721 deployed to:", nft.address);

  await nft.mint("https://ipfs.io/ipfs/QmRnmjVr9L8C85p9Gq1gXafncmZVkbMBda4vtqK3Wydhg9");

  console.log("Successfully minted!")
}

main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
  process.exit(1);
});
