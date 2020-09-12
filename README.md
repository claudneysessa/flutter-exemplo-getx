# Exemplo de Utilização do Package Get - State Manager

Este projeto tem como finalidade ajudar no desenvolvimento em flutter com o package get apresentando exemplos de utilização do GetX como State Manager.

## GetX

O GetX é um gerenciador de estados simples desenvolvido para auxiliar na programação reativa em flutter, ele foi desenvolvido de forma a se assemelhar a utilização do setState nativo do flutter evitando assim a utilização de StreamControllers, StreamBuilder e aquelas milhares de classes.

## Recursos Utilizados:

### GetX<NomeDoController>(builder: (_){ return SeuWidget(); })
  
O GetX atualiza apenas o que é necessário e quando necessário, se você tiver um erro e enviar 300 alterações de estado simultaneamente, GetX irá filtrar e atualizar a tela apenas se o estado realmente mudar. O GetX é mais econômico do que qualquer outro gerenciador de estado reativo, mas consome um pouco mais de RAM.
  
```
GetX<NomeDoController>(
  builder: (_){ 
    return SeuWidget(); 
  }
)
```

ou

### Obx((){ return SeuWidget(); })

O Obx, é apenas um Widget com StreamSubscription que recebe eventos de mudança de seus filhos.

```
Obx((){
  return SeuWidget();
})
```
