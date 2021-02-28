async function main(){
    //get contract at
    const mintAmount = 0;
    const vnchr = await hre.ethers.getContractAt("VNCHRToken","0xc2Ca6b686cf22F570E3a4a932AeD12F9F2fa382C");
    const vnchrMintCall = await vnchr.populateTransaction.mint("0x6E83622c383E3346030d81424F3069dDCbf239F0",mintAmount);
    console.log(vnchrMintCall);
}

main()
.then(() => process.exit(0))
.catch(error => {
  console.error(error);
  process.exit(1);
});