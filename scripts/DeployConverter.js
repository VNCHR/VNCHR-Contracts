//0x75D84a112c1c18ce8fef49e551E5656def38E1a6

async function main(){
    const converterFactory = await hre.ethers.getContractFactory("TokenConverter");
    const converter = await converterFactory.deploy("0xc2Ca6b686cf22F570E3a4a932AeD12F9F2fa382C","0x75D84a112c1c18ce8fef49e551E5656def38E1a6");
    await converter.deployed();
    console.log("Converter deployed at " + token.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });