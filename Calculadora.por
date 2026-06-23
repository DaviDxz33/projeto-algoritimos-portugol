programa
{
	funcao inicio()
	{
		// Declaração de variáveis
		real numero1, numero2, resultado
		inteiro opcao
		logico continuar = verdadeiro

		enquanto(continuar)
		{
			// Menu de opções
			escreva("\n=== CALCULADORA PORTUGOL ===\n")
			escreva("1) Somar (+)\n")
			escreva("2) Subtrair (-)\n")
			escreva("3) Multiplicar (*)\n")
			escreva("4) Dividir (/)\n")
			escreva("5) Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			// Verifica se o usuário quer sair antes de pedir os números
			se (opcao == 5)
			{
				continuar = falso
				escreva("\nCalculadora encerrada. Até logo!\n")
			}
			senao se (opcao < 1 ou opcao > 5)
			{
				escreva("\nOpção inválida! Tente novamente.\n")
			}
			senao
			{
				// Entrada dos números
				escreva("Digite o primeiro número: ")
				leia(numero1)
				escreva("Digite o segundo número: ")
				leia(numero2)

				// Processamento e exibição do resultado
				escolha(opcao)
				{
					caso 1: 
						resultado = numero1 + numero2
						escreva("\nResultado: ", numero1, " + ", numero2, " = ", resultado, "\n")
						pare
						
					caso 2: 
						resultado = numero1 - numero2
						escreva("\nResultado: ", numero1, " = ", numero2, " = ", resultado, "\n")
						pare
						
					caso 3: 
						resultado = numero1 * numero2
						escreva("\nResultado: ", numero1, " * ", numero2, " = ", resultado, "\n")
						pare
						
					caso 4: 
						// Validação para evitar a divisão por zero (um erro clássico que os professores adoram cobrar!)
						se (numero2 == 0)
						{
							escreva("\nErro: Não é possível dividir por zero!\n")
						}
						senao
						{
							resultado = numero1 / numero2
							escreva("\nResultado: ", numero1, " / ", numero2, " = ", resultado, "\n")
						}
						pare
				}
			}
			
			// Apenas uma linha visual para separar as operações
			escreva("-----------------------------\n")
		}
	}
}
