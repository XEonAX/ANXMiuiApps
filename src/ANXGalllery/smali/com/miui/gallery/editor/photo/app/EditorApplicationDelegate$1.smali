.class Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$1;
.super Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;
.source "EditorApplicationDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$1;->this$0:Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfig()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate$1;->this$0:Lcom/miui/gallery/editor/photo/app/EditorApplicationDelegate;

    invoke-static {v0}, Lcom/miui/gallery/Config$ImageLoaderConfig;->getConfig(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    return-object v0
.end method
