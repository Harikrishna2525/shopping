class Model1
{
  String? image;

  Model1(this.image);
}
List car = a.map((e) => Model1(e["image"])).toList();
var a  = [
  {"image":"https://img.freepik.com/free-psd/horizontal-banner-template-big-sale-with-woman-shopping-bags_23-2148786755.jpg"},
  {"image":"https://img.freepik.com/free-psd/sales-horizontal-banner-template_23-2148912910.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1709856000&semt=ais"},
  {"image":"https://marketplace.canva.com/EAFoustdoMc/1/0/1600w/canva-beige-aesthetic-fashion-style-banner-landscape-k4EiS0uPqD0.jpg"},
];
//
class Model2
{
  String? image;
  String? text;
  String? text1;

  Model2(this.image,this.text,this.text1);
}
List dres = b.map((e) => Model2(e["image"], e["text"], e["text1"])).toList();
var b = [
  {"image":"https://happywoman.bg/wp-content/uploads/2022/02/inbound3344484255223534559.jpg","text":"success","text1":"by Louis Phiple"},
  {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP-q6POsAUG8aHBl1KWScoo78zT4JCelJrbRLq5vXmPWJqula1vJNuy8_PqMNJOeYABl0&usqp=CAU","text":"Fashion","text1":"by max trends"},
  {"image":"https://images.meesho.com/images/products/142753903/2oi2h_512.jpg","text":"Guides of fashion","text1":"by trends"},
  {"image":"https://imgmedia.lbb.in/media/2020/08/5f39848236670374cd0ae435_1597604994156.jpg","text":"Culture","text1":"by cultures fashion"},
];