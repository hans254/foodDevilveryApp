class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({
    required this.description,
    required this.image,
    required this.title,
  });
}
List<OnboardingContent> contents=[
  OnboardingContent(
    description: "Pick your food from our menu\n   More than 35 times", 
    image: "images/beyti-wrapped-kebab-topped-with-tomato-sauce-served-with-tomato-pepper-yoghurt.jpg", 
    title: "Select from Our\n   Best Menu",
  ),
  OnboardingContent(
    description: "You can pay cash on delivery and\n Card payment is also available", 
    image: "images/chicken-skewers-with-slices-sweet-peppers-dill.jpg", 
    title: "Easy and Online Payment",
  ),
  OnboardingContent(description: "We Deliver your food at your\n  Doorstep", 
  image: "images/fried-chicken-with-grilled-potatoes-eggplants-tomatoes-peppers.jpg",
  title: "Quick Delivery at your Doorstep")
];
