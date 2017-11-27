//      MÉTODO DE MÍNIMOS QUADRADOS
//         EXPECTATIVA DE PÚBLICO
//       CÁLCULO NUMÉRICO - 2017.2
//        ALUNO: EDUARDO CARNEIRO

clear
function[] = minQuad_3()
    
    // h é uma matriz que contem os vetores h1 (coluna de 1), h2 (coluna de valores do eixo x), h3 (coluna de x^2)e h4 (coluna de x^3)
    A = [1,0.1,0.01,0.001;1,0.2,0.04,0.008;1,0.3,0.09,0.027;1,0.4,0.16,0.064;1,0.5,0.25,0.125;1,0.6,0.36,0.216;1,0.7,0.49,0.343;1,0.8,0.64,0.512;1,0.9,0.81,0.729;1,1,1,1;1,1.1,1.21,1.331;1,1.2,1.44,1.728;1,1.3,1.69,2.197;1,1.4,1.96,2.744;1,1.5,2.25,3.375;1,1.6,2.56,4.096;1,1.7,2.89,4.913;1,1.8,3.24,5.832;1,1.9,3.61,6.859;1,2,4,8;1,2.1,4.41,9.261;1,2.2,4.84,10.648;1,2.3,5.29,12.167;1,2.4,5.76,13.824;1,2.5,6.25,15.625;1,2.6,6.76,17.576;1,2.7,7.29,19.683;1,2.8,7.84,21.952;1,2.9,8.41,24.389;1,3,9,27;1,3.1,9.61,29.791;1,3.2,10.24,32.768;1,3.3,10.89,35.937;1,3.4,11.56,39.304;1,3.5,12.25,42.875]
    
    // o vetor b é o vetor com a quantidade de inscrições até o dia do início do evento.
    b = [78;141;155;169;174;178;188;191;197;201;211;217;252;275;282;295;305;316;323;343;360;370;389;406;411;425;438;457;484;518;585;628;672;710;763]
    
    matriz = A' * A         // Calculamos a multiplicação entre transposta de A pela matriz A
    B = A' * b              // Calculamos a multiplicação entre a transposta de A o vetor de inscritos b.
   
    w = inv(matriz) * B     // w é o vetor das constantes da equação obtida no método
    
    // Para ver os valores de cada matriz, basta descomentar as linhas abaixo
    // disp(inv(matriz))
    // disp(A)
    // disp(B)
    // disp(A')
    // disp(b)
    // disp(w)
    
    // Agora basta imprimir a equação que modela os seus dados, com os valores dos coeficientes armazenados em w.
    printf('\nEdição Passada: Y = %f*x^3', w(4))
    if(w(3)> 0 ) then printf(' +%f*x^2', w(3)) else printf(' %f*x^2',w(3)) end
    if(w(2)> 0 ) then printf(' +%f*x', w(2)) else printf(' %f*x',w(2)) end
    if(w(1)> 0 ) then printf(' +%f', w(1)) else printf(' %f',w(1)) end
    
    x = (0.1:0.1:3.5)       // Esbelece o intervalo de x
    y = w(4).*x.^3 + w(3).*x.^2 + w(2).*x + w(1)    // Estabelece o formato da função com as constantes
    
    plot(x,y)               // Desenha a linha da função
    plot(A(:,2),b,'*r')     // Desenha os pontos dos dados
  
endfunction

function[] = minQuad_2()
                    
    // h é uma matriz que contém os vetores h1 (coluna de 1), h2 (coluna de valores do eixo x) e h3 (coluna de x^2)
    A = [1,0.1,0.01;1,0.2,0.04;1,0.3,0.09;1,0.4,0.16;1,0.5,0.25;1,0.6,0.36;1,0.7,0.49;1,0.8,0.64;1,0.9,0.81;1,1,1;1,1.1,1.21;1,1.2,1.44;1,1.3,1.69;1,1.4,1.96;1,1.5,2.25;1,1.6,2.56;1,1.7,2.89;1,1.8,3.24;1,1.9,3.61;1,2,4;1,2.1,4.41;1,2.2,4.84;1,2.3,5.29;1,2.4,5.76;1,2.5,6.25;1,2.6,6.76;1,2.7,7.29;1,2.8,7.84;1,2.9,8.41;1,3,9;1,3.1,9.61;1,3.2,10.24;1,3.3,10.89;1,3.4,11.56;1,3.5,12.25]
    
    // o vetor b é o vetor com a quantidade de inscrições até o dia do início do evento.
    b = [78;141;155;169;174;178;188;191;197;201;211;217;252;275;282;295;305;316;323;343;360;370;389;406;411;425;438;457;484;518;585;628;672;710;763] 
    
    matriz = A' * A         // Calculamos a multiplicação entre transposta de A pela matriz A
    B = A' * b              // Calculamos a multiplicação entre a transposta de A o vetor de inscritos b.
   
    w = inv(matriz) * B     // w é o vetor das constantes da equação obtida no método
    
    // Para ver os valores de cada matriz, basta descomentar as linhas abaixo
    // disp(matriz)
    // disp(A)
    // disp(A')
    // disp(b)
    // disp(w)
    
    // Agora basta imprimir a equação que modela os seus dados, com os valores dos coeficientes armazenados em w.
    printf('\nEdição  passada: Y = %f*x^2', w(3))
    if(w(2)> 0 ) then printf(' +%f*x', w(2)) else printf(' %f*x',w(2)) end
    if(w(1)> 0 ) then printf(' +%f', w(1)) else printf(' %f',w(1)) end
    
    x = (0.1:0.1:3.5)                  // Esbelece o intervalo de x
    y = w(3).*x.^2 + w(2).*x + w(1)    // Estabelece o formato da função com as constantes
    
    plot(x,y,'b')           // Desenha a linha da função
    plot(A(:,2),b,'*r')     // Desenha os pontos dos dados
  
