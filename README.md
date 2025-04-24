# Lógica de Programação com Pascal: Guia Completo

- **Vídeo-aulas:** [SchoolFreeWare - Free Pascal Program Tutorials - Lazarus IDE](https://www.youtube.com/playlist?list=PLB24C56953A79987A)

Este guia tem como objetivo fornecer uma base extremamente sólida para futuros desenvolvedores que desejam aprender lógica de programação usando Pascal como linguagem de apoio.

## 🧠 Fundamentos da Lógica de Programação

### 1. O que é lógica de programação

Lógica de programação é o conjunto de regras e conceitos utilizados para resolver problemas computacionais. Compreender a lógica é essencial antes de codificar.

### 2. Fluxogramas e pseudocódigos

Ferramentas para planejar algoritmos.

- **Fluxograma:** representação gráfica do algoritmo.
- **Pseudocódigo:** representação textual estruturada do algoritmo.

### 3. Tipos de dados básicos

```pascal
var
  idade: Integer;
  altura: Real;
  letra: Char;
  ativo: Boolean;
```

### 4. Variáveis e constantes

```pascal
const
  PI = 3.14;
var
  raio, area: Real;
```

### 5. Operadores

```pascal
area := PI * (raio * raio); // aritmético
if idade >= 18 then writeln('Maior de idade'); // relacional
if (ativo = true) and (idade > 18) then writeln('Ativo e adulto'); // lógico
```

## 🔁 Controle de Fluxo

### 6. Comandos de decisão

```pascal
if idade >= 18 then
  writeln('Maior de idade')
else
  writeln('Menor de idade');

case diaSemana of
  1: writeln('Domingo');
  2: writeln('Segunda');
  else writeln('Outro dia');
end;
```

### 7. Estruturas de repetição

```pascal
while x < 10 do
begin
  writeln(x);
  x := x + 1;
end;

repeat
  writeln(x);
  x := x + 1;
until x > 10;

for i := 1 to 5 do
  writeln(i);
```

### 8. Operadores lógicos em estruturas condicionais

```pascal
if (idade > 18) and (ativo = true) then
  writeln('Acesso permitido');
```

### 9. Aninhamento de estruturas

```pascal
for i := 1 to 3 do
begin
  if i mod 2 = 0 then
    writeln(i, ' é par');
end;
```

## 📉 Manipulação de Dados

### 10. Entrada e saída de dados

```pascal
readln(nome);
writeln('Nome digitado: ', nome);
```

### 11. Conversões de tipo

```pascal
var
  texto: string;
  numero: integer;
begin
  texto := '123';
  val(texto, numero);
```

### 12. Validação de entrada

```pascal
repeat
  readln(idade);
until idade >= 0;
```

## 📊 Estruturas de Dados Simples

### 13. Vetores

```pascal
var
  numeros: array[1..5] of integer;
begin
  numeros[1] := 10;
  writeln(numeros[1]);
end;
```

### 14. Matrizes

```pascal
var
  matriz: array[1..3, 1..3] of integer;
begin
  matriz[1][1] := 5;
  writeln(matriz[1][1]);
end;
```

### 15. Manipulação de strings

```pascal
var
  s: string;
begin
  s := 'Pascal';
  writeln(length(s));
  writeln(copy(s, 2, 3));
end;
```

### 16. Sub-rotinas

```pascal
procedure MostrarMensagem;
begin
  writeln('Olá!');
end;

function Soma(a, b: integer): integer;
begin
  Soma := a + b;
end;
```

### 17. Passagem de parâmetros

```pascal
procedure Incrementa(var x: integer);
begin
  x := x + 1;
end;
```

## 📂 Organização e Modularização

### 18. Modularização de código

(Ver tópico anterior com procedures/functions)

### 19. Escopo de variáveis

```pascal
var
  global: integer;

procedure Teste;
var
  local: integer;
begin
  // local só existe aqui
end;
```

### 20. Boas práticas

Comentários e indentação correta:

```pascal
// Exemplo comentado
if x > 10 then
  writeln('Maior que 10');
```

## 📈 Aplicações Matemáticas e Lógicas

### 21. Operações matemáticas

```pascal
media := (nota1 + nota2) / 2;
```

### 22. Problemas clássicos

Fatorial:

```pascal
function Fatorial(n: integer): integer;
begin
  if n <= 1 then Fatorial := 1
  else Fatorial := n * Fatorial(n - 1);
end;
```

### 23. Estatística básica

```pascal
var
  i, maior: integer;
begin
  maior := numeros[1];
  for i := 2 to 10 do
  begin
    if numeros[i] > maior then maior := numeros[i];
  end;
  writeln('Maior número: ', maior);
end;
```

### 24. Ordenação simples (Bubble Sort)

```pascal
var
  i, j, temp: integer;
begin
  for i := 1 to 9 do
    for j := i + 1 to 10 do
      if vetor[i] > vetor[j] then
      begin
        temp := vetor[i];
        vetor[i] := vetor[j];
        vetor[j] := temp;
      end;
end;
```

### 25. Busca em listas

```pascal
var
  i: integer;
begin
  for i := 1 to 10 do
    if vetor[i] = alvo then
      writeln('Encontrado na posição ', i);
end;
```

## 📒 Projetos Práticos

### 26. Calculadora

```pascal
case operacao of
  '+': resultado := a + b;
  '-': resultado := a - b;
  '*': resultado := a * b;
  '/': if b <> 0 then resultado := a / b else writeln('Divisão por zero');
end;
```

### 27. Sistema de login simples

```pascal
if (usuario = 'admin') and (senha = '123') then
  writeln('Acesso liberado')
else
  writeln('Usuário ou senha incorretos');
```

### 28. Agenda de contatos

```pascal
type
  Contato = record
    nome: string;
    telefone: string;
  end;
var
  agenda: array[1..100] of Contato;
begin
  agenda[1].nome := 'João';
  agenda[1].telefone := '123456789';
  writeln('Contato: ', agenda[1].nome);
end;
```

### 29. Jogo da adivinhação

```pascal
var
  secreto, tentativa: integer;
begin
  secreto := 7;
  repeat
    readln(tentativa);
    if tentativa > secreto then writeln('Menor!')
    else if tentativa < secreto then writeln('Maior!');
  until tentativa = secreto;
  writeln('Acertou!');
end;
```

### 30. Caixa eletrônico

```pascal
var
  opcao: integer;
begin
  repeat
    writeln('1. Ver saldo');
    writeln('2. Sacar');
    writeln('0. Sair');
    readln(opcao);
  until opcao = 0;
end;
```

## 🔀 Extras Avançados (Opcional)

### - Manipulação de arquivos

```pascal
var
  arquivo: text;
begin
  assign(arquivo, 'dados.txt');
  rewrite(arquivo);
  write(arquivo, 'Texto');
  close(arquivo);
end;
```

### - Recursão

(Ver exemplo de fatorial acima)

### - Programas com orientação a objetos

```pascal
type
  TPessoa = class
    nome: string;
    procedure Mostrar;
  end;

procedure TPessoa.Mostrar;
begin
  writeln('Nome: ', nome);
end;
```
