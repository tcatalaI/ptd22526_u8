import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URL;

public class AlbumGUI {
    private JPanel root;
    private JButton envantButton;
    private Album album = new Album();
    private int index =0;
    private Cromo cromo;

    public static void main(String[] args) {
        JFrame frame = new JFrame("AlbumGUI");
        frame.setContentPane(new AlbumGUI().root);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

    private JButton enrereButton;
    private JLabel imatge;
    private JLabel pais;
    private JLabel grup;
    private JLabel nombre;

    public AlbumGUI() {

        Mundial.carregarPaisos("mundial_2026_classificats.csv");
        Paquet paquet = new Paquet();
        album.aferrarPaquet(paquet);
        cromo = album.getSeguentCromo();
        pais.setText(cromo.getPais().getNom());
        grup.setText(String.valueOf(cromo.getPais().getGrup()));
        nombre.setText(String.valueOf(cromo.getNumero()));
        System.out.println(cromo.getPais().getImatge());

        URL url = this.getClass().getResource("/imatges/" + cromo.getPais().getImatge());
        ImageIcon icon1 = new ImageIcon(url);
        imatge.setIcon(icon1);


        envantButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cromo = album.getSeguentCromo();
                if (cromo != null) {
                    pais.setText(cromo.getPais().getNom());
                    grup.setText(String.valueOf(cromo.getPais().getGrup()));
                    nombre.setText(String.valueOf(cromo.getNumero()));
                    URL url = this.getClass().getResource("/imatges/" + cromo.getPais().getImatge());
                    ImageIcon icon1 = new ImageIcon(url);
                    imatge.setIcon(icon1);
                }
            }
        });

        enrereButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cromo = album.getAnteriorCromo();
                if (cromo != null) {
                    pais.setText(cromo.getPais().getNom());
                    grup.setText(String.valueOf(cromo.getPais().getGrup()));
                    nombre.setText(String.valueOf(cromo.getNumero()));
                    URL url = this.getClass().getResource("/imatges/" + cromo.getPais().getImatge());
                    ImageIcon icon1 = new ImageIcon(url);
                    imatge.setIcon(icon1);
                }
            }
        });
    }
}
