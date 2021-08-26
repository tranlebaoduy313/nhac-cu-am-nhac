<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThanhVienMaster.Master" AutoEventWireup="true" CodeBehind="TrangChuTV.aspx.cs" Inherits="WebNhacCu.ThanhVien.TrangChuTV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href='//fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css'>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script src="../js/jquery.magnific-popup.js" type="text/javascript"></script>
    <link href="../css/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
    <div class="index-banner">
      <div class="wmuSlider example1">
        <div class="wmuSliderWrapper">
<!--------------------------------------------------------------->
            
            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="container">
                    <div class="col-md-6 slider-left">
                        <h3>Cùng Bạn</h3>
						<h4>Thực Hiện Ước Mơ</h4>
                    </div>
                    <div class="col-md-6 slider-right">
                        <img src="../../images/baner1.png" /> 
					</div>
                </div>
            </article>

<!--------------------------------------------------------------->
           
            <article style="position: relative; width: 100%; opacity: 1;"> 
                <div class="container">
                    <div class="col-md-6 slider-right">
                        <img src="../../images/baner1.png" /> 
                    </div>
                    <div class="col-md-6 slider-left">
                        <h3>Cùng Bạn</h3>
                        <h4>Thực Hiện Ước Mơ</h4>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </article>

<!----------------------------------------------------------------->

            <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="container">
					   	<div class="col-md-6 slider-left">
							<h3>We Believe</h3>
							<h4>Thực Hiện Ước Mơ</h4>
						 </div>
						<div class="col-md-6 slider-right">
						    <img src="../../images/baner1.png" /> 
						 </div>
						 <div class="clearfix"></div>
					 </div>
            </article>

<!----------------------------------------------------------------->

            <article style="position: absolute; width: 100%; opacity: 0;">
                <div class="container">
                    <div class="col-md-6 slider-right">
                        <img src="../../images/baner1.png" /> 
                    </div>
                    <div class="col-md-6 slider-left">
                        <h3>We Believe</h3>
                        <h4>In Our Strength</h4>
                    </div>
						 <div class="clearfix"></div>
					 </div>
            </article>

<!----------------------------------------------------------------->

            <article style="position: absolute; width: 100%; opacity: 0;"> 
                <div class="container">
					<div class="col-md-6 slider-left">
							<h3>We Believe</h3>
							<h4>In Our Strength</h4>
					</div>
					<div class="col-md-6 slider-right">
						 <img src="../../images/baner1.png" /> 
					</div>
						 <div class="clearfix"></div>
					</div>
			</article>

<!----------------------------------------------------------------->
        </div>
        <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
        <ul class="wmuSliderPagination">
            <li><a href="#" class="">0</a></li>
            <li><a href="#" class="">1</a></li>
            <li><a href="#" class="wmuActive">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
        </ul>
      </div>
        <script src="js/jquery.wmuSlider.js"></script> 
			<script type="text/javascript" src="js/modernizr.custom.min.js"></script> 
				<script>
       				$('.example1').wmuSlider();         
   				</script>
    </div>

    <div class="main">
        <div class="content-top">
            <div class="container">
                <h3>Ưu Đãi & Khuyến Mại</h3>
                <div class="section group">
                <a href="SanPham.aspx">
                    <div class="col_1_of_4 span_1_of_first">
					    <img src="../../images/DanBo.jpg" alt="" class="img-responsive">
					    <div class="desc">
					       <h4>
                               Sản Phẩm
                               <span>Click<span class="small">&nbsp;Now</span></span>
                               <div class="clearfix"></div>
					       </h4>
					    </div>
				    </div>
                 </a>
                
                    <div class="col_1_of_4 span_1_of_4">
                        <a href="TrangChu.aspx" style="text-decoration:none">
					    <div class="grid1">
						    <img src="images/icon1.png" alt="">
						    <h4>Khuyến Mại</h4>
					    </div>
					    <div class="desc">
					        <p>
                                <asp:Label ID="Label1" runat="server" Text="Viết mô tả quảng cáo sản phẩm ở quyền admin"></asp:Label>
					        </p>
					    </div>
                        </a>
				    </div>

                    <div class="col_1_of_4 span_1_of_4">
                        <a href="TrangChu.aspx" style="text-decoration:none">
					        <div class="grid1">
						        <img src="images/icon2.png" alt="">
						        <h4>Khóa Học</h4>
					        </div>
					        <div class="desc">
					            <p>
                                    <asp:Label ID="Label2" runat="server" Text="Viết mô tả quảng cáo khóa học ở quyền admin"></asp:Label>
					            </p>
					        </div>
                        </a>
				    </div>

                    <div class="col_1_of_4 span_1_of_4">
                        <a href="TrangChu.aspx" style="text-decoration:none">
					        <div class="grid1">
						        <img src="images/icon3.png" alt="">
						        <h4>REVIEW / Đánh Giá</h4>
					        </div>
					        <div class="desc">
					            <p>Nếu có vấn đề về sản phẩm xin bạn hãy đánh giá cho chúng tôi</p>
					        </div> 
                        </a>
				    </div>
				    <div class="clearfix"> </div>

                </div>
            </div>
        </div>
    </div>

    <div class="box" style="width:100%">
        <h3 style="font-size: 2.2em; text-align: center; font-weight: 600; font-family: Century Gothic; text-transform: uppercase">Bài Đăng</h3>
        <div class="box" style="width:100%">
            <asp:DataList ID="DataList1" runat="server" Width="100%" >
                <ItemTemplate>
                    
                        <div class="ima" style="float: left; padding-left: 50px;padding-bottom: 10px; padding-top: 30px; width: 30%">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' Width="350px"/>
                    </div>
                        <div class="thongtin" style="float: left; padding-left: 20px; padding-bottom: 10px; padding-top: 30px; width: 70%">
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaBD") %>' Text='<%# Eval("TieuDe") %>' Font-Italic="False" Font-Size="23px" ForeColor="#3333CC"></asp:LinkButton>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </div>
                    
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
