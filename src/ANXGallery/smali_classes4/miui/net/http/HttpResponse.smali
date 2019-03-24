.class public interface abstract Lmiui/net/http/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getContentEncoding()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract release()V
.end method
