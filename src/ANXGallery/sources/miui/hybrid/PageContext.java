package miui.hybrid;

public class PageContext {
    private String id;
    private String yR;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getUrl() {
        return this.yR;
    }

    public void setUrl(String str) {
        this.yR = str;
    }

    public int hashCode() {
        return 31 + (this.id == null ? 0 : this.id.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PageContext pageContext = (PageContext) obj;
        if (this.id == pageContext.id) {
            return true;
        }
        if (this.id == null || pageContext.id == null || !this.id.equals(pageContext.id)) {
            return false;
        }
        return true;
    }
}
