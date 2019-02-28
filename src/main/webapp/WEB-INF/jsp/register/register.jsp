<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>注册-广和投资</title>
    <link rel="icon" href="/static/img/16_16 LOGO.png" type="image/x-icon">
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/css3-mediaqueries.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/static/css/m_app.css"/>
    <style>
        .header{
            box-shadow: 0px 5px 10px #EEEEEE;
        }
        .footer {
            height: 100px;
            width: 100%;
            margin: 0 auto 0 auto;
            background-color: #6C6C6C;
            background-image: url(/static/img/footer_bg.png);
            background-size: cover;
        }
        .footer_bottom {
            margin: 0px auto;
            height: 32px;
            padding: 34px 0px;
        }
        .btn:hover{
            color: white;
            background: #D3A359;
        }
        a>.iconfont:hover{
            color: #D3A359;
        }
        .header_up span,i{
            color: #d0d0d0;
        }

        @font-face {
            font-family: 'iconfont';  /* project id 754425 */
            src: url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.eot');
            src: url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.woff') format('woff'),
            url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_754425_cs7c9asd2vi.svg#iconfont') format('svg');
        }

        .footer_bottom p {
            color: #FFFFFF;
            font-size: 12px;
        }
        .footer_bottom_right {
            float: right;
            margin-top: 5px;
        }


        .btn {
            background-color: transparent;
            color: #D3A359;
            border-radius: 2px;
            border: #D3A359 1px solid;
            cursor: pointer;
            width: 72px;
            height: 32px;
            line-height: 32px;
            padding: 0px;
        }
        .btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }

        .nav_a {
            display: block;
            margin: 8px 25px;
            padding: 0 0 10px 0;
            color: #333333;
            font-size: 16px;
        }
        .nav_logo {
            width: 155px;
            height: 45px;
            float: left;
            margin-right: 65px;
            margin-top: 0px;
        }
        .active {
            color: #D3A359;
            border-bottom: 2px solid #D3A359;
        }
        .header_nav {
            width: 1200px;
            margin: 0 auto;
            height: 60px;
        }

        .header {
            height: auto;
            color: white;
            font-size: 10px;
            padding-top: 4px;
            width: 100%;
        }
        .footer_wrapp {
            height: auto
        }


        section{
            background-image: url(/static/img/bg_team.png) ;
        }
        .reg_wrapp{
            width: 642px;
            height: 710px;
            background: transparent;
            margin: 0 auto;
            padding-top: 70px;
            padding-bottom: 150px;
        }
        .register{
            font-size: 20px;
            letter-spacing: 1px;
            color: #d3a359;
            text-align: center;
            padding-bottom: 10px;
        }
        .line{
            width: 76px;
            height: 2px;
            background-color: #d3a359;
            border-radius: 1px;
            margin: auto;
            margin-bottom: 90px;

        }
        .lab_wrapp{
            float: left;
            width: 135px;
        }
        .lab_wrapp p span {
            font-size: 14px;
            line-height: 60px;
            letter-spacing: 1px;
            color: #d3a359;
        }
        .lab_wrapp p {
            text-align: right;
            font-size: 14px;
            line-height: 60px;
            letter-spacing: 1px;
            color: #333333;
            text-indent: 0;
        }
        .input_wrapp{
            float: left;
            width: 500px;
        }
        .input{
            width: 400px;
            height: 41px;
            border-radius: 5px;
            border: solid 1px #cccccc;
            padding-left:16px ;
            margin: 9px 0 8px 20px;
        }
        .yzm{
            width: 222px;
            margin-right: 20px;
        }
        .focus{
            border: #D3A359 1px solid;
        }
        .yzm_btn{
            background-color: #d3a359;
            border-radius: 5px;
            border: solid 1px #d3a359;
            padding: 9px 38px;
            color: white ;
            font-size: 14px;
            cursor: pointer;
            line-height: 41px;
            letter-spacing: 1px;
        }
        .iconfont:hover{
            cursor: pointer;

        }
        .agree_wrapp{
            padding-top: 20px;
            padding-left: 20px;
        }
        .agree{
            color: #D3A359;
        }
        .agree_wrapp span{
            width: 351px;

            font-size: 14px;

            letter-spacing: 1px;
            color: #666666;
        }
        .agree_wrapp a{
            font-size: 14px;
            letter-spacing: 1px;
            color: #d3a359;
        }
        .register_btn{
            width: 320px;
            height: 50px;
            background-color: #d3a359;
            border-radius: 5px;
            border: solid 1px #d3a359;
            cursor: pointer;
            margin-left: 40px;
            color: white;
            font-size: 14px;
            margin-top: 126px;
        }
        .register_btn:active{
            position: relative;
            top: 1px;
            left: 1px;
        }
        .already {

            font-size: 14px;

            letter-spacing: 1px;
            color: #666666;
            padding-left: 150px;
            padding-top: 30px;
        }

        .already>a {

            text-decoration: underline;
            font-size: 14px;
            letter-spacing: 1px;
            color: #d3a359;
            cursor: pointer;
        }

        /* 弹窗背景 */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            /*padding-top: 100px;*/ /* Location of the box */
            left: 0;
            top: 0;
            right: 0;
            bottom:0;
            margin: auto;
            padding: 40px;
            width: 910px; /* Full width */
            height: 550px; /* Full height */
            background-color: #ffffff;
            box-shadow: 0px 2px 24px 0px
            rgba(178, 130, 71, 0.2);
            overflow: auto;
        }
        /* 添加动画 */
        #caption,.modal {
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {-webkit-transform:scale(0)}
            to {-webkit-transform:scale(1)}
        }

        @keyframes zoom {
            from {transform:scale(0)}
            to {transform:scale(1)}
        }

        /* 关闭按钮 */
        .close {
            position: absolute;
            top: 0px;
            right: 20px;
            color: #D3A359;
            font-size: 40px;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        .modal .protocol_title{
            font-size: 20px;
            letter-spacing: 1px;
            text-align: center;
        }
        .modal p{
            font-size: 16px;
            color: #333333;
            line-height: 36px;
            letter-spacing: 1px;
        }
        .modal .protocol_section{
            font-size: 18px;
        }
        #cover{
            top: 0;left: 0;bottom: 0;right: 0;display: none;position: absolute;background: rgba(0,0,0,0.4);width: 100%;
        }
        .modal{
            box-shadow:1px 1px 20px rgba(0,0,0,.5)
        }

    </style>
