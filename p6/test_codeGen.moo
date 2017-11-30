int pi;

int plus(int a, int b){
	return a + b;
}

int minus(int a, int b){
	return a - b;
}

int multiply(int a, int b){
	return a * b;
}
int divide(int a, int b){
	return a / b;
}
bool greater(int a, int b){
	return a > b;
}
bool less(int a, int b){
	return a < b;
}
bool equals(int a, int b){
	return a == b;
}
bool notEquals(int a, int b){
	return a != b;
}
int factorial(int aa){
	if(aa == 1){
		return 1;
	}
	else{
		return   factorial(aa - 1) * aa;
	}
}
void main(){
	bool control;
	int code;
	int a;
	int b;
	pi = 3;
	control = true;
	cout << "Please insert arithmetic code";
	cout << "\n";
	cout << "1: plus";
	cout << "\n";
	cout << "2: minus";
	cout << "\n";
	cout << "3: multiply";
	cout << "\n";
	cout << "4: divide";
	cout << "\n";
	cout << "5: greater";
	cout << "\n";
	cout << "6: less";
	cout << "\n";
	cout << "7: equals";
	cout << "\n";
	cout << "8: not equals";
	cout << "\n";
	cout << "9: factorial";
	cout << "\n";
	cout << "10: exit";
	cout << "\n";
	while(control){
		a = 0;
		b = 0;
		cout << "please input code";
		cout << "\n";
		cin >> code;
		if(code == 1){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << plus(a, b);
			cout << "\n";
		}
		if(code == 2){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << minus(a, b);
			cout << "\n";
		}
		if(code == 3){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << multiply(a, b);
			cout << "\n";
		}
		if(code == 4){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input  2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << divide(a, b);
			cout << "\n";
		}
		if(code == 5){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << greater(a, b);
			cout << "\n";
		}
		if(code == 6){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << less(a, b);
			cout << "\n";
		}
		if(code == 7){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << equals(a, b);
			cout << "\n";
		}
		if(code == 8){
			cout << "please input 1st number";
			cout << "\n";
			cin >> a;
			cout << "please input 2nd number";
			cout << "\n";
			cin >> b;
			cout << "answer: ";
			cout << notEquals(a, b);
			cout << "\n";
		}
		if(code == 9){
			cout << "please input number";
			cout << "\n";
			cin >> a;
			cout << "answer: ";
			cout << factorial(a);
			cout << "\n";
		}
		if(code == 10){
			control = false;
			cout << "bye-bye!";
			cout << "\n";
		}
	
	}

}

