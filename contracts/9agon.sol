// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

// We need to import the helper functions from the contract that we copy/pasted.
import {Base64} from "../libraries/Base64.sol";

contract NonagonNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    event New9agonNFTMinted(address sender, uint256 tokenId);

    constructor() ERC721("9NewtAndCalista", "9AGON") {
        console.log("9agon contract: Alive!");
    }

    function make9agonNFT() public {
        uint256 newItemId = _tokenIds.current();

        // Actually mint the NFT to the sender using msg.sender.
        _safeMint(msg.sender, newItemId);

        _setTokenURI(newItemId, "blah");

        _tokenIds.increment();

    }
}
