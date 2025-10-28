<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Inicio</title>
  <link rel="icon" type="image/x-icon" href="http://ganagram.com/wp-content/uploads/2023/11/favicon-32x32-1.png">
<!--Bootstrap 5 Css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!-- Nuevos cambios -->
 
<style>
    /* Ensure the card body is a flex container */
    .card-body {
        display: block;
        flex-direction: column; /* Stack children vertically */
        justify-content: center; /* Center items vertically */
        align-items: center; /* Center items horizontally */
        height: 50vh; /* Full height of the viewport */
    }

    .img-center img, .logo-img-center img {
        max-width: 100%; /* Ensure images are responsive */
        height: auto; /* Maintain aspect ratio */
    }

    .img-center img{
        width:17.7rem;
        height:18rem;
        border-radius: 10px;
        box-shadow: 3px 3px grey, -1em 0 .4em olive;
    }
    .logo-img-center img{
        width:10rem;
        height:10rem;
        border-radius: 50%;
        box-shadow: 3px 3px grey, -1em 0 .4em olive;
    }
    h6 {
        margin-top: 20px;
        font-size: 0.8rem;
        color:gray;
        text-align: center
    }

    .vacuno {
    color: white;
    background: linear-gradient(135deg, #9dc590 0%, #9dc590 25%, #6b8e76 50%, #8baa8b 75%, #a8c5a8 100%);
    text-align: center;
    font-size: 1rem;
    line-height: 1;
    margin: 0;
    padding: 8px 12px;
    border-radius: 8px;
    box-shadow: 
        0 4px 8px rgba(0,0,0,0.4),
        0 8px 16px rgba(0,0,0,0.3),
        inset 0 1px 0px rgba(255,255,255,0.1),
        inset 0 -1px 0px rgba(0,0,0,0.5);
    border: 1px solid rgba(255,255,255,0.1);
    transform: perspective(1000px) rotateX(-5deg);
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
}

.vacuno::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.1), transparent);
    transition: left 0.5s ease;
}

