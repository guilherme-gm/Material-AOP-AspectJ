package aspects;

public aspect Exemplos {

	declare error
	: get(java.io.PrintStream System.out) && within(figures.*)
	: "System.out não deve ser usado.";
	
}
