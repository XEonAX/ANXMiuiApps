.class public Lcom/miui/gallery/util/StaticContext;
.super Ljava/lang/Object;
.source "StaticContext.java"


# static fields
.field private static volatile sContext:Landroid/content/Context;


# direct methods
.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sput-object p0, Lcom/miui/gallery/util/StaticContext;->sContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static sGetAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/miui/gallery/util/StaticContext;->sContext:Landroid/content/Context;

    return-object v0
.end method
