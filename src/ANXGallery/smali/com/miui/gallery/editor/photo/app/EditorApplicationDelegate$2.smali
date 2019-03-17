.class Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;
.super Ljava/lang/Object;
.source "EditorApplicationDelegate.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

.field final synthetic val$imageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;->this$0:Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;->val$imageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$2;->val$imageLoaderInitializer:Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->preInitialize()V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
