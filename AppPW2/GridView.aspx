<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="AppPW2.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4 mb-5">

        <h2 class="mb-4 text-white fw-bold"><i class="bi bi-grid-3x3-gap-fill me-2"></i> Control GridView</h2>

        <div class="alert shadow-lg border-0 text-white px-4 py-4" role="alert" 
             style="background: linear-gradient(90deg, #1c2833, #2e4053, #34495e); border-radius: 15px;">
            
            <h4 class="alert-heading fw-bold mb-3">
                <i class="bi bi-lightbulb-fill text-info me-2"></i> ¿Qué es y cómo funciona?
            </h4>
            
            <hr class="bg-light opacity-25">
            
            <div class="row g-4">
                <div class="col-md-6 border-end border-secondary pe-md-4">
                    <div class="mb-3">
                        <h5 class="fw-bold text-info"><i class="bi bi-table me-2"></i> Definición</h5>
                        <p class="small opacity-75 text-justify mb-0">
                            El <strong>GridView</strong> es uno de los controles más potentes de ASP.NET Web Forms. Su función principal es conectar una fuente de datos (como una Lista en C# o una Base de Datos SQL) y transformarla automáticamente en una <strong>tabla HTML</strong> visible para el usuario.
                        </p>
                    </div>
                    <div>
                        <p class="small opacity-75 text-justify mb-0">
                            <i class="bi bi-check2-circle text-success"></i> Permite operaciones complejas como <strong>Paginación</strong>, <strong>Ordenamiento</strong> y <strong>Edición</strong> con muy poco código.
                        </p>
                    </div>
                </div>

                <div class="col-md-6 ps-md-4">
                    <h5 class="fw-bold text-white mb-3">El Ciclo de Vida (DataBinding)</h5>
                    <ul class="list-unstyled small opacity-75">
                        <li class="mb-3 d-flex">
                            <i class="bi bi-1-circle-fill text-info me-2 lead"></i>
                            <span>
                                <strong>Origen (DataSource):</strong> En el "Backend" (C#), asignamos una colección de datos (ej. <code>List&lt;Estudiante&gt;</code>) a la propiedad <code>DataSource</code> del control.
                            </span>
                        </li>
                        <li class="mb-3 d-flex">
                            <i class="bi bi-2-circle-fill text-info me-2 lead"></i>
                            <span>
                                <strong>Enlace (DataBind):</strong> Al ejecutar el método <code>.DataBind()</code>, el control recorre cada objeto de la lista.
                            </span>
                        </li>
                        <li class="d-flex">
                            <i class="bi bi-3-circle-fill text-info me-2 lead"></i>
                            <span>
                                <strong>Renderizado (HTML):</strong> Por cada objeto, el GridView genera dinámicamente una etiqueta <code>&lt;tr&gt;</code> (fila) y llena los <code>&lt;td&gt;</code> (celdas) con los valores correspondientes.
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="card shadow-lg border-0 text-white mt-5" 
             style="background: linear-gradient(90deg, #1c2833, #2e4053, #34495e);">
            
            <div class="card-header bg-transparent border-secondary py-3 d-flex align-items-center">
                <i class="bi bi-people-fill text-info fs-3 me-3"></i>
                <div>
                    <h4 class="card-title mb-0 fw-bold">Listado de Estudiantes</h4>
                    <small class="text-white-50">Datos renderizados dinámicamente desde C#</small>
                </div>
            </div>

            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" 
                        CssClass="table table-hover mb-0 custom-table text-white" 
                        AutoGenerateColumns="False" 
                        GridLines="None" 
                        Width="100%">
                        
                        <Columns>
                            <%-- Columna ID --%>
                            <asp:BoundField DataField="ID" HeaderText="ID">
                                <ItemStyle Width="50px" CssClass="text-center fw-bold text-white-50" />
                                <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>

                            <%-- Columna Nombre --%>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre Completo">
                                <ItemStyle CssClass="fw-semibold" />
                            </asp:BoundField>

                            <%-- Columna Carrera --%>
                            <asp:BoundField DataField="Carrera" HeaderText="Carrera" />

                            <%-- Columna Promedio --%>
                            <asp:TemplateField HeaderText="Promedio">
                                <ItemTemplate>
                                    <%-- Cambié el badge a un tono amarillo/dorado para que resalte más en este nuevo fondo --%>
                                    <span class="badge bg-warning text-dark fw-bold">
                                        <%# Eval("Promedio", "{0:F1}") %>
                                    </span>
                                </ItemTemplate>
                                <ItemStyle Width="100px" CssClass="text-center" />
                                <HeaderStyle CssClass="text-center" />
                            </asp:TemplateField>
                        </Columns>

                        <HeaderStyle CssClass="bg-dark text-info text-uppercase small border-bottom border-secondary" Height="50px" />
                        
                        <EmptyDataTemplate>
                            <div class="text-center py-5">
                                <i class="bi bi-folder-x text-muted" style="font-size: 3rem;"></i>
                                <p class="mt-2 text-white-50">No se encontraron registros.</p>
                            </div>
                        </EmptyDataTemplate>

                    </asp:GridView>
                </div>
            </div>
            
            <div class="card-footer bg-transparent border-secondary text-end text-white-50 small py-3">
                <i class="bi bi-database-check me-1"></i> Total de registros cargados: 5
            </div>
        </div>

    </div>




    <style>
        .custom-table {
            --bs-table-bg: transparent; 
            --bs-table-color: #fff;
            --bs-table-hover-bg: rgba(255, 255, 255, 0.1);
            --bs-table-hover-color: #fff;
            border-color: rgba(255,255,255,0.1);
        }
        .custom-table td, .custom-table th {
            vertical-align: middle;
            padding: 1rem;
        }
    </style>

</asp:Content>