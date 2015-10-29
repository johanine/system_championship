<form role="search">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
    </div>
</form>
<ul class="nav menu">
    
    <!-- BEGIN ITEM DE EQUIPO -->
    <li class="parent ">
        <a href="{{ URL::to( 'equipo/ver');}}">
            <span class="glyphicon glyphicon-user"></span> Equipos <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
        </a>
        <ul class="children collapse" id="sub-item-1">
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> crear equipo
                </a>
            </li>
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
                </a>
            </li>
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
                </a>
            </li>
        </ul>
    </li>
    <!-- END ITEM DE EQUIPO -->
    
    <!-- BEGIN ITEM DE ARBITRO -->
    <li class="parent ">
        <a href="{{ URL::to( 'arbitros/ver');}}">
            <span class="glyphicon glyphicon-user"></span> Arbitros <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
        </a>
        <ul class="children collapse" id="sub-item-2">
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> ingresar arbitros
                </a>
            </li>
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
                </a>
            </li>
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
                </a>
            </li>
        </ul>
    </li>
    <!-- END ITEM DE ARBITRO -->
    
    <!-- BEGIN ITEM DE BASES -->
    <li class="parent ">
        <a href="base/ver">
            <span class="glyphicon glyphicon-book"></span> bases <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
        </a>
        <ul class="children collapse" id="sub-item-3">
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> ingresar bases
                </a>
            </li>
        </ul>
    </li>
    <!-- END ITEM DE BASES -->
    
    <!-- BEGIN ITEM DE CRONOGRAMA -->
    <li class="parent ">
        <a href="cronograma/ver">
            <span class="glyphicon glyphicon-dashboard"></span> cronograma <span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
        </a>
        <ul class="children collapse" id="sub-item-4">
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> ingresar cronograma
                </a>
            </li>
        </ul>
    </li>
    <!-- END ITEM DE CRONOGRAMA -->
    
    <!-- BEGIN ITEM DE PARTIDO -->
    <li class="parent ">
        <a href="partido/listar">
            <span class="glyphicon glyphicon-list"></span> partidos <span data-toggle="collapse" href="#sub-item-5" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
        </a>
        <ul class="children collapse" id="sub-item-5">
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> registrar nuevo partido
                </a>
            </li>
        </ul>
    </li>
    <!-- END ITEM DE PARTIDO -->
    
    
    
    <li class="active"><a href="index.html"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
    <li><a href="widgets.html"><span class="glyphicon glyphicon-th"></span> Widgets</a></li>
    <li><a href="home/medico"><span class="glyphicon glyphicon-th"></span> Medico</a></li>
    <li><a href="charts.html"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
    <li><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li>
    <li><a href="forms.html"><span class="glyphicon glyphicon-pencil"></span> Forms</a></li>
    <li><a href="buttons.html"><span class="glyphicon glyphicon-hand-up"></span> Buttons</a></li>
    <li><a href="panels.html"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li>
    <li class="parent ">
        <a href="#">
            <span class="glyphicon glyphicon-list"></span> Multilevel <span data-toggle="collapse" href="#sub-item-0" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
        </a>
        <ul class="children collapse" id="sub-item-0">
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 1
                </a>
            </li>
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
                </a>
            </li>
            <li>
                <a class="" href="#">
                    <span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
                </a>
            </li>
        </ul>
    </li>
    <li role="presentation" class="divider"></li>
    <li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
</ul>