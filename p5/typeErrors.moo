// this test should contains type errors
// Should not contain syntax error
// Should not contain name error

int intX;
int intY;
int intZ;
bool boolA;
bool boolB;
bool boolC;
struct SS {bool SSbool;};
struct S {
	int Sint;
	bool Sbool;	
};
struct S sVar;
void funA (int fint, bool fbool) {return !false; // 17:43 Return with a value in a void function
}
int main() {
	int A;
	A = intX(); // 21:6 Attempt to call a non-function
	A = funA(boolA); // 22:2 Type mismatch  22:6 Function call with wrong number of args
	A = true; // 23:2  Type mismatch
	A = !intX; // 24:7 Logical operator applied to non-bool operand  NOTE: Should not report 24:2 because it's a cascading error
	A = funA(boolA, intX); // 25:2 Type mismatch   25:11 Type of actual does not match type of formal  25:18 Type of actual does not match type of formal
	cout << funA; // 26:10 Attempt to write a function
	cout << S; // 27:10 Attempt to write a struct name
	cout << sVar; // 28:10  Attempt to write a struct variable
	cout << funA(); // 29:10 Attempt to write void  29:10 Function call with wrong number of args
	cout << funA(boolA, boolB); // 30:10 Attempt to write void  30:15 Type of actual does not match type of formal
	cin >> funA; // 31:9 Attempt to read a function
	cin >> S; // 32:9 Attempt to read a struct name
	cin >> sVar; // 33:9 Attempt to read a struct variable
}

bool funB (int A) {
	struct S sVar;
	bool insideBool;
	if (sVar) { // 39:6 Non-bool expression used as an if condition
		return; // 0:0 Missing return value 
	} else {
		return intX; // 42:10 Bad return value
	}
	return; // 0:0 Missing return value
	return 125+insideBool/boolB; // 45:13 Arithmetic operator applied to non-numeric operand  45:24  Arithmetic operator applied to non-numeric operand
	return "true"; // 46:9 Bad return value
}

int funC (bool boolB, int intA, bool boolC) {
	int intB;
	struct S insideSVar;
	intA = funA(intA, 5 + sVar.Sbool); // 52:2 Type mismatch  52:29 Arithmetic operator applied to non-numeric operand
	intA = funA(intB, boolC*(5+sVar.Sbool)); // 53:2 Type mismatch  53:20 Arithmetic operator applied to non-numeric operand  53:34 Arithmetic operator applied to non-numeric operand
	intB = main(intA, boolC, boolB); // 54:9 Function call with wrong number of args
	intB = !main(); // 55:10 Logical operator applied to non-bool operand
	intB = !funB(boolC) && boolB; // 56:2 Type mismatch  56:15 Type of actual does not match type of formal
	sVar.Sbool++; // 57:7 Arithmetic operator applied to non-numeric operand
	sVar.Sint--; 
	boolB = funB(3+5*boolC) || boolC && !("false">="true"); // 59:19 Arithmetic operator applied to non-numeric operand   59:40  	Relational operator applied to non-bool operand  59:49  	Relational operator applied to non-bool operand
	intB = boolB; // 60:2 Type mismatching
	while (funA() == funA(intY, intZ)) { // 61:9 Equality operator applied to void functions  61:9 Function call with wrong number of args  61:30 Type of actual does not match type of formal
		if (intX + intY) { // 62:7 Non-bool expression used as an if condition
			return; // 0:0 Missing return value
		}
		if (intX < boolB) { // 65:14 Relational operator applied to non-numeric operand
			return boolC; // 66:11 Bad return value
		} else {
			return funA!=funB; //  68:11 Equality operator applied to functions
			return S == SS; // 69:11 Equality operator applied to struct names
			return sVar != insideSVar; // 70:11 Equality operator applied to struct variables
		}
		funB = funC; // 72:3 Function assignment
		SS = S; // 73:3 Struct name assinment
		while ((intA + 35) > boolA) { // 74:24 Relational operator applied to non-numeric operand
			struct SS insider;
			insider = sVar; // 76:4  	Struct variable assignment
			return insider.SSbool; // 77:19 Bad return value
			return funB(boolB); // 78:11 Bad return value  78:16 Type of actual does not match type of formal
			return funA(); // 79:11 Bad return value  79:11 Function call with wrong number of args
			return intZ(); // 80:11 Attempt to call a non-function
		}
	}
}

struct SSS {
	struct S structA;
	struct SS structAA;
	int intA;
	bool boolB;
};

void funD (int intA, int intB, bool boolC) {
	struct SSS structInD;
	int intD;
	bool boolE;
	boolC = funC(2-"a"/boolC, boolE, intD); // 96:2 Type mismatch   96:17 Arithmetic operator applied to non-numeric operand    96:21 Arithmetic operator applied to non-numeric operand   96:28 Type of actual does not match type of formal  96:36 Type of actual does not match type of formal
	structInD.structA.Sbool--; // 97:20 Arithmetic operator applied to non-numeric operand
	structInD.structAA = true; // 98:2 Type mismatch
	structInD.structAA.SSbool = funC(structInD.intA, structInD.intA, structInD.intA); // 99:2 Type mismatch   99:45 Type of actual does not match type of formal   99:77 Type of actual does not match type of formal
	if (-1) { // 100:6 Non-bool expression used as an if condition
		return -boolC; //  	101:10  Return with a value in a void function    101:11   Arithmetic operator applied to non-numeric operand
		while(structInD.structA.Sint && (!boolE>=1) || structInD.structAA.SSbool) { // 102:27 Logical operator applied to non-bool operand  102:36 Relational operator applied to non-numeric operand    
			if (funA() == funA){ // 103:8 Type mismatch  103:8 Function call with wrong number of args
				intD = funA(); // 104:5 Type mismatch   104:12 Function call with wrong number of args
				cout << boolE <= 1; // 105:13 Relational operator applied to non-numeric operand
				cin >> structInD.structA; // 106:22  Attempt to read a struct variable
				cin >> SSS; // 107:12 Attempt to read a struct name
				cout << boolE(); // 108:13 Attempt to call a non-function
				intD = boolE = intA = boolC; // 109:20 Type mismatch
				while ("something") { // 110:12 Non-bool expression used as a while condition
					return;
				}
			} else {
				return funA(intB); // 114:12 Function call with wrong number of args
			}
		}
	}
}
