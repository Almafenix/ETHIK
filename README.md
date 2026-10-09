# ETHIK — Ethical Token for Impact Community

A **ETHIK** é concebida como um token de utilidade e reconhecimento associado a iniciativas de impacto social da Alma Fénix. Não confere direitos a lucros, património, juros ou retorno financeiro.

## Dados técnicos recuperados

- **Rede:** Celo Mainnet
- **Chain ID:** 42220
- **Padrão:** ERC-20 baseado em OpenZeppelin
- **Contrato:** `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe`
- **Decimais:** 18
- **Supply inicial definido no código:** 10.000.000 ETHIK
- **Emissão adicional:** possível através de `mint()` pelo `owner`
- **Maximum supply:** não limitado pelo código recuperado
- **Burn próprio:** não existe no código recuperado
- **Pause próprio:** não existe no código recuperado

O ficheiro Solidity original `contracts/ETHIK.sol` foi recuperado em outubro de 2026. O código usa `Ownable(msg.sender)` e define `mint(address,uint256)` com `onlyOwner`.

O código recuperado ainda não foi bytecode-verificado contra o contrato publicado no CeloScan. A confirmação final deverá comparar o código/ABI com o contrato on-chain e consultar o `owner()` atual.

## Documentação

- [Whitepaper ETHIK](whitepaper.md)
- [Roadmap](roadmap.md)
- [Tokenomics](tokenomics.md)
- [Código Solidity recuperado](contracts/ETHIK.sol)

## Princípios fundamentais

- Não é apresentada como moeda oficial, moeda eletrónica ou stablecoin.
- Não confere direitos sobre lucros, excedentes ou património da associação.
- Não promete valorização, liquidez, conversão em euros ou rendimento.
- Donativos, financiamento de projetos e atribuição de tokens são mecanismos distintos.
- A possibilidade técnica de `mint` não constitui promessa de emissão adicional.
- Qualquer emissão adicional deve ser documentada e precedida de avaliação técnica, jurídica, fiscal e regulatória.

## Organização promotora

[Alma Fénix](https://almafenix.pt)
