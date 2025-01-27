const { ethers } = require("ethers");

async function main() {
  const provider = new ethers.providers.JsonRpcProvider("YOUR_RPC_URL");
  const wallet = new ethers.Wallet("YOUR_PRIVATE_KEY", provider);

  const abi = [/* Contract ABI */];
  const bytecode = "0x..."; // Compiled contract bytecode

  const factory = new ethers.ContractFactory(abi, bytecode, wallet);
  const contract = await factory.deploy();
  console.log("Contract deployed at:", contract.address);
}

main().catch(console.error);