</head>

<body>
<div id="cover"></div>
<div class="header_line"></div>
<div class="header">
    <div class="header_up">
        <div class="header_up_left">
            <i class="iconfont" style="color: #ccc;">&#xe62c;</i>
            <span  style="color: #ccc;" id="_date_"></span>
        </div>
        <div class="header_up_right">
            <i class="iconfont" style="color: #ccc;">&#xe61b;</i>
            <span style="color: #ccc;">010-50856300</span>
            <a href="/personal/help" style="color: #ccc;padding: 0 10px">帮助中心</a>
            <a target="_blank" href="https://weibo.com/guanghebj"><i class="iconfont">&#xe69c;</i></a>
            &nbsp;
            <a href="javascript:;" class="wxgzh">
                <i class="iconfont">&#xe66a;</i>
                <img class="wximg" src="/static/img/ghtzwx.png" />
            </a>
        </div>
    </div>
    <nav class="header_nav">
        <img src="/static/img/logo.png" class="nav_logo"/>

        <div style="float: right; margin-top: 5px;">
            <button class="btn" onclick="window.location.href='/'">网站首页</button>
        </div>
    </nav>
</div>
<section >
    <div class="reg_wrapp">
        <p class="register">注册</p>
        <div class="line"></div>
        <div class="lab_wrapp">
            <p><span>*</span>手机号码:</p>
            <p><span>*</span>验证码:</p>
            <p><span>*</span>登录密码:</p>
            <p><span>*</span>确认密码:</p>
            <p>推荐私享顾问工号:</p>
        </div>
        <div class="input_wrapp">
            <form>
                <input class="input" required name="name" placeholder="请输入手机号码" id="phone"/>
                <input class="yzm input" required name="yzm" placeholder="请输入验证码" id="authCode"/>
                <span class="yzm_btn" >获取验证码</span>
                <input class="input" required name="pwd" placeholder="请输入登录密码" id="password" type="password"/>
                <input class="input" required ame="c_pwd" placeholder="请再次输入密码" id="confirmPassword" type="password"/>
                <input class="input" required name="lcs_no" placeholder="请输入理财师工号" id="financialManagerNumber"/>
                <div class="agree_wrapp">
                    <i class="iconfont" id="agree">&#xe611;</i>
                    <span>我已阅读并同意</span><a href="javascript:openpro(true);">《网络服务协议》</a><a href="javascript:openpro(false);">《合格投资者承诺》</a>
                </div>

                <input class="register_btn" value="注册" type="button" onclick="userRegister();"/>
            </form>
            <p class="already">已有帐号？<a href="/login/loginPage">去登录</a></p>
        </div>
    </div>
</section>
<div id="myModal1" class="modal">
    <style>
        p{
            text-indent: 35px;
        }
        .modal .protocol_section {
            font-size: 18px;
            text-indent: 0;
        }

    </style>
    <!-- 关闭按钮 -->
    <span class="close" onclick="document.getElementById('myModal1').style.display='none'">&times;</span>
    <p class="protocol_title">网络服务协议</p>
    <p class="protocol_section">重要提示：</p>
    <p>广和投资有限公司(以下简称“广和投资”)依据本协议的规定为用户提供服务，本协议在公司用户和广和投资之间具有合同上的法律效力。广和投资在此特别提醒您认真阅读、充分理解本协议各条款，特别是其中所涉及的免除或限制广和投资责任的条款、排除或限制用户权利的条款等。请您审慎阅读并选择接受或不接受本协议。除非您接受本协议所有条款，否则您无权使用广和投资于本协议下所提供的服务。您一经注册或使用广和投资服务即视为对本协议全部条款已充分理解并完全接受。</p>
    <p class="protocol_section">第一章 广和投资平台和服务</p>
    <p>第一条 广和投资平台是由广和投资运营的信息中介服务平台（网址：http://www.guanghetouzi.com/，如广和投资以公告等形式发布新的网址，请届时登陆新的网址）。广和投资通过网络平台及客户端等各种方式向用户提供服务，具体服务内容主要包括：交易信息发布、交易管理服务、用户服务等交易辅助服务，具体详情以广和投资当时提供的服务内容为准。</p>
    <p>第二条 为了保障您的权益，在自愿注册使用广和投资服务前，必须仔细阅读并充分理解知悉本服务协议所有条款。一经注册或使用广和投资服务即视为对本服务协议的充分理解和接受；如有违反而导致任何法律后果，您将自己独立承担相应的法律责任。</p>
    <p>第三条 在本协议履行过程中，广和投资可根据情况对本协议进行修改。一旦本协议的内容发生变动，广和投资将通过网络平台公布最新的服务协议，不再向用户作个别通知。如果用户不同意广和投资对本协议所做的修改，有权停止使用广和投资提供的服务。如果用户继续使用广和投资服务，则视为用户接受广和投资对本协议所做的修改，并应遵照修改后的协议执行。</p>
    <p>第四条 广和投资对用户的通知及任何其他的协议、告示或其他关于用户使用账户及服务的通知，用户同意广和投资可通过公司平台公告、站内信、电子邮件、手机短信、无线通讯装置等电子方式或邮寄等物理方式进行，该等通知于发送之日视为已送达收件人（如以邮寄方式向用户发出通知的，则在该等通知按照用户在公司平台留存的联系地址交邮后的第三个自然日即视为送达）。因不可归责于公司的原因（包括但不限于电子邮件地址、手机号码、联系地址等不准确或无效、信息传输故障等）导致用户未在前述通知视为送达之日收到该等通知的，广和投资不承担任何责任。</p>
    <p>第五条 广和投资可以依其判断暂时停止提供、限制或改变相关服务，只要用户仍然使用公司服务，即表示用户仍然同意本协议。</p>
    <p class="protocol_section">第二章 用户承诺事项</p>
    <p>第六条 用户在使用广和投资服务前，必须先在公司网站平台上进行注册。</p>
    <p>第七条 用户承诺以下事项：</p>
    <p>1、用户注册必须依照广和投资要求提示提供真实、最新、有效及完整的资料。</p>
    <p>2、用户保证并承诺通过广和投资平台进行交易的资金来源合法。</p>
    <p>3、用户有义务维护并更新其资料，确保其真实、最新、有效及完整。若用户提供任何错误、虚假、过时或不完整的资料，或者广和投资依其独立判断怀疑资料为错误、虚假、过时或不完整，广和投资有权采取相应措施，包括但不限于停用帐户、拒绝用户使用广和投资服务的部分或全部功能。在此情况下，广和投资不承担任何责任，并且用户同意负担因此所产生的直接或间接的任何支出或损失。</p>
    <p>4、如因用户未及时更新基本资料，导致服务无法提供或提供时发生任何错误，用户不得将此作为取消交易或拒绝付款的理由，广和投资亦不承担任何责任，所有后果应由用户承担。</p>
    <p>5、除本协议以外，用户应同时遵守广和投资平台不时发布及更新的全部规则，包括但不限于公告、产品流程说明、平台项目说明、风险提示等。</p>
    <p class="protocol_section">第三章 广和投资服务的内容</p>
    <p>第八条 广和投资服务的部分内容需要用户根据公司要求完成身份认证及银行卡认证才能使用，未进行身份认证及/或银行卡认证的用户将无法使用该部分服务。因未能完成认证而无法享受服务造成的损失，广和投资不承担任何责任。</p>
    <p>第九条 广和投资接受信息发布方的委托进行信息发布，广和投资仅对发布的信息承担表面审查责任，不对信息的准确、完整、合法性作出保证，也不承担相关责任，用户应依其独立判断做出决策。用户据此进行交易的，产生的风险由用户自行承担，用户无权据此向广和投资提出任何法律主张。用户与交易对方之间因交易发生的或与交易有关的任何纠纷，应由纠纷各方自行解决，广和投资不承担任何交易风险及法律责任。</p>
    <p>第十条 广和投资将为用户提供以下交易管理服务：</p>
    <p>1、用户账户：用户在广和投资平台进行注册时将生成用户账户，账户将记载用户在广和投资平台的活动，上述账户是用户登陆广和投资平台的唯一账户。</p>
    <p>2、交易状态更新：用户确认，用户在广和投资平台上按照服务流程所确认的交易状态，将成为广和投资为用户进行相关交易或操作（包括但不限于支付或收取款项、冻结资金、订立合同等）的不可撤销的指令。用户同意相关指令的执行时间以广和投资在系统中进行实际操作的时间为准。用户同意广和投资有权依据本协议及广和投资相关纠纷处理规则等约定对相关事项进行处理。用户未能及时对交易状态进行修改、确认或未能提交相关申请所引起的任何纠纷或损失由用户自行负责，广和投资不承担任何责任。</p>
    <p>3、支付指令传递：用户了解广和投资并不是银行或支付机构，按照中国法律规定，广和投资不提供资金转账服务，用户同意广和投资对其资金到账延迟不承担任何责任。用户通过广和投资平台进行各项交易或接收交易款项时，若用户未遵从本协议条款或广和投资公布的交易规则中的操作指示，广和投资不承担任何责任。若发生上述状况而款项已先行拨入用户账户下，用户同意广和投资有权直接从相关用户账户中扣回款项，广和投资保留拒绝用户要求支付此笔款项之权利。此款项若已汇入用户的银行账户，用户同意广和投资有向用户事后索回的权利，由此产生的追索等相关费用由用户承担。</p>
    <p>4、交易指令传递：用户理解并同意，广和投资向符合条件的用户提供服务。广和投资对在公司平台上进行的投资、借款等交易行为不承担任何责任，广和投资无法也没有义务保证用户在发出借款要约或投资意向后，能够实际获得借款或投资成功，用户因前述原因导致的损失（包括但不限于利息、手续费等损失）由用户自行承担，广和投资不承担责任。</p>
    <p>5、交易安全设置：广和投资有权基于交易安全等方面的考虑不时设定涉及交易的相关事项，包括但不限于交易限额、交易次数等，用户了解前述设定可能会对交易造成一定不便，对此没有异议。
        如果广和投资发现了因系统故障或其他任何原因导致的处理错误，无论有利于广和投资还是有利于用户，广和投资都有权纠正该错误。如果该错误导致用户实际收到的款项多于应获得的金额，则无论错误的性质和原因为何，广和投资保留纠正不当执行的交易的权利，用户应根据广和投资向用户发出的有关纠正错误的通知的具体要求返还多收的款项或进行其他操作。用户理解并同意，用户因前述处理错误而多付或少付的款项均不计利息，广和投资不承担因前述处理错误而导致的任何损失或责任（包括用户可能因前述错误导致的利息、汇率等损失）。
    </p>
    <p>第十一条 广和投资提供服务内容主要包括根据用户需求发布交易信息、提供交易管理服务、提供客户服务等，具体详情以公司平台当时提供的服务内容为准。</p>
    <p>1、银行卡认证：为使用广和投资或委托第三方机构提供的充值、取现、代扣等服务，用户应按照平台规定的流程提交以用户本人名义登记的有效银行借记卡等信息，将账户与前述银行账户进行绑定。如用户未按照广和投资规定提交相关信息或提交的信息错误、虚假、过时或不完整，或者广和投资有合理的理由怀疑用户提交的信息为错误、虚假、过时或不完整，广和投资有权拒绝提供银行卡认证服务，用户因此未能使用充值、取现、代扣等服务而产生的损失自行承担。</p>
    <p>2、充值：用户可以使用广和投资指定的方式向账户充入资金，用于通过平台进行交易。用户账户内的资金不产生利息。</p>
    <p>3、支付指令传递：广和投资按照其平台当时向用户开放的功能提供支付指令传递服务，自行或委托第三方机构代为传递用户的账户支付指令，达到完成帐户的收取本息、代偿金等各类款项，或者，将用户账户里的款项支付给用户指定的其他方。广和投资不保证提供的前述服务符合个人用户的期望。</p>
    <p>4、取现：用户可以通过广和投资平台当时开放的取现功能将用户账户中的资金转入经过认证的银行卡账户中。广和投资将于收到用户的前述指示后，尽快通过第三方机构将相应的款项汇入用户经过认证的银行卡账户（根据用户提供的银行不同，会产生汇入时间上的差异）。</p>
    <p>5、查询：广和投资将对用户在平台的所有操作进行记录，不论该操作之目的最终是否实现。用户可以通过账户实时查询用户账户名下的交易记录。用户理解并同意用户最终收到款项的服务是由用户经过认证的银行卡对应的银行提供的，需向该银行请求查证。用户理解并同意通过公司平台查询的任何信息仅作为参考，不作为相关操作或交易的证据或依据。
        用户了解，上述充值、支付指令传递及取现服务涉及广和投资与银行、担保公司、第三方支付机构等第三方的合作。用户同意：（1） 受银行、担保公司、第三方支付机构等第三方仅在工作日进行资金代扣及划转的现状等各种原因所限，广和投资不对前述服务的资金到账时间做任何承诺，也不承担与此相关的责任，包括但不限于由此产生的利息、货币贬值等损失；（2） 一经用户使用前述服务，即表示用户不可撤销地授权广和投资进行相关操作，且该等操作是不可逆转的，用户不能以任何理由拒绝付款或要求取消交易。就前述服务，广和投资暂不会向用户收取费用，但用户应按照第三方的规定向第三方支付费用，具体请见第三方网站的相关信息。与第三方之间就费用支付事项产生的争议或纠纷，与广和投资无关。</p>
    <p>6、用户每次使用广和投资提供的服务应直接登录公司平台或使用广和投资提供的链接登陆平台（http://www.guanghetouzi.com，如广和投资以公告等形式发布新的网址，请届时登陆新的网址）或客户端，而不要通过邮件或其他网站提供的链接登录。用户每次拨打广和投资客户电话应拨打公司官方网站提供的客服电话400-000-0371（如广和投资以公告等形式发布新的客服电话，请届时拨打新的客服电话），而不要拨打其他任何电话。</p>
    <p>7、用户同意，广和投资有权在提供服务过程中以各种方式投放各种商业性广告或其他任何类型的商业信息（包括但不限于在广和投资平台的任何页面上投放广告），并且，用户同意接受广和投资通过电子邮件或其他方式向用户发送商品促销或其他相关商业信息。</p>
    <p>第十二条 广和投资将为个人用户提供以下合同管理服务：</p>
    <p>1、在广和投资平台交易需订立的合同采用电子合同方式。用户使用账户登录广和投资平台后，根据广和投资的相关规则，以用户账户名在广和投资平台通过点击确认或类似方式签署的电子合同即视为用户本人真实意愿并以用户本人名义签署的合同，具有法律效力。用户应妥善保管自己的账户密码等账户信息，通过前述方式订立的电子合同对合同各方具有法律约束力，用户不得以其账户密码等账户信息被盗用或其他理由否认已订立的合同的效力或不按照该等合同履行相关义务。</p>
    <p>2、用户根据本协议以及广和投资的相关规则签署电子合同后，不得擅自修改合同。广和投资向用户提供电子合同的备案、查看、核对服务，如对电子合同真伪或电子合同的内容有任何疑问，用户可通过使用公司平台提供的相关功能进行核对。如对此有任何争议，应以广和投资记录的合同为准。</p>
    <p>3、用户不得私自仿制、伪造在广和投资平台上签订的电子合同或印章，不得用伪造的合同进行招摇撞骗或进行其他非法使用，否则由用户自行承担责任。</p>
    <p>4、除特别列明外，广和投资不提供任何纸质合同。</p>
    <p>第十三条 第三方责任</p>
    <p>1、在任何情况下，对于用户使用广和投资服务过程中涉及由第三方提供相关服务的责任由该第三方承担，广和投资不承担该等责任。广和投资不承担责任的情形包括但不限于：</p>
    <p>（1）因银行、第三方支付机构等第三方未按照用户和/或广和投资指令进行操作引起的任何损失或责任；</p>
    <p>（2）因银行、第三方支付机构等第三方原因导致资金未能及时到账或未能到账引起的任何损失或责任；</p>
    <p>（3）因银行、第三方支付机构等第三方对交易限额或次数等方面的限制而引起的任何损失或责任；</p>
    <p>（4）因其他第三方的行为或原因导致的任何损失或责任。</p>
    <p>2、因用户自身的原因导致的任何损失或责任，由用户自行负责，广和投资不承担责任。不承担责任的情形包括但不限于：</p>
    <p>（1）用户未按照本协议或广和投资平台不时公布的任何规则进行操作导致的任何损失或责任；</p>
    <p>（2）因用户使用的银行卡的原因导致的损失或责任，包括用户使用未经认证的银行卡或使用非用户本人的银行卡或使用信用卡，用户的银行卡被冻结、挂失等导致的任何损失或责任；</p>
    <p>（3）用户向广和投资发送的指令信息不明确、或存在歧义、不完整等导致的任何损失或责任；</p>
    <p>（4）用户账户内余额不足导致的任何损失或责任；</p>
    <p>（5）其他因用户原因导致的任何损失或责任。</p>
    <p class="protocol_section">第四章 账户安全及管理</p>
    <p>第十四条 用户了解并同意，确保账户及密码的安全是用户的责任。用户将对利用该用户账户及密码所进行的一切行动及言论，负完全的责任，并同意以下事项：</p>
    <p>（1） 用户不对其他任何人泄露账户或密码，亦不可使用其他任何人的账户或密码。因黑客、病毒或个人用户的保管疏忽等非广和投资原因导致用户的用户账户遭他人非法使用的，广和投资不承担任何责任。</p>
    <p>（2） 广和投资通过用户的账户及密码来识别用户的指令，用户确认，使用账户和密码登陆后在广和投资的一切行为均代表用户本人。账户操作所产生的电子信息记录均为用户行为的有效凭据，并由用户本人承担由此产生的全部责任。</p>
    <p>（3） 冒用他人账户及密码的，广和投资及其合法授权主体保留追究实际使用人连带责任的权利。</p>
    <p>（4） 用户应根据广和投资的相关规则以及公司平台的相关提示创建一个安全密码，应避免选择过于明显的单词或日期，比如用户的姓名、昵称或者生日等。</p>
    <p>第十五条 用户如发现有第三人冒用或盗用账户及密码，或其他任何未经合法授权的情形，应立即以有效方式通知广和投资，要求公司平台暂停相关服务，否则由此产生的一切责任由用户本人承担。同时，用户理解广和投资对用户的请求采取行动需要合理期限，在此之前，广和投资对第三人使用该服务所导致的损失不承担任何责任。</p>
    <p>第十六条 用户决定不再使用账户时，应首先清偿所有应付款项（包括但不限于借款本金、利息、罚息、违约金、服务费、管理费等），再将账户中的可用款项（如有）全部取现或者向广和投资发出其它合法的支付指令，并向广和投资申请冻结该用户账户，经审核同意后可正式注销用户账户。用户死亡或被宣告死亡的，其在本协议项下的各项权利义务由其继承人承担。若用户丧失全部或部分民事权利能力或民事行为能力，广和投资或其授权的主体有权根据有效法律文书（包括但不限于生效的法院判决等）或其法定监护人的指示处置与用户账户相关的款项。</p>
    <p>第十七条 广和投资有权基于单方独立判断，在其认为可能发生危害交易安全等情形时，不经通知而先行暂停、中断或终止向用户提供本协议项下的全部或部分用户服务（包括收费服务），并将注册资料移除或删除，且无需对用户或任何第三方承担任何责任。前述情形包括但不限于：</p>
    <p>1、广和投资认为用户提供的个人资料不具有真实性、有效性或完整性，包括但不限于盗用他人证件信息注册、认证信息不匹配等；</p>
    <p>2、广和投资发现异常交易或有疑义或有违法之虞时；</p>
    <p>3、广和投资认为用户账户涉嫌洗钱、套现、传销、被冒用或其他有风险之情形；</p>
    <p>4、广和投资发现用户使用非法或不正当的技术手段进行危害交易安全或影响公平交易的行为，包括但不限于篡改交易数据、窃取客户信息、窃取交易数据、通过平台攻击其他已注册账户等；</p>
    <p>5、广和投资认为用户已经违反本协议中规定的各类规则及精神；</p>
    <p>6、用户在使用广和投资收费服务时未按规定向广和投资支付相应的平台服务费用或第三方服务费用；</p>
    <p>7、用户账户已连续一年内未登录或实际使用且账户中余额为零；</p>
    <p>8、广和投资基于交易安全等原因，根据其单独判断需先行暂停、中断或终止向用户提供本协议项下的全部或部分用户服务（包括收费服务），并将注册资料移除或删除的其他情形。</p>
    <p>第十八条 用户同意，如其账户未完成身份认证或银行卡认证且已经连续一年未登陆，广和投资无需进行事先通知即有权终止提供账户服务，并有权立即暂停、关闭或删除账户及该账户中所有相关资料及档案。</p>
    <p>第十九条 用户同意，账户的暂停、中断或终止不代表用户责任的终止，用户仍应对使用广和投资服务期间的行为承担可能的违约或损害赔偿责任，同时广和投资仍可保有个人用户的相关信息。</p>
    <p class="protocol_section">第五章 用户的守法义务及承诺</p>
    <p>第二十条 用户承诺绝不为任何非法目的或以任何非法方式使用广和投资服务，并承诺遵守中国相关法律、法规及一切使用互联网之国际惯例，遵守所有与广和投资服务有关的网络协议、规则和程序。</p>
    <p>第二十一条 用户同意并保证不得利用广和投资服务从事侵害他人权益或违法之行为，若有违反者应负所有法律责任。上述行为包括但不限于：</p>
    <p>1、反对宪法所确定的基本原则，危害国家安全、泄漏国家秘密、颠覆国家政权、破坏国家统一的；</p>
    <p>2、侵害他人名誉、隐私权、商业秘密、商标权、著作权、专利权、其他知识产权及其他权益；</p>
    <p>3、违反依法律或合约所应负之保密义务；</p>
    <p>4、冒用他人名义使用广和投资服务；</p>
    <p>5、从事任何不法交易行为，如贩卖枪支、毒品、禁药、盗版软件或其他违禁物；</p>
    <p>6、提供赌博资讯或以任何方式引诱他人参与赌博；</p>
    <p>7、涉嫌洗钱、套现或进行传销活动的；</p>
    <p>8、从事任何可能含有电脑病毒或是可能侵害广和投资服务系統、资料等行为；</p>
    <p>9、利用广和投资服务系统进行可能对互联网或移动网正常运转造成不利影响之行为；</p>
    <p>10、侵犯广和投资的商业利益，包括但不限于发布非经广和投资许可的商业广告；</p>
    <p>11、利用广和投资服务上传、展示或传播虚假的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；</p>
    <p>12、其他广和投资有正当理由认为不适当之行为。</p>
    <p>第二十二条 广和投资保有依其单独判断删除广和投资平台内各类不符合法律政策或不真实或不适当的信息内容而无须通知用户的权利，并无需承担任何责任。若用户未遵守以上规定的，广和投资有权作出独立判断并采取暂停或关闭用户账户等措施，而无需承担任何责任。</p>
    <p>第二十三条 用户同意，由于用户违反本协议，或违反通过援引并入本协议并成为本协议一部分的文件，或由于用户使用广和投资服务违反了任何法律或第三方的权利而造成任何第三方进行或发起的任何补偿申请或要求（包括律师费用），用户会对广和投资及其关联方、合作伙伴、董事以及雇员给予全额补偿并使之不受损害。</p>
    <p>第二十四条 用户承诺，其通过广和投资平台上传或发布的信息均真实有效，其向广和投资提交的任何资料均真实、有效、完整、详细、准确。如因违背上述承诺，造成广和投资或广和投资其他使用方损失的，用户将承担相应责任。</p>
    <p class="protocol_section">第六章 服务中断或故障</p>
    <p>第二十五条 用户同意，基于互联网的特殊性，广和投资不担保服务不会中断，也不担保服务的及时性和/或安全性。系统因相关状况无法正常运作，使用户无法使用任何广和投资服务或使用任何广和投资服务时受到任何影响时，广和投资对个人用户或第三方不负任何责任，前述状况包括但不限于：</p>
    <p>1、广和投资系统停机维护期间；</p>
    <p>2、电信设备出现故障不能进行数据传输的；</p>
    <p>3、由于黑客攻击、网络供应商技术调整或故障、网站升级、银行方面的问题等原因而造成的服务中断或延迟；</p>
    <p>4、因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成系统障碍不能执行业务的。</p>
    <p class="protocol_section">第七章 责任范围及限制</p>
    <p>第二十六条 广和投资未对任何广和投资服务提供任何形式的保证，包括但不限于以下事项：</p>
    <p>1、广和投资服务将符合用户的需求；</p>
    <p>2、广和投资所服务将不受干扰、及时提供或免于出错；</p>
    <p>3、用户经由广和投资服务购买或取得之任何产品、服务、资讯或其他资料将符合个人用户的期望。</p>
    <p>第二十七条 广和投资服务的合作单位所提供的服务品质及内容由该合作单位自行负责。广和投资平台的内容可能涉及由第三方所有、控制或者运营的其他网站（以下简称“第三方网站”）。广和投资不能保证也没有义务保证第三方网站上任何信息的真实性和有效性。用户确认按照第三方网站的服务协议使用第三方网站，而不是按照本协议。第三方网站不是广和投资推荐或者介绍的，第三方网站的内容、产品、广告和其他任何信息均由用户自行判断并承担风险，而与广和投资无关。用户经由广和投资服务的使用下载或取得任何资料，应由用户自行考量且自负风险，因资料的下载而导致的任何损坏由用户自行承担。</p>
    <p>第二十八条 用户自广和投资及其工作人员或经由广和投资服务取得的建议或资讯，无论其为书面或口头，均不构成广和投资对服务的任何保证。</p>
    <p>第二十九条 广和投资不保证为向用户提供便利而设置的外部链接的准确性、有效性、安全性和完整性，同时，对于该等外部链接指向的不由广和投资实际控制的任何网页上的内容，广和投资不承担任何责任。</p>
    <p>第三十条 在法律允许的情况下，广和投资对于与本协议有关或由本协议引起的，或者，由于使用广和投资平台、或由于其所包含的或以其它方式通过广和投资平台提供给用户的全部信息、内容、材料、产品（包括软件）和服务、或购买和使用产品引起的任何间接的、惩罚性的、特殊的、派生的损失（包括但不限于业务损失、收益损失、利润损失、使用数据或其他经济利益的损失），不论是如何产生的，也不论是由对本协议的违约（包括违反保证）还是由侵权造成的，均不负有任何责任，即使其事先已被告知此等损失的可能性。另外即使本协议规定的排他性救济没有达到其基本目的，也应排除广和投资对上述损失的责任。</p>
    <p>第三十一条 除本协议另有规定外，在任何情况下，广和投资对本协议所承担的违约赔偿责任总额不超过向用户收取的当次广和投资平台服务费用总额。</p>
    <p class="protocol_section">第八章 风险提示</p>
    <p>第三十二条 用户了解并认可，任何通过广和投资进行的交易并不能避免以下风险的产生，广和投资不能也没有义务为如下风险负责：</p>
    <p>1、宏观经济风险：因宏观经济形势变化，可能引起价格等方面的异常波动，个人用户有可能遭受损失；</p>
    <p>2、政策风险：有关法律、法规及相关政策、规则发生变化，可能引起价格等方面异常波动，个人用户有可能遭受损失；</p>
    <p>3、违约风险：因其他交易方无力或无意愿按时足额履约，个人用户有可能遭受损失；</p>
    <p>4、利率风险：市场利率变化可能对购买或持有产品的实际收益产生影响；</p>
    <p>5、不可抗力因素导致的风险；</p>
    <p>6、因用户的过错导致的任何损失 ，该过错包括但不限于：决策失误、操作不当、遗忘或泄露密码、密码被他人破解、个人用户使用的计算机系统被第三方侵入、个人用户委托他人代理交易时他人恶意或不当操作而造成的损失。</p>
    <p>第三十三条 广和投资不对任何用户及任何交易提供任何担保或条件，无论是明示、默示或法定的。广和投资不能也不试图对用户发布的信息进行控制，对该等信息，广和投资不承担任何形式的证明、鉴定服务。广和投资不能完全保证平台内容的真实性、充分性、可靠性、准确性、完整性和有效性，并且无需承担任何由此引起的法律责任。用户应依赖于其自身的独立判断进行交易，用户应对其作出的判断承担全部责任。</p>
    <p>第三十四条 以上并不能揭示用户通过广和投资进行交易的全部风险及市场的全部情形。用户在做出交易决策前，应全面了解相关交易，根据自身的交易目标、风险承受能力和资产状况等谨慎决策，并自行承担全部风险。</p>
    <p class="protocol_section">第九章 服务费用及其他费用</p>
    <p>第三十五条 当用户使用广和投资服务时，广和投资向用户收取相关平台服务费用。各项平台服务费用详见用户使用广和投资服务时，公司平台上所列之收费说明及收费标准。广和投资保留单方面制定及调整平台服务费用收费标准的权利。</p>
    <p>第三十六条 用户在使用广和投资服务过程中可能需要向第三方（如银行、第三方支付公司或提供技术服务的第三方等）支付一定的第三方服务费用，具体收费标准详见第三方网站相关页面，或广和投资平台的提示及收费标准。用户同意将根据上述收费标准自行或委托广和投资或广和投资指定的第三方代为向第三方支付该等服务费。</p>
    <p class="protocol_section">第十章 隐私权保护及授权条款</p>
    <p>第三十七条 广和投资对于用户提供的、广和投资自行收集的、经认证的个人信息将按照本协议予以保护、使用或者披露。广和投资无需用户同意即可向广和投资关联实体包括各子公司共享转让与广和投资平台有关用户信息及全部或部分权利和义务。未经广和投资事先书面同意，用户不得转让其在本协议项下的任何权利和义务。</p>
    <p>第三十八条 广和投资可能自公开及私人资料来源收集用户的额外资料，以更好地掌握用户情况，并为用户度身订造服务、解决争议并有助确保在公司平台进行安全交易。用户同意，除法律另有规定之外，基于为用户提供更优质服务之目的，向必要开展合作的第三方提供、查询和收集个人用户的信息。</p>
    <p>第三十九条 广和投资按照用户在公司平台上的行为自动追踪关于用户的某些资料。在不透露用户的隐私资料的前提下，广和投资有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。</p>
    <p>第四十条 用户同意，广和投资可在公司平台的某些网页上使用诸如“Cookies”的资料收集装置。</p>
    <p>第四十一条 用户同意广和投资可使用关于用户的相关资料（包括但不限于广和投资持有的有关用户的档案中的资料，广和投资从用户目前及以前在公司平台上的活动所获取的其他资料以及广和投资通过其他方式自行收集的资料）以解决争议、对纠纷进行调停。用户同意广和投资可通过人工或自动程序对用户的资料进行评价。</p>
    <p>第四十二条 广和投资采用行业标准惯例以保护用户的资料。用户因履行本协议提供给广和投资的信息，广和投资不会恶意出售或免费共享给任何第三方，以下情况除外：</p>
    <p>1、提供独立服务且仅要求服务相关的必要信息的供应商，如印刷厂、邮递公司等；</p>
    <p>2、具有合法调阅信息权限并从合法渠道调阅信息的政府部门或其他机构，如公安机关、法院；</p>
    <p>3、广和投资的关联实体；</p>
    <p>4、经平台使用方或平台使用方授权代表同意的第三方。</p>
    <p>第四十三条 用户授权广和投资，除法律另有规定之外，将用户提供给广和投资的信息、享受广和投资服务产生的信息（包括本协议签署之前提供和产生的信息）以及广和投资根据本条约定查询、收集的信息，用于广和投资及其因服务必要委托的合作伙伴为用户提供服务、推荐产品、开展市场调查与信息数据分析。用户授权广和投资，除法律另有规定之外，基于为用户提供更优质服务和产品的目的，向广和投资因服务必要开展合作的伙伴提供、查询、收集用户的信息。为确保用户信息的安全，广和投资及其合作伙伴对上述信息负有保密义务，并采取各种措施保证信息安全。本条款自本协议签署时生效，具有独立法律效力，不受合同成立与否及效力状态变化的影响。</p>
    <p>第四十四条 用户授权广和投资使用中国民生银行银联跨行网上代收系统或通过广和投资指定的支付机构按照用户本人在公司基金销售平台上的交易申请金额，通过用户绑定的银行账户进行基金交易资金的代收划转。代收资金用途为基金认购、基金申购、基金定期定额。</p>
    <p>第四十五条 广和投资有义务根据有关法律要求向司法机关和政府部门提供您的个人资料。在用户未能按照与广和投资签订的服务协议的约定履行自己应尽的义务时，广和投资有权根据自己的判断，披露用户的个人信息和资料，并做出评论。您严重违反广和投资的相关规则（包括但不限于您的借款逾期超过[30]天等）的，广和投资有权对用户提供的及广和投资自行收集的用户的个人信息和资料编辑入网站黑名单，并将该黑名单对第三方披露，且广和投资有权将您提交或广和投资自行收集的您的个人资料和信息与任何第三方进行数据共享，以便网站和第三方催收逾期借款及对您的其他申请进行审核之用，由此可能造成的您的任何损失，广和投资不承担法律责任。</p>
    <p class="protocol_section">第十一章 知识产权的保护</p>
    <p>第四十六条 广和投资平台上所有内容，包括但不限于著作、图片、档案、资讯、资料、平台架构、平台画面的安排、网页设计，均由广和投资或其他权利人依法拥有其知识产权，包括但不限于商标权、专利权、著作权、商业秘密等。</p>
    <p>第四十七条 非经广和投资或其他权利人书面同意，任何人不得擅自使用、修改、复制、公开传播、改变、散布、发行或公开发表公司平台程序或内容。</p>
    <p>第四十八条 用户未经广和投资的明确书面同意不许下载（除了页面缓存）或修改平台或其任何部分。用户不得对广和投资平台或其内容进行转售或商业利用；不得收集和利用产品目录、说明和价格；不得对广和投资平台或其内容进行任何衍生利用；不得为其他商业利益而下载或拷贝账户信息或使用任何数据采集、Robots或类似的数据收集和摘录工具。未经广和投资的书面许可，严禁对广和投资平台的内容进行系统获取以直接或间接创建或编辑文集、汇编、数据库或人名地址录（无论是否通过Robots、Spiders、自动仪器或手工操作）。另外，严禁为任何未经本使用条件明确允许的目的而使用广和投资平台上的内容和材料。</p>
    <p>第四十九条 未经广和投资明确书面同意，不得以任何商业目的对广和投资网站或其任何部分进行复制、复印、仿造、出售、转售、访问、或以其他方式加以利用。未经广和投资明确书面同意，个人用户不得用frame或运用frame技巧把广和投资或其关联公司的商标、标识或其他专有信息（包括图像、文字、网页设计或形式）据为己有。</p>
    <p>第五十条 尊重知识产权是用户应尽的义务，如有违反，用户应对广和投资承担损害赔偿等法律责任。</p>
    <p class="protocol_section">第十二章 条款的解释、法律适用及争端解决</p>
    <p>第五十一条 本协议是由用户与广和投资共同签订的，适用于用户在广和投资的全部活动。本协议内容包括但不限于协议正文条款及已经发布的或将来可能发布的各类规则，所有条款和规则为协议不可分割的一部分，与协议正文具有同等法律效力。</p>
    <p>第五十二条 本协议不涉及用户与广和投资的其他用户之间，因网上交易而产生的法律关系及法律纠纷。但用户在此同意将全面接受并履行与广和投资其他用户在广和投资签订的任何电子法律文本，并承诺按照该法律文本享有和（或）放弃相应的权利、承担和（或）豁免相应的义务。</p>
    <p>第五十三条 如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，则应认为该条款可与本协议相分割，并可被尽可能接近各方意图的、能够保留本协议要求的经济目的的、有效的新条款所取代，而且，在此情况下，本协议的其他条款仍然完全有效并具有约束力。</p>
    <p>第五十四条 本协议及其修订的有效性、履行与本协议及其修订效力有关的所有事宜，将受中国法律管辖，任何争议仅适用中国法律。</p>
    <p>第五十五条 本协议签订地为中国北京市。因本协议所引起的用户与广和投资的任何纠纷或争议，首先应友好协商解决，协商不成的，用户在此完全同意将纠纷或争议提交广和投资所在地有管辖权的人民法院诉讼解决。</p>

