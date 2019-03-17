.class public abstract Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;
.super Ljava/lang/Object;
.source "VideoEditorModuleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLocalTemplateEntities(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/LocalResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemplateDir(J)Ljava/lang/String;
.end method

.method public getUnzipPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    return-object v0
.end method
