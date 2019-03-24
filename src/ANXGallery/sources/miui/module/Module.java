package miui.module;

public class Module {
    public static final int CONTENT_DEFAULT = 0;
    public static final int CONTENT_DEX = 1;
    public static final int CONTENT_LIB = 2;
    public static final int CONTENT_NONE = 0;
    public static final int CONTENT_RES = 4;
    private int content;
    private int level;
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public int getContent() {
        return this.content;
    }

    public void setContent(int i) {
        this.content = i;
    }
}
