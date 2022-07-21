<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="MedidorWeb.MostrarDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
            <div class="col-lg-6 mx-auto">
                <asp:DropDownList ID="estadoDDL" runat="server"  
                    Enabled="false" AutoPostBack="true" >
                    <asp:ListItem Text="Pagada" Value="Pagada"></asp:ListItem>
                    <asp:ListItem Text="Con Deuda" Value="conDeuda"></asp:ListItem>
                </asp:DropDownList>
               <asp:CheckBox runat="server" ID="todosChk" Text="Todos" Checked="true" 
                   AutoPostBack="true" />
            </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                          <div class="row mt-5">
                    <asp:GridView 
                        CssClass="table table-hover table-bordered"
                        ID="grillaAsistente"
                        AutoGenerateColumns="false"
                        ShowHeaderWhenEmpty="true"
                        EmptyDataText="No hay registros"
                        runat="server"
                        OnRowCommand="grillaAsistente_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="Rut" DataField="Rut" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="N° Medidor" DataField="N° Medidor" />
                            <asp:BoundField HeaderText="Valor Consumo" DataField="Valor Consumo" />
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-danger" runat="server"
                                        CommandName="eliminar" Text="Eliminar"
                                        CommandArgument='<%#Eval("Id") %>'
                                        />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
              </ContentTemplate>
            </asp:UpdatePanel>
        </div>
</asp:Content>
