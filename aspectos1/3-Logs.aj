package aspects; 

public aspect Logs {
	
	before()
	: execution(public * *(..)) 
		&& within(helloworld.*) {
		System.out.println("Executando método publico: " + thisJoinPoint.toString());
	}

}
