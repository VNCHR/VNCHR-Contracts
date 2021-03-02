async function main(){
    const tokenFactory = await hre.ethers.getContractFactory("VNCHRTokenMetaTx");
    const token = await tokenFactory.deploy();
    await token.deployed();
    console.log("VNCHR Meta deployed at " + token.address);
    await token.transferOwnership("0xF48fa092dD3D5a86B1dd4d8d8f0146176C3A9160");
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });