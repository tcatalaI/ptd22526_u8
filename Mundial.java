import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class Mundial {

private static    Pais[] paisosClassificats = {
        new Pais("USA"), new Pais("CAN"), new Pais("MEX"), new Pais("JPN"),
        new Pais("IRN"), new Pais("KOR"), new Pais("AUS"), new Pais("JOR"),
        new Pais("QAT"), new Pais("KSA"), new Pais("UZB"), new Pais("ALG"),
        new Pais("CPV"), new Pais("EGY"), new Pais("GHA"), new Pais("CIV"),
        new Pais("MAR"), new Pais("SEN"), new Pais("RSA"), new Pais("TUN"),
        new Pais("ENG"), new Pais("NZL"), new Pais("ARG"), new Pais("BRA"),
        new Pais("COL"), new Pais("ECU"), new Pais("PAR"), new Pais("URU"),
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null,
        null, null, null, null};

public static Pais[] getPaisosClassificats() {
    return paisosClassificats;
}
    public static boolean participaAlMundial2026(String codiPais) {

        for (Pais pais : paisosClassificats) {
            if (pais.getCodi().equalsIgnoreCase(codiPais)) {
                return true;
            }
        }
        return false;

    }

    public static short nombrePaisosClassificats() {
        // Retorna el nombre de paisos classificats

        int i = 0;

        for (Pais pais : paisosClassificats) {
            if (pais != null) {
                i++;
            }
        }
        return (short) i++;
    }

    public static Pais getPais (short pais) {
        // Donat un index de pais retorna la codificació
        return paisosClassificats[pais];
    }

    public static boolean assignarPaisEnPosicio(Pais nouPais, int posicio) {
        if (nouPais == null) return false;
        if (posicio < 0 || posicio >= paisosClassificats.length)
            return false;


        paisosClassificats[posicio] = nouPais;
           return true;

    }

    public static void carregarPaisos (String nom ) {
            // Ens passen un argument
            try {
                FileReader llegir = new FileReader(nom);
                BufferedReader br = new BufferedReader(llegir);
                String linia;
                int pos =0;
                while ((linia = br.readLine()) != null) {
                    // Separar els camps utilitzant la coma com a delimitador
                    String[] camps = linia.split(",");
                    System.out.println(camps[0] + " - " + camps[1]+ " - " + camps[2]);
                    Pais p1 = new Pais(camps[0], camps[1], camps[2].charAt(0));
                    Mundial.assignarPaisEnPosicio(p1, pos);
                    pos++;



                }
            } catch (FileNotFoundException e) {
                System.out.println("No s'ha trobat el fitxer: " + nom);

            } catch (IOException e) {
                System.out.println("Error en llegir línia: ");
            }



    }
    public static void inserirBD(Pais[] p_paisos) {

        String url = "jdbc:mysql://localhost:3306/mundial26";
        String usuari = "root";
        String contrasenya = "";

        try {
            Connection conn = DriverManager.getConnection(url, usuari, contrasenya);

            String sql = "INSERT INTO pais (pai_cod, pai_nom, pai_gru) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            for (Pais pais : p_paisos) {
                if (pais != null) {
                    try {
                        stmt.setString(1, pais.getCodi());
                        stmt.setString(2, pais.getNom());
                        stmt.setString(3, String.valueOf(pais.getGrup()));

                        int filesInserides = stmt.executeUpdate();

                        if (filesInserides > 0) {
                            System.out.println("S'ha inserit el pais " + pais.getCodi());
                        }

                    } catch (SQLException e) {
                        System.out.println("No s'ha pogut inserir el pais " + pais.getCodi());
                    }
                }
            }

            stmt.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("No s'han pogut inserir les dades.");
        }
    }


}