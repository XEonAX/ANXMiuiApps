.class public final Lcom/miui/gallery/net/download/Verifier$Sha1;
.super Lcom/miui/gallery/net/download/Verifier;
.source "Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/net/download/Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sha1"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "SHA-1"

    const/16 v1, 0x28

    invoke-static {p1, v1}, Lcom/miui/gallery/net/download/Verifier;->access$000(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/download/Verifier;-><init>(Ljava/lang/String;[B)V

    .line 54
    return-void
.end method
