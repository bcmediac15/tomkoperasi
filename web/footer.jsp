<%-- 
    Document   : footer
    Created on : Jan 10, 2023, 8:01:35 AM
    Author     : BCMedia
--%>
</div>
<footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer>
</div>
<!-- ./wrapper -->


<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>

<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<script>
  $(document).ready(function(){
    $("#yakin").prop( "checked", false );
    $("#cmdhapus").attr("disabled", "disabled");
    $('#yakin').click(function() { 
      if ($(this).is(':checked')) { 
        $("#cmdhapus").removeAttr('disabled'); 
      }else{
        $("#cmdhapus").attr("disabled", "disabled");
      }
    });
  });
</script>
</body>
</html>