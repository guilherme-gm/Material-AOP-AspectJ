package aspects;

public aspect Exemplos {

	declare error
	: get(java.io.PrintStream System.out) && within(figures.*)
	: "System.out n�o deve ser usado.";
	
}
