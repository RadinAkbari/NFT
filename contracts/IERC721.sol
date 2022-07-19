// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IERC721
{
    /**
    @dev transfers `tokenId` from `from` to `to`
     */

    event Transfer (address indexed from , address indexed to , uint256 tokenId);

    event Approval (address indexed owner , address indexed approve , uint256 tokenId);

    event ApprovalForAll (address indexed owner , address indexed operator , bool approved);

    /**
    @dev returns number of tokens owned by `owner`
     */

    function balanceOf (address owner) external view returns (uint256 balance);

    /**
    @dev returns the owner of tokenId
     */

    function ownerOf (uint256 tokenId) external view returns (address owner);

    /**
    @dev returns allowance of `operator` to manage all the `owners` asset
     */

    function isApprovalForAll (address owner , address operator) external view returns (bool);

    function getApproved (uint256 tokenId) external view returns (address operator);

    function safeTransferFrom (address from , address to , uint256 tokenId) external;

    function transferFrom (address from , address to , uint256 tokenId) external;

    function approve (address to , uint256 tokenId) external;

    function setApprovalForAll (address operator , bool _approved) external;

    function transferFrom (address from , address to , uint256 tokenId , bytes4 data) external;

}