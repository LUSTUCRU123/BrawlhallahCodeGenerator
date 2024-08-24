import random
import string

def generate_brawlhalla_code():
    characters = string.ascii_uppercase + string.digits
    
    # Générer les six premiers caractères
    first_part = ''.join(random.choice(characters) for _ in range(6))
    
    # Générer les six derniers caractères
    second_part = ''.join(random.choice(characters) for _ in range(6))
    
    # Retourner le code au format xxxxxx-xxxxxx
    return f"{first_part}-{second_part}"

def append_multiple_codes_to_file(num_codes=50000):
    with open("brawlhallaCode.txt", "a") as file:
        for _ in range(num_codes):
            brawlhalla_code = generate_brawlhalla_code()
            file.write(brawlhalla_code + "\n")
            print(f"Generated Brawlhalla code: {brawlhalla_code}")

# Appel de la fonction pour générer et ajouter 50 codes au fichier
append_multiple_codes_to_file()
