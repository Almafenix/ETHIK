# ETHIK — Tokenomics

## Estado da implementação

A tokenomics deve refletir a implementação real e não pressupostos. Os dados abaixo foram observados na página pública do token no CeloScan em outubro de 2026.

| Parâmetro | Estado atual |
|---|---|
| Nome | ETHIK |
| Símbolo | ETHIK |
| Padrão | ERC-20 |
| Rede | Celo Mainnet |
| Chain ID | 42220 |
| Contrato | `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe` |
| Decimais | 18 |
| Max Total Supply apresentado pelo explorador | **10.000.000 ETHIK** |
| Holders apresentados | 2 |
| Transferências apresentadas | 5 |

O histórico visível do explorador apresenta uma criação inicial de 10.000.000 ETHIK a partir do endereço nulo e transferências posteriores, incluindo movimentos de 150 ETHIK. Estes dados são uma fotografia do estado/histórico indexado pelo explorador no momento da revisão.

## O que ainda não está tecnicamente confirmado

O contrato não tem código-fonte verificado/publicado no explorador. Por isso, não se deve afirmar ainda que os 10.000.000 ETHIK constituem um supply absolutamente fixo ou imutável.

Continuam por verificar:

- existência de `owner` ou mecanismo equivalente;
- existência de `mint`/emissão adicional;
- existência de `burn`;
- existência de `pause` ou bloqueio de transferências;
- eventual proxy/upgradeability;
- permissões administrativas;
- regras de alteração do contrato;
- correspondência entre carteiras atuais e categorias de distribuição.

## Distribuição

Não existe, nesta versão, uma distribuição percentual oficial publicada. Não serão inventadas categorias ou percentagens sem correspondência verificável com carteiras e regras efetivas.

## Utilidade

A ETHIK é concebida como token de utilidade e reconhecimento no ecossistema Alma Fénix. Possíveis utilidades incluem reconhecimento de participação, acesso a atividades e conteúdos, certificação digital, iniciativas de Photovoice, formação, mentoria e outras funcionalidades sociais ou educativas, desde que efetivamente disponibilizadas e juridicamente adequadas.

A ETHIK não é apresentada como investimento, stablecoin, moeda oficial ou instrumento de rendimento. Não existe promessa de preço, liquidez, recompra, resgate ou conversão em euros.

## Controlo e custódia

A posse de ETHIK numa carteira não prova, por si só, que o titular seja `owner` do smart contract. O controlo administrativo só deve ser declarado depois de identificado numa função on-chain verificável ou através do código/ABI do contrato.

As chaves administrativas, caso existam, devem ser protegidas com procedimentos de segurança adequados. Para uma associação, recomenda-se avaliar uma carteira de controlo institucional e, quando tecnicamente possível e proporcional, um mecanismo de assinatura múltipla para operações administrativas críticas.

## Próximos passos técnicos

1. Obter o código-fonte Solidity original do contrato, se disponível.
2. Verificar/publicar o código no CeloScan.
3. Confirmar `owner`, mint, burn, pause e upgradeability.
4. Confirmar se os 10.000.000 ETHIK são efetivamente o limite máximo.
5. Identificar e documentar as carteiras de controlo e distribuição.
6. Fazer revisão de segurança antes de novas emissões ou funcionalidades.
7. Atualizar o whitepaper e o website sempre que a implementação mudar.

**Aviso:** esta documentação não constitui parecer jurídico, autorização regulatória, oferta pública ou aconselhamento financeiro.