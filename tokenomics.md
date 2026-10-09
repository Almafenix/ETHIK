# ETHIK — Tokenomics

## Estado técnico

A tokenomics deve refletir a implementação real. Em outubro de 2026 foi recuperado o ficheiro Solidity original `contracts/ETHIK.sol`.

| Parâmetro | Estado atual/documentado |
|---|---|
| Nome | ETHIK |
| Símbolo | ETHIK |
| Padrão | ERC-20 / OpenZeppelin |
| Rede | Celo Mainnet |
| Chain ID | 42220 |
| Contrato | `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe` |
| Decimais | 18 |
| Supply inicial | **10.000.000 ETHIK** |
| Emissão adicional | **Sim, via `mint()` com `onlyOwner`** |
| Maximum supply | **Não limitado pelo código recuperado** |
| Burn próprio | Não existe no código recuperado |
| Pause próprio | Não existe no código recuperado |
| Distribuição percentual | Por documentar com base nas carteiras reais |

## 1. Supply e emissão

O construtor recuperado contém:

```solidity
_mint(msg.sender, 10000000 * 10 ** decimals());
```

Isto cria inicialmente **10.000.000 ETHIK** para `msg.sender` no deployment.

O contrato também contém:

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```

Consequentemente, o supply **não é fixo em 10 milhões pelo código recuperado**. O owner pode emitir unidades adicionais através de `mint()`.

Qualquer emissão futura deve ser precedida de decisão documentada, avaliação jurídica/regulatória, análise do impacto na tokenomics e atualização da documentação pública.

## 2. Distribuição

Não existe nesta documentação uma distribuição percentual oficial. Não serão inventadas categorias ou percentagens sem correspondência verificável com carteiras e regras efetivas.

A atribuição de tokens a participantes, voluntários, projetos ou parceiros deverá obedecer a critérios objetivos, transparentes e juridicamente adequados.

## 3. Utilidade

A ETHIK é concebida como token de utilidade e reconhecimento no ecossistema Alma Fénix. Possíveis utilidades incluem reconhecimento de participação, acesso a atividades e conteúdos, certificação digital, iniciativas de Photovoice, formação, mentoria e outras funcionalidades sociais ou educativas, desde que efetivamente disponibilizadas.

A ETHIK não é apresentada como investimento, stablecoin, moeda oficial ou instrumento de rendimento. Não existe promessa de preço, liquidez, recompra, resgate ou conversão em euros.

## 4. Controlo

O código recuperado usa `Ownable(msg.sender)`. Assim, a carteira que fez o deployment tornou-se o owner inicial.

Isto **não substitui a confirmação on-chain do owner atual**. Antes de qualquer nova emissão, deve ser consultada a função `owner()` no contrato ou confirmada através do ABI/código verificado.

## 5. Verificação pendente

O código recuperado ainda não foi bytecode-verificado contra o contrato publicado no CeloScan. Antes de considerar a implementação tecnicamente encerrada, devem ser confirmados:

1. correspondência entre código e bytecode;
2. `owner()` atual;
3. `totalSupply()` atual;
4. histórico de eventual transferência/renúncia de ownership;
5. carteiras e saldos relevantes;
6. segurança das chaves administrativas.

**Nota:** esta documentação não constitui parecer jurídico, autorização regulatória, oferta pública ou aconselhamento financeiro.
