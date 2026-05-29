$html = Get-Content index.html -Raw

$slides = ""
$dots = ""
for ($i = 1; $i -le 14; $i++) {
    $active = if ($i -eq 1) { " active" } else { "" }
    $slides += @"
                <!-- Slide $i -->
                <div class="carousel-slide">
                    <img src="assets/img$i.png" alt="Tela $i do Sistema">
                    <div class="carousel-caption">
                        <h3>Tela $i</h3>
                        <p>Funcionalidade e fluxo de operação na prática.</p>
                    </div>
                </div>

"@
    
    $index = $i - 1
    $dots += "                <div class=""dot$active"" onclick=""goToSlide($index)""></div>`n"
}

$newCarousel = @"
        <div class="carousel-wrapper">
            <div class="carousel-container" id="carousel">
$slides            </div>
            
            <button class="carousel-btn carousel-prev" onclick="moveSlide(-1)">❮</button>
            <button class="carousel-btn carousel-next" onclick="moveSlide(1)">❯</button>
            
            <div class="carousel-dots" id="carousel-dots">
$dots            </div>
        </div>
"@

$html = $html -replace '(?s)<div class="carousel-wrapper">.*?</div>\s*</div>\s*</div>', $newCarousel

Set-Content index.html $html -Encoding UTF8
