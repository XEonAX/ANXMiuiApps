.class public interface abstract Lcom/ali/auth/third/core/service/StorageService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract decrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getDDpExValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUmid()Ljava/lang/String;
.end method

.method public abstract getValue(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putValue(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract removeDDpExValue(Ljava/lang/String;)V
.end method

.method public abstract removeSafeToken(Ljava/lang/String;)V
.end method

.method public abstract removeValue(Ljava/lang/String;Z)V
.end method

.method public abstract saveSafeToken(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setUmid(Ljava/lang/String;)V
.end method

.method public abstract signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract symDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract symEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
