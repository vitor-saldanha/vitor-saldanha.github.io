---
  title: "Regressão Linear"
pagetitle: "Regressão Linear"
description: |
  Uma introdução prática aos modelos lineares no R.
output:
  distill::distill_article:
  toc: true
toc_depth: 6
toc_float: true
css: toc-styles.css
self_contained: false
---
  
```{css, echo=FALSE}
.d-title{
display: none;
}
/* ==========================================================================
1. ESTILIZAÇÃO DO HERO BANNER (FULL WIDTH BREAKOUT)
========================================================================== */

.hero-container-full {
/* Técnica de "Breakout" para escapar do grid do Distill */
width: 100vw; 
position: relative;
left: 50%;
right: 50%;
margin-left: -50vw;
margin-right: -50vw;

/* Reset de margens para evitar espaços brancos indesejados */
margin-top: -2rem; /* Ajuste fino dependendo do padding do navbar */
margin-bottom: 3rem;

/* Garantir que não cause rolagem horizontal indesejada */
box-sizing: border-box;
overflow: hidden;
z-index: 5;
}

.hero-banner {
/* Dimensões */
height: 40vh; /* Ocupa 50% da altura da viewport */
min-height: 300px; /* Altura mínima garantida */
width: 100%;

/* Imagem de Fundo - Substitua pela URL da sua imagem */
background-image: url('https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1953&q=80');
background-size: cover;
background-position: center center;
background-repeat: no-repeat;

/* Flexbox para centralização total do conteúdo */
display: flex;
justify-content: center;
align-items: center;

/* Contexto de empilhamento */
position: relative;
z-index: 1;
}

/* Camada de Escurecimento (Overlay) */
.hero-overlay {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.7));
z-index: 2;

/* Manter centralização para os filhos */
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
}

/* Conteúdo Textual */
.hero-content {
z-index: 3;
text-align: center;
max-width: 800px;
padding: 0 20px;
color: #ffffff;
}

/* Título Principal */
.hero-title {
font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
font-size: 3.5rem;
font-weight: 800;
margin-bottom: 0.5rem;
text-shadow: 0 2px 10px rgba(0,0,0,0.5);
line-height: 1.2;
color: white!important; /* Importante para sobrescrever cores do tema Distill */
}

/* Subtítulo */
.hero-subtitle {
font-size: 1.25rem;
font-weight: 300;
margin-bottom: 2rem;
color: rgba(255, 255, 255, 0.9);
line-height: 1.5;
}

/* Botões */
.hero-btn {
display: inline-block;
padding: 12px 28px;
margin: 5px;
border-radius: 50px;
text-decoration: none;
font-weight: 600;
transition: all 0.3s ease;
text-transform: uppercase;
font-size: 0.9rem;
letter-spacing: 0.5px;
}

.hero-btn.primary {
background-color: #4CAF50; /* Cor verde estilo RStudio/Distill */
color: white;
border: 2px solid #4CAF50;
}

.hero-btn.primary:hover {
background-color: #45a049;
transform: translateY(-2px);
box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

.hero-btn.github {
background-color: transparent;
color: white;
border: 2px solid white;
}

.hero-btn.github:hover {
background-color: white;
color: #333;
}

/* ==========================================================================
2. CORREÇÃO E ALINHAMENTO DO TABLE OF CONTENTS (TOC)
========================================================================== */



/* ==========================================================================
3. RESPONSIVIDADE (MOBILE)
========================================================================== */

/* Em telas menores que 1000px (ponto de quebra comum do Distill),
o layout muda drasticamente. O TOC flutuante deve ser desativado. */

@media screen and (max-width: 1000px) {

/* Ajuste do Banner para Mobile */
.hero-banner {
height: 60vh; /* Mais alto em mobile para caber o texto verticalmente */
}

.hero-title {
font-size: 2.2rem; /* Título menor */
}

/* Reposicionar o TOC para o fluxo normal do documento */
.d-contents > nav.toc, 
#TOC {
position: relative!important;
top: 0!important;
width: 100%;
margin-bottom: 40px;
border-left: none;
border-top: 1px solid #e0e0e0;
padding-top: 20px;
}
}
```

<div class="hero-container-full">
<div class="hero-banner">
<div class="hero-overlay">
<div class="hero-content">
<h1 class="hero-title">Regressão Linear</h1>

<p class="hero-subtitle">
Uma introdução prática aos modelos lineares no R
</p>

</div>
</div>
</div>
</div>
<div class="toc-spacer"></div>
  
