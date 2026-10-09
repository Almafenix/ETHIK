# ETHIK — Ethical Token for Impact Community
## Whitepaper conceptual, funcional e técnico

**Versão:** 2.0  
**Data:** outubro de 2026  
**Entidade promotora:** Alma Fénix — Associação  
**Estado:** documento conceptual e informativo sujeito a validação jurídica, fiscal, contabilística, técnica e regulatória.

---

## 1. Sumário executivo

**ETHIK — Ethical Token for Impact Community** é concebido como um token digital de utilidade e reconhecimento associado ao ecossistema de impacto social da Alma Fénix.

A ETHIK não é concebida como moeda oficial, moeda eletrónica ou stablecoin. Não representa capital da associação nem confere direito a lucros, juros, excedentes, património ou retorno financeiro. Não existe promessa de valorização, liquidez, recompra, resgate ou conversão em euros.

Este documento distingue os dados técnicos recuperados do código-fonte original dos elementos que ainda carecem de verificação direta no contrato publicado na blockchain.

## 2. Visão e missão

A Alma Fénix procura promover inclusão, autonomia, participação cívica, inovação social, criação cultural e colaboração comunitária. A ETHIK acrescenta uma camada digital de participação, reconhecimento e utilidade comunitária.

A tecnologia deve servir o impacto social, e não transformar a ação social num mecanismo especulativo.

## 3. Utilidade

Quando efetivamente disponibilizadas e com condições públicas, unidades ETHIK poderão apoiar:

- reconhecimento de participação;
- workshops e formação;
- acesso a conteúdos e recursos digitais;
- atividades e eventos;
- certificação digital de participação;
- iniciativas de Photovoice e investigação participativa;
- mentoria e empreendedorismo social;
- outras utilidades compatíveis com a missão da associação.

Estas possibilidades não constituem garantia de que todos os serviços estejam disponíveis.

## 4. O que a ETHIK não representa

A ETHIK não confere, por si só:

- direitos sobre o património da Alma Fénix;
- participação no capital ou nos lucros da associação;
- dividendos, juros ou distribuição de excedentes;
- remuneração financeira pela simples detenção;
- direito de resgate ou conversão em euros;
- garantia de preço, liquidez ou valorização;
- participação nos donativos, subsídios ou receitas da associação.

A posse de tokens não substitui a qualidade de associado nem os direitos estatutários.

## 5. Reconhecimento e atribuição

A ETHIK poderá integrar modelos de reconhecimento de participação, voluntariado, contributos artísticos ou culturais, ações educativas, investigação participativa e atividades comunitárias.

Os critérios devem ser objetivos, proporcionais, auditáveis e compatíveis com inclusão e proteção de dados. A atribuição de ETHIK não substitui salários, bolsas, apoios sociais ou remunerações legalmente devidas.

## 6. Donativos e financiamento

Donativos, quotas, subsídios, mecenato, patrocínios e financiamento de projetos são distintos da detenção de tokens. Um donativo não constitui investimento na associação nem confere direitos sobre lucros ou património.

Qualquer campanha que associe pagamentos ou donativos a tokens deverá ser previamente avaliada nos planos jurídico, fiscal, contabilístico, regulatório e de proteção de dados.

## 7. Blockchain e contrato

O ETHIK está documentado como **ERC-20 na Celo Mainnet**, Chain ID **42220**.

**Contrato:** `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe`  
**Decimais:** 18

Foi recuperado o ficheiro Solidity original `contracts/ETHIK.sol`, baseado em OpenZeppelin `ERC20` e `Ownable`.

A implementação recuperada contém:

```solidity
constructor() ERC20("ETHIK", "ETHIK") Ownable(msg.sender) {
    _mint(msg.sender, 10000000 * 10 ** decimals());
}

function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```

Isto significa que o contrato cria inicialmente **10.000.000 ETHIK** para o `msg.sender` do deployment e disponibiliza uma função de emissão adicional protegida por `onlyOwner`.

## 8. Supply e tokenomics

O supply inicial definido no código é **10.000.000 ETHIK**.

O código recuperado **não estabelece um maximum supply**. Assim, os 10 milhões não devem ser descritos como supply máximo. O owner pode, tecnicamente, emitir unidades adicionais através de `mint()`.

O código recuperado não contém funções próprias de `burn()` ou `pause()`, nem mecanismo de proxy/upgradeability no ficheiro apresentado.

Não existe ainda uma distribuição percentual oficial documentada. As categorias e percentagens só devem ser publicadas quando houver correspondência verificável com carteiras e regras efetivas.

## 9. Controlo do contrato

`Ownable(msg.sender)` estabelece o `msg.sender` do deployment como owner inicial.

Isto não é, por si só, prova do owner atual. Antes de qualquer nova emissão deve ser confirmada on-chain a função `owner()` e o histórico de ownership.

A posse de ETHIK numa carteira também não prova, por si só, o controlo administrativo do contrato.

## 10. Estado técnico e verificação

Dados observados no explorador em outubro de 2026:

| Parâmetro | Dado |
|---|---|
| Nome | ETHIK |
| Símbolo | ETHIK |
| Padrão | ERC-20 |
| Rede | Celo Mainnet |
| Chain ID | 42220 |
| Contrato | `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe` |
| Decimais | 18 |
| Supply inicial no código recuperado | **10.000.000 ETHIK** |
| Max Total Supply apresentado pelo explorador | 10.000.000 ETHIK |
| Holders apresentados | 2 |
| Transferências apresentadas | 5 |

O código recuperado ainda não foi bytecode-verificado contra o contrato publicado no CeloScan. Permanecem como validações finais: comparar código e bytecode, confirmar `owner()`, confirmar `totalSupply()` e verificar o histórico de ownership.

## 11. Riscos

A função `mint()` representa um risco de diluição se forem emitidos novos tokens. Por isso, qualquer emissão adicional deve ser precedida de decisão documentada, avaliação jurídica/regulatória, análise de impacto na tokenomics e atualização da documentação pública.

Também existem riscos associados à perda de chaves, phishing, transferências irreversíveis, indisponibilidade de serviços e ausência de mercado ou liquidez.

## 12. Privacidade, conformidade e enquadramento jurídico

Não devem ser publicados numa blockchain pública nomes, contactos, moradas, documentos de identificação, dados de saúde, situação social ou listas de beneficiários.

A classificação jurídica de um criptoativo depende das suas características reais, direitos associados, emissão, distribuição, transferibilidade e promoção. A intenção social e o nome “token de utilidade” não determinam, por si só, o enquadramento jurídico.

O [Regulamento (UE) 2023/1114 relativo aos mercados de criptoativos (MiCA)](https://eur-lex.europa.eu/eli/reg/2023/1114/oj) poderá ser relevante consoante o desenho e utilização concretos. Antes de emitir, distribuir, promover, vender, admitir à negociação ou criar mecanismos de troca para ETHIK, deve ser obtida análise jurídica e regulatória específica.

Este documento não constitui parecer jurídico, autorização regulatória, prospeto, convite à compra ou aconselhamento financeiro.

---

## Roadmap técnico resumido

1. **Recuperação do código original — concluída.**
2. **Validação do código contra o contrato on-chain — em curso.**
3. **Confirmação do owner e totalSupply atuais — pendente.**
4. **Verificação/publicação do código no explorador — pendente.**
5. **Definição final da tokenomics e política de mint — pendente.**
6. **Validação jurídica e regulatória antes de novas emissões ou promoção — necessária.**

**Nota final:** os dados técnicos devem ser atualizados se a implementação on-chain for alterada.