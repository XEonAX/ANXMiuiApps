package org.keyczar;

import com.google.gson_nex.annotations.Expose;
import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.util.Util;

@Experimental
public class SessionMaterial {
    @Expose
    private AesKey key = null;
    @Expose
    private String nonce = "";

    public SessionMaterial(AesKey aesKey, String str) {
        this.key = aesKey;
        this.nonce = str;
    }

    public AesKey getKey() throws KeyczarException {
        if (this.key != null) {
            return this.key;
        }
        throw new KeyczarException("Key has not been initialized");
    }

    public String getNonce() {
        return this.nonce;
    }

    public String toString() {
        return Util.gson().toJson((Object) this);
    }

    public static SessionMaterial read(String str) {
        return (SessionMaterial) Util.gson().fromJson(str, SessionMaterial.class);
    }
}
