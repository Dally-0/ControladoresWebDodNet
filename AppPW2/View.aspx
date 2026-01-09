<%@ Page Title="View ejemplo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="AppPW2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        
        <div class="container mt-4 mb-4">
            
            <h2 class="mb-4 text-white fw-bold"><i class="bi bi-layers-half me-2"></i> Control MultiView & View</h2>

            <div class="alert shadow-lg border-0 text-white px-4 py-4" role="alert" 
                 style="background: linear-gradient(90deg, #0f2027, #203a43, #2c5364); border-radius: 15px;">
                
                <h4 class="alert-heading fw-bold mb-3">
                    <i class="bi bi-lightbulb-fill text-info me-2"></i> ¿Qué son y por qué van juntos?
                </h4>
                
                <hr class="bg-light opacity-25">
                
                <div class="row g-4">
                    <div class="col-md-6 border-end border-secondary pe-md-4">
                        <div class="mb-3">
                            <h5 class="fw-bold text-info"><i class="bi bi-box-seam me-2"></i> MultiView (El Contenedor)</h5>
                            <p class="small opacity-75 text-justify mb-0">
                                Actúa como un gestor o "padre". Su única función es decidir <strong>cuál</strong> de sus vistas hijas se muestra en pantalla basándose en el índice <code>ActiveViewIndex</code>. Es invisible por sí mismo.
                            </p>
                        </div>

                        <div>
                            <h5 class="fw-bold text-info"><i class="bi bi-file-earmark me-2"></i> View (La Vista)</h5>
                            <p class="small opacity-75 text-justify mb-0">
                                Es un contenedor agrupador (como un Panel) donde colocas tus controles (botones, textos). Por sí solo no tiene inteligencia para mostrarse u ocultarse.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-6 ps-md-4 d-flex flex-column justify-content-between">
                        <div>
                            <h5 class="fw-bold text-white mb-3">¿Por qué son inseparables?</h5>
                            <ul class="small opacity-75 ps-3 mb-4">
                                <li class="mb-3">
                                    <strong>Dependencia de Visibilidad:</strong> Un <code>View</code> no sabe ocultarse solo. Necesita que el <code>MultiView</code> actúe como un "interruptor" para encenderlo o apagarlo.
                                </li>
                                <li>
                                    <strong>Persistencia (ViewState):</strong> Al vivir todos en la misma página física, los datos que escribes en una Vista <strong>no se borran</strong> al cambiar a otra.
                                </li>
                            </ul>
                        </div>
                        
                        <div class="p-3 rounded text-center text-dark fw-bold shadow-sm" 
                             style="background: linear-gradient(45deg, #0dcaf0, #0aa1c0);">
                            <i class="bi bi-info-circle-fill me-1"></i> Analogía: <span class="text-white-50">MultiView es el</span> Proyector 📽️ <span class="text-white-50">y los Views son las</span> Diapositivas 🎞️.
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="container d-flex justify-content-center mb-5">
            
            <div class="card shadow-lg border-0 text-white" 
                 style="width: 100%; max-width: 600px; background: linear-gradient(90deg, #0f2027, #203a43, #2c5364);">
                
                <div class="card-header bg-transparent border-secondary text-center py-3">
                    <h4 class="mb-0 fw-bold text-info"><i class="bi bi-clipboard-data me-2"></i>Encuesta de Desarrollo</h4>
                </div>

                <div class="card-body p-4">
                    
                    <asp:UpdatePanel ID="upEncuesta" runat="server">
                        <ContentTemplate>
                            <%-- Multiview --%>
                            <asp:MultiView ID="mvEncuesta" runat="server" ActiveViewIndex="0">
                                <%-- View  1 --%>
                                <asp:View ID="ViewDatos" runat="server">
                                    <h5 class="card-title text-center mb-4 text-white-50">Paso 1: Datos Generales</h5>
                                    <div class="mb-4">
                                        <label class="form-label text-white">Nombre Completo:</label>
                                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control bg-dark text-white border-secondary" placeholder="Escribe tu nombre aquí..."></asp:TextBox>
                                    </div>
                                    <div class="d-grid mt-4">
                                        <asp:Button ID="btnComenzar" runat="server" Text="Comenzar Encuesta" CssClass="btn btn-info fw-bold text-white shadow-sm" OnClick="btnComenzar_Click" />
                                    </div>
                                </asp:View>
                                

                                 <%-- View  2 --%>
                                <asp:View ID="ViewPreguntas1" runat="server">
                                    <h5 class="text-info mb-4">Paso 2: Tu Perfil</h5>
                                    <div class="mb-4">
                                        <label class="form-label fw-bold text-white">1. ¿Cuál es tu nivel actual en programación?</label>
                                        <asp:DropDownList ID="ddlNivel" runat="server" CssClass="form-select bg-dark text-white border-secondary">
                                            <asp:ListItem Text="Principiante (Estudiante)" Value="Principiante"></asp:ListItem>
                                            <asp:ListItem Text="Junior" Value="Junior"></asp:ListItem>
                                            <asp:ListItem Text="Semi-Senior" Value="Semi-Senior"></asp:ListItem>
                                            <asp:ListItem Text="Senior" Value="Senior"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label fw-bold text-white">2. ¿Qué sistema operativo prefieres?</label>
                                        <div class="border border-secondary rounded p-2" style="background-color: rgba(0, 0, 0, 0.2);">
                                            <asp:RadioButtonList ID="rblOS" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="radio-spacing text-white">
                                                <asp:ListItem Text="Windows" Value="Win" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Linux" Value="Linux"></asp:ListItem>
                                                <asp:ListItem Text="MacOS" Value="Mac"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label fw-bold text-white">3. ¿Prefieres Backend o Frontend?</label>
                                        <div class="border border-secondary rounded p-2" style="background-color: rgba(0, 0, 0, 0.2);">
                                            <asp:RadioButtonList ID="rblPreferencia" runat="server" RepeatLayout="Flow" CssClass="radio-spacing-vertical text-white">
                                                <asp:ListItem Text="Solo Backend" Value="Back"></asp:ListItem>
                                                <asp:ListItem Text="Solo Frontend" Value="Front"></asp:ListItem>
                                                <asp:ListItem Text="Full Stack (Ambos)" Value="Full"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                    <hr class="border-secondary" />
                                    <div class="d-flex justify-content-between">
                                        <asp:Button ID="btnAtrasDatos" runat="server" Text="&lt; Atrás" CssClass="btn btn-outline-light" OnClick="btnAtrasDatos_Click" />
                                        <asp:Button ID="btnSiguiente1" runat="server" Text="Siguiente &gt;" CssClass="btn btn-info text-white fw-bold" OnClick="btnSiguiente1_Click" />
                                    </div>
                                </asp:View>
                                 <%-- View  3 --%>
                                <asp:View ID="ViewPreguntas2" runat="server">
                                    <h5 class="text-info mb-4">Paso 3: Intereses</h5>
                                    <div class="mb-4">
                                        <label class="form-label fw-bold text-white">4. ¿Qué lenguajes te gusta usar?</label>
                                        <div class="border border-secondary rounded p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                                            <asp:CheckBoxList ID="cblLenguajes" runat="server" RepeatColumns="2" RepeatLayout="Table" CssClass="table table-borderless mb-0 text-white">
                                                <asp:ListItem Value="C#">C# / .NET</asp:ListItem>
                                                <asp:ListItem Value="Java">Java</asp:ListItem>
                                                <asp:ListItem Value="JS">JavaScript</asp:ListItem>
                                                <asp:ListItem Value="Py">Python</asp:ListItem>
                                                <asp:ListItem Value="PHP">PHP</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label fw-bold text-white">5. ¿Con qué frecuencia programas?</label>
                                        <asp:DropDownList ID="ddlFrecuencia" runat="server" CssClass="form-select bg-dark text-white border-secondary">
                                            <asp:ListItem>Todos los días</asp:ListItem>
                                            <asp:ListItem>3-4 veces por semana</asp:ListItem>
                                            <asp:ListItem>Solo fines de semana</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <hr class="border-secondary" />
                                    <div class="d-flex justify-content-between">
                                        <asp:Button ID="btnAtras1" runat="server" Text="&lt; Volver" CssClass="btn btn-outline-light" OnClick="btnAtras1_Click" />
                                        <asp:Button ID="btnFinalizar" runat="server" Text="Enviar Encuesta" CssClass="btn btn-success fw-bold shadow-sm" OnClick="btnFinalizar_Click" />
                                    </div>
                                </asp:View>
                                 <%-- View  4 --%>
                                <asp:View ID="ViewResultados" runat="server">
                                    <div class="text-center">
                                        <h2 class="text-info mb-3">¡Encuesta Finalizada! <i class="bi bi-check-circle-fill"></i></h2>
                                        <div class="alert border border-secondary shadow-lg text-start text-white" style="background-color: rgba(0, 0, 0, 0.3);">
                                            <h4 class="alert-heading text-info">Resumen para: <asp:Label ID="lblNombreUsuario" runat="server" CssClass="text-white fw-bold"></asp:Label></h4>
                                            <hr class="border-secondary" />
                                            <asp:Label ID="lblResumen" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="mt-4">
                                            <asp:Button ID="btnReiniciar" runat="server" Text="Hacer Nueva Encuesta" CssClass="btn btn-outline-info rounded-pill px-4" OnClick="btnReiniciar_Click" />
                                        </div>
                                    </div>
                                </asp:View>

                            </asp:MultiView>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                    </div>
            </div>
        </div>

    </main>
   

</asp:Content>