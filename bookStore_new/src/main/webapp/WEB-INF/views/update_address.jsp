<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/1
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="include/header_1.jsp"/>
<jsp:include page="include/top.jsp"/>
<jsp:include page="include/search.jsp"/>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8" />
    <title>个人信息</title>
    <link rel="stylesheet" type="text/css" href="../../css/public.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/mygxin.css" />

    <style>
        input{
            width: 200px;
            border: 1px solid grey;
            height: 30px;
            margin-top: 10px;
        }
        select{
            width: 200px;
            border: 1px solid grey;
            height: 30px;
            margin-right: 15px;
        }
    </style>
</head>
<body>
<!------------------------------head------------------------------>
<%--<div class="head ding">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top">
            <h1 class="fl"><a href="../../index.html"><img src="../../img/logo.png"/></a></h1>
            <div class="fr clearfix" id="top1">
                <p class="fl">
                    <a href="#" id="login">登录</a>
                    <a href="#" id="reg">注册</a>
                </p>
                <form action="#" method="get" class="fl">
                    <input type="text" placeholder="搜索" />
                    <input type="button" />
                </form>
                <div class="btn fl clearfix">
                    <a href="mygxin.html"><img src="../../img/grzx.png"/></a>
                    <a href="#" class="er1"><img src="../../img/ewm.png"/></a>
                    <a href="cart.html"><img src="../../img/gwc.png"/></a>
                    <p><a href="#"><img src="../../img/smewm.png"/></a></p>
                </div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="../../index.html">首页</a></li>
            <li>
                <a href="#">所有商品</a>
                <div class="sList">
                    <div class="wrapper  clearfix">
                        <a href="paint.html">
                            <dl>
                                <dt><img src="../../img/nav1.jpg"/></dt>
                                <dd>浓情欧式</dd>
                            </dl>
                        </a>
                        <a href="paint.html">
                            <dl>
                                <dt><img src="../../img/nav2.jpg"/></dt>
                                <dd>浪漫美式</dd>
                            </dl>
                        </a>
                        <a href="paint.html">
                            <dl>
                                <dt><img src="../../img/nav3.jpg"/></dt>
                                <dd>雅致中式</dd>
                            </dl>
                        </a>
                        <a href="paint.html">
                            <dl>
                                <dt><img src="../../img/nav6.jpg"/></dt>
                                <dd>简约现代</dd>
                            </dl>
                        </a>
                        <a href="paint.html">
                            <dl>
                                <dt><img src="../../img/nav7.jpg"/></dt>
                                <dd>创意装饰</dd>
                            </dl>
                        </a>
                    </div>
                </div>
            </li>
            <li>
                <a href="flowerDer.html">装饰摆件</a>
                <div class="sList2">
                    <div class="clearfix">
                        <a href="proList.html">干花花艺</a>
                        <a href="vase_proList.html">花瓶花器</a>
                    </div>
                </div>
            </li>
            <li>
                <a href="decoration.html">布艺软饰</a>
                <div class="sList2">
                    <div class="clearfix">
                        <a href="zbproList.html">桌布罩件</a>
                        <a href="bzproList.html">抱枕靠垫</a>
                    </div>
                </div>
            </li>
            <li><a href="paint.html">墙式壁挂</a></li>
            <li><a href="perfume.html">蜡艺香薰</a></li>
            <li><a href="idea.html">创意家居</a></li>
        </ul>
    </div>
</div>--%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix">
        <a href="/home" class="fl">首页</a>
        <span>/</span>
        <a href="/mine" class="on">个人中心</a>
    </div>
</div>

<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img src="../../img/tx.png"/></a>
                <p class="clearfix"><span class="fl">${user.name}</span><span class="/lofo"><a href="">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>我的交易</h4>
                <ul>
                    <li><a href="/cart">我的购物车</a></li>
                    <li><a href="/myorder">我的订单</a></li>
                    <%--<li><a href="myprod.html">评价晒单</a></li>--%>
                </ul>
                <h4>个人中心</h4>
                <ul>
                    <li  class="on"><a href="/mine">我的中心</a></li>
                    <li><a href="/adress">地址管理</a></li>
                </ul>
                <h4>账户管理</h4>
                <ul>
                    <li><a href="/mine_message">个人信息</a></li>
                    <li><a href="/update_p">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <div >
                <form action="/update_address">
                    <p  >姓名：<input type="text" name="name"  value="${addre.name}" /></p>
                    <p hidden >id：<input type="text" name="id"  value="${addre.id}" /></p>
                    <p  >手机号： <input type="text" name="phone"  value="${addre.phone}"  /></p>
                    <p hidden> <input   type="text" name="province" id="addr-pro"  placeholder="您选择的是"  value="${addre.province}"/></p>
                    <p hidden> <input   type="text" name="city" id="addr-city" placeholder="您选择的是" value="${addre.city}"/></p>
                    <p hidden><input   type="text" name="district" id="addr-dis" placeholder="您选择的是"  value="${addre.district}"/></p>
                    <p>
                    <br>

                    <h3 onclick="showProv()" >点击选择省市区</h3>
                    <br>

                    <hr>
                    <br>

                        <select id="prov" onclick="showCity(this)" >
                            <option  >=请选择省份=</option>
                        </select>

                        <select id="city"    onclick="showCountry(this)">
                            <option  >=请选择城市=</option>
                        </select>

                        <select id="country"     onclick="selecCountry(this)">
                            <option >=请选择县区=</option>
                        </select>

                        <button  style="height: 30px;width: 50px"  type="button" onClick="showAddr()"  >确定</button>

                    </p>
                    <input style="height: 80px" width="150px" type="text" name="address" placeholder="详细地址"  value="${addre.address}"></input>
                    <div class="bc">
                        <input type="submit" value="保存" />
                        <input type="button" value="取消" />
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>



<!--返回顶部-->
<div class="gotop">
    <a href="/cart">
        <dl>
            <dt><img src="../../img/gt1.png"/></dt>
            <dd>去购<br />物车</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="../../img/gt2.png"/></dt>
            <dd>联系<br />客服</dd>
        </dl>
    </a>
    <a href="/mine">
        <dl>
            <dt><img src="../../img/gt3.png"/></dt>
            <dd>个人<br />中心</dd>
        </dl>
    </a>
    <a href="#" class="toptop" style="display: none">
        <dl>
            <dt><img src="../../img/gt4.png"/></dt>
            <dd>返回<br />顶部</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div>
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix">
                <a href="#2" class="fl"><img src="../../img/foot1.png"/></a>
                <span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix">
                <a href="#2" class="fl"><img src="../../img/foot2.png"/></a>
                <span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix">
                <a href="#2" class="fl"><img src="../../img/foot3.png"/></a>
                <span class="fl">满599包邮</span>
            </div>
            <div class="clearfix">
                <a href="#2" class="fl"><img src="../../img/foot4.png"/></a>
                <span class="fl">手机特色服务</span>
            </div>
        </div>
    </div>
    <p class="dibu">WELCOME TO<br />BOOKSTORE</p>
</div>
<script src="../../js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="../../js/user.js" type="text/javascript" charset="utf-8"></script>
<script src="../../js/city.js" type="text/javascript" charset="utf-8"></script>
<script src="../../js/method.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>

