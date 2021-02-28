async function main(){
    const contractFactory = await hre.ethers.getContractFactory("VNCHRToken");
    const contract = await contractFactory.deploy();
    await contract.deployed();
    console.log("VNCHR deployed at " + contract.address);
    await contract.transferOwnership("0x6E83622c383E3346030d81424F3069dDCbf239F0");
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });