<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppPW2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        
        <div class="text-white rounded-3 shadow mb-5" 
             style="background: linear-gradient(135deg, #320a5c, #512bd4, #9d4edd);">
            <div class="container py-5 px-4">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <h1 class="display-4 fw-bold" style="color: #e0cffc;">Controles de Servidor <span class="text-white">ASP.NET</span></h1>
                        <p class="lead my-3 opacity-75">
                            Los <strong>Web Server Controls</strong> son el núcleo de la interfaz en ASP.NET Web Forms. 
                            Son componentes encapsulados que se ejecutan en el servidor (Backend) y renderizan HTML estándar.
                        </p>
                        
                        <div class="d-grid gap-2 d-md-block mt-4">
                            <a href="#demos" class="btn fw-bold text-dark px-4 rounded-pill shadow-sm" 
                               style="background-color: #e0cffc; border: none;">
                                <i class="bi bi-arrow-down-circle me-2"></i>Ver Ejemplos
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 text-center d-none d-lg-block">
                        <i class="bi bi-cpu-fill" style="font-size: 8rem; opacity: 0.3; color: #d8b4fe;"></i>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mb-5">
            <h3 class="text-center mb-4 fw-bold" style="color: #4c1d95;">Clasificación de Controles</h3>
            <p class="text-center text-muted mb-5">ASP.NET organiza sus controles en familias según su funcionalidad:</p>

            <div class="row g-4">
                
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0 shadow-sm hover-effect">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <div class="text-white rounded-circle p-2 me-3" style="background-color: #6d28d9;">
                                    <i class="bi bi-ui-checks"></i>
                                </div>
                                <h5 class="card-title mb-0" style="color: #4c1d95;">Estándar</h5>
                            </div>
                            <p class="card-text small text-muted">Elementos básicos de interfaz.</p>
                            <ul class="list-unstyled small text-secondary">
                                <li><code>TextBox</code>, <code>Button</code></li>
                                <li><code>Label</code>, <code>Image</code></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0 shadow-sm hover-effect">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <div class="text-white rounded-circle p-2 me-3" style="background-color: #db2777;">
                                    <i class="bi bi-shield-check"></i>
                                </div>
                                <h5 class="card-title mb-0" style="color: #831843;">Validación</h5>
                            </div>
                            <p class="card-text small text-muted">Verifican la entrada de datos.</p>
                            <ul class="list-unstyled small text-secondary">
                                <li><code>RequiredFieldValidator</code></li>
                                <li><code>RegularExpressionValidator</code></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0 shadow-sm hover-effect">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <div class="text-white rounded-circle p-2 me-3" style="background-color: #8b5cf6;">
                                    <i class="bi bi-signpost-split"></i>
                                </div>
                                <h5 class="card-title mb-0" style="color: #5b21b6;">Navegación</h5>
                            </div>
                            <p class="card-text small text-muted">Gestionan el movimiento por el sitio.</p>
                            <ul class="list-unstyled small text-secondary">
                                <li><code>MultiView</code>, <code>Menu</code></li>
                                <li><code>TreeView</code></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div> 
        </div>

        <div id="demos" class="container mb-5">
            <div class="p-5 rounded-3 shadow-sm" style="background-color: #fcfaff; border-left: 5px solid #7c3aed;">
                
                <h3 class="fw-bold mb-4" style="color: #5b21b6;">
                    <i class="bi bi-laptop me-2"></i>Demos Interactivos
                </h3>
                <p class="mb-4 text-muted">Navega a las páginas de demostración para ver los controles en acción:</p>

                <div class="row g-3">
                    
                    <div class="col-md-4">
                        <asp:HyperLink ID="btnHyperlink" runat="server" NavigateUrl="~/Hyperlink" 
                            CssClass="btn w-100 py-3 text-white d-flex align-items-center justify-content-center shadow-sm btn-vs-purple">
                            <i class="bi bi-link-45deg fs-4 me-2"></i>
                            <span class="fw-bold">Ir a HyperLink</span>
                        </asp:HyperLink>
                    </div>

                    <div class="col-md-4">
                        <asp:HyperLink ID="btnView" runat="server" NavigateUrl="~/View" 
                            CssClass="btn w-100 py-3 text-white d-flex align-items-center justify-content-center shadow-sm btn-vs-purple">
                            <i class="bi bi-layers fs-4 me-2"></i>
                            <span class="fw-bold">Ir a View / MultiView</span>
                        </asp:HyperLink>
                    </div>

                    <div class="col-md-4">
                        <asp:HyperLink ID="btnGridView" runat="server" NavigateUrl="~/GridView" 
                            CssClass="btn w-100 py-3 text-white d-flex align-items-center justify-content-center shadow-sm btn-vs-purple">
                            <i class="bi bi-table fs-4 me-2"></i>
                            <span class="fw-bold">Ir a GridView</span>
                        </asp:HyperLink>
                    </div>

                </div>
            </div>
        </div>

    </main>

    <style>
        /* Estilo base para los botones de navegación - Morado Oscuro a Claro */
        .btn-vs-purple {
            background: linear-gradient(90deg, #4c1d95, #6d28d9, #7c3aed); 
            border: none;
            transition: all 0.3s ease;
        }

        /* Efecto Hover: Se pone más brillante (Lila neón) */
        .btn-vs-purple:hover {
            background: linear-gradient(90deg, #7c3aed, #8b5cf6, #a78bfa); 
            transform: translateY(-3px); 
            color: white !important;
            box-shadow: 0 4px 15px rgba(124, 58, 237, 0.4) !important; /* Sombra lila brillante */
        }

        /* Efecto Hover para las tarjetas */
        .hover-effect {
            transition: transform 0.2s;
        }
        .hover-effect:hover {
            transform: translateY(-5px);
            border-bottom: 3px solid #d8b4fe !important; /* Línea inferior lila al pasar el mouse */
        }
    </style>

</asp:Content>