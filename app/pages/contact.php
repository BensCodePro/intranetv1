<?php include '../../app/pages/includes/header.php'; ?>
    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('../../public/assets/images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Nuestro Contacto</h2>
              <p>Envia  tus mensajes en neustro Sistema Intranet para encontrar informaciones sobre la comunidad educativa.</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="home.php">Inicio</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span><a href="contact.php" class="current">Contacto</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="fname">Nombre</label>
                    <input type="text" id="fname" class="form-control form-control-lg">
                </div>
                <div class="col-md-6 form-group">
                    <label for="lname">Apellidos</label>
                    <input type="text" id="lname" class="form-control form-control-lg">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="eaddress">Correo Electronico</label>
                    <input type="text" id="eaddress" class="form-control form-control-lg">
                </div>
                <div class="col-md-6 form-group">
                    <label for="tel">Teléfono</label>
                    <input type="text" id="tel" class="form-control form-control-lg">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 form-group">
                    <label for="message">Mensaje</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <input type="submit" value="Enviarmensaje" class="btn btn-primary btn-lg px-5">
                </div>
            </div>
        </div>
    </div>

        
<!--Our vision start here -->

<?php include '../../app/pages/includes/ourvision.php'; ?>

<!--Our vision End here -->

    

    
      <?php include '../../app/pages/includes/footer.php'; ?>
      

   