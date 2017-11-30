int a;

int changeVal(int a, int b) {
	return a + b;
}
void main() {
	int aa;
	aa = a = 150;
	cout << a;
	cout << "\n";
	a = changeVal(a, aa);
	cout << a;
	cout << "\n";
	cout << aa;
}

