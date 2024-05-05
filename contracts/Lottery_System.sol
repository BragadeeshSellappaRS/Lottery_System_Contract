// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LotterySystem{
    address[] public players;
    address public winner;
    mapping(address => bool) private entered;
    bool game;

    function End_Game() public{
        game = true;
    }

    function Enter_Game() public{
        require(!game,"Game Ended");
        require(!entered[msg.sender],"Already Entered");
        players.push(msg.sender);
        entered[msg.sender] = true;
    }

    function random() private view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,players.length)));
    }
    
    function Winner() public{
        uint index = random() % players.length;
        winner = players[index];
    }
}