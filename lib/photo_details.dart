class ImageCard
{
  late  String name;
  late String picture;
  late String header;
  late String description;
  ImageCard(
  { required this.name, required this.picture, required this.header, required this.description});
}
List<ImageCard> images =
    [
      ImageCard(
          name: "Mood",
          picture:
      "https://images.pexels.com/photos/22487051/pexels-photo-22487051/free-photo-of-sailboats-on-sea-coast-behind-trees.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          header: "Mood With Nature ",
          description:
          "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings"
      ),
      ImageCard(
          name: "Aesthetic",
      picture:
      "https://images.pexels.com/photos/11602715/pexels-photo-11602715.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          header: "A touch of Aesthetic ",
          description:
          "Embrace the tranquility of aesthetics, where beauty intertwines with simplicity, offering a moment of calm amidst life's chaos."
      ),
      ImageCard(
          name: "Animals",
          picture:
      "https://images.pexels.com/photos/12030727/pexels-photo-12030727.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          header: "Animal's Story ",
          description:
          "Connect with the untamed spirit of the animal kingdom, where each creature embodies grace, strength, and the essence of nature."
      ),
      ImageCard(
        name: "City",
        picture:
        "https://images.pexels.com/photos/12564067/pexels-photo-12564067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        header: "Urban Rhythms ",
        description:
        "Immerse yourself in the vibrant heartbeat of the city, where towering skyscrapers kiss the sky, bustling streets pulse with life, and the symphony of urban energy dances through the air."
      ),
      ImageCard(
        name: "Travel",
      picture:
      "https://images.pexels.com/photos/10670515/pexels-photo-10670515.jpeg",
        header: "Wanderlust Chronicles ",
        description:
        "Embark on a voyage of discovery, where every path leads to new horizons, weaving a tapestry of memories and adventures"
      ),
      ImageCard(
        name: "Sky",
      picture:
      "https://images.pexels.com/photos/3733925/pexels-photo-3733925.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        header: "A Canvas of Wonder ",
        description:
        "Lose yourself in the infinite expanse of the sky, where clouds dance and colors blend, painting a masterpiece of wonder and awe."
      ),
      ImageCard(
        name: "Road",
        picture:
        "https://images.pexels.com/photos/1237528/pexels-photo-1237528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        header: "Endless Routes ",
        description:
        "Follow the winding trails of the open road, where each bend holds the promise of adventure and the freedom to explore."
      ),
      ImageCard(
          name: "Flower",
          picture:
      "https://images.pexels.com/photos/7175536/pexels-photo-7175536.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          header: "Botanic Elegance ",
          description:
          "Delight in the delicate beauty of flowers, where petals unfurl like whispers of nature, exuding elegance and grace."
      )
    ];
