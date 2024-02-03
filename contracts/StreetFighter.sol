// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract StreetFighter {

    address public creator;
    mapping(address => uint) life;

    event Started(address indexed _player1, address indexed _player2);
    event Hit(address indexed _player1, address indexed _player2, uint val);
    event Dead(address indexed _player);

    constructor() {
        creator = tx.origin;
    }

    function start(address player1, address player2) public {
        require(msg.sender == creator, "Only creator can start the game");

        life[player1] = 100;
        life[player2] = 100;

        emit Started(player1, player2);
    }

    function hit(address player1, address player2, uint strenght) public {
        require(msg.sender == player1, "Only players can hit");
        require(life[player1] > 0, "Player is dead");

        if (life[player2] <= strenght) {
            life[player2] = 0;
            emit Dead(player2);
            return;
        } else {
            life[player2] -= strenght;
        }

        emit Hit(player1, player2, strenght);
    }

    function getLife(address player) public view returns (uint) {
        
    }
}
