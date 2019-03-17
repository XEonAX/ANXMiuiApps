.class Lcom/miui/gallery/module/GalleryModuleManager$1$2;
.super Ljava/lang/Object;
.source "GalleryModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/module/GalleryModuleManager$1;->onLoadFail(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/module/GalleryModuleManager$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/module/GalleryModuleManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/module/GalleryModuleManager$1;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/module/GalleryModuleManager$1$2;->this$1:Lcom/miui/gallery/module/GalleryModuleManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager$1$2;->this$1:Lcom/miui/gallery/module/GalleryModuleManager$1;

    iget-object v0, v0, Lcom/miui/gallery/module/GalleryModuleManager$1;->val$listener:Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/module/GalleryModuleManager$1$2;->this$1:Lcom/miui/gallery/module/GalleryModuleManager$1;

    iget-object v0, v0, Lcom/miui/gallery/module/GalleryModuleManager$1;->val$listener:Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;

    invoke-interface {v0}, Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;->onLoadFailed()V

    .line 99
    :cond_0
    return-void
.end method
