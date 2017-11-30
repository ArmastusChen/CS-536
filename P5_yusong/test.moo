int main(){
    int a;
    bool b;
    a = 1;
    b = true;
    return a;
}

int OutIntA;
int OutIntB;
bool OutBoolA;
bool OutBoolB;

struct s1 {
	int struct1Int;
	bool struct1Bool;	
};

struct s2 {
	struct s1 ss;
	int struct2Int;
	bool struct2Bool;
};

struct s3 {
	struct s2 sss;
};

struct s1 sVar1;
struct s2 sVar2;
struct s3 sVar3;

void funA (int funAint, bool funAbool) {
	int insideAInt;
	bool insideABool;
	struct s3 insideAS3;
	if (sVar3.sss.struct2Int == funAint) {
		return;
	} else {
		int insideElseInt;
		while (funAbool && !insideABool || (sVar2.ss.struct1Int >= insideElseInt)) {
			insideAS3.sss.ss.struct1Int++;
			sVar3.sss.struct2Int--;
			insideAInt = main()*345/(funAint + insideElseInt);
		}
		return;
	}
	cin >> insideAInt;
	cin >> sVar2.struct2Bool;
	cout << main();
	cout << "output";
	cout << funAbool;
	cout << funAint;
}

bool funB (int funBint) {
	int insideBInt;
	struct s2 insideBS2;
	if (!OutBoolA != OutBoolB) {
		return funBint <= insideBInt;
	}
	if (insideBInt > funBint) {
		return OutIntB < OutIntA;
	}
	while ( insideBS2.ss.struct1Bool != false ) {
		sVar3.sss.ss.struct1Int = 123/456+789-insideBInt;
	}
	return funB(sVar3.sss.ss.struct1Int);
	return true;
}

int funC (bool funCbool1, bool funCbool2) {
	OutBoolA = funB(OutIntA);
	OutBoolB  = OutBoolA || funCbool1 && funCbool2;
	funCbool2 = funB((5/OutIntA) - OutIntB);
	return OutIntA + 8888888;
}

bool funD () {
	int funDInt1;
	int funDInt2;
	funDInt1 = 3*OutIntA/funC(OutBoolA&&OutBoolB, OutBoolB);
	funDInt2 = -OutIntB;
	if (funDInt1 > -funDInt2) {
		return !false;
	} else {
		return sVar3.sss.ss.struct1Bool == sVar2.struct2Bool;
	}
}