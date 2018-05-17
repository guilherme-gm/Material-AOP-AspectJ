package aspects;

import figures.Point;

public aspect Validar {

	before(int val)
	: set(private int Point.*)
		&& args(val) {
		if (val < 0) {
			throw new IllegalArgumentException("Coordenadas do ponto não podem ser negativas");
		}
	}

}
