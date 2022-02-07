// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    uint public count;

    function increment() external {
        count += 1;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICounter {
    function count() external view returns(uint);
    function increment() external;
}

contract sampleContract {
    function increamentCounter(address _counter) external {
        ICounter(_counter).increment();
    }
    function getCount(address _counter) external view returns(uint){
        return ICounter(_counter).count();
    }
}

