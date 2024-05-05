const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("LotterySystemModule", (m) => { lockedAmount,
    const lottery = m.contract("LotterySystem");

  return { lottery };
});
