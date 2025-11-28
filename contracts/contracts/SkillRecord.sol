import { ethers } from "hardhat";

async function main() {
  const SkillRecord = await ethers.getContractFactory("SkillRecord");
  const skillRecord = await SkillRecord.deploy();
  await skillRecord.deployed();

  console.log("SkillRecord deployed to:", skillRecord.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
