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
        null, null, null, null
};


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

}