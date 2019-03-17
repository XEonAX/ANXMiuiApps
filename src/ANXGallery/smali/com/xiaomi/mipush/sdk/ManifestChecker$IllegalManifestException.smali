.class public Lcom/xiaomi/mipush/sdk/ManifestChecker$IllegalManifestException;
.super Ljava/lang/RuntimeException;
.source "ManifestChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/ManifestChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalManifestException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 347
    return-void
.end method