</div>
<div id="myModal2" class="modal">

    <span class="close" onclick="document.getElementById('myModal2').style.display='none'">&times;</span>
    <p class="protocol_title">合格投资者认定</p>
    </br>
    </br>
    <p class="protocol_section" style="text-indent: 25px;">根据《私募投资基金监督管理暂行办法》第四章第十四条规定：“私募基金管理人、私募基金销售机构不得向合格投资者之外的单位和个人募集资金，不得通过报刊、电台、电视、互联网等公众传播媒体或者讲座、报告会、分析会、传单、手机短信、微信、博客和电子邮件等方式，向不特定对象宣传推介。”</p>
    </br>
    </br>
    </br>
    <p class="protocol_section">您如有意进行私募投资基金投资且满足《私募投资基金监督管理暂行办法》关于“合规投资者标准之规定：</p>
    </br>
    <p style="text-indent: 50px;">具备相应风险识别能力和风险承担能力，</p>
    <p style="text-indent: 50px;">投资于单只私募基金的金额不低于100万元，</p>
    <p style="text-indent: 50px;">个人金融类资产不低于300万元或者最近三年个人年均收入不低于50万元人民币。</p>
    </br>
    </br>
    </br>
    <p>请您详细阅读本提示，如符合以上合规投资者条件，方可获得广和投资产口宣传推介服务。</p>


