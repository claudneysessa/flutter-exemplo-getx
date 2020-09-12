# Exemplo de Utilização do Package Get - State Manager

Este projeto tem como finalidade ajudar no desenvolvimento em flutter com o package get apresentando exemplos de utilização do GetX como State Manager.

## GetX

O GetX é um gerenciador de estados simples desenvolvido para auxiliar na programação reativa em flutter, ele foi desenvolvido de forma a se assemelhar a utilização do setState nativo do flutter evitando assim a utilização de StreamControllers, StreamBuilder e aquelas milhares de classes.

Podemos utilizar o GetX de 2 formas:

## GetX<NomeDoController>(builder: (_){ return SeuWidget(); })
  
```
GetX<NomeDoController>(
  builder: (_){ 
    return SeuWidget(); 
  }
)
```

ou

## Obx((){ return SeuWidget(); })
