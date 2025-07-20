// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Voting {
   
    mapping(string => uint) public votesReceived;
    function votesForCandidate(string memory candidate) public {
        votesReceived[candidate] += 1;//调用 voteForCandidate 函数并传入候选人的名字时，该候选人的得票数会增加1
    }
    function getvotesForCandidate(string memory candidate) view public returns(uint) {
        return votesReceived[candidate];//调用 getVotesForCandidate 函数并传入候选人的名字时，函数会返回该候选人的得票数

    }

   function resetVotes() public {     //遍历所有候选人并将他们的得票数重置为0
        string[] memory candidates = getCandidates();
        for(uint i = 0; i < candidates.length; i++) {
            votesReceived[candidates[i]]= 0;
        }
    }

    function getCandidates() private pure returns(string[] memory) {
        string[] memory candidates = new string[](3) ;
        candidates[0] = "liming";
        candidates[1] = "linshan";
        candidates[2] = "wangliang";
        return candidates;

    }
     

    
} 
