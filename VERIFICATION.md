# ETHIK — Tutorial de verificação do código on-chain

Este documento explica como confirmar se o código Solidity recuperado em `contracts/ETHIK.sol` corresponde realmente ao contrato publicado na Celo Mainnet.

## 1. Confirmar os dados básicos

Contrato ETHIK:

`0x782061Cb8D870161fA0DD8D461fafDD67a742ECe`

Rede: Celo Mainnet  
Chain ID: 42220  
Padrão: ERC-20  
Decimais esperados: 18

## 2. Abrir o contrato no CeloScan

1. Abra o CeloScan.
2. Pesquise pelo endereço do contrato.
3. Confirme que o endereço apresentado é exatamente:
   `0x782061Cb8D870161fA0DD8D461fafDD67a742ECe`
4. Verifique a rede: Celo Mainnet.
5. Consulte as abas **Contract** e **Transactions**.

## 3. Verificar se o código já está publicado/verificado

Na página do contrato, abra **Contract**.

Se aparecer código-fonte verificado, procure:

- Compiler version;
- Optimization;
- Contract name;
- ABI;
- Source code.

Compare o código apresentado com `contracts/ETHIK.sol` neste repositório.

### Atenção

O facto de o CeloScan mostrar uma ABI ou informações de contrato **não significa automaticamente que o código recuperado neste repositório seja o mesmo código usado no deployment**.

## 4. Confirmar as funções importantes

No código recuperado, procure:

```solidity
contract ETHIK is ERC20, Ownable
```

Depois confirme:

```solidity
constructor() ERC20("ETHIK", "ETHIK") Ownable(msg.sender)
```

E:

```solidity
_mint(msg.sender, 10000000 * 10 ** decimals());
```

E finalmente:

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```

Estas partes são especialmente importantes porque determinam o nome/símbolo, o supply inicial e a possibilidade de emissão adicional pelo owner.

## 5. Confirmar o owner atual

Se o contrato expuser a função `owner()` na área **Read Contract**, execute-a.

O endereço devolvido é o owner atual.

Não assumir que é o mesmo endereço do deployer apenas porque o código usa `Ownable(msg.sender)`: o estado atual on-chain deve ser consultado.

## 6. Confirmar o supply atual

Na área **Read Contract**, consulte:

- `totalSupply()`
- `decimals()`
- `name()`
- `symbol()`
- `owner()`

O supply inicial definido no código recuperado é 10.000.000 ETHIK, mas o supply atual pode ser superior porque existe `mint()` pelo owner.

## 7. Confirmar se houve mint adicional

Abra **Transactions** e procure transferências emitidas pelo endereço zero (`0x0000000000000000000000000000000000000000`) para endereços de destino.

Uma criação de ERC-20 através de `_mint()` aparece normalmente como transferência `Transfer` a partir do endereço zero.

Isto permite comparar:

- supply inicial definido pelo código;
- quantidade efetivamente criada no deployment;
- eventuais emissões posteriores.

## 8. Verificação profissional do bytecode

A confirmação mais forte consiste em reproduzir exatamente o build do Solidity e comparar o bytecode de runtime/deployment com o bytecode publicado.

Para isso é necessário conhecer exatamente:

- versão do Solidity;
- versão das dependências OpenZeppelin;
- optimizer ligado/desligado;
- número de optimizer runs;
- EVM version, se definida;
- código-fonte completo;
- imports e respetivas versões;
- constructor arguments.

O simples facto de compilar um ficheiro Solidity semelhante **não prova** que corresponde ao deployment.

## 9. O que significa uma confirmação positiva

Consideramos a recuperação tecnicamente confirmada quando:

1. o endereço do contrato está correto;
2. a rede está correta;
3. o código-fonte verificado no explorer corresponde ao código recuperado, ou
4. um build reproduzível gera bytecode compatível com o contrato publicado;
5. os dados on-chain (`name`, `symbol`, `decimals`, `totalSupply`, `owner`) são coerentes com o código;
6. o histórico de mint/deployment é coerente com a documentação.

## 10. Não alterar o contrato publicado

Esta verificação é apenas documental/técnica.

Não fazer novo deployment nem alterar `contracts/ETHIK.sol` para tentar fazer o bytecode coincidir.

Se o código recuperado não corresponder ao contrato publicado, devemos documentar a divergência e investigar a origem antes de qualquer decisão.

## Estado atual

**Estado: PENDENTE DE VERIFICAÇÃO ON-CHAIN.**

O código Solidity foi recuperado do projeto original em outubro de 2026, mas ainda não foi demonstrado neste repositório que o bytecode publicado em Celo corresponde exatamente a esse código.
