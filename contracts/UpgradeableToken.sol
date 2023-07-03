pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract UpgradeableToken is ERC20Upgradeable {
    function initialize() public initializer {
        __ERC20_init("TestToken", "TKN");
    }
}
