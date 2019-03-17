.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->getContactCursor()V
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
.field final synthetic this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/database/Cursor;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v10, 0x0

    .line 541
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1900(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v6, v10

    .line 557
    :goto_0
    return-object v6

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " display_name COLLATE LOCALIZED "

    .line 547
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 550
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v9, v1, [Landroid/database/Cursor;

    .line 551
    .local v9, "mergeCursors":[Landroid/database/Cursor;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v2, v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v9, v1

    .line 552
    const/4 v1, 0x1

    aput-object v7, v9, v1

    .line 553
    new-instance v6, Landroid/database/MergeCursor;

    invoke-direct {v6, v9}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .local v6, "c":Landroid/database/Cursor;
    goto :goto_0

    .line 555
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "mergeCursors":[Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 556
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "InputFaceNameFragment"

    invoke-static {v1, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v10

    .line 557
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
