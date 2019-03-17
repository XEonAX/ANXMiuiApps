.class public Lcom/miui/xspace/XSpaceHelper;
.super Ljava/lang/Object;
.source "XSpaceHelper.java"


# static fields
.field private static final IMPL:Lcom/miui/xspace/IXSpaceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/xspace/MiuiXSpace;

    invoke-direct {v0}, Lcom/miui/xspace/MiuiXSpace;-><init>()V

    :goto_0
    sput-object v0, Lcom/miui/xspace/XSpaceHelper;->IMPL:Lcom/miui/xspace/IXSpaceWrapper;

    .line 15
    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/miui/xspace/XmsXSpace;

    invoke-direct {v0}, Lcom/miui/xspace/XmsXSpace;-><init>()V

    goto :goto_0
.end method

.method public static getXSpacePath()Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/xspace/XSpaceHelper;->IMPL:Lcom/miui/xspace/IXSpaceWrapper;

    invoke-interface {v0}, Lcom/miui/xspace/IXSpaceWrapper;->getXSpacePath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isXSpaceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/miui/xspace/XSpaceHelper;->IMPL:Lcom/miui/xspace/IXSpaceWrapper;

    invoke-interface {v0, p0}, Lcom/miui/xspace/IXSpaceWrapper;->isXSpaceEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
