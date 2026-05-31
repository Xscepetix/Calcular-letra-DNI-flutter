import java.awt.event.*;
import javax.swing.*;

class DNI extends JFrame implements ActionListener{
	//ATRIBUTOS
	private JLabel lTitulo;
	private JLabel lNumero;
	private JLabel lLetra;

	//BOTONES
	JButton bCalcular=new JButton("Calcular letra");
	JButton bBorrar=new JButton("Borrar");
	JButton bSalir=new JButton("Salir");

	//TEXTO
	JTextField tNumero;
	JTextField tLetra;

	//CONSTRUCTOR
	//FRAME
	public DNI(){
		setLayout(null);
		setTitle("DNI");

	//ACCIONES
		bCalcular=new JButton("Calcular letra");

			bCalcular.setBounds(330, 150, 120, 40);
			add(bCalcular);
			bCalcular.addActionListener(this);

		bBorrar=new JButton("Borrar");

			bBorrar.setBounds(190, 150, 120, 40);
			add(bBorrar);
			bBorrar.addActionListener(this);

		bSalir=new JButton("Salir");

			bSalir.setBounds(50, 150, 120, 40);
			add(bSalir);
			bSalir.addActionListener(this);

	//TEXTO
		lNumero=new JLabel("Ingrese numero: ");
		
			lNumero.setBounds(15, 20, 300, 20);
			add(lNumero);

		lLetra=new JLabel("Letra del DNI: ");
		
			lLetra.setBounds(15, 80, 300, 20);
			add(lLetra);

	//DNI
		tNumero=new JTextField("");

			tNumero.setBounds(190, 20, 260, 40);
			add(tNumero);

		tLetra=new JTextField("");

			tLetra.setBounds(190, 80, 260, 40);
			add(tLetra);


	}
	public void actionPerformed(ActionEvent e){
		if (e.getSource()==bBorrar) {
			tNumero.setText("");
			tLetra.setText("");
		}

		if (e.getSource()==bSalir){
			System.exit(0);
		}

		

    	if (e.getSource() == bCalcular) {
    		String input = tNumero.getText();
	
    		if (input.length() != 8) {
    		    tLetra.setText("Número inválido");
    		    return;
    		}
		
    		try {
    		    int dni = Integer.parseInt(input);
    		    String letras = "TRWAGMYFPDXBNJZSQVHLCKE";
    		    char letra = letras.charAt(dni % 23);
    		    tLetra.setText(String.valueOf(letra));
    		} catch (NumberFormatException ex) {
    		    tLetra.setText("Error: solo números");
    		}
    	}
    
	}
}