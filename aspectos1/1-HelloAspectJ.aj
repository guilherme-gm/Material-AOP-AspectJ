package aspects;

import helloworld.HelloAspectJDemo;

public aspect HelloAspectJ {

	before() : call(* HelloAspectJDemo.sayHello()) {
		System.out.println("Before call sayHello");
	}

	after() : call(* HelloAspectJDemo.sayHello())  {
		System.out.println("After call sayHello");
	}
	
	

}
