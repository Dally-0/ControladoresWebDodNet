<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hyperlink.aspx.cs" Inherits="AppPW2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4 mb-5">

        <h2 class="mb-4 text-white fw-bold"><i class="bi bi-link-45deg me-2"></i> Control HyperLink</h2>

        <div class="alert shadow-lg border-0 text-white px-4 py-4" role="alert" 
             style="background: linear-gradient(90deg, #0f2027, #203a43, #2c5364); border-radius: 15px;">
            
            <h4 class="alert-heading fw-bold mb-3">
                <i class="bi bi-lightbulb-fill text-info me-2"></i> ¿Qué es y cómo funciona?
            </h4>
            
            <hr class="bg-light opacity-25">
            
            <div class="row g-4">
                <div class="col-md-6 border-end border-secondary pe-md-4">
                    <div class="mb-3">
                        <h5 class="fw-bold text-info"><i class="bi bi-code-slash me-2"></i> Definición</h5>
                        <p class="small opacity-75 text-justify mb-0">
                            El control <strong>HyperLink</strong> es la versión de servidor de la etiqueta HTML <code>&lt;a&gt;</code>. Su función es crear enlaces de navegación hacia otras páginas de tu sitio o hacia sitios web externos.
                        </p>
                    </div>
                    <div>
                        <p class="small opacity-75 text-justify mb-0">
                            A diferencia de un botón, el HyperLink <strong>no provoca un PostBack</strong> (no recarga la página enviando datos), simplemente navega al destino inmediatamente.
                        </p>
                    </div>
                </div>

                <div class="col-md-6 ps-md-4">
                    <h5 class="fw-bold text-white mb-3">Propiedades Principales</h5>
                    <ul class="list-unstyled small opacity-75">
                        <li class="mb-3 d-flex">
                            <i class="bi bi-check-circle-fill text-info me-2"></i>
                            <span>
                                <strong>NavigateUrl:</strong> Define la dirección a donde ir (ej. <code>~/View.aspx</code> o <code>http://google.com</code>).
                            </span>
                        </li>
                        <li class="mb-3 d-flex">
                            <i class="bi bi-check-circle-fill text-info me-2"></i>
                            <span>
                                <strong>Text:</strong> El texto visible del enlace.
                            </span>
                        </li>
                        <li class="d-flex">
                            <i class="bi bi-check-circle-fill text-info me-2"></i>
                            <span>
                                <strong>Target:</strong> Define dónde abrir el enlace (ej. <code>_blank</code> para abrir en nueva pestaña).
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="card shadow-lg border-0 text-white mt-5" 
             style="background: linear-gradient(90deg, #0f2027, #203a43, #2c5364);">
            
            <div class="card-header bg-transparent border-secondary py-3 text-center">
                <h4 class="card-title mb-0 fw-bold text-info"><i class="bi bi-cursor-fill me-2"></i>Ejemplos de Uso</h4>
            </div>

            <div class="card-body p-4">
                <div class="row text-center g-4">
                    
                    <div class="col-md-4">
                        <div class="p-3 border border-secondary rounded h-100" style="background-color: rgba(0,0,0,0.2);">
                            <h5 class="text-white mb-3">1. Estilo Botón</h5>
                            <p class="small text-white-50 mb-3">Podemos usar clases CSS de Bootstrap para que parezca un botón.</p>
                            
                            <asp:HyperLink ID="lnkBoton" runat="server" 
                                NavigateUrl="~/View.aspx" 
                                CssClass="btn btn-outline-info w-100">
                                <i class="bi bi-eye me-2"></i> Ir a View.aspx
                            </asp:HyperLink>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="p-3 border border-secondary rounded h-100" style="background-color: rgba(0,0,0,0.2);">
                            <h5 class="text-white mb-3">2. Enlace con Imagen</h5>
                            <p class="small text-white-50 mb-3">Usando la propiedad <code>ImageUrl</code> el enlace se vuelve una imagen.</p>
                            
                            <asp:HyperLink ID="lnkImagen" runat="server" 
                                NavigateUrl="https://github.com" 
                                Target="_blank"
                                ImageUrl="https://placehold.co/300x100/203a43/0dcaf0?text=GITHUB+Click+Aqui"
                                ToolTip="Clic para ir a GitHub">
                            </asp:HyperLink>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="p-3 border border-secondary rounded h-100" style="background-color: rgba(0,0,0,0.2);">
                            <h5 class="text-white mb-3">3. Nueva Pestaña</h5>
                            <p class="small text-white-50 mb-3">Usando <code>Target="_blank"</code> para no cerrar tu sitio.</p>
                            
                            <asp:HyperLink ID="lnkGoogle" runat="server" 
                                NavigateUrl="https://www.google.com" 
                                Target="_blank" 
                                CssClass="link-info text-decoration-none fs-5">
                                Ir a Google <i class="bi bi-box-arrow-up-right ms-1 small"></i>
                            </asp:HyperLink>
                        </div>
                    </div>

                </div>
            </div>
            
            <div class="card-footer bg-transparent border-secondary text-center text-white-50 small py-3">
                Nota: Los HyperLinks son ideales para menús y redirecciones simples.
            </div>
        </div>

    </div>

</asp:Content>
