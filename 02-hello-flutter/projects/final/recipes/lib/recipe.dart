class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples2 = [
    Recipe('Feijoada', 'assets/2126711929_ef763de2b3_w.jpg', 8, [
      Ingredient(500, 'g', 'feijão preto'),
      Ingredient(200, 'g', 'carne seca'),
      Ingredient(200, 'g', 'costelinha de porco'),
      Ingredient(1, '', 'linguiça paio'),
      Ingredient(1, '', 'linguiça calabresa'),
      Ingredient(100, 'g', 'bacon'),
      Ingredient(2, '', 'cebolas picadas'),
      Ingredient(4, 'dentes', 'alho picado'),
      Ingredient(3, 'folhas', 'louro'),
    ]),
    Recipe('Pão de Queijo', 'assets/2126711929_ef763de2b3_w.jpg', 20, [
      Ingredient(500, 'g', 'polvilho azedo'),
      Ingredient(250, 'ml', 'leite'),
      Ingredient(100, 'ml', 'óleo'),
      Ingredient(100, 'ml', 'água'),
      Ingredient(200, 'g', 'queijo minas curado ralado'),
      Ingredient(2, '', 'ovos'),
      Ingredient(1, 'colher de chá', 'sal'),
    ]),
    Recipe('Moqueca Baiana', 'assets/2126711929_ef763de2b3_w.jpg', 4, [
      Ingredient(1, 'kg', 'peixe branco em postas'),
      Ingredient(2, '', 'cebolas em rodelas'),
      Ingredient(1, '', 'pimentão vermelho em rodelas'),
      Ingredient(1, '', 'pimentão amarelo em rodelas'),
      Ingredient(4, '', 'tomates em rodelas'),
      Ingredient(400, 'ml', 'leite de coco'),
      Ingredient(2, 'colheres de sopa', 'azeite de dendê'),
      Ingredient(1, 'maço', 'coentro picado'),
    ]),
    Recipe('Brigadeiro', 'assets/2126711929_ef763de2b3_w.jpg', 30, [
      Ingredient(1, 'lata', 'leite condensado'),
      Ingredient(4, 'colheres de sopa', 'chocolate em pó'),
      Ingredient(1, 'colher de sopa', 'manteiga'),
      Ingredient(1, 'xícara', 'chocolate granulado'),
    ]),
    Recipe('Coxinha de Frango', 'assets/2126711929_ef763de2b3_w.jpg', 15, [
      Ingredient(500, 'g', 'peito de frango cozido e desfiado'),
      Ingredient(2, 'xícaras', 'caldo do cozimento do frango'),
      Ingredient(2, 'xícaras', 'farinha de trigo'),
      Ingredient(2, 'colheres de sopa', 'manteiga'),
      Ingredient(1, '', 'cebola picada'),
      Ingredient(2, 'dentes', 'alho picado'),
      Ingredient(0.5, 'xícara', 'cheiro-verde picado'),
    ]),
    Recipe('Caipirinha', 'assets/2126711929_ef763de2b3_w.jpg', 1, [
      Ingredient(1, '', 'limão Taiti'),
      Ingredient(2, 'colheres de sopa', 'açúcar'),
      Ingredient(50, 'ml', 'cachaça'),
      Ingredient(1, 'xícara', 'gelo em cubos'),
    ]),
  ];

  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs', 'assets/2126711929_ef763de2b3_w.jpg', 4, [
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce'),
    ]),
    Recipe('Tomato Soup', 'assets/27729023535_a57606c1be.jpg', 2, [Ingredient(1, 'can', 'Tomato Soup')]),
    Recipe('Grilled Cheese', 'assets/3187380632_5056654a19_b.jpg', 1, [
      Ingredient(2, 'slices', 'Cheese'),
      Ingredient(2, 'slices', 'Bread'),
    ]),
    Recipe('Chocolate Chip Cookies', 'assets/15992102771_b92f4cc00a_b.jpg', 24, [
      Ingredient(4, 'cups', 'flour'),
      Ingredient(2, 'cups', 'sugar'),
      Ingredient(0.5, 'cups', 'chocolate chips'),
    ]),
    Recipe('Taco Salad', 'assets/8533381643_a31a99e8a6_c.jpg', 1, [
      Ingredient(4, 'oz', 'nachos'),
      Ingredient(3, 'oz', 'taco meat'),
      Ingredient(0.5, 'cup', 'cheese'),
      Ingredient(0.25, 'cup', 'chopped tomatoes'),
    ]),
    Recipe('Hawaiian Pizza', 'assets/15452035777_294cefced5_c.jpg', 4, [
      Ingredient(1, 'item', 'pizza'),
      Ingredient(1, 'cup', 'pineapple'),
      Ingredient(8, 'oz', 'ham'),
    ]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
