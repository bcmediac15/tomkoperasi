<%
String pg=(String)session.getAttribute("pg");
String LV = (String)session.getAttribute("level");
String[] navi={"","","","","","",""};
switch(pg){
	case "anggota":
    navi[1] =" active";
	    break;
	case "kasmasuk":
    navi[2] =" active";
	    break;
	case "kaskeluar":
    navi[3] =" active";
	    break;
	case "pinjaman":
    navi[4] =" active";
    break;
	case "petugas":
    navi[5] =" active";
    break;
  case "rekeninginduk":
    navi[6] =" active";
    break;
	default:
    navi[0] =" active";
	    break;
    }
%>  
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.jsp" class="brand-link">
      <img src="dist/img/koperasi.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">appKOP</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user1-128x128.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="profile.jsp?id=1" class="d-block"><%=session.getAttribute("username")%></a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="index.jsp" class="nav-link<%=navi[0]%>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
<%
if(LV.equals("Operator")){
%>
          <li class="nav-item">
            <a href="dashboard.jsp?act=anggota" class="nav-link<%=navi[1]%>">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Anggota
                
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="dashboard.jsp?act=kasmasuk" class="nav-link<%=navi[2]%>">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Jurnal Pemasukan Kas
              </p>
            </a>
          </li>
	  <li class="nav-item">
            <a href="dashboard.jsp?act=kaskeluar" class="nav-link<%=navi[3]%>">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Jurnal Pengeluaran Kas
                
              </p>
            </a>
          </li>
    <li class="nav-item">
            <a href="dashboard.jsp?act=pinjaman" class="nav-link<%=navi[4]%>">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Pinjaman
                
              </p>
            </a>
          </li>
<%
}
if(LV.equals("Admin")){
%>
	  <li class="nav-item">
            <a href="dashboard.jsp?act=petugas" class="nav-link<%=navi[5]%>">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Petugas
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="dashboard.jsp?act=rekeninginduk" class="nav-link<%=navi[6]%>">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Rekening Induk
              </p>
            </a>
          </li>
<%
}
if(LV.equals("Manager")){
%>
<li class="nav-item">
  <a href="dashboard.jsp?act=nilai" class="nav-link<%=navi[6]%>">
    <i class="nav-icon fas fa-th"></i>
    <p>
      Nilai
    </p>
  </a>
</li>
<%
}
%>
	  <li class="nav-item">
            <a href="logout.jsp" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>Log Out</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">