.vacuno:hover {
    transform: perspective(1000px) rotateX(0deg) scale(1.05);
    box-shadow: 
        0 6px 12px rgba(0,0,0,0.5),
        0 12px 24px rgba(0,0,0,0.4),
        inset 0 2px 0px rgba(255,255,255,0.15),
        inset 0 -2px 0px rgba(0,0,0,0.6);
}

    .vacuno:hover::before {
        left: 100%;
    }

    /* Enhanced Card Hover Effects */
    .card {
        transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        position: relative;
        overflow: hidden;
        border: none;
        background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .card:hover {
        transform: translateY(-10px) scale(1.03);
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        background: linear-gradient(135deg, #ffffff 0%, #f0f8ff 100%);
    }

    .card::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(157, 197, 144, 0.1), transparent);
        transition: left 0.6s ease;
        pointer-events: none;
    }

    .card:hover::before {
        left: 100%;
    }

    .card::after {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, rgba(157, 197, 144, 0.05) 0%, rgba(255, 255, 255, 0.1) 100%);
        opacity: 0;
        transition: opacity 0.3s ease;
        pointer-events: none;
    }

    .card:hover::after {
        opacity: 1;
    }

    /* Card Body Hover Effects */
    .card-body {
        transition: all 0.3s ease;
        position: relative;
        z-index: 2;
    }

    .card:hover .card-body {
        transform: scale(1.02);
    }

    /* Enhanced Logo Image Hover Effects */
    .logo-img-center {
        transition: all 0.3s ease;
        position: relative;
    }

    .logo-img-center:hover {
        transform: scale(1.1);
    }

    .logo-img-center img {
        transition: all 0.3s ease;
        filter: drop-shadow(0 4px 8px rgba(0, 0, 0, 0.2));
    }

    .logo-img-center:hover img {
        filter: drop-shadow(0 8px 20px rgba(157, 197, 144, 0.4));
        transform: rotate(5deg);
    }

    /* Enhanced Title Hover Effects */
    .gana {
        transition: all 0.3s ease;
        position: relative;
    }

    .card:hover .gana {
        color: #9dc590;
        text-shadow: 2px 2px 8px rgba(157, 197, 144, 0.3);
        transform: scale(1.05);
    }

    .card:hover h2[style*="color: #9dc590"] {
        color: #7a9f6a !important;
        text-shadow: 2px 2px 8px rgba(157, 197, 144, 0.4);
        transform: scale(1.05);
    }

    /* Enhanced Vacuno Label Hover Effects */
    .card:hover .vacuno {
        transform: perspective(1000px) rotateX(0deg) scale(1.08);
        box-shadow: 
            0 8px 20px rgba(0,0,0,0.6),
            0 16px 32px rgba(0,0,0,0.5),
            inset 0 3px 0px rgba(255,255,255,0.2),
            inset 0 -3px 0px rgba(0,0,0,0.7);
        background: linear-gradient(135deg, #a8d4a0 0%, #9dc590 25%, #7a9f6a 50%, #8baa8b 75%, #b0d0b0 100%);
    }

    /* Enhanced Description Text Hover Effects */
    h6 {
        transition: all 0.3s ease;
        position: relative;
    }

    .card:hover h6 {
        color: #9dc590;
        transform: scale(1.05);
        text-shadow: 1px 1px 3px rgba(157, 197, 144, 0.3);
    }

    /* Card Border Glow Effect */
    .card {
        border: 2px solid transparent;
        background-clip: padding-box;
    }

    .card:hover {
        border-color: rgba(157, 197, 144, 0.3);
        background-clip: border-box;
    }

    /* Enhanced Link Hover Effects */
    .logo-img-center a {
        transition: all 0.3s ease;
        display: block;
    }

    .logo-img-center a:hover {
        transform: scale(1.05);
    }

    /* Card Container Hover Effects */
    .col-6.col-md-3 {
        transition: all 0.3s ease;
        padding: 10px;
    }

    .col-6.col-md-3:hover {
        transform: translateY(-5px);
    }

    /* Enhanced Row Hover Effects */
    .row {
        transition: all 0.3s ease;
    }

    .row:hover .col-6.col-md-3:not(:hover) {
        opacity: 0.7;
        transform: scale(0.98);
    }

    /* Responsive Hover Adjustments */
    @media (max-width: 768px) {
        .card:hover {
            transform: translateY(-5px) scale(1.02);
        }
        
        .logo-img-center:hover img {
            transform: rotate(3deg);
        }
        
        .card:hover .gana {
            transform: scale(1.03);
        }
    }

    /* Smooth Loading Animation */
    .card {
        animation: cardFadeIn 0.6s ease-out;
    }

    @keyframes cardFadeIn {
        from {
            opacity: 0;
            transform: translateY(20px) scale(0.95);
        }
        to {
            opacity: 1;
            transform: translateY(0) scale(1);
        }
    }

    /* Staggered Animation for Cards */
    .col-6.col-md-3:nth-child(1) { animation-delay: 0.1s; }
    .col-6.col-md-3:nth-child(2) { animation-delay: 0.2s; }
    .col-6.col-md-3:nth-child(3) { animation-delay: 0.3s; }
    .col-6.col-md-3:nth-child(4) { animation-delay: 0.4s; }
    .col-6.col-md-3:nth-child(5) { animation-delay: 0.5s; }
    .col-6.col-md-3:nth-child(6) { animation-delay: 0.6s; }
    .col-6.col-md-3:nth-child(7) { animation-delay: 0.7s; }
    .col-6.col-md-3:nth-child(8) { animation-delay: 0.8s; }

</style>
</head>
<body>
<div class="container">
  <div class="row mt-5">
    <!-- Card 1 - GANAGRAM -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
          <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
          <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
            <h5 class="vacuno">VACUNO</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../vacuno/inventario_vacuno.php">
              <img src="./logos/vacuno_logo.png" width="50%" height="50px" alt="Vacuno Logo">
            </a>
          </div>
          <h6>Unidad Produccion Vacuna #: 01012025-3526</h6>
        </div>
      </div>
    </div>

    <!-- Card 2 - BUFAGRAM -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
          <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>            
            <h5 class="vacuno">BUFALINO</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../bufalino/inventario_bufalino.php">
              <img src="./logos/bufalo_logo.png" width="50%" height="50px" alt="Bufalo Logo">
            </a>
          </div>
          <h6>Unidad Produccion Bufalina #: 01012025-3527</h6>
        </div>
      </div>
    </div>

    <!-- Card 3 - PORCIGRAM -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
        <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
          <h5 class="vacuno">PORCINO</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../porcino/inventario_porcino.php">
              <img src="./logos/porcino_logo.png" width="50%" height="50px" alt="Porcino Logo">
            </a>
          </div>
          <h6>Unidad Produccion Porcina #: 01012025-3528</h6>
        </div>
      </div>
    </div>

    <!-- Card 4 - AVEGRAM -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
        <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
          <h5 class="vacuno">AVIAR</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../aviar/inventario_aviar.php">
              <img src="./logos/aviar_logo.png" width="50%" height="50px" alt="Avegram Logo">
            </a>
          </div>
          <h6>Unidad Produccion Aviar #: 01012025-3529</h6>
        </div>
      </div>
    </div>

    <!-- Card 5 - EQUINO -->    
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
        <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
          <h5 class="vacuno">EQUINO</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="./inventario_equino.php">
              <img src="./logos/caballo_logo.png" width="50%" height="50px" alt="Equino Logo">
            </a>
          </div>
          <h6>Unidad Produccion Equina #: 01012025-3530</h6>
        </div>
      </div>
    </div>

    <!-- Card 6 - CAPRINO -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
        <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
          <h5 class="vacuno">CAPRINO</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../inventario_caprino.php">
              <img src="./logos/cabra_logo.png" width="50%" height="50px" alt="Cabra Logo">
            </a>
          </div>
          <h6>Unidad Produccion Caprina #: 01012025-3531</h6>
        </div>
      </div>
    </div>

    <!-- Card 7 - OVINO -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
        <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
          <h5 class="vacuno">OVINO</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../ovino/inventario_ovino.php">
              <img src="./logos/oveja_logo.png" width="50%" height="50px" alt="Oveja Logo">
            </a>
          </div>
          <h6>Unidad Produccion Ovina #: 01012025-3532</h6>
        </div>
      </div>
    </div>
    <!-- Card 7 - PECES -->
    <div class="col-6 col-md-3">
      <div class="card">
        <div class="card-body">
        <div class="text-center" style="display: block; align-items: baseline; justify-content: center; gap: 0;">
        <div class="d-flex justify-content-center">
            <h2 class="gana">ANIMAL</h2><h2 style="font-style: italic; font-weight: 600; color: #9dc590;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">IA</h2>
          </div>
          <h5 class="vacuno">CAMARON</h5>
          </div>
          <div class="img-center pt-3">
          </div>
          <div class="logo-img-center pt-3 d-flex justify-content-center">
            <a href="../peces/inventario_peces.php">
              <img src="./logos/camaron_logo.png" width="50%" height="50px" alt="Camaron Logo">
            </a>
          </div>
          <h6>Unidad Produccion Camaronera #: 01012025-3533</h6>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>