<%@ Page Title="View ejemplo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="AppPW2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <main>
        <div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">
            
            <div class="card shadow-lg" style="width: 100%; max-width: 600px;">
                
                <div class="card-header bg-primary text-white text-center">
                    <h4 class="mb-0">Encuesta de Desarrollo</h4>
                </div>

                <div class="card-body p-4">
                    
                    <asp:MultiView ID="mvEncuesta" runat="server" ActiveViewIndex="0">

                        <asp:View ID="ViewDatos" runat="server">
                            <h5 class="card-title text-center mb-4">Paso 1: Datos Generales</h5>

                            <div class="mb-3">
                                <label class="form-label">Nombre Completo:</label>
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Escribe tu nombre aquí..."></asp:TextBox>
                            </div>

                            <div class="d-grid mt-4">
                                <asp:Button ID="btnComenzar" runat="server" Text="Comenzar Encuesta" CssClass="btn btn-primary btn-lg" OnClick="btnComenzar_Click" />
                            </div>
                        </asp:View>

                        <asp:View ID="ViewPreguntas1" runat="server">
                            <h5 class="text-primary mb-3">Paso 2: Tu Perfil</h5>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">1. ¿Cuál es tu nivel actual en programación?</label>
                                <asp:DropDownList ID="ddlNivel" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Principiante (Estudiante)" Value="Principiante"></asp:ListItem>
                                    <asp:ListItem Text="Junior" Value="Junior"></asp:ListItem>
                                    <asp:ListItem Text="Semi-Senior" Value="Semi-Senior"></asp:ListItem>
                                    <asp:ListItem Text="Senior" Value="Senior"></asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">2. ¿Qué sistema operativo prefieres?</label>
                                <div class="border rounded p-2 bg-light">
                                    <asp:RadioButtonList ID="rblOS" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="radio-spacing">
                                        <asp:ListItem Text="Windows" Value="Win" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Linux" Value="Linux"></asp:ListItem>
                                        <asp:ListItem Text="MacOS" Value="Mac"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">3. ¿Prefieres Backend o Frontend?</label>
                                <div class="border rounded p-2">
                                    <asp:RadioButtonList ID="rblPreferencia" runat="server" RepeatLayout="Flow" CssClass="radio-spacing-vertical">
                                        <asp:ListItem Text="Solo Backend" Value="Back"></asp:ListItem>
                                        <asp:ListItem Text="Solo Frontend" Value="Front"></asp:ListItem>
                                        <asp:ListItem Text="Full Stack (Ambos)" Value="Full"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>

                            <hr />
                            <div class="d-flex justify-content-between">
                                <asp:Button ID="btnAtrasDatos" runat="server" Text="&lt; Atrás" CssClass="btn btn-secondary" OnClick="btnAtrasDatos_Click" />
                                <asp:Button ID="btnSiguiente1" runat="server" Text="Siguiente &gt;" CssClass="btn btn-primary" OnClick="btnSiguiente1_Click" />
                            </div>
                        </asp:View>

                        <asp:View ID="ViewPreguntas2" runat="server">
                            <h5 class="text-primary mb-3">Paso 3: Intereses</h5>

                            <div class="mb-3">
                                <label class="form-label fw-bold">4. ¿Qué lenguajes te gusta usar?</label>
                                <div class="border rounded p-3 bg-light">
                                    <asp:CheckBoxList ID="cblLenguajes" runat="server" RepeatColumns="2" RepeatLayout="Table" CssClass="table table-borderless mb-0">
                                        <asp:ListItem Value="C#">C# / .NET</asp:ListItem>
                                        <asp:ListItem Value="Java">Java</asp:ListItem>
                                        <asp:ListItem Value="JS">JavaScript</asp:ListItem>
                                        <asp:ListItem Value="Py">Python</asp:ListItem>
                                        <asp:ListItem Value="PHP">PHP</asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">5. ¿Con qué frecuencia programas?</label>
                                <asp:DropDownList ID="ddlFrecuencia" runat="server" CssClass="form-select">
                                    <asp:ListItem>Todos los días</asp:ListItem>
                                    <asp:ListItem>3-4 veces por semana</asp:ListItem>
                                    <asp:ListItem>Solo fines de semana</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <hr />
                            <div class="d-flex justify-content-between">
                                <asp:Button ID="btnAtras1" runat="server" Text="&lt; Volver" CssClass="btn btn-secondary" OnClick="btnAtras1_Click" />
                                <asp:Button ID="btnFinalizar" runat="server" Text="Enviar Encuesta" CssClass="btn btn-success fw-bold" OnClick="btnFinalizar_Click" />
                            </div>
                        </asp:View>

                        <asp:View ID="ViewResultados" runat="server">
                            <div class="text-center">
                                <h2 class="text-success mb-3">¡Encuesta Finalizada! </h2>
                                
                                <div class="alert alert-light border shadow-sm text-start">
                                    <h4 class="alert-heading">Resumen para: <asp:Label ID="lblNombreUsuario" runat="server" CssClass="text-primary fw-bold"></asp:Label></h4>
                                    <hr />
                                    <asp:Label ID="lblResumen" runat="server" Text=""></asp:Label>
                                </div>
                                
                                <div class="mt-4">
                                    <asp:Button ID="btnReiniciar" runat="server" Text="Hacer Nueva Encuesta" CssClass="btn btn-outline-primary" OnClick="btnReiniciar_Click" />
                                </div>
                            </div>
                        </asp:View>

                    </asp:MultiView>
                </div>
            </div>
        </div>
        


    </main>




</asp:Content>
