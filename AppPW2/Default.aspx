<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppPW2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        
        <div class="bg-dark text-white rounded-3 shadow mb-5" style="background: linear-gradient(45deg, #1a2980, #26d0ce);">
            <div class="container py-5 px-4">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <h1 class="display-4 fw-bold">Controles de Servidor ASP.NET</h1>
                        <p class="lead my-3">
                            Los <strong>Web Server Controls</strong> son el núcleo de la interfaz en ASP.NET Web Forms. 
                            Son componentes encapsulados que se ejecutan en el servidor (Backend) y renderizan HTML estándar 
                            para el cliente, gestionando automáticamente el estado (ViewState) y los eventos.
                        </p>
                        <p class="opacity-75">
                            Permiten separar la lógica de negocio (C#) de la presentación, facilitando el desarrollo 
                            de aplicaciones robustas y escalables.
                        </p>
                    </div>
                    <div class="col-lg-4 text-center d-none d-lg-block">
                        <i class="bi bi-cpu-fill" style="font-size: 8rem; opacity: 0.3;"></i>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mb-5">
            <h3 class="text-center mb-4 text-primary fw-bold">Clasificación de Controles Disponibles</h3>
            <p class="text-center text-muted mb-5">ASP.NET organiza sus controles en familias según su funcionalidad:</p>

            <div class="row g-4">
                
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <div class="bg-primary text-white rounded-circle p-2 me-3"><i class="bi bi-ui-checks"></i></div>
                                <h5 class="card-title mb-0">Controles Estándar</h5>
                            </div>
                            <p class="card-text small text-muted">Elementos básicos de interfaz para entrada y visualización.</p>
                            <ul class="list-unstyled small text-secondary">
                                <li><code>&lt;asp:TextBox&gt;</code>, <code>&lt;asp:Button&gt;</code></li>
                                <li><code>&lt;asp:Label&gt;</code>, <code>&lt;asp:Image&gt;</code></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <div class="bg-danger text-white rounded-circle p-2 me-3"><i class="bi bi-shield-check"></i></div>
                                <h5 class="card-title mb-0">Validación</h5>
                            </div>
                            <p class="card-text small text-muted">Verifican la entrada de datos antes de procesar.</p>
                            <ul class="list-unstyled small text-secondary">
                                <li><code>RequiredFieldValidator</code></li>
                                <li><code>RegularExpressionValidator</code></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <div class="bg-warning text-white rounded-circle p-2 me-3"><i class="bi bi-signpost-split"></i></div>
                                <h5 class="card-title mb-0">Navegación</h5>
                            </div>
                            <p class="card-text small text-muted">Gestionan el movimiento por el sitio.</p>
                            <ul class="list-unstyled small text-secondary">
                                <li><strong><code>MultiView</code> & <code>View</code></strong></li>
                                <li><code>Menu</code>, <code>TreeView</code></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div> </div>

       


    </main>

</asp:Content>