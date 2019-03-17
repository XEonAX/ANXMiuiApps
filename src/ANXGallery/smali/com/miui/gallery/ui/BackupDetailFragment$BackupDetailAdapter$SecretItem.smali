.class Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;
.super Ljava/lang/Object;
.source "BackupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecretItem"
.end annotation


# instance fields
.field private mCount:I

.field private mSyncIndicator:Landroid/widget/ImageView;

.field private mSyncState:I

.field private mSyncedCount:I

.field private mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const v0, 0x7f1200e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mText:Landroid/widget/TextView;

    .line 362
    const v0, 0x7f1200e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncIndicator:Landroid/widget/ImageView;

    .line 363
    return-void
.end method

.method private bindSyncState(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I
    .param p3, "showSyncedIndicator"    # Z

    .prologue
    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "visibility":I
    const/4 v1, 0x0

    .line 368
    .local v1, "resId":I
    const/4 v0, 0x0

    .line 369
    .local v0, "animation":Landroid/view/animation/Animation;
    sparse-switch p2, :sswitch_data_0

    .line 405
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknow status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    :sswitch_0
    if-eqz p3, :cond_0

    .line 373
    const v1, 0x7f020224

    .line 374
    const/4 v0, 0x0

    .line 408
    :goto_0
    iput p2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncState:I

    .line 409
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    if-eqz v0, :cond_2

    .line 412
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    :goto_1
    return-void

    .line 376
    :cond_0
    iget v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 377
    const/16 v2, 0x8

    goto :goto_0

    .line 379
    :cond_1
    const/16 v2, 0x8

    .line 380
    const v1, 0x7f020224

    .line 381
    const v3, 0x7f05000f

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 384
    goto :goto_0

    .line 386
    :sswitch_1
    const v1, 0x7f020225

    .line 387
    const v3, 0x7f050010

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 388
    goto :goto_0

    .line 390
    :sswitch_2
    const v1, 0x7f020225

    .line 391
    const/4 v0, 0x0

    .line 392
    goto :goto_0

    .line 394
    :sswitch_3
    const v1, 0x7f020226

    .line 395
    const/4 v0, 0x0

    .line 396
    goto :goto_0

    .line 401
    :sswitch_4
    const/4 v1, 0x0

    .line 402
    const/4 v0, 0x0

    .line 403
    goto :goto_0

    .line 414
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x7fffffff -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    .line 419
    const/16 v4, 0xb

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 420
    .local v0, "count":I
    const/16 v4, 0x8

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 421
    .local v2, "syncedCount":I
    iget v4, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mCount:I

    if-ne v4, v0, :cond_0

    iget v4, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncedCount:I

    if-eq v2, v4, :cond_1

    .line 422
    :cond_0
    iput v0, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mCount:I

    .line 423
    iput v2, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncedCount:I

    .line 424
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d/%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncedCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget v8, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    invoke-static {v4, p2}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->access$200(Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;Landroid/database/Cursor;)I

    move-result v1

    .line 428
    .local v1, "syncState":I
    iget v4, p0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->mSyncState:I

    if-eq v4, v1, :cond_2

    .line 429
    invoke-direct {p0, p1, v1, v9}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->bindSyncState(Landroid/content/Context;IZ)V

    .line 431
    :cond_2
    return-void
.end method
