.class Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler$1;
.super Ljava/lang/Object;
.source "EditorOriginHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler$1;->this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler$1;->this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    invoke-static {p2}, Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->access$002(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;)Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    .line 132
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler$1;->this$0:Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->access$002(Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;)Lcom/miui/gallery/editor/photo/origin/EditorOriginFunc;

    .line 136
    return-void
.end method
