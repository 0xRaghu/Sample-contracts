pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface IPinjam {
    function deposit(
        address _underlyingAsset,
        uint256 _amount,
        address _to,
        bool _depositToVault
    ) external;

    function withdraw(
        address _underlyingAsset,
        uint256 _amount,
        address _to
    ) external;

    function borrow(
        address _underlyingAsset,
        uint256 _amount,
        address _onBehalfOf
    ) external;

    function getUserData(
        address _user
    )
        external
        view
        returns (
            uint256 healthFactor,
            uint256 totalCollateralInBaseCurrency,
            uint256 totalDebtInBaseCurrency,
            uint256 avgLtv,
            uint256 avgLiquidityThreshold
        );

    function setUserUseAssetAsCollateral(
        address _underlyingAsset,
        bool _useAsCollateral
    ) external;
}

contract ExampleContractLarge is ERC20 {
    // Variables
    uint256 public variableOne;
    bool public variableTwo;
    address public variableThree;
    uint256[] public variableFour;
    address public owner;
    mapping(address => uint256) public variableFive;
    struct StructOne {
        uint256 id;
        string name;
    }
    StructOne[] public variableSix;

    // Events
    event EventOne(uint256 indexed id);
    event EventTwo(address indexed sender);

    // Modifiers
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Only contract owner can call this function"
        );
        _;
    }

    // Constructor
    constructor() ERC20("Hi", "hi") {
        variableOne = 0;
        variableTwo = false;
        variableThree = msg.sender;
        owner = msg.sender;
    }

    // Functions
    function functionOne(uint256 param) public {
        variableOne = param;
        emit EventOne(param);
    }

    function functionTwo(bool param) public {
        variableTwo = param;
    }

    function functionThree(address param) public {
        variableThree = param;
    }

    function functionFour(uint256[] memory params) public {
        variableFour = params;
    }

    function functionFive(uint256 param) public {
        variableFive[msg.sender] = param;
    }

    function functionSix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSeven() public view returns (uint256) {
        return variableOne;
    }

    function functionEight() public view returns (bool) {
        return variableTwo;
    }

    function functionNine() public view returns (address) {
        return variableThree;
    }

    function functionTen() public view returns (uint256[] memory) {
        return variableFour;
    }

    function functionEleven(address param) public view returns (uint256) {
        return variableFive[param];
    }

    function functionTwelve(
        uint256 index
    ) public view returns (uint256 id, string memory name) {
        id = variableSix[index].id;
        name = variableSix[index].name;
    }

    function functionThirteen() public pure returns (string memory) {
        return "Hello, World!";
    }

    function functionFourteen(
        uint256 param1,
        uint256 param2
    ) public pure returns (uint256) {
        return param1 + param2;
    }

    function functionFifteen(uint256 param) public pure returns (uint256) {
        return param * 2;
    }

    function functionSixteen(uint256 param) public pure returns (uint256) {
        return param / 2;
    }

    function functionSeventeen(uint256 param) public pure returns (bool) {
        return param > 0;
    }

    function functionEighteen(uint256 param) public pure returns (bool) {
        return param == 0;
    }

    function functionNineteen(uint256 param) public pure returns (bool) {
        return param != 0;
    }

    function functionTwenty(uint256 param) public pure returns (uint256) {
        return param ** 2;
    }

    function functionTwentyOne(uint256 param) public pure returns (uint256) {
        return param % 2;
    }

    function functionTwentyTwo(uint256 param) public pure returns (uint256) {
        return param & 2;
    }

    function functionTwentyThree(uint256 param) public pure returns (uint256) {
        return param | 2;
    }

    function function1(StructOne memory param) public {
        variableSix.push(param);
    }

    function function2(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix3(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix4(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix5(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix6(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix7(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix8(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix9(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix12(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSix13(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi1x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi2x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi3x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi4x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi5x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi6x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionSi7x(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS1ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS2ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS3ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS4ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS5ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS6ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS7ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS8ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functionS9ix(StructOne memory param) public {
        variableSix.push(param);
    }

    function function1Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function2Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function3Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function4Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function5Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function6Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function7Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function8Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function function9Six(StructOne memory param) public {
        variableSix.push(param);
    }

    function functio1nSix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functio2nSix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functio3nSix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functio4nSix(StructOne memory param) public {
        variableSix.push(param);
    }

    function functio5nSix(StructOne memory param) public {
        variableSix.push(param);
    }
}
