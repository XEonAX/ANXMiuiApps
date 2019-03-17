.class public Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;
.super Landroid/app/Service;
.source "EditorOriginHandlerService.java"


# instance fields
.field private mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService$1;-><init>(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;->mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandlerService;->mBinder:Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    const-string v0, "EditorOriginHandlerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 45
    const-string v0, "EditorOriginHandlerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
