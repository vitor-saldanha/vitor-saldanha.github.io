# 1. Listar todos os arquivos .html da raiz do projeto
paginas <- list.files(path = ".", pattern = "\\.html$", full.names = FALSE)

# 2. Remover o arquivo de verificação do Google da lista (ele não deve ir para a busca)
paginas <- paginas[!grepl("google1a78a45a5cb4a7fe", paginas)]

# 3. Definir a URL base do seu novo domínio
url_base <- "https://vitorsaldanha.com.br"

# 4. Montar a estrutura oficial do XML exigida pelos buscadores
linhas_xml <- c(
  '<?xml version="1.0" encoding="UTF-8"?>',
  '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">'
)

for (pagina in paginas) {
  linhas_xml <- c(linhas_xml,
                  '  <url>',
                  paste0('    <loc>', url_base, '/', pagina, '</loc>'),
                  '    <priority>0.8</priority>',
                  '  </url>'
  )
}

linhas_xml <- c(linhas_xml, '</urlset>')

# 5. Salvar o arquivo sitemap.xml na raiz do projeto
writeLines(linhas_xml, con = "sitemap.xml", useBytes = TRUE)

cat("Sitemap.xml gerado com sucesso com", length(paginas), "páginas!\n")
