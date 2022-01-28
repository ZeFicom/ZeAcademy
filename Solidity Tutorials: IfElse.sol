pragma solidity ^ 0.8.0;
 
contract ifElseExample {
 
    function  zeIf(uint _x) public pure returns (uint){
        if (_x < 10){
            return 0;
        }
        else if (_x < 20){
            return 1;
        }
        else {
            return 2;
        }
    }
    function neIF(uint _y) public pure returns (uint){
        return _y < 10 ? 1:2;
    }
}
