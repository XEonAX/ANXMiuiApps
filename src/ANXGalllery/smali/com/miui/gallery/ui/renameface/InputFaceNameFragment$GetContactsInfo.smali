.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetContactsInfo"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->context:Landroid/content/Context;

    .line 535
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->getSuggestionCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->getContactCursor()V

    return-void
.end method

.method private getContactCursor()V
    .locals 3

    .prologue
    .line 538
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$1;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V

    new-instance v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    .line 578
    return-void
.end method

.method private getSuggestionCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 581
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 582
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 583
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1900(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    const/16 v3, 0x2f

    const/16 v4, 0x20

    .line 587
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 592
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 600
    :goto_1
    return-object v6

    .line 589
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 596
    :cond_2
    :try_start_0
    sget-object v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " display_name COLLATE LOCALIZED "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 597
    .local v6, "cur":Landroid/database/Cursor;
    goto :goto_1

    .line 598
    .end local v6    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 599
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "InputFaceNameFragment"

    invoke-static {v2, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
