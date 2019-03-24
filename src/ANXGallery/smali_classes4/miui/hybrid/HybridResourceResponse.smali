.class public Lmiui/hybrid/HybridResourceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private yw:Ljava/lang/String;

.field private yx:Ljava/lang/String;

.field private yy:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->yw:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lmiui/hybrid/HybridResourceResponse;->yx:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lmiui/hybrid/HybridResourceResponse;->yy:Ljava/io/InputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .line 85
    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->yy:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->yx:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lmiui/hybrid/HybridResourceResponse;->yw:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->yy:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->yx:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmiui/hybrid/HybridResourceResponse;->yw:Ljava/lang/String;

    .line 39
    return-void
.end method
