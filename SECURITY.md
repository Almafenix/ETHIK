# Security Policy — ETHIK

## Scope

This repository documents the ETHIK token and its recovered Solidity source.

**Network:** Celo Mainnet  
**Chain ID:** 42220  
**ERC-20 contract:** `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe`

## Important technical note

The source in `contracts/ETHIK.sol` was recovered from the original project files in October 2026. It has **not yet been bytecode-verified against the deployed contract**.

The recovered contract defines an initial supply of 10,000,000 ETHIK and an owner-controlled `mint(address,uint256)` function. The code does not define a maximum supply cap.

Until bytecode verification is completed, this repository must not be described as an independently verified reproduction of the deployed contract.

## Reporting a vulnerability

Please report suspected security vulnerabilities privately to the project maintainers before opening a public issue.

Do not publish private keys, seed phrases, passwords, API keys, or other secrets in GitHub issues, pull requests, commits, or discussions.

When reporting a technical issue, include where possible:

- affected contract/function;
- network and transaction hash;
- steps to reproduce;
- expected and actual behaviour;
- potential impact;
- relevant logs or screenshots without exposing secrets.

## Security principles

- Never commit private keys, seed phrases, RPC credentials, or API tokens.
- Treat the deployed contract as authoritative for on-chain behaviour until source verification is complete.
- Do not change the deployed contract documentation based only on assumptions about the original source.
- Any future token issuance should be documented before execution because the current contract allows owner-controlled minting.

## Verification status

The repository contains recovered source and documentation. On-chain source verification and bytecode comparison remain a separate step and are documented in `VERIFICATION.md`.
