package miui.module;

public class Dependency {
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_INSTALLED = 2;
    public static final int TYPE_NONE = 0;
    public static final int TYPE_OPTIONAL = 1;
    private Level Cm;
    private String name;
    private int type;

    public static class Level {
        private int maxLevel;
        private int minLevel;
        private int targetLevel;

        public int getMinLevel() {
            return this.minLevel;
        }

        public void setMinLevel(int i) {
            this.minLevel = i;
        }

        public int getTargetLevel() {
            return this.targetLevel;
        }

        public void setTargetLevel(int i) {
            this.targetLevel = i;
        }

        public int getMaxLevel() {
            return this.maxLevel;
        }

        public void setMaxLevel(int i) {
            this.maxLevel = i;
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public Level getLevel() {
        return this.Cm;
    }

    public void setLevel(Level level) {
        this.Cm = level;
    }
}
