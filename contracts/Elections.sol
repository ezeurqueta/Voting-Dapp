// SPDX-License-Identifier: MIT
pragma solidity 0.5.16;

contract Election {
    //Model a candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }
    //Store candidate
    mapping(uint => Candidate) candidates;
    //Fetch candidate
    //Store candidates count
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    
}