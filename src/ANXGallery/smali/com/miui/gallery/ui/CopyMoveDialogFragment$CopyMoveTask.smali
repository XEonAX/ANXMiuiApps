.class Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;
.super Landroid/os/AsyncTask;
.source "CopyMoveDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CopyMoveDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CopyMoveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[J>;"
    }
.end annotation


# instance fields
.field private mCloudPhotoCount:I

.field final synthetic this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private copyOrMove()[J
    .locals 7

    .prologue
    .line 210
    const/4 v6, 0x0

    .line 211
    .local v6, "results":[J
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$400(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$700(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$800(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$900(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/provider/CloudUtils;->move(Landroid/content/Context;IJZ[J)[J

    move-result-object v6

    .line 225
    :cond_0
    :goto_0
    return-object v6

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$700(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$800(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/provider/CloudUtils;->copy(Landroid/content/Context;IJ[J)[J

    move-result-object v6

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$1000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$400(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$800(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$1000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/miui/gallery/provider/CloudUtils;->move(Landroid/content/Context;JLjava/util/ArrayList;)[J

    move-result-object v6

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$800(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$1000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/miui/gallery/provider/CloudUtils;->copy(Landroid/content/Context;JLjava/util/ArrayList;)[J

    move-result-object v6

    goto :goto_0
.end method

.method private getCloudPhotoCount()I
    .locals 9

    .prologue
    .line 293
    const/4 v6, 0x0

    .line 294
    .local v6, "count":I
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v7, v6

    .line 312
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_0
    return v7

    .line 298
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_1
    const/4 v8, 0x0

    .line 300
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_MEDIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 303
    if-eqz v8, :cond_2

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$500(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)[J

    move-result-object v0

    array-length v0, v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int v6, v0, v1

    .line 309
    :cond_2
    invoke-static {v8}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    .end local v3    # "selection":Ljava/lang/String;
    :goto_1
    move v7, v6

    .line 312
    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_0

    .line 306
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :catch_0
    move-exception v0

    .line 309
    invoke-static {v8}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/miui/gallery/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getFailReason(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "ret"    # I
    .param p3, "count"    # I

    .prologue
    .line 283
    packed-switch p2, :pswitch_data_0

    .line 287
    const v0, 0x7f0c0472

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 285
    :pswitch_0
    const v0, 0x7f0e0022

    invoke-virtual {p1, v0, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_0
    .end packed-switch
.end method

.method private outputResult([J)V
    .locals 13
    .param p1, "results"    # [J

    .prologue
    .line 229
    if-eqz p1, :cond_0

    array-length v8, p1

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 230
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c000f

    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 280
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 235
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 236
    .local v1, "failedCode":I
    const/4 v6, 0x0

    .local v6, "skip":I
    const/4 v7, 0x0

    .local v7, "success":I
    const/4 v0, 0x0

    .line 237
    .local v0, "failed":I
    const-string v4, ""

    .line 238
    .local v4, "reason":Ljava/lang/String;
    array-length v9, p1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_6

    aget-wide v2, p1, v8

    .line 239
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_3

    .line 240
    add-int/lit8 v7, v7, 0x1

    .line 238
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 241
    :cond_3
    const-wide/16 v10, -0x67

    cmp-long v10, v2, v10

    if-eqz v10, :cond_4

    const-wide/16 v10, -0x68

    cmp-long v10, v2, v10

    if-nez v10, :cond_5

    .line 243
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 245
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 246
    if-nez v1, :cond_2

    .line 247
    long-to-int v1, v2

    goto :goto_2

    .line 252
    .end local v2    # "id":J
    :cond_6
    if-lez v0, :cond_7

    .line 253
    invoke-direct {p0, v5, v1, v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->getFailReason(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v4

    .line 256
    :cond_7
    array-length v8, p1

    const/4 v9, 0x1

    if-le v8, v9, :cond_a

    .line 257
    if-eqz v0, :cond_8

    .line 258
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    .line 259
    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0e0002

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 259
    invoke-virtual {v5, v9, v0, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 258
    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_8
    array-length v8, p1

    if-ne v8, v6, :cond_9

    .line 265
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c000e

    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 267
    :cond_9
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0011

    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 270
    :cond_a
    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 271
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0011

    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 272
    :cond_b
    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    .line 273
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c000e

    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 275
    :cond_c
    iget-object v8, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v8}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0010

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    .line 276
    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 275
    invoke-static {v8, v9}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showCloudPhotoCountDialog(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 317
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$600(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->doInBackground([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->getCloudPhotoCount()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->mCloudPhotoCount:I

    .line 179
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x70

    aput-wide v2, v0, v1

    .line 181
    .local v0, "result":[J
    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    .end local v0    # "result":[J
    :goto_0
    return-object v0

    .restart local v0    # "result":[J
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->copyOrMove()[J

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .locals 4
    .param p1, "results"    # [J

    .prologue
    .line 189
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const-wide/16 v2, -0x70

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->outputResult([J)V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$000(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lmiui/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 200
    iget v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->mCloudPhotoCount:I

    if-lez v0, :cond_2

    .line 201
    iget v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->mCloudPhotoCount:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->showCloudPhotoCountDialog(I)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$300(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$300(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/CopyMoveDialogFragment$CopyMoveTask;->this$0:Lcom/miui/gallery/ui/CopyMoveDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CopyMoveDialogFragment;->access$400(Lcom/miui/gallery/ui/CopyMoveDialogFragment;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;->onComplete([JZ)V

    goto :goto_0
.end method
