<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>{title}</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <meta name="theme-color" content="#FEDA3F">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"> <!--black-->    
    
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('favicon.ico') ?>" />

    <link rel="apple-touch-icon" href="<?php echo base_url('assets/images/iconos/apple-icon-60x60.png') ?>">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url('assets/images/iconos/apple-icon-76x76.png') ?>">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo base_url('assets/images/iconos/apple-icon-120x120.png') ?>">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo base_url('assets/images/iconos/apple-icon-152x152.png') ?>">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo base_url('assets/images/iconos/apple-icon-180x180.png') ?>"> 
    
    <link href="<?php echo base_url('assets/css/bootstrap.css') ?>" rel="stylesheet" type="text/css"/>    
    <link href="<?php echo base_url('assets/css/font-awesome.css') ?>" rel="stylesheet" type="text/css"/>
    <link href="<?php echo base_url('assets/js/select2/css/select2.css') ?>" rel="stylesheet" type="text/css"/>
    <link href="<?php echo base_url('assets/css/style.css') ?>" rel="stylesheet">
    
</head>
<body>
<input type="hidden" id="base_url" value="<?php echo base_url(); ?>">
<input type="hidden" id="origen" value="<?php echo $origen; ?>">
<header class="container-fluid p-0 m-0">
    <div class="row p-0 m-0">
        <div class="col-12 col-sm-5 col-md-6">
            <div class="row">
                <div class="col-12 col-sm-6 py-0 px-0 m-0">
                    <a href="https://www.umayor.cl" target="_blank" >
                        <img class="logo-header d-block" src="<?php echo base_url("assets/images/logo-umayor.png");?>" alt="Logo Universidad Mayor"/>
                    </a>
                </div>
                <div class="col-sm-6 hidden-sm-down">
                    
                </div>                
            </div>
        </div>
        <div class="col-3 hidden-sm-up p-0 m-0"></div>
        <div class="col-4 col-sm-7 col-md-6 p-0 m-0 block-right-buttons d-block">
            <div class="row row-right p-0 m-0">
                <div class="col-5 col-sm-1 col-md-1 col-lg-3 p-0 m-0"></div>
                <div class="col-7 col-sm-11 col-md-11 col-lg-9 p-0 m-0 ">
                    <div class="row p-0 m-0">
                        <div class="col-7 col-lg-7 p-0 m-0">
                            <div class="block-information text-uppercase text-center p-0 m-0">
                                Informaciones 600 328 1000 
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>                            
                            </div>
                        </div>
                        <div class="col-5 col-lg-5 p-0 m-0">
                            <a href="#" class="block-formulario-online text-uppercase text-center p-0 m-0" >
                                formulario online
                            </a>
                        </div>                
                    </div>                    
                </div>                
            </div>
        </div>
    </div>
    <div class="row mobile p-0 m-0">
        <div class="col-6 p-0 m-0">
            <div class="block-information text-uppercase text-center p-0 m-0">
                Informaciones 600 328 1000 
                <!--i class="fa fa-exclamation-circle" aria-hidden="true"></i-->
            </div>            
        </div>        
        <div class="col-6  p-0 m-0">
            <a href="#" class="block-formulario-online text-uppercase text-center p-0 m-0" >
                formulario online
            </a>            
        </div>
    </div>
</header>