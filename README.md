# Overview
For this project, you will write a smart contract to create your own token on a local HardHat network. 

Once you have your contract, you should be able to use remix to interact with it.

From remix, the contract owner should be able to mint tokens to a provided address. 

Any user should be able to burn and transfer tokens.


# Prerequisites

1. Make sure you have Node.js and npm installed.
   
2. Install Hardhat globally: npm install -g hardhat

3. Install Hardhat locally in your project folder: npm install hardhat


# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
#  Interact with the Contract using Remix

1. Go to the Remix website: https://remix.ethereum.org/.
   
2. Click on the "File" tab and create a new file named Token.sol.

3. Copy-paste the content of the Token.sol contract from Step 2 into the Remix editor.

4. Click on the "Solidity Compiler" tab on the left sidebar, and under the "Compiler Configuration," select the compiler version that matches the one used in the contract (e.g., 0.8.0).

5. Click on the "Deploy & Run Transactions" tab on the left sidebar.

6. Under the "Environment" dropdown, select "Injected Web3" to connect to your local Hardhat network.

7. Deploy the contract by clicking the "Deploy" button.

8. You should see the contract deployed with its functions available for interaction.

# Deploying the smart contract

In the scripts directory, create a new file called deploy.js.

In the terminal, run:

npx hardhat run scripts/deploy.js --network localhost


# Deployment Environment

This contract can be deployed in any version of solidity between 0.7.0 to 0.9.0.


# Author

Namita Munjal

namitamunjal27@gmail.com
