.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


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
        "Lcom/miui/gallery/threadpool/FutureListener",
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
    .line 273
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->val$input:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Landroid/database/Cursor;>;"
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 276
    if-nez p1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 280
    .local v4, "suggestContactCur":Landroid/database/Cursor;
    const/4 v1, 0x1

    .line 281
    .local v1, "hasContactSuggest":Z
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 282
    :cond_1
    const/4 v1, 0x0

    .line 284
    :cond_2
    const/4 v2, 0x0

    .line 285
    .local v2, "hasFaceSuggest":Z
    iget-object v6, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iget-object v9, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->val$input:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1200(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 286
    .local v5, "suggestFaceCursor":Landroid/database/Cursor;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 287
    const/4 v2, 0x1

    .line 289
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    if-nez v2, :cond_4

    move v6, v7

    :goto_1
    invoke-static {v9, v6}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1302(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Z)Z

    .line 292
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 293
    const/4 v6, 0x3

    new-array v3, v6, [Landroid/database/Cursor;

    .line 294
    .local v3, "mergeCursors":[Landroid/database/Cursor;
    aput-object v5, v3, v8

    .line 295
    iget-object v6, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v3, v7

    .line 296
    aput-object v4, v3, v10

    .line 308
    :goto_2
    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 309
    .local v0, "c":Landroid/database/Cursor;
    iget-object v6, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6$1;

    invoke-direct {v7, p0, v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6$1;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;Landroid/database/Cursor;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "mergeCursors":[Landroid/database/Cursor;
    :cond_4
    move v6, v8

    .line 289
    goto :goto_1

    .line 297
    :cond_5
    if-eqz v1, :cond_6

    .line 298
    new-array v3, v10, [Landroid/database/Cursor;

    .line 299
    .restart local v3    # "mergeCursors":[Landroid/database/Cursor;
    iget-object v6, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v3, v8

    .line 300
    aput-object v4, v3, v7

    .line 301
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 303
    .end local v3    # "mergeCursors":[Landroid/database/Cursor;
    :cond_6
    new-array v3, v7, [Landroid/database/Cursor;

    .line 304
    .restart local v3    # "mergeCursors":[Landroid/database/Cursor;
    aput-object v5, v3, v8

    .line 305
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2
.end method
