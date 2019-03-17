.class Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;
.super Landroid/os/AsyncTask;
.source "AddRemoveSecretDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddRemoveTask"
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
.field final synthetic this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private addOrRemove()[J
    .locals 5

    .prologue
    .line 256
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 257
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 258
    .local v1, "results":[J
    iget-object v2, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$300(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 259
    iget-object v2, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$500(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)[J

    move-result-object v2

    if-nez v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$600(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/provider/CloudUtils;->addToSecret(Landroid/content/Context;Ljava/util/ArrayList;)[J

    move-result-object v1

    .line 267
    :cond_0
    :goto_0
    return-object v1

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$500(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)[J

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/provider/CloudUtils;->addToSecret(Landroid/content/Context;[J)[J

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$300(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 265
    iget-object v2, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$700(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$500(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)[J

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gallery/provider/CloudUtils;->removeFromSecret(Landroid/content/Context;J[J)[J

    move-result-object v1

    goto :goto_0
.end method

.method private getAddFailTip(Landroid/content/res/Resources;III)Ljava/lang/String;
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "failCode"    # I
    .param p3, "operateCount"    # I
    .param p4, "failCount"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 365
    const/16 v1, -0x6b

    if-ne p2, v1, :cond_0

    .line 366
    const v1, 0x7f0c0473

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    .line 368
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->getFailReason(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "reason":Ljava/lang/String;
    if-le p3, v4, :cond_1

    .line 370
    const v1, 0x7f0e0003

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, p4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 372
    :cond_1
    const v1, 0x7f0c0016

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFailReason(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "failCode"    # I
    .param p3, "count"    # I

    .prologue
    .line 377
    packed-switch p2, :pswitch_data_0

    .line 387
    :pswitch_0
    const v0, 0x7f0c0472

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 379
    :pswitch_1
    const v0, 0x7f0c046f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :pswitch_2
    const v0, 0x7f0c0470

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :pswitch_3
    const v0, 0x7f0c0471

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :pswitch_4
    const v0, 0x7f0e0022

    invoke-virtual {p1, v0, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private outputResult([J)Landroid/util/Pair;
    .locals 14
    .param p1, "results"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v10, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_0

    .line 272
    new-instance v10, Landroid/util/Pair;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-object v10

    .line 275
    :cond_0
    iget-object v10, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 276
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 277
    .local v2, "hasSuccess":Z
    const/4 v3, 0x0

    .line 278
    .local v3, "msg":Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v10}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$300(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 279
    if-eqz p1, :cond_1

    array-length v10, p1

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    .line 280
    :cond_1
    iget-object v10, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    const v11, 0x7f0c0015

    invoke-virtual {v10, v11}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    :cond_2
    :goto_1
    new-instance v10, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_3
    const/4 v1, 0x0

    .line 283
    .local v1, "failedCode":I
    const/4 v8, 0x0

    .local v8, "skip":I
    const/4 v9, 0x0

    .local v9, "success":I
    const/4 v0, 0x0

    .line 284
    .local v0, "failed":I
    array-length v11, p1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_8

    aget-wide v4, p1, v10

    .line 285
    .local v4, "id":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_5

    .line 286
    add-int/lit8 v9, v9, 0x1

    .line 284
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 287
    :cond_5
    const-wide/16 v12, -0x67

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    const-wide/16 v12, -0x68

    cmp-long v12, v4, v12

    if-nez v12, :cond_7

    .line 289
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 291
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 292
    if-nez v1, :cond_4

    .line 293
    long-to-int v1, v4

    goto :goto_3

    .line 298
    .end local v4    # "id":J
    :cond_8
    array-length v10, p1

    const/4 v11, 0x1

    if-le v10, v11, :cond_a

    .line 299
    if-eqz v0, :cond_9

    .line 300
    array-length v10, p1

    invoke-direct {p0, v7, v1, v10, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->getAddFailTip(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v3

    .line 313
    :goto_4
    if-lez v9, :cond_d

    const/4 v2, 0x1

    .line 314
    :goto_5
    goto :goto_1

    .line 302
    :cond_9
    const v10, 0x7f0c0017

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 305
    :cond_a
    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 306
    const v10, 0x7f0c0017

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 307
    :cond_b
    const/4 v10, 0x1

    if-ne v8, v10, :cond_c

    .line 308
    const v10, 0x7f0c0014

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 310
    :cond_c
    array-length v10, p1

    invoke-direct {p0, v7, v1, v10, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->getAddFailTip(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 313
    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    .line 315
    .end local v0    # "failed":I
    .end local v1    # "failedCode":I
    .end local v8    # "skip":I
    .end local v9    # "success":I
    :cond_e
    iget-object v10, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v10}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$300(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 316
    if-eqz p1, :cond_f

    array-length v10, p1

    const/4 v11, 0x1

    if-ge v10, v11, :cond_10

    .line 317
    :cond_f
    const v10, 0x7f0c040d

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 319
    :cond_10
    const/4 v1, 0x0

    .line 320
    .restart local v1    # "failedCode":I
    const/4 v8, 0x0

    .restart local v8    # "skip":I
    const/4 v9, 0x0

    .restart local v9    # "success":I
    const/4 v0, 0x0

    .line 321
    .restart local v0    # "failed":I
    const-string v6, ""

    .line 322
    .local v6, "reason":Ljava/lang/String;
    array-length v11, p1

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v11, :cond_15

    aget-wide v4, p1, v10

    .line 323
    .restart local v4    # "id":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_12

    .line 324
    add-int/lit8 v9, v9, 0x1

    .line 322
    :cond_11
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 325
    :cond_12
    const-wide/16 v12, -0x67

    cmp-long v12, v4, v12

    if-eqz v12, :cond_13

    const-wide/16 v12, -0x68

    cmp-long v12, v4, v12

    if-nez v12, :cond_14

    .line 327
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 329
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 330
    if-nez v1, :cond_11

    .line 331
    long-to-int v1, v4

    goto :goto_7

    .line 336
    .end local v4    # "id":J
    :cond_15
    if-lez v0, :cond_16

    .line 337
    invoke-direct {p0, v7, v1, v0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->getFailReason(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v6

    .line 340
    :cond_16
    array-length v10, p1

    const/4 v11, 0x1

    if-le v10, v11, :cond_18

    .line 341
    if-eqz v0, :cond_17

    .line 342
    const v10, 0x7f0e0038

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v10, v0, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    :goto_8
    if-lez v9, :cond_1b

    const/4 v2, 0x1

    :goto_9
    goto/16 :goto_1

    .line 344
    :cond_17
    const v10, 0x7f0c040f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 347
    :cond_18
    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 348
    const v10, 0x7f0c040f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 349
    :cond_19
    const/4 v10, 0x1

    if-ne v8, v10, :cond_1a

    .line 350
    const v10, 0x7f0c000e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 352
    :cond_1a
    const v10, 0x7f0c040e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 355
    :cond_1b
    const/4 v2, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->doInBackground([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->addOrRemove()[J

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .locals 8
    .param p1, "results"    # [J

    .prologue
    const/4 v7, 0x1

    .line 227
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$200(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$200(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;->onComplete([J)V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 253
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->outputResult([J)Landroid/util/Pair;

    move-result-object v1

    .line 235
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 238
    .local v2, "toastTime":I
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$300(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 239
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->isFirstAddSecret()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->access$400(Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;)V

    .line 249
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 250
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 252
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 242
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "%s,%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v5, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    const v6, 0x7f0c0060

    .line 243
    invoke-virtual {v5, v6}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 243
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment$AddRemoveTask;->this$0:Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;

    const v4, 0x7f0c005f

    .line 244
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AddRemoveSecretDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
