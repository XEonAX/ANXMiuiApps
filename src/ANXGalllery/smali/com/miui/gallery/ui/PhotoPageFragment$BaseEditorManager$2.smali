.class Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$2;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->insertAndNotifyDataSet(Ljava/lang/String;)V
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
    .line 3602
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsertDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$2;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->notifyDataSetChange(Ljava/lang/String;)V

    .line 3606
    return-void
.end method