endfunction

function[] = minQuad_estimativa(novas_inscricoes)
    
    // h é uma matriz que contem os vetores h1 (coluna de 1), h2 (coluna de valores do eixo x), h3 (coluna de x^2)e h4 (coluna de x^3)
    A = [1,0.1,0.01,0.001;1,0.2,0.04,0.008;1,0.3,0.09,0.027;1,0.4,0.16,0.064;1,0.5,0.25,0.125;1,0.6,0.36,0.216;1,0.7,0.49,0.343;1,0.8,0.64,0.512;1,0.9,0.81,0.729;1,1,1,1;1,1.1,1.21,1.331;1,1.2,1.44,1.728;1,1.3,1.69,2.197;1,1.4,1.96,2.744;1,1.5,2.25,3.375;1,1.6,2.56,4.096;1,1.7,2.89,4.913;1,1.8,3.24,5.832;1,1.9,3.61,6.859;1,2,4,8;1,2.1,4.41,9.261;1,2.2,4.84,10.648;1,2.3,5.29,12.167;1,2.4,5.76,13.824;1,2.5,6.25,15.625;1,2.6,6.76,17.576;1,2.7,7.29,19.683;1,2.8,7.84,21.952;1,2.9,8.41,24.389;1,3,9,27;1,3.1,9.61,29.791;1,3.2,10.24,32.768;1,3.3,10.89,35.937;1,3.4,11.56,39.304;1,3.5,12.25,42.875]
    
    inscricoes_antigas = [78;63;14;14;5;4;10;3;6;4;10;6;35;23;7;13;10;11;7;20;17;10;19;17;5;14;13;19;27;34;67;43;44;38;53]    // Inscritos antigas por dia
    
    tam = size(novas_inscricoes,1)     // Quantidade de novas inscrições de entrada
    
    taxa(1) = (novas_inscricoes(1) - inscricoes_antigas(1))
    for i=2:size(novas_inscricoes,1)
        taxa(i) = (taxa(i-1) + (novas_inscricoes(i) - inscricoes_antigas(i)))/2     // Calcula a media entre as variações de cada dia
    end
    
    novo_b(1) = novas_inscricoes(1)                                                 // Cria o vetor com novos pontos de novas_inscricoes
    for i=2:size(novas_inscricoes,1)
        novo_b(i) = novo_b(i-1)+ novas_inscricoes(i) 
    end
        
    b(1) = novas_inscricoes(1)                                // Cria o vetor com as inscrições antigas
    for i=2:size(novas_inscricoes,1)
        b(i) = b(i-1)+ novas_inscricoes(i) 
    end
    for i=size(novas_inscricoes,1):size(inscricoes_antigas,1) // Sobrescreve os dados novos que existirem
        b(i) = b(i-1)+ inscricoes_antigas(i)+ taxa(tam)       // Para os dias que não tem dos dados novos, somamos a taxa no do ano anterior
    end
    
    matriz = A' * A         // Calculamos a multiplicação entre transposta de A pela matriz A
    
    B = A' * b              // Calculamos a multiplicação entre a transposta de A o vetor de inscritos b.
   
    w = inv(matriz) * B     // w é o vetor das constantes da equação obtida no método
    
    // Para ver os valores de cada matriz, basta descomentar as linhas abaixo
    // disp(matriz)
    // disp(A)
    // disp(B)
    // disp(A')
    // disp(b)
    // disp(w)
    
    // Agora basta imprimir a equação que modela os seus dados, com os valores dos coeficientes armazenados em w.
    printf('\nNova Edição: Y = %f*x^3', w(4))
    if(w(3)> 0 ) then printf(' +%f*x^2', w(3)) else printf(' %f*x^2',w(3)) end
    if(w(2)> 0 ) then printf(' +%f*x', w(2)) else printf(' %f*x',w(2)) end
    if(w(1)> 0 ) then printf(' +%f', w(1)) else printf(' %f',w(1)) end
    
    x = (0.1:0.1:3.5)       // Estabelece o intervalo de x
    k = (0.1:0.1:tam/10)
    y = w(4).*x.^3 + w(3).*x.^2 + w(2).*x + w(1)    // Estabelece o formato da função com as constantes

    plot(x,y,'g')           // Desenha a linha da função
    plot(x,b,'or')
    plot(k,novo_b,'og')     // Desenha os pontos dos novos dados
  
endfunction

function[] = Compara(novas_inscricoes)
    // minQuad_2()          // Roda as duas funções ao mesmo tempo
    minQuad_3()
    minQuad_estimativa(novas_inscricoes)
endfunction
