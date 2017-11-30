int intA;
int intB;
bool bool_1;
bool bool_2;

void print(int a, int b, bool a_bool, bool b_bool) {
	if (a_bool && b_bool) {
		cout << "print only first: ";
		cout << a;
		cout << "\n";
	}
	if (b_bool && !a_bool) {
		cout << "print only second: ";
		cout << b;
		cout << "\n";
	}
	if (a_bool && b_bool) {
		cout << "print both: ";
		cout << a;
		cout << ", ";
		cout << b;
		cout << "\n";
	}　
}

bool ifLessEq (int A, int B) {
	return A <= B;
}

bool ifLess (int A, int B) {
	return A < B;
}

bool ifLargerEq (int A, int B) {
	return A >= B;
}

bool ifLarger (int A, int B) {
	return A > B;
}

int constructABB (int A, int B) {
	if ( ifLess(A, 10) && ifLargerEq(A, 0)) {
		if ( ifLess(B, 10) && ifLargerEq(B, 0)) {
			return 100*A + 11*B;
		} else {
			int newB;
			cout << "B is not in the range from 0 to 10, re-enter value for B: "
			cin >> newB;
			return constructABB(A, newB);
		}
	} else {
		int newA;
		cout << "A is not in the range from 0 to 10, re-enter value for A: "
		cin >> newA;
		return constructABB(newA, B);
	}
}

int maxOfFour (int A, int B, int C, int D) {
	int max;
	max = A;
	if ( ifLargerEq(B, max) ) {
		max = B;
	}
	if ( ifLargerEq(C, max) ) {
		max = C;
	}
	if ( ifLarger(D, max) ) {
		max = D;
	}
	return max;
}

int minOfFour (int A, int B, int C, int D) {
	int min;
	min = A;
	if ( ifLessEq(B, min) ) {
		min = B;
	}
	if ( ifLessEq(C, min) ) {
		min = C;
	}
	if ( ifLessEq(C, min) ) {
		min = D;
	}
	return min;
}

int sumFromTo (int start, int end) {
	int sum;
	if ( ifLessEq(A, B)) {
		sum = start;
		while ( start < end) {
			start ++;
			sum = sum + start;
		}
	} else {
		sum = end;
		while ( end < start ) {
			end ++;
			sum = sum + end;
		}
	}
	return sum;
}

void main( ) {
	int mainIntA;
	int mainIntB;
	bool mainBoolA;
	bool mainBoolB;
	intA = mainIntA = 6;
	cout << "input an int value: ";
	cin >> intB;
	cout << "\n";
	mainIntB = intB + intA;
	mainIntB --;
	cout << "input a bool value (0 or 1): ";
	cin >> mainBoolA;
	mainBoolB = bool_1 = !mainBoolA ;
	bool_2 = bool_1 == mainBoolA;
	cout << "value of intA: "
	cout << intA;
	cout << "\n";
	cout << "value of intB: "
	cout << intB;
	cout << "\n";
	cout << "value of mainIntA: "
	cout << mainIntA;
	cout << "\n";
	cout << "value of mainIntB: "
	cout << mainIntB;
	cout << "\n";
	cout << "value of bool_1: "
	cout << bool_1;
	cout << "\n";
	cout << "value of bool_2: "
	cout << bool_2;
	cout << "\n";
	cout << "value of mainBoolA: "
	cout << mainBoolA;
	cout << "\n";
	cout << "value of mainBoolB: "
	cout << mainBoolB;
	cout << "\n";
	intB = sumFromTo (constructABB (minOfFour(mainIntB, mainIntA, 98, IntA), maxOfFour(mainIntB, mainIntA, 98, IntA)), 0);
	cout < intB;


}
