.class public final Lmiui/provider/Notes$Utils;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation


# static fields
.field public static final CLEAR_ACCOUNT_WIPE_ALL:I = 0x0

.field public static final CLEAR_ACCOUNT_WIPE_NONE:I = 0x2

.field public static final CLEAR_ACCOUNT_WIPE_SYNC:I = 0x1

.field private static final IMAGE_DIMENSION_MAX:I = 0x780

.field private static final KEY_DATA_BYTES:Ljava/lang/String; = "data_bytes"

.field private static final KEY_DATA_VALUES:Ljava/lang/String; = "data_values"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 866
    .local p1, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    invoke-static {p0, p1}, Lmiui/provider/Notes$Utils;->removeSnippetIfHasDataContent(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 869
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 870
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data_values"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 871
    const-string v1, "data_bytes"

    invoke-static {v0}, Lmiui/provider/Notes$Utils;->marshall(Landroid/os/Bundle;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 873
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static clearAccount(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wipeMode"    # I

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Lmiui/provider/Notes$Utils;->getAccountDeleteOP()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 736
    const-string v3, "Notes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown wipeMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    :pswitch_0
    invoke-static {v2}, Lmiui/provider/Notes$Utils;->getNoteDeleteOP(Z)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :pswitch_1
    invoke-static {}, Lmiui/provider/Notes$Utils;->getTemporaryDeleteOP()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-static {}, Lmiui/provider/Notes$Utils;->getSyncClearOP()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-static {}, Lmiui/provider/Notes$Utils;->getDirtyUpdateOP()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    goto :goto_0

    .line 725
    :pswitch_2
    invoke-static {v1}, Lmiui/provider/Notes$Utils;->getNoteDeleteOP(Z)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    nop

    .line 740
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notes"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 741
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 742
    invoke-static {p0}, Lmiui/provider/Notes$Utils;->updateAllWidgets(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_0
    return v2

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v3, "Notes"

    const-string v4, "Fail to clear account"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/content/OperationApplicationException;
    goto :goto_1

    .line 745
    :catch_1
    move-exception v2

    .line 746
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Notes"

    const-string v4, "Fail to clear account"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 750
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static clearAccount(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wipeData"    # Z

    .line 714
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 715
    .local v0, "wipeMode":I
    :goto_0
    invoke-static {p0, v0}, Lmiui/provider/Notes$Utils;->clearAccount(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "imgPath"    # Ljava/lang/String;

    .line 521
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 522
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v0}, Lmiui/provider/Notes$Utils;->scaleBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 523
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 524
    const-string v3, "Notes"

    const-string v4, "Fail to createThumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v2

    .line 528
    :cond_0
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lmiui/provider/Notes$Utils;->rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 529
    if-nez v1, :cond_1

    .line 530
    const-string v3, "Notes"

    const-string v4, "Fail to rotateBitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-object v2

    .line 534
    :cond_1
    return-object v1
.end method

.method private static getAccountDeleteOP()Landroid/content/ContentProviderOperation;
    .locals 1

    .line 754
    sget-object v0, Lmiui/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private static getContentFromData(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 891
    .local p0, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 892
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "mime_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "vnd.android.cursor.item/text_note"

    const-string v3, "mime_type"

    .line 893
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content"

    .line 894
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    const-string v0, "content"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 897
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    goto :goto_0

    .line 898
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDirtyUpdateOP()Landroid/content/ContentProviderOperation;
    .locals 3

    .line 798
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v1, "file_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    sget-object v1, Lmiui/provider/Notes$Data;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    .line 802
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 803
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 801
    return-object v1
.end method

.method private static getNoteDeleteOP(Z)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p0, "onlyWipeSync"    # Z

    .line 758
    const-string v0, "_id>0"

    .line 759
    .local v0, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND sync_id>0 AND local_modified=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    :cond_0
    sget-object v1, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    .line 763
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 764
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 762
    return-object v1
.end method

.method private static getSyncClearOP()Landroid/content/ContentProviderOperation;
    .locals 5

    .line 775
    const-string v0, "_id>0"

    .line 776
    .local v0, "selection":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 777
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "sync_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v2, "sync_tag"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v2, "local_modified"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v2, "version"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    const-string v2, "origin_parent_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string v2, "account_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const-string v2, "sync_data1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    const-string v2, "sync_data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v2, "sync_data3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string v2, "sync_data4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    const-string v2, "sync_data5"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    const-string v2, "sync_data6"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v2, "sync_data7"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v2, "sync_data8"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    sget-object v2, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    .line 792
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 793
    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 794
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 791
    return-object v2
.end method

.method private static getTemporaryDeleteOP()Landroid/content/ContentProviderOperation;
    .locals 3

    .line 768
    const-string v0, "not (parent_id>=0 OR parent_id=-2 OR parent_id=-4)"

    .line 769
    .local v0, "selection":Ljava/lang/String;
    sget-object v1, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    .line 770
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 771
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 769
    return-object v1
.end method

.method public static getTotalUnsyncedCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 962
    invoke-static {p0}, Lmiui/provider/Notes$Utils;->getUnsyncedCount(Landroid/content/Context;)[I

    move-result-object v0

    .line 963
    .local v0, "counts":[I
    const/4 v1, 0x0

    .line 964
    .local v1, "totalCount":I
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 965
    .local v4, "count":I
    add-int/2addr v1, v4

    .line 964
    .end local v4    # "count":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_0
    return v1
.end method

.method public static getUnsyncedCount(Landroid/content/Context;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "noteCount":I
    const/4 v1, 0x0

    .line 976
    .local v1, "folderCount":I
    const-string v2, "_id"

    const-string v3, "type"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 977
    .local v6, "projection":[Ljava/lang/String;
    const-string v2, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>\'\'))"

    .line 980
    .local v2, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    const-string v7, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>\'\'))"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 982
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 984
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 985
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    .local v5, "type":I
    if-nez v5, :cond_0

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 988
    :cond_0
    if-ne v5, v4, :cond_1

    .line 989
    add-int/lit8 v1, v1, 0x1

    .line 991
    .end local v5    # "type":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 993
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 994
    goto :goto_2

    .line 993
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    .line 996
    :cond_3
    const-string v5, "Notes"

    const-string v7, "getUnsyncedCount: cursor is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :goto_2
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput v0, v5, v7

    aput v1, v5, v4

    return-object v5
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 848
    .local p2, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/Notes$Utils;->insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteValues"    # Landroid/content/ContentValues;
    .param p3, "isSyncAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 855
    .local p2, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p1, p2}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 856
    sget-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    .line 857
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_0

    .line 858
    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 860
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 861
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 860
    return-object v1
.end method

.method private static marshall(Landroid/os/Bundle;)[B
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 904
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 905
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 905
    return-object v1

    .line 907
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method private static releaseCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 705
    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v1, "release"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 706
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 707
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Notes"

    const-string v2, "invoke Canvas.release failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static removeDataValuesFromNoteValues(Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 924
    const-string v0, "data_bytes"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 925
    .local v0, "data":[B
    const-string v1, "data_bytes"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 926
    if-eqz v0, :cond_1

    .line 927
    invoke-static {v0}, Lmiui/provider/Notes$Utils;->unmarshall([B)Landroid/os/Bundle;

    move-result-object v1

    .line 928
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "data_values"

    .line 929
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 932
    .local v2, "dataArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v3, "snippet"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "snippet"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 933
    invoke-static {v2}, Lmiui/provider/Notes$Utils;->getContentFromData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, "dataContent":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 935
    const-string v4, "snippet"

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .end local v3    # "dataContent":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 940
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dataArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static removeSnippetIfHasDataContent(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 878
    .local p1, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "snippet"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-static {p1}, Lmiui/provider/Notes$Utils;->getContentFromData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "dataContent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 881
    const-string v1, "snippet"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "snippet":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    const-string v2, "snippet"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .end local v0    # "dataContent":Ljava/lang/String;
    .end local v1    # "snippet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 642
    const-string v0, "image/jpeg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    return-object p1

    .line 648
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 652
    .local v0, "exif":Landroid/media/ExifInterface;
    nop

    .line 651
    nop

    .line 654
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 655
    .local v1, "orientation":I
    if-ne v1, v2, :cond_1

    .line 656
    return-object p1

    .line 659
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 660
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 661
    .local v3, "height":I
    const/4 v4, 0x0

    .line 662
    .local v4, "swapDimension":Z
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 664
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v6, 0x3

    if-eq v1, v6, :cond_4

    const/4 v6, 0x6

    if-eq v1, v6, :cond_3

    const/16 v6, 0x8

    if-eq v1, v6, :cond_2

    goto :goto_0

    .line 673
    :cond_2
    const/high16 v6, 0x43870000    # 270.0f

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 674
    const/4 v4, 0x1

    .line 675
    goto :goto_0

    .line 666
    :cond_3
    const/high16 v6, 0x42b40000    # 90.0f

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 667
    const/4 v4, 0x1

    .line 668
    goto :goto_0

    .line 670
    :cond_4
    const/high16 v6, 0x43340000    # 180.0f

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 671
    nop

    .line 680
    :goto_0
    if-eqz v4, :cond_5

    .line 681
    move v6, v2

    .line 682
    .local v6, "tmp":I
    move v2, v3

    .line 683
    move v3, v6

    .line 686
    .end local v6    # "tmp":I
    :cond_5
    const/4 v6, 0x0

    .line 687
    .local v6, "result":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    move-object v8, v7

    .line 689
    .local v8, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v9

    .line 690
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v9

    .line 691
    invoke-virtual {v8, p1, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    nop

    .line 697
    :goto_1
    invoke-static {v8}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 695
    :catchall_0
    move-exception v7

    goto :goto_3

    .line 692
    :catch_0
    move-exception v7

    .line 693
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v9, "Notes"

    const-string v10, "Fail to rotateBitmap"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    if-eqz v8, :cond_6

    goto :goto_1

    .line 700
    :cond_6
    :goto_2
    return-object v6

    .line 695
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    if-eqz v8, :cond_7

    .line 697
    invoke-static {v8}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    :cond_7
    throw v7

    .line 649
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "swapDimension":Z
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "result":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :catch_1
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Notes"

    const-string v2, "createThumbnail fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    return-object p1
.end method

.method private static scaleBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v7, p0

    .line 539
    move-object/from16 v8, p1

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 540
    invoke-static/range {p0 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 541
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 542
    .local v9, "width":I
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 543
    .local v10, "height":I
    const/4 v1, 0x0

    if-lez v9, :cond_4

    if-gtz v10, :cond_0

    goto/16 :goto_4

    .line 548
    :cond_0
    move-object v11, v1

    .line 550
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/16 v2, 0x780

    if-gt v9, v2, :cond_1

    if-gt v10, v2, :cond_1

    .line 551
    :try_start_0
    invoke-static {v7, v1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 573
    :goto_0
    move-object v11, v0

    goto :goto_2

    .line 553
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float v12, v2, v3

    .line 554
    .local v12, "scaleRatio":F
    int-to-float v2, v9

    div-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v13, v2

    .line 555
    .local v13, "destWidth":I
    int-to-float v2, v10

    div-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v14, v2

    .line 556
    .local v14, "destHeight":I
    float-to-int v2, v12

    .line 557
    .local v2, "sampleRatio":I
    move v15, v2

    move v2, v0

    .local v2, "sampleSize":I
    .local v15, "sampleRatio":I
    :goto_1
    move/from16 v16, v2

    .line 558
    .end local v2    # "sampleSize":I
    .local v16, "sampleSize":I
    if-le v15, v0, :cond_2

    .line 559
    shl-int/lit8 v2, v16, 0x1

    .line 560
    .end local v16    # "sampleSize":I
    .restart local v2    # "sampleSize":I
    shr-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 565
    .end local v2    # "sampleSize":I
    .restart local v16    # "sampleSize":I
    :cond_2
    mul-int v0, v9, v10

    mul-int v2, v16, v16

    div-int/2addr v0, v2

    const v2, 0x708000

    if-le v0, v2, :cond_3

    .line 566
    move-object v1, v7

    move v2, v9

    move v3, v10

    move v4, v13

    move v5, v14

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lmiui/provider/Notes$Utils;->scaleBitmapByRegion(Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_3
    invoke-static {v7, v13, v14, v1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "scaleRatio":F
    .end local v13    # "destWidth":I
    .end local v14    # "destHeight":I
    .end local v15    # "sampleRatio":I
    .end local v16    # "sampleSize":I
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 573
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    goto :goto_3

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Notes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object v11

    .line 544
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_4
    return-object v1
.end method

.method private static scaleBitmapByRegion(Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "destWidth"    # I
    .param p4, "destHeight"    # I
    .param p5, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 579
    const/4 v0, 0x0

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 580
    .local v6, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v7, 0x0

    .line 581
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 582
    .local v8, "region":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    move-object v10, v9

    .line 585
    .local v10, "canvas":Landroid/graphics/Canvas;
    shr-int/lit8 v11, v1, 0x1

    .line 586
    .local v11, "centerWidth":I
    shr-int/lit8 v12, v2, 0x1

    .line 587
    .local v12, "centerHeight":I
    shr-int/lit8 v13, v3, 0x1

    .line 588
    .local v13, "centerDestWidth":I
    shr-int/lit8 v14, v4, 0x1

    .line 589
    .local v14, "centerDestHeight":I
    :try_start_0
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 590
    .local v15, "srcRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 591
    .local v9, "dstRect":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 592
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v10, v0

    .line 593
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 594
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v5, p5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 597
    const/4 v5, 0x0

    invoke-virtual {v15, v5, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 598
    invoke-virtual {v9, v5, v5, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 599
    invoke-virtual {v6, v15, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    .line 600
    const/4 v5, 0x0

    invoke-virtual {v10, v8, v5, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 601
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 603
    const/4 v5, 0x0

    invoke-virtual {v15, v11, v5, v1, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 604
    invoke-virtual {v9, v13, v5, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 605
    invoke-virtual {v6, v15, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    .line 606
    const/4 v5, 0x0

    invoke-virtual {v10, v8, v5, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 607
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    const/4 v5, 0x0

    invoke-virtual {v15, v5, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 610
    invoke-virtual {v9, v5, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 611
    invoke-virtual {v6, v15, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    .line 612
    const/4 v5, 0x0

    invoke-virtual {v10, v8, v5, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 613
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    invoke-virtual {v15, v11, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 616
    invoke-virtual {v9, v13, v14, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 617
    invoke-virtual {v6, v15, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    .line 618
    const/4 v5, 0x0

    invoke-virtual {v10, v8, v5, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 619
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "dstRect":Landroid/graphics/Rect;
    .end local v11    # "centerWidth":I
    .end local v12    # "centerHeight":I
    .end local v13    # "centerDestWidth":I
    .end local v14    # "centerDestHeight":I
    .end local v15    # "srcRect":Landroid/graphics/Rect;
    if-eqz v6, :cond_0

    .line 628
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 630
    :cond_0
    if-eqz v8, :cond_1

    .line 631
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 633
    :cond_1
    nop

    .line 634
    :goto_0
    invoke-static {v10}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 627
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v5, "Notes"

    const-string v9, "Fail to scaleBitmapByRegion"

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    if-eqz v7, :cond_2

    .line 623
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    const/4 v0, 0x0

    .line 627
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v7, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v6, :cond_3

    .line 628
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 630
    :cond_3
    if-eqz v8, :cond_4

    .line 631
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 633
    :cond_4
    if-eqz v10, :cond_5

    goto :goto_0

    .line 638
    :cond_5
    :goto_1
    return-object v7

    .line 627
    :goto_2
    if-eqz v6, :cond_6

    .line 628
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 630
    :cond_6
    if-eqz v8, :cond_7

    .line 631
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 633
    :cond_7
    if-eqz v10, :cond_8

    .line 634
    invoke-static {v10}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    :cond_8
    throw v0
.end method

.method private static unmarshall([B)Landroid/os/Bundle;
    .locals 3
    .param p0, "data"    # [B

    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 914
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 915
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    return-object v1

    .line 918
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static updateAllAlarms(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 946
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 956
    return-void
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # J
    .param p3, "noteValues"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 821
    .local p4, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lmiui/provider/Notes$Utils;->updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # J
    .param p3, "noteValues"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "isSyncAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .line 828
    .local p4, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p3, p4}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 829
    sget-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 830
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p7, :cond_0

    .line 831
    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 833
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 834
    invoke-virtual {v1, v0, p3, p5, p6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 833
    return v1
.end method
