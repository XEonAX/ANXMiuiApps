.class Lcom/miui/xspace/XmsXSpace;
.super Ljava/lang/Object;
.source "XmsXSpace.java"

# interfaces
.implements Lcom/miui/xspace/IXSpaceWrapper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXSpacePath()Ljava/io/File;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public isXSpaceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
