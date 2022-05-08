<footer class="footer">
    <div class="container">
        <div class="row pt-5 pb-5">
            <div class="col-12 mb-5 d-flex flex-wrap justify-content-center justify-content-lg-between">
                <div class="col-12 col-lg-5">
                    <p>Realização</p>
                    <img src="<?php echo get_field('logo_gbr', 'option'); ?>">
                    <p class="mt-5">
                        <a href="https://www.instagram.com/<?php echo get_field('instagram', 'option') ?>" target="_blank" rel="noopener noreferrer"><img class="img-rd inc-track" src="<?php echo get_template_directory_uri(); ?>/assets/img/instagram.png">
                            <?php echo get_field('instagram_gbr', 'option'); ?> </a>

                    </p>
                    <p>
                        <a href="https://api.whatsapp.com/send?phone=55<31995100776" target=" _blank" rel="noopener noreferrer"> <img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/whatsapp.png">
                            (31) 9 9510 0776</a>

                    </p>
                    <p>
                        <a href="mailto:<?php echo get_field('email_gbr', 'option'); ?>"><img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/envelope.png">
                            <?php echo get_field('email_gbr', 'option'); ?></a>

                    </p>
                    <p>
                        <img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/int.png">
                        <?php echo get_field('endereco_gbr', 'option'); ?>
                    </p>
                </div>
                <div class="col-12 col-lg-5">
                    <p>Coordenação de vendas</p>
                    <img src="<?php echo get_field('logo_fort', 'option'); ?>">
                    <p class="mt-13">
                        <a href="https://www.instagram.com/<?php echo get_field('instagram_fort', 'option') ?>" target="_blank" rel="noopener noreferrer"> <img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/instagram.png">
                            <?php echo get_field('instagram_fort', 'option'); ?></a>

                    </p>
                    <p>
                        <a href=" https://api.whatsapp.com/send?phone=55<?php echo preg_replace('/\D/', '', get_field('whatsapp_fort', 'option')); ?>" target=" _blank" rel="noopener noreferrer"> <img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/whatsapp.png"><?php echo get_field('whatsapp_fort', 'option'); ?></a>

                    </p>
                    <p>
                        <a href="mailto:<?php echo get_field('email_fort', 'option'); ?>"> <img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/envelope.png"><?php echo get_field('email_fort', 'option'); ?></a>

                    </p>
                    <p>
                        <img class="img-rd" src="<?php echo get_template_directory_uri(); ?>/assets/img/int.png"><?php echo get_field('endereco_fort', 'option'); ?>
                    </p>
                </div>
            </div>
            <p>
                FORT ESTRATEGIA IMOBILIARIA LTDA. Empresa inscrita no CNPJ sob o nº 42.131.901/0001-62 com sede na Av. Acadêmico Nilo Figueiredo, 2049 – Vila Joana D'arc – Lagoa Santa – MG. Registrado sob a matrícula nº 18.801, do cartório de registro de imóveis de Paraopeba - MG. *Simulação base no preço promocional de R$165.000,00, referente às glebas n° 31 e n° 90. *Consulte condições comerciais. Imagens meramente ilustrativas.
            </p>
            <p>
                **opção com parcelas fixas ***opção de parcelamento com correção de poupança + 0,5% ao mês
            </p>
        </div>
    </div>
    <a href="https://api.whatsapp.com/send?phone=55<?php echo preg_replace('/\D/', '', get_field('whatsapp', 'option')); ?>" class="img-wpp" target="_blank" rel="noopener noreferrer"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/wpp.png"></a>

</footer>