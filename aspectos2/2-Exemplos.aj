package aspects;

public aspect Exemplos {

	declare error
	: get(java.io.PrintStream System.out) && within(figures.*)
	: "System.out não deve ser usado.";
	
	declare warning
	: set(private * *)
		&& !(withincode(void set*(..)) || withincode(new(..))) 
		&& within(figures.*)
	: "Valores devem ser definidos utilizando setters.";
		
	
}
