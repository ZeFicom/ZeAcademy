// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract ourTasks {

    // A struct is a user desfined data type.
    struct Task {
        string text;
        bool done;
    }
    // Declare an array of Task
    Task [] public tasks;

    // function to create a new task.
    function createTask(string memory _text) public {
        tasks.push(Task(_text, false));
    }
    function getTasks(uint _index) public view returns(string memory, bool) {
        Task storage gettask = tasks[_index];
        return (gettask.text, gettask.done);
    }
    function updateTasks(uint _index, string memory _text) public {
        Task storage gettask = tasks[_index];
        gettask.text = _text;
     }
     function togglecompleted(uint _index) public {
        Task storage gettask = tasks[_index];
        gettask.done = !gettask.done;
     }
}