</div>
<div class="footer">
    <div class="footer_wrapp">

        <div class="footer_bottom">
            <div class="footer_bottom_left">
                <p>Copyright © 2005 Company Name. Rights Reserved广和投资有限公司版权所有 </p>
            </div>
            <div class="footer_bottom_right">
                <p>北京市朝阳区姚家园路105号冶金地质总局观湖国际2座1层</p>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script src="/static/layer/layer.js?v=2"></script>
<script src="/static/js/main.js"></script>
<script>
    var $s1 = $(".section1");
    var $agree = $("#agree");


    $('.input').focus(function(){
        $(this).addClass("focus")
    })
    $('.input').blur(function(){
        $(this).removeClass("focus")
    })
    $agree.on("click",function(){
        if ($agree.hasClass('agree')) {
            $agree.removeClass('agree')
        } else {
            $agree.addClass('agree')
        }
    })
    function openpro(t){
        if(t){
            document.getElementById('myModal1').style.display='block'

        } else {
            document.getElementById('myModal2').style.display='block'
            disabledMouseWheel();

        }
        document.getElementById('cover').style.display = 'block';

    }
    document.getElementById("cover").style.height = $(document).height()+"px";
    $(".close").on("click", function () {
        document.getElementById('myModal1').style.display='none';
        document.getElementById('myModal2').style.display='none';
        document.getElementById('cover').style.display='none';
        opensc();
    })


    function disabledMouseWheel()  {
        if (document.addEventListener)  {
            document.addEventListener('DOMMouseScroll',  dis,  false);
        }
        window.onmousewheel  =  document.onmousewheel  =  dis;
    }

    function opensc()  {
        if (document.addEventListener)  {
            document.addEventListener('DOMMouseScroll',  scrollFunc,  false);
        }
        window.onmousewheel  =  document.onmousewheel  =  scrollFunc;
    }

    function  scrollFunc(evt)  {
        return true;
    }
    function dis(){
        return false;
    }

    function getCode(){
        var type = 0;
        var mobile = $("#phone").val();

        if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
            alert("不是完整的11位手机号或者正确的手机号");
            return;
        }


        $.ajax({
            type: "post",
            url: "/login/sendCode",
            data:{"mobile": mobile,"type":type},
            dataType: "json",
            success:function(res) {
                if(data.success == false){
                    alert(data.errMsg);
                    return;
                }

            }
        });
    }


    //检查手机号
    function userRegister(){

        var mobile = $("#phone").val();
        if(!(/^1[0-9][0-9]\d{8}$/.test(mobile))){
            alert("不是完整的11位手机号或者正确的手机号");
            return;
        }
        var password = $("#password").val();
        if(password == "" || password.length < 6){
            alert("密码长度不能小于6位");
            return;
        }
        var confirmPassword = $("#confirmPassword").val();
        if(password != confirmPassword){
            alert("密码和确认密码不一致");
            return;
        }
        var authCode = $("#authCode").val();
        if(authCode == "" || authCode.length != 6){
            alert("验证码长度不能小于6位");
            return;
        }
        var financialManagerNumber = $("#financialManagerNumber").val();
        ///login/register

        if(!$(".agree").length){
            alert("请阅读并同意服务协议");
            return;
        }
        $.ajax({
            type: "post",
            url: "/login/register",
            data:{"mobile": mobile,"password":password,"confirmPassword":confirmPassword,
                "authCode":authCode,"financialManagerNumber":financialManagerNumber},
            dataType: "json",
            success:function(res) {
                if(res.success == false){
                    alert(res.errMsg);
                    return;
                }else{
                    $.ajax({
                        type: "post",
                        url: "/login/signIn",
                        data:{"mobile": mobile,"password":password,"type":0},
                        dataType: "json",
                        success:function(res) {
                            if(res.success == false){
                                alert(res.errMsg);
                                return;
                            }else{
                                window.location.href = "/";
                            }

                        }
                    });
                }
            }
        });
    }
    function settime() {
        if (countdown == 0) {
            $yzm_btn.removeClass("disabled");
            $yzm_btn[0].textContent = "发送验证码";
            countdown = 60;
            return;
        } else {
            $yzm_btn[0].textContent = "重新发送(" + countdown + ")";
            countdown--;
        }
        setTimeout(function () {
            settime();
        }, 1000)
    }
    var countdown = 60;
    var $yzm_btn = $(".yzm_btn");
    $yzm_btn.on("click",function(){
        if($yzm_btn.hasClass("disabled"))return;
        var mobile = $("#phone").val();
        if(!(/^1[1-9][0-9]\d{8}$/.test(mobile))){
            alert('不是有效的手机号码');
            return;
        }
        $.ajax({
            type: "post",
            url: "/login/sendCode",
            data:{"mobile": mobile,"type":0},
            dataType: "json",
            success:function(rs) {
                if(rs.success){
                    settime();
                    $yzm_btn.addClass("disabled");
                }else{
                    if(rs.success == false){
                        alert(rs.errMsg);
                        return;
                    }
                }
            }
        });

    })
</script>
</html>