async function main(){
    const tokenFactory = await hre.ethers.getContractFactory("VNCHRTokenMetaTx");
    const token = await contractFactory.deploy();
    await token.deployed();
    console.log("VNCHR Meta deployed at " + token.address);
    await token.transferOwnership("0x6E83622c383E3346030d81424F3069dDCbf239F0");
    const converterFactory = await hre.ethers.getContractFactory("TokenConverter");
    const converter = await converterFactory.deploy("0xc2Ca6b686cf22F570E3a4a932AeD12F9F2fa382C",token.address);
    await converter.deployed();
    console.log("Converter deployed at " + token.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });