// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract enumSample{
    enum Status { 
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    Status public status;

    function ship() public { 
        require(status == Status.Pending);
        status = Status.Shipped;
    }
    function goodsAccepted() public { 
        require(status == Status.Shipped);
        status = Status.Accepted;
    }
    function goodsRejected() public { 
        require(status == Status.Shipped);
        status = Status.Rejected;
    }
    function orderCancelled() public {
        require(status == Status.Pending);
        status = Status.Canceled;
     }

}
