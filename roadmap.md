# Roadmap — ETHIK

**Versão:** outubro de 2026  
**Estado:** indicativo; as fases dependem de validação e recursos disponíveis.

## 1. Conceito e finalidade — em revisão

- Definir ETHIK como token de utilidade e reconhecimento de impacto social.
- Manter separação clara entre token, donativos, financiamento e remuneração.
- Evitar linguagem que sugira stablecoin, investimento, rendimento ou valorização garantida.

## 2. Recuperação do contrato — concluída

- Recuperado o ficheiro Solidity original `contracts/ETHIK.sol`.
- Confirmada a implementação ERC-20 baseada em OpenZeppelin.
- Confirmado supply inicial de 10.000.000 ETHIK no construtor.
- Confirmada função `mint()` protegida por `onlyOwner`.
- Confirmado que o código recuperado não define um maximum supply.

## 3. Verificação on-chain — em curso

- Confirmar correspondência entre o código recuperado e o bytecode publicado.
- Confirmar `owner()` atual.
- Confirmar `totalSupply()` atual.
- Confirmar histórico de ownership e eventuais alterações administrativas.
- Documentar carteiras e saldos relevantes.

## 4. Tokenomics — atualização em curso

- Tratar 10 milhões como **supply inicial**, não como maximum supply.
- Definir uma política transparente para eventual emissão adicional.
- Documentar critérios de atribuição e distribuição real.
- Não prometer mercado, valor, liquidez ou resgate.

## 5. Utilidades — em conceção

- Identificar eventos, formação, conteúdos, certificados ou benefícios concretos.
- Definir critérios acessíveis e não discriminatórios de participação.
- Formalizar acordos com parceiros antes de anunciar utilidades externas.
- Separar tokens de remunerações laborais, bolsas e apoios sociais legalmente devidos.

## 6. Verificação do código no explorador — pendente

- Avaliar publicação/verificação do código no CeloScan.
- Garantir que a documentação pública corresponde ao contrato efetivamente publicado.

## 7. Revisão jurídica e fiscal — necessária antes de novas emissões

- Analisar o MiCA e outras normas relevantes com base no desenho efetivo do ativo.
- Avaliar efeitos fiscais, contabilísticos, de proteção de dados e de proteção dos consumidores.
- Rever campanhas que associem donativos, pagamentos ou dados pessoais a tokens.
- Avaliar especificamente os efeitos de uma função de mint controlada pelo owner.

## Critério de conclusão

Uma fase só deverá ser assinalada como concluída quando exista documentação verificável e as validações necessárias.
