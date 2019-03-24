.class public Lcom/miui/internal/hybrid/webkit/WebResourceResponce;
.super Landroid/webkit/WebResourceResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridResourceResponse;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Lmiui/hybrid/HybridResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/hybrid/HybridResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lmiui/hybrid/HybridResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p1

    .line 12
    invoke-direct {p0, v0, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 14
    return-void
.end method
