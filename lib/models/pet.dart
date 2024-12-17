class Pet {
  final String id;
  final String name;
  final String profileImageUrl; // Correct property for the image URL
  final String breed;
  final String age;
  final String ownerName;

  // Constructor with required fields
  Pet({
    required this.id,
    required this.name,
    required this.profileImageUrl,
    required this.breed,
    required this.age,
    required this.ownerName,
  });

  // Convert a Pet object into a Map (for serialization)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'profileImageUrl': profileImageUrl, // Correct key
      'breed': breed,
      'age': age,
      'ownerName': ownerName,
    };
  }

  // Factory method to create a Pet object from a Map (for deserialization)
  factory Pet.fromMap(Map<String, dynamic> map) {
    return Pet(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      profileImageUrl: map['profileImageUrl'] ?? '', // Handle missing keys safely
      breed: map['breed'] ?? '',
      age: map['age'] ?? '',
      ownerName: map['ownerName'] ?? '',
    );
  }
}
