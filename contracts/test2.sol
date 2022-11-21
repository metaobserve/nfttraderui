pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/Counters.sol';

contract XXMetaTest is ERC721URIStorage, Ownable {
    uint256 public mintPrice; //价格
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    string internal baseTokenUri;
    string public notRevealedUri;
    string public baseExtension = '.json';
    bool public _revealed = false;

    mapping(address => bool) public whiteLists;

    constructor() ERC721('XXMetaTest', 'As') {
        mintPrice = 0.1 ether;
    }

    function setRevealed(bool revealed) {
        _revealed = revealed;
    }

    function setNotRevealedUrl(string calldata notRevealedUri_)
        external
        onlyOwner
    {
        notRevealedUri = notRevealedUri_;
    }

    function setBaseTokenUri(string calldata baseTokenUri_) external onlyOwner {
        baseTokenUri = baseTokenUri_;
    }

    function tokenURI(uint256 tokenId_)
        public
        view
        override
        returns (string memory)
    {
        require(_exists(tokenId_), 'Token dose not exist!');
        if (_revealed)
            return string(abi.encodePacked(notRevealedUri, baseExtension));
        // string memory _tokenURI = _tokenIds[tokenId_];
        // string memory base = _baseURI();
        // if (bytes(base).length == 0) {
        //     return _tokenURI;
        // }
        // if (bytes(_tokenURI).length > 0) {
        //     return string(abi.encodePacked(base, _tokenURI));
        // }
        return
            string(
                abi.encodePacked(
                    baseTokenUri,
                    Strings.toString(tokenId_),
                    '.json'
                )
            );
    }

    function setWhiteLists(address _userAddress, bool _whiteState)
        public
        onlyOwner
    {
        whiteLists[_userAddress] = _whiteState;
    }

    function whiteListMint() public payable {
        require(whiteLists[msg.sender], 'No whitelist!');
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _tokenIds.increment();
    }

    function publicMint(uint256 quantity_) public payable {
        //require(msg.value == quantity_ * mintPrice, "wrong mint value");
        for (uint256 i = 0; i < quantity_; i++) {
            uint256 newItemId = _tokenIds.current();
            _safeMint(msg.sender, newItemId);
            _tokenIds.increment();
        }
    }
}
