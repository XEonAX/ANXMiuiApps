.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->changeMergeResultCursor(Ljava/lang/String;)V
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

.field final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;->val$input:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/database/Cursor;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;->val$input:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->access$1100(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
