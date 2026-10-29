# Deploy Timexa (TMX) on Base with Remix

This guide deploys the fixed-supply token to Base Mainnet from a browser. No command line is required. The contract uses OpenZeppelin Contracts v5 imports.

## Before deploying

- Install and unlock MetaMask, and make sure you control the wallet that should receive the full supply.
- Add or select **Base Mainnet** in MetaMask (chain ID `8453`). Base uses ETH for gas. Confirm the network and wallet address before signing.
- Review `Timexa.sol` and confirm the supply and contract settings are the intended values. Deployment is public and cannot be undone.

## Deploy in Remix

1. Open https://remix.ethereum.org/ in your browser.
2. In the File Explorer, create `Timexa.sol` and paste in the contents of this folder's `Timexa.sol` file.
3. Open **Solidity Compiler**. Select a compiler version compatible with `pragma solidity ^0.8.20` (for example, `0.8.20` or a compatible newer 0.8.x release). Keep the same compiler version and settings for verification later.
4. Compile `Timexa.sol`. If Remix asks to resolve the `@openzeppelin/contracts/...` imports, use Remix's supported dependency/import resolution and confirm they resolve to OpenZeppelin Contracts v5 before compiling. Do not substitute unreviewed contract code.
5. Open **Deploy & Run Transactions**. Set **Environment** to **Injected Provider - MetaMask**. Approve the connection only if the wallet shown is yours and MetaMask is on Base Mainnet.
6. Select `Timexa` as the contract. There are no constructor arguments. Click **Deploy**, review the network, contract and gas details in MetaMask, then confirm.
7. After the transaction is confirmed, copy and save the deployed contract address and transaction hash. Check the transaction and address on https://basescan.org/.

## Verify on Basescan

1. Open the deployed contract address on Basescan and choose **Verify and Publish** (or the equivalent contract-verification action).
2. Select the Solidity compiler version and settings used in Remix, the **Solidity (Single file)** verification method, and the matching license setting.
3. Provide the exact `Timexa.sol` source. If Basescan's verifier requires imported sources or a different verification method, follow its current instructions and use the exact OpenZeppelin v5 dependency version used to compile. Do not claim verification succeeded until Basescan displays the verified source.
4. Confirm the verified contract reports name `Timexa`, symbol `TMX`, 18 decimals, and total supply `1000000000` tokens.

## Safety checklist

- [ ] Verify the deployment is on Base Mainnet and the deployer address is the intended wallet.
- [ ] Keep the deployer wallet secure. Never share its seed phrase or private key.
- [ ] Verify and publish the exact source on Basescan, then confirm the verified page and token details.
- [ ] This contract has no mint function; the initial supply is minted once to the deployer.
- [ ] Ownership is renounceable through OpenZeppelin `Ownable`. Renouncing is irreversible. This contract has no owner-only controls, so renouncing does not change token behavior. Only renounce after confirming the verified contract and understanding that `owner()` will become the zero address.
- [ ] Tokenomics and Round 1 terms are confirmed in the project materials, but this contract does not implement allocation splits, airdrop eligibility, or claim processing. Do not represent those functions as active.
- [ ] Publish the contract address only on the official Timexa site and official channels.
