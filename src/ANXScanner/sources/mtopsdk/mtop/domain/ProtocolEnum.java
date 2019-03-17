package mtopsdk.mtop.domain;

public enum ProtocolEnum {
    HTTP("http://"),
    HTTPSECURE("https://");
    
    private String protocol;

    public final String getProtocol() {
        return this.protocol;
    }

    private ProtocolEnum(String str) {
        this.protocol = str;
    }
}
