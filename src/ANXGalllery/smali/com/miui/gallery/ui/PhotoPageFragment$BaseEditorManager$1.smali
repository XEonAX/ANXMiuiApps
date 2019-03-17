.class Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;

    .prologue
    .line 3528
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3531
    const-string v0, "PhotoPageFragment"

    const-string v1, "editor return to photo, image loading time out."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->access$5600(Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;)V

    .line 3533
    return-void
.end method
