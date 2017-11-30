import java.util.*;
public class SemSym {
    private String type;
    
    public SemSym(String type) {
        this.type = type;
    }
    
    public String getType() {
        return type;
    }
    
    public String toString() {
        return type;
    }
}

class FunSemSym extends SemSym {
    private String type;
    private List<String> paramTypes;
    private String returnType;

    public FunSemSym(List<String> paramTypes, String retType) {
	    super(null);
	    this.paramTypes = paramTypes;
	    this.returnType = retType;
    }


    public String posParType (int i) {
	    return this.paramTypes.get(i);
    }

    public String retType() {
	    return this.returnType;
    }
}

// a subclass used for holding the fields of each type of struct body
class StructDeclSemSym extends SemSym {
    private SymTable fieldsTable;
    private String type;

    public StructDeclSemSym(String type, SymTable structDeclSymTab) {
        super(type);
        this.fieldsTable = structDeclSymTab;
    }

    public SymTable getFields() {
        return this.fieldsTable;
    }

    public String getType() {
        return this.type;
    }
    
}

// a subclass used for holding the variables of each type of sturct
class StructVarSemSym extends SemSym {
    private StructDeclSemSym structDeclVar;
    private String type;

    public StructVarSemSym(String type, StructDeclSemSym structDeclVar) {
        super(type);
        this.structDeclVar = structDeclVar;
    }

    public StructDeclSemSym getStructDeclVar() {
        return this.structDeclVar;
    }

    public String getType() {
        return this.type;
    }
}
