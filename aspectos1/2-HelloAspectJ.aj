package aspects;

import helloworld.HelloAspectJDemo;

public aspect HelloAspectJ {

	pointcut callSayHello(): call(* HelloAspectJDemo.sayHello());

	before() : callSayHello() {
		System.out.println("Before call sayHello");
	}

	after() : callSayHello()  {
		System.out.println("After call sayHello");
	}
	
	

}
