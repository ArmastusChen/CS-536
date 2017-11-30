int fac(int aa){
		if(aa == 1){
				return 1;
			}
		else{
			
				return aa * fac(aa - 1);
			}
	}

void main(){
	cout << fac(4);	
	
}
