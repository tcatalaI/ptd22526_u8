public class Pais {
    private String codi;
    private String nom;
    private char grup;
    private String imatge;

    // Constructor
    public Pais(String codi, String nom, char grup) {
        this.codi = codi;
        this.nom = nom;
        this.grup = grup;
    }
// Constructor que només treballa amb codi i grup
public Pais(String codi, char grup) {
    this.codi = codi;
    this.grup = grup;
    this.nom = codi;              // Mateix
}

// Constructor que només treballa amb codi
    public Pais(String codi) {
        this.codi = codi;
        this.nom = codi; // Valor per defecte per a nom
        this.grup = 'X'; // Valor per defecte per a grup
        this.imatge = codi.toUpperCase() + ".png"; // Assignar la imatge basada en el codi
    }
    public String getCodi() {
        return codi;
    }

    public String getNom() {
        return nom;
    }

    public char getGrup() {
        return grup;

    }
    public String getImatge() {
        return imatge;
    }

    // Setters
    public void setCodi(String codi) {
        this.codi = codi;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setGrup(char grup) {
        this.grup = grup;
    }

    // toString method
    @Override
    public String toString() {
        return "Pais{" +
                "codi='" + codi + '\'' +
                ", nom='" + nom + '\'' +
                ", grup=" + grup +
                '}';
    }
}