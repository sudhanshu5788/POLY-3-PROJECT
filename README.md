# zardkat 
This is project of module 3 poly. In this prject we have created a circuit according to our question needs and also
deployed that on mubai local network.
following are the process by which you can also deploy the same.


### Install
`npm i`

### Compile
`npx hardhat circom` 
This will generate the **out** file with circuit intermediaries and geneate the **MultiplierVerifier.sol** contract

### Prove and Deploy
`npx hardhat run scripts/deploy.ts`
This script does 4 things  
1. Deploys the Sudhanshuverifier.sol contract
2. Generates a proof from circuit intermediaries with `generateProof()`
3. Generates calldata with `generateCallData()`
4. Calls `verifyProof()` on the verifier contract with calldata

Thats how we can do the projec t of ploy 3 course.
THANK YOU
