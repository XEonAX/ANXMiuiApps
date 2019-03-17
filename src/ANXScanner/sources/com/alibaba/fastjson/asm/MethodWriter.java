package com.alibaba.fastjson.asm;

public class MethodWriter implements MethodVisitor {
    private int access;
    private ByteVector code = new ByteVector();
    final ClassWriter cw;
    private final int desc;
    int exceptionCount;
    int[] exceptions;
    private int maxLocals;
    private int maxStack;
    private final int name;
    MethodWriter next;

    public MethodWriter(ClassWriter cw, int access, String name, String desc, String signature, String[] exceptions) {
        if (cw.firstMethod == null) {
            cw.firstMethod = this;
        } else {
            cw.lastMethod.next = this;
        }
        cw.lastMethod = this;
        this.cw = cw;
        this.access = access;
        this.name = cw.newUTF8(name);
        this.desc = cw.newUTF8(desc);
        if (exceptions != null && exceptions.length > 0) {
            this.exceptionCount = exceptions.length;
            this.exceptions = new int[this.exceptionCount];
            for (int i = 0; i < this.exceptionCount; i++) {
                this.exceptions[i] = cw.newClassItem(exceptions[i]).index;
            }
        }
    }

    public void visitInsn(int opcode) {
        this.code.putByte(opcode);
    }

    public void visitIntInsn(int opcode, int operand) {
        this.code.put11(opcode, operand);
    }

    public void visitVarInsn(int opcode, int var) {
        if (var < 4 && opcode != Opcodes.RET) {
            int opt;
            if (opcode < 54) {
                opt = (((opcode - 21) << 2) + 26) + var;
            } else {
                opt = (((opcode - 54) << 2) + 59) + var;
            }
            this.code.putByte(opt);
        } else if (var >= 256) {
            this.code.putByte(196).put12(opcode, var);
        } else {
            this.code.put11(opcode, var);
        }
    }

    public void visitTypeInsn(int opcode, String type) {
        this.code.put12(opcode, this.cw.newClassItem(type).index);
    }

    public void visitFieldInsn(int opcode, String owner, String name, String desc) {
        this.code.put12(opcode, this.cw.newFieldItem(owner, name, desc).index);
    }

    public void visitMethodInsn(int opcode, String owner, String name, String desc) {
        boolean itf;
        if (opcode == Opcodes.INVOKEINTERFACE) {
            itf = true;
        } else {
            itf = false;
        }
        Item i = this.cw.newMethodItem(owner, name, desc, itf);
        int argSize = i.intVal;
        if (itf) {
            if (argSize == 0) {
                argSize = Type.getArgumentsAndReturnSizes(desc);
                i.intVal = argSize;
            }
            this.code.put12(Opcodes.INVOKEINTERFACE, i.index).put11(argSize >> 2, 0);
            return;
        }
        this.code.put12(opcode, i.index);
    }

    public void visitJumpInsn(int opcode, Label label) {
        if ((label.status & 2) == 0 || label.position - this.code.length >= -32768) {
            this.code.putByte(opcode);
            label.put(this, this.code, this.code.length - 1);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public void visitLabel(Label label) {
        label.resolve(this, this.code.length, this.code.data);
    }

    public void visitLdcInsn(Object cst) {
        Item i = this.cw.newConstItem(cst);
        int index = i.index;
        if (i.type == 5 || i.type == 6) {
            this.code.put12(20, index);
        } else if (index >= 256) {
            this.code.put12(19, index);
        } else {
            this.code.put11(18, index);
        }
    }

    public void visitIincInsn(int var, int increment) {
        this.code.putByte(132).put11(var, increment);
    }

    public void visitMaxs(int maxStack, int maxLocals) {
        this.maxStack = maxStack;
        this.maxLocals = maxLocals;
    }

    public void visitEnd() {
    }

    final int getSize() {
        int size = 8;
        if (this.code.length > 0) {
            this.cw.newUTF8("Code");
            size = 8 + ((this.code.length + 18) + 0);
        }
        if (this.exceptionCount <= 0) {
            return size;
        }
        this.cw.newUTF8("Exceptions");
        return size + ((this.exceptionCount * 2) + 8);
    }

    final void put(ByteVector out) {
        out.putShort(this.access & -393217).putShort(this.name).putShort(this.desc);
        int attributeCount = 0;
        if (this.code.length > 0) {
            attributeCount = 0 + 1;
        }
        if (this.exceptionCount > 0) {
            attributeCount++;
        }
        out.putShort(attributeCount);
        if (this.code.length > 0) {
            out.putShort(this.cw.newUTF8("Code")).putInt((this.code.length + 12) + 0);
            out.putShort(this.maxStack).putShort(this.maxLocals);
            out.putInt(this.code.length).putByteArray(this.code.data, 0, this.code.length);
            out.putShort(0);
            out.putShort(0);
        }
        if (this.exceptionCount > 0) {
            out.putShort(this.cw.newUTF8("Exceptions")).putInt((this.exceptionCount * 2) + 2);
            out.putShort(this.exceptionCount);
            for (int i = 0; i < this.exceptionCount; i++) {
                out.putShort(this.exceptions[i]);
            }
        }
    }
}
