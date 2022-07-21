<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="registrarLecturas.aspx.cs" Inherits="MedidorWeb.registrarLecturas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Ingresar Lecturas</h3>
                </div>
                <div class="form_group">
                    <label for="nMedidorDDL">N° Medidor</label>
                    <asp:DropDownList ID="nMedidorDDL" runat="server"></asp:DropDownList>
                    <br />
                    <asp:Label ID="lblFecha" runat="server" Text="Fecha"></asp:Label>
                  <asp:TextBox ID="txtFecha" TextMode="date" runat="server"></asp:TextBox>
        
                </div>
                <asp:Label ID="lblHora" runat="server" Text="Hora"></asp:Label>
               <asp:TextBox ID="txtHora"  TextMode="time" runat="server"></asp:TextBox>
        
            </div>
            <label for="valorConsumoTxt">Ingrese Valor Consumo</label>
            <asp:TextBox ID="valorConsumoTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <asp:Button runat="server" CssClass="btn btn-secondary" OnClick="ingresarBtn_Click" ID="ingresarBtn" Text="Ingresar" />
    </div>
</asp:Content>
