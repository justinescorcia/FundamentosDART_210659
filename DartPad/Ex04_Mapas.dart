void main() {
  
  final pokemon = {
    "Name": "vaporeon",
    "HP": 100,
    'isAlive': true,
    'abilities':['Chorro de agua','chorrote de agua','Mega chorro de agua','Golpexdxdxd'],
    'sprites':
    {
      1:"vaporeon/front.png",
      2:"vaporeon/back.png"
    }
  };
  
  
  final Map<String, dynamic>trainer = {
    'Nmae' : 'Ash Ketchup',
    'Gender' : 'Male',
    'Age' : 12,
    'isGymnasiumLeader' : false
  };
  
    final pokemons=
  {
    1: "Pikachu",
    2: "Charmander",
    3: "Squirtle",
    4: "Pidgeot"
  };
  
  // Imprimir los deatos de un mapa
  print("""

  Los datos del pokemon son usando el Mapa son:
  ---------------------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons
  ---------------------------------------------
  """);
    print("""
  
  Accediento a las propiedades del pokemon usando los braquets/corhchetes []
  -------------------------------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  -------------------------------------------------------------------------
  
  """);
  
  print("*********************************************************");
  
 
  final tmp_sprites = pokemon['sprites'] as Map<int,String>;
  
  
  print("""
  
  Accediento a las propiedades del pokemon usando los braquets/corchetes []
  -------------------------------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
  Sprites = ${pokemon['sprites']}
  -------------------------------------------------------------------------
  Back: ${tmp_sprites[2]}
  Front: ${tmp_sprites[1]}
  
  """);
  // Reto 01: Obtener el valor independiente de las imagenes de Front y back del pokemon
  
  // Front: $((pokemon['sprites'])[1])
  // Back: ${pokemon['sprites']}
}
  




