// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyDynamicNFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;

    constructor() ERC721("MyDynamicNFT", "DYNFT") {
        tokenCounter = 0;
    }

    function mint(address recipient, string memory tokenURI) public onlyOwner {
        uint256 newTokenId = tokenCounter;
        _safeMint(recipient, newTokenId);
        _setTokenURI(newTokenId, tokenURI); // Assign dynamic metadata
        tokenCounter++;
    }
}